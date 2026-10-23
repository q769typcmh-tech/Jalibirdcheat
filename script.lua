-- vasper for jailbird


if getgenv().VasperFull then return end
getgenv().VasperFull = true

pcall(function()
	if not game:IsLoaded() then game.Loaded:Wait() end
end)

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")

-- some executors dont have this
local VIM = nil
pcall(function() VIM = game:GetService("VirtualInputService") end)
if not VIM then pcall(function() VIM = game:FindService("VirtualInputService") end) end

local LP = Players.LocalPlayer
while not LP do task.wait() LP = Players.LocalPlayer end

local Camera = workspace.CurrentCamera
workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
	Camera = workspace.CurrentCamera
end)

-- defaults (esp on)
local S = {
	-- ESP
	ESP = true,
	Boxes = true,
	BoxStyle = "Full",
	Names = true,
	Distance = true,
	Health = true,
	HeadDot = true,
	Chams = true,
	Tracers = true,
	TracerOrigin = "Bottom",
	Skeleton = false,
	VisibleCheck = true,
	WallCheck = true,
	TeamCheck = true,
	MaxDistance = 1200,
	ChamsFill = 0.45,
	BoxThickness = 1,
	-- Combat
	SilentAim = false,
	SilentFOV = 140,
	SilentPart = "Head",
	SilentShowFOV = false,
	Aimbot = false,
	AimKey = "MB2",
	AimMode = "Hold",
	AimFOV = 150,
	AimSmooth = 40,
	AimShowFOV = false,
	Hitbox = false,
	HitboxPart = "Head",
	HitboxSize = 8,
	HitboxTransparency = 85,
	KillAura = false,
	KillAuraRange = 90,
	KillAuraBehind = 1.5,
	-- movement
	Speed = false,
	SpeedValue = 28,
	Noclip = false,
	Fly = false,
	FlySpeed = 50,
	FlyKey = "F",
	PosFreeze = false,
	PosFreezeKey = "X",
	Fullbright = false,
	CustomFOV = false,
	FOVValue = 90,
	-- Misc
	StaffDetect = false,
	StaffLeave = false,
	DeviceSpoof = false,
	DeviceMode = "Console",
	DeviceSpoofDelay = 1.5,
	AutoSave = true,
	AntiAFK = true,
	ShowPerf = true,
	FPSBoost = false,
	FPSBoostPlastic = true,
}
getgenv().VasperFlags = S -- for debugging

local Theme = {
	Background = Color3.fromRGB(12, 12, 15),
	Sidebar = Color3.fromRGB(17, 17, 21),
	Panel = Color3.fromRGB(22, 22, 27),
	Card = Color3.fromRGB(28, 28, 34),
	Hover = Color3.fromRGB(39, 38, 47),
	Text = Color3.fromRGB(245, 244, 250),
	Muted = Color3.fromRGB(145, 143, 158),
	Accent = Color3.fromRGB(235, 235, 235),
	Border = Color3.fromRGB(48, 47, 58),
	Green = Color3.fromRGB(90, 220, 130),
	Red = Color3.fromRGB(255, 90, 90),
}

local function create(className, properties, parent)
	local object = Instance.new(className)
	for property, value in pairs(properties or {}) do
		object[property] = value
	end
	object.Parent = parent
	return object
end

local function corner(object, radius)
	create("UICorner", { CornerRadius = UDim.new(0, radius or 9) }, object)
end

local function outline(object, color, transparency)
	return create("UIStroke", {
		Color = color or Theme.Border,
		Transparency = transparency or 0,
		Thickness = 1,
	}, object)
end

local function animate(object, duration, properties)
	local animation = TweenService:Create(
		object,
		TweenInfo.new(duration, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
		properties
	)
	animation:Play()
	return animation
end

local function guiParent()
	local ok, h = pcall(function()
		return gethui and gethui()
	end)
	if ok and h then return h end
	local ok2 = pcall(function()
		local t = Instance.new("Folder")
		t.Parent = CoreGui
		t:Destroy()
	end)
	if ok2 then return CoreGui end
	return LP:WaitForChild("PlayerGui")
end

-- cleanup
pcall(function()
	for _, n in ipairs({ "VasperStandaloneTest", "VasperFullESP", "VasperESP", "VasperChamsHold" }) do
		local a = LP:FindFirstChild("PlayerGui") and LP.PlayerGui:FindFirstChild(n)
		if a then a:Destroy() end
		local b = CoreGui:FindFirstChild(n)
		if b then b:Destroy() end
		if gethui then
			local c = gethui():FindFirstChild(n)
			if c then c:Destroy() end
		end
	end
end)

-- helpers
local function getChar(p)
	return p and p.Character
end

local function isAlive(p)
	local c = getChar(p)
	if not c then return false end
	local h = c:FindFirstChildOfClass("Humanoid")
	return h and h.Health > 0
end

local function isEnemy(p)
	if not p or p == LP then return false end
	if not isAlive(p) then return false end
	if S.TeamCheck and LP.Team and p.Team and LP.Team == p.Team then return false end
	return true
end

-- wallcheck (soft glass etc)
local SOLID_NAMES = {
	"box", "crate", "barrel", "dumpster", "trash", "container", "shipping",
	"wall", "pillar", "fence", "gate", "car", "truck", "van", "generator",
	"cabinet", "shelf", "locker", "desk", "table", "couch", "bench",
	"stairs", "ladder", "ramp", "pipe", "vent", "sandbag", "pallet", "forklift",
}
local function nameHas(str, list)
	for i = 1, #list do
		if string.find(str, list[i], 1, true) then return true end
	end
	return false
end
local function isSoft(part)
	if not part or not part:IsA("BasePart") then return true end
	local n = string.lower(part.Name or "")
	local full = string.lower(part:GetFullName() or "")
	local mat = string.lower(tostring(part.Material))
	if string.find(n, "glass", 1, true) or string.find(mat, "glass", 1, true) then return true end
	if part.Transparency >= 0.7 then return true end
	if string.find(n, "door", 1, true) or string.find(full, "door", 1, true) then
		if string.find(n, "wood", 1, true) or string.find(full, "wood", 1, true) then return false end
		return true
	end
	if string.find(n, "window", 1, true) then return true end
	if part.CanCollide == false and part.Transparency >= 0.25 then return true end
	if nameHas(n, SOLID_NAMES) or nameHas(full, SOLID_NAMES) then return false end
	return false
end

local function isVisible(plr)
	-- ray from cam to head
	local char = getChar(plr)
	local head = char and char:FindFirstChild("Head")
	if not head or not Camera then return false end
	local my = getChar(LP)
	local origin = Camera.CFrame.Position + Camera.CFrame.LookVector * 0.8
	local target = head.Position
	local dir = target - origin
	local dist = dir.Magnitude
	if dist < 1.5 then return true end
	local ignore = { Camera }
	if my then table.insert(ignore, my) end
	if char then table.insert(ignore, char) end
	local params = RaycastParams.new()
	params.FilterType = Enum.RaycastFilterType.Exclude
	params.FilterDescendantsInstances = ignore
	params.IgnoreWater = true
	local traveled, pos, unit = 0, origin, dir.Unit
	for _ = 1, 12 do
		local remain = dist - traveled
		if remain <= 0.15 then return true end
		local hit = workspace:Raycast(pos, unit * remain, params)
		if not hit then return true end
		if hit.Instance and char and hit.Instance:IsDescendantOf(char) then return true end
		if isSoft(hit.Instance) then
			table.insert(ignore, hit.Instance)
			params.FilterDescendantsInstances = ignore
			local step = (hit.Position - pos).Magnitude
			pos = hit.Position + unit * 0.15
			traveled = traveled + step + 0.15
		else
			return false
		end
	end
	return false
end

local function espColor(plr)
	if S.VisibleCheck then
		local ok, vis = pcall(isVisible, plr)
		if ok and vis then
			return Theme.Green
		else
			return Theme.Red
		end
	end
	return Color3.fromRGB(255, 255, 255)
end


-- combat
local SA_Hooked = false
local aimHeld = false
local flying = false -- always start grounded; press Fly Key only when Fly enabled
local noclipConn = nil
local hbStore = {}
local lastKA = 0
local freezeCF = nil
local freezeActive = false
local STAFF_GROUP = 33054943
local staffFlagged = {}
local fps, frames, lastF = 0, 0, tick()

local function aimPart(char)
	if not char then return nil end
	local n = tostring(S.SilentPart or "Head")
	return char:FindFirstChild(n) or char:FindFirstChild("Head") or char:FindFirstChild("HumanoidRootPart")
end

local function getClosestTarget(fov, doVis)
	if not Camera then return nil end
	Camera = workspace.CurrentCamera or Camera
	local center = Camera.ViewportSize / 2
	local best, bestD = nil, tonumber(fov) or 150
	local useWall = doVis == true
	for _, plr in ipairs(Players:GetPlayers()) do
		if isEnemy(plr) then
			local wallOK = true
			if useWall then
				local okVis, vis = pcall(isVisible, plr)
				wallOK = okVis and vis == true
			end
			if wallOK then
				local part = aimPart(getChar(plr))
				if part then
					local sp, on = Camera:WorldToViewportPoint(part.Position)
					if on and sp.Z > 0 then
						local d = (Vector2.new(sp.X, sp.Y) - center).Magnitude
						if d <= bestD then
							bestD = d
							best = part
						end
					end
				end
			end
		end
	end
	return best
end

local function trySilentHook(force)
	-- only hook bullet funcs, not workspace raycast
	
	if SA_Hooked and not force then return true end
	if typeof(getgc) ~= "function" or typeof(hookfunction) ~= "function" then
		return false
	end
	local names = {
		BulletRayCast = true,
		bulletRayCast = true,
		BulletRaycast = true,
		FireBullet = true,
		CastBullet = true,
		DoBulletRay = true,
	}
	local nc = newcclosure or function(f) return f end
	local hooked = 0
	pcall(function()
		for _, fn in next, getgc(false) do
			if typeof(fn) == "function" then
				local ok, info = pcall(debug.getinfo, fn)
				local name = ok and info and info.name
				if name and names[name] then
					local oldFn
					oldFn = hookfunction(fn, nc(function(...)
						if not S.SilentAim then
							return oldFn(...)
						end
						local n = select("#", ...)
						local args = { ... }
						local target = getClosestTarget(S.SilentFOV, S.WallCheck == true)
						if target and n >= 2 and typeof(args[1]) == "Vector3" and typeof(args[2]) == "Vector3" then
							local dir = target.Position - args[1]
							if dir.Magnitude > 0.05 then
								args[2] = dir.Unit * math.max(args[2].Magnitude, 1)
							end
						end
						return oldFn(table.unpack(args, 1, n))
					end))
					hooked = hooked + 1
					SA_Hooked = true
				end
			end
		end
	end)
	return SA_Hooked
end
task.delay(2, function() pcall(trySilentHook) end)
task.delay(10, function() if not SA_Hooked then pcall(trySilentHook) end end)

local aimToggled = false

local function isAimKey(i)
	if S.AimKey == "MB2" then return i.UserInputType == Enum.UserInputType.MouseButton2 end
	if S.AimKey == "MB1" then return i.UserInputType == Enum.UserInputType.MouseButton1 end
	return i.KeyCode and i.KeyCode.Name == S.AimKey
end

UserInputService.InputBegan:Connect(function(i, gp)
	if gp then return end
	if isAimKey(i) then
		if S.AimMode == "Toggle" then
			aimToggled = not aimToggled
		else
			aimHeld = true
		end
	end
	if i.KeyCode and i.KeyCode.Name == (S.FlyKey or "F") and S.Fly then
		flying = not flying
	end
end)
UserInputService.InputEnded:Connect(function(i)
	if isAimKey(i) and S.AimMode ~= "Toggle" then
		aimHeld = false
	end
end)

local function setNoclip(on)
	if noclipConn then noclipConn:Disconnect(); noclipConn = nil end
	if not on then return end
	noclipConn = RunService.Stepped:Connect(function()
		local c = getChar(LP)
		if c then
			for _, p in ipairs(c:GetDescendants()) do
				if p:IsA("BasePart") then p.CanCollide = false end
			end
		end
	end)
end

local function updateHitboxes()
	if not S.Hitbox then
		for part, size in pairs(hbStore) do
			pcall(function()
				if part and part.Parent then
					part.Size = size
					part.Transparency = 0
					part.CanCollide = true
				end
			end)
			hbStore[part] = nil
		end
		return
	end
	local size = math.clamp(tonumber(S.HitboxSize) or 8, 1, 40)
	local alive = {}
	for _, plr in ipairs(Players:GetPlayers()) do
		if isEnemy(plr) then
			local char = getChar(plr)
			local names = {}
			if S.HitboxPart == "Torso" or S.HitboxPart == "Both" then
				table.insert(names, "UpperTorso")
				table.insert(names, "Torso")
			end
			if S.HitboxPart ~= "Torso" then
				table.insert(names, "Head")
			end
			for _, n in ipairs(names) do
				local part = char and char:FindFirstChild(n)
				if part and part:IsA("BasePart") then
					alive[part] = true
					if not hbStore[part] then hbStore[part] = part.Size end
					pcall(function()
						part.Size = Vector3.new(size, size, size)
						part.CanCollide = false
						local tr = tonumber(S.HitboxTransparency) or 85
						if tr > 1 then tr = tr / 100 end
						part.Transparency = math.clamp(tr, 0.3, 0.98)
						part.Massless = true
					end)
				end
			end
		end
	end
	for part in pairs(hbStore) do
		if not alive[part] then
			pcall(function()
				if part and part.Parent then
					part.Size = hbStore[part]
					part.Transparency = 0
				end
			end)
			hbStore[part] = nil
		end
	end
end

local kaTarget = nil
local lastKAShoot = 0
local lastKATP = 0
local kaStickUntil = 0

local function getEquippedTool()
	local char = getChar(LP)
	if not char then return nil end
	return char:FindFirstChildOfClass("Tool")
end

local function doShoot()
	local tool = getEquippedTool()
	if not tool then
		
		local my = getChar(LP)
		local hum = my and my:FindFirstChildOfClass("Humanoid")
		local bp = LP:FindFirstChild("Backpack")
		if hum and bp then
			for _, t in ipairs(bp:GetChildren()) do
				if t:IsA("Tool") then
					pcall(function() hum:EquipTool(t) end)
					tool = t
					break
				end
			end
		end
	end
	if not tool then return end
	-- dont spam
	if tick() - lastKAShoot < 0.14 then return end
	lastKAShoot = tick()
	local fired = false
	if VIM then
		pcall(function()
			local cam = workspace.CurrentCamera or Camera
			local vs = cam and cam.ViewportSize or Vector2.new(0, 0)
			local cx = math.floor(vs.X / 2)
			local cy = math.floor(vs.Y / 2)
			VIM:SendMouseButtonEvent(cx, cy, 0, true, game, 1)
			task.wait(0.025)
			VIM:SendMouseButtonEvent(cx, cy, 0, false, game, 1)
			fired = true
		end)
	end
	if not fired and typeof(mouse1click) == "function" then
		pcall(function()
			mouse1click()
			fired = true
		end)
	end
	if not fired then
		pcall(function() tool:Activate() end)
	end
end

local function getBestEnemy(exclude)
	local my = getChar(LP)
	local myRoot = my and my:FindFirstChild("HumanoidRootPart")
	if not myRoot then return nil end
	local range = tonumber(S.KillAuraRange) or 90
	local best, bestDist = nil, range
	for _, plr in ipairs(Players:GetPlayers()) do
		if plr ~= LP and plr ~= exclude and isEnemy(plr) and isAlive(plr) then
			local char = getChar(plr)
			local root = char and char:FindFirstChild("HumanoidRootPart")
			local head = char and char:FindFirstChild("Head")
			if root and head then
				local d = (root.Position - myRoot.Position).Magnitude
				if d < bestDist then
					bestDist = d
					best = plr
				end
			end
		end
	end
	return best
end


local function fattenTarget(plr)
	-- fat hb on target
	local char = getChar(plr)
	if not char then return end
	local size = 12
	for _, name in ipairs({ "Head", "HumanoidRootPart", "UpperTorso", "Torso", "LowerTorso" }) do
		local part = char:FindFirstChild(name)
		if part and part:IsA("BasePart") then
			if not hbStore[part] then
				hbStore[part] = part.Size
			end
			pcall(function()
				part.Size = Vector3.new(size, size, size)
				part.Transparency = 0.6
				part.CanCollide = false
			end)
		end
	end
end

local function stickAbove(plr, force)
	-- sit on top of them
	local my = getChar(LP)
	local myRoot = my and my:FindFirstChild("HumanoidRootPart")
	local char = getChar(plr)
	local root = char and char:FindFirstChild("HumanoidRootPart")
	local head = char and char:FindFirstChild("Head")
	if not myRoot or not root or not head then return false end
	local height = 4.5
	local pos = root.Position + Vector3.new(0, height, 0)
	local needTP = force or (myRoot.Position - pos).Magnitude > 1.2 or (tick() - lastKATP) > 0.12
	if needTP then
		lastKATP = tick()
		kaStickUntil = tick() + 0.05
		pcall(function()
			myRoot.AssemblyLinearVelocity = Vector3.zero
			myRoot.AssemblyAngularVelocity = Vector3.zero
			myRoot.CFrame = CFrame.new(pos, head.Position)
		end)
	end
	pcall(function()
		Camera = workspace.CurrentCamera or Camera
		if Camera then
			Camera.CFrame = CFrame.new(Camera.CFrame.Position, head.Position)
		end
	end)
	fattenTarget(plr)
	return true
end

local function runKillAura()
	if not S.KillAura then
		kaTarget = nil
		return
	end
	local my = getChar(LP)
	local myHum = my and my:FindFirstChildOfClass("Humanoid")
	if not myHum or myHum.Health <= 0 then
		kaTarget = nil
		return
	end
	if not kaTarget or not isAlive(kaTarget) or not isEnemy(kaTarget) then
		kaTarget = getBestEnemy(kaTarget)
	end
	if not kaTarget then return end
	if stickAbove(kaTarget, false) then
		if tick() >= kaStickUntil then
			doShoot()
		end
	else
		kaTarget = nil
	end
end

local function setPosFreeze(on)
	local my = getChar(LP)
	local root = my and (my:FindFirstChild("HumanoidRootPart") or my.PrimaryPart)
	if on then
		if not root then return end
		
		freezeCF = root.CFrame 
		freezeActive = true
		S.PosFreeze = true
		print("[vasper] freeze on, walk around. unfreeze stays here")
	else
		
		if root then
			pcall(function()
				root.AssemblyLinearVelocity = Vector3.zero
			end)
		end
		freezeActive = false
		freezeCF = nil
		S.PosFreeze = false
		print("[vasper] freeze off")
	end
end

local function togglePosFreeze()
	setPosFreeze(not freezeActive)
end


-- freeze key
UserInputService.InputBegan:Connect(function(input, gp)
	if gp then return end
	if input.UserInputType ~= Enum.UserInputType.Keyboard then return end
	local fk = tostring(S.PosFreezeKey or "X")
	if input.KeyCode == Enum.KeyCode[fk] then
		togglePosFreeze()
	end
end)

local function checkStaff()
	if not S.StaffDetect then return end
	for _, plr in ipairs(Players:GetPlayers()) do
		if plr ~= LP then
			local ok, rank = pcall(function() return plr:GetRankInGroup(STAFF_GROUP) end)
			if ok and rank and rank >= 11 then
				if not staffFlagged[plr.UserId] then
					staffFlagged[plr.UserId] = true
					print("[vasper] staff:", plr.Name, rank)
					if S.StaffLeave then
						pcall(function() LP:Kick("Staff detected") end)
					end
				end
			end
		end
	end
end

-- device spoof remote
local DeviceRemote = nil
pcall(function()
	local rs = game:GetService("ReplicatedStorage")
	local ge = rs:FindFirstChild("GameEvents") or rs:WaitForChild("GameEvents", 3)
	if ge then
		DeviceRemote = ge:FindFirstChild("DeviceUpdate") or ge:WaitForChild("DeviceUpdate", 3)
	end
end)

local function fireDevice()
	if not S.DeviceSpoof then return end
	pcall(function()
		if not DeviceRemote then
			local rs = game:GetService("ReplicatedStorage")
			local ge = rs:FindFirstChild("GameEvents")
			DeviceRemote = ge and ge:FindFirstChild("DeviceUpdate")
		end
		if not DeviceRemote then return end
		local mode = tostring(S.DeviceMode or "Console")
		-- Old MoonHub / Jailbird method
		if mode == "Console" then
			DeviceRemote:FireServer()
			pcall(function() DeviceRemote:FireServer("Console") end)
		elseif mode == "PC" or mode == "Desktop" then
			DeviceRemote:FireServer("Desktop")
		elseif mode == "Mobile" then
			DeviceRemote:FireServer("Mobile")
		elseif mode == "VR" then
			DeviceRemote:FireServer("Desktop")
		else
			DeviceRemote:FireServer(mode)
		end
	end)
end

task.spawn(function()
	while true do
		local delay = tonumber(S.DeviceSpoofDelay) or 1.5
		if delay < 0.3 then delay = 0.3 end
		task.wait(delay)
		if S.DeviceSpoof then
			pcall(fireDevice)
		end
	end
end)

-- FOV ring
local FOVGui = Instance.new("ScreenGui")
FOVGui.Name = "VasperFOV"
FOVGui.ResetOnSpawn = false
FOVGui.IgnoreGuiInset = true
FOVGui.DisplayOrder = 999990
FOVGui.Parent = guiParent()
local FOVRing = Instance.new("Frame")
FOVRing.AnchorPoint = Vector2.new(0.5, 0.5)
FOVRing.Position = UDim2.fromScale(0.5, 0.5)
FOVRing.BackgroundTransparency = 1
FOVRing.Visible = false
FOVRing.Parent = FOVGui
Instance.new("UICorner", FOVRing).CornerRadius = UDim.new(1, 0)
local FOVStroke = Instance.new("UIStroke")
FOVStroke.Color = Color3.fromRGB(255, 255, 255)
FOVStroke.Thickness = 1
FOVStroke.Transparency = 0.35
FOVStroke.Parent = FOVRing

RunService.RenderStepped:Connect(function()
	frames += 1
	if tick() - lastF >= 1 then fps = frames; frames = 0; lastF = tick() end
	Camera = workspace.CurrentCamera
	-- aimbot
	if S.Aimbot and Camera then
		-- Never change CameraType; only nudge Custom camera look
		local active = false
		if S.AimMode == "Always" then
			active = true
		elseif S.AimMode == "Toggle" then
			active = aimToggled
		else -- Hold
			active = aimHeld
		end
		if active then
			local target = getClosestTarget(S.AimFOV, S.WallCheck == true)
			if target and target.Parent then
				local okPos = true
				local tpos = target.Position
				-- Higher slider = smoother (slower). 1 = near snap, 100 = very slow.
				local smooth = math.clamp(tonumber(S.AimSmooth) or 40, 1, 100)
				local alpha = math.clamp(1 - (smooth / 100), 0.03, 0.85)
				pcall(function()
					local cam = Camera
					if cam.CameraType == Enum.CameraType.Scriptable then
						return -- don't fight freecam / scripted cams
					end
					local origin = cam.CFrame.Position
					local goal = CFrame.lookAt(origin, tpos)
					cam.CFrame = cam.CFrame:Lerp(goal, alpha)
				end)
			end
		end
	end
	-- FOV ring
	-- FOV ring: size follows the matching slider (Show Silent FOV -> SilentFOV, Show Aim FOV -> AimFOV)
	local showSilent = S.SilentShowFOV == true
	local showAim = S.AimShowFOV == true
	if FOVRing then
		local show = showSilent or showAim
		FOVRing.Visible = show
		FOVRing.AnchorPoint = Vector2.new(0.5, 0.5)
		FOVRing.Position = UDim2.fromScale(0.5, 0.5)
		if show then
			local r
			if showSilent then
				r = tonumber(S.SilentFOV) or 140
			else
				r = tonumber(S.AimFOV) or 150
			end
			r = math.clamp(r, 20, 400)
			FOVRing.Size = UDim2.fromOffset(r * 2, r * 2)
		end
	end
	if Camera then
		if S.CustomFOV then
			local fv = tonumber(S.FOVValue) or 90
			if math.abs(Camera.FieldOfView - fv) > 0.1 then
				Camera.FieldOfView = fv
			end
		end
	end
	if S.Fullbright then
		pcall(function()
			local Lighting = game:GetService("Lighting")
			Lighting.Brightness = 2
			Lighting.ClockTime = 14
			Lighting.FogEnd = 1e6
			Lighting.GlobalShadows = false
		end)
	end
end)

RunService.Heartbeat:Connect(function()
	local c = getChar(LP)
	if c then
		local h = c:FindFirstChildOfClass("Humanoid")
		if h then
			if S.Speed then
				local want = tonumber(S.SpeedValue) or 28
				if math.abs(h.WalkSpeed - want) > 0.5 then
					h.WalkSpeed = want
				end
			end
		end
		if S.Noclip then
			if not noclipConn then setNoclip(true) end
		else
			if noclipConn then setNoclip(false) end
		end
		if S.Fly and flying then
			local root = c:FindFirstChild("HumanoidRootPart")
			local hum = c:FindFirstChildOfClass("Humanoid")
			if root and Camera then
				local spd = math.clamp(tonumber(S.FlySpeed) or 50, 10, 120)
				local dir = Vector3.zero
				if UserInputService:IsKeyDown(Enum.KeyCode.W) then dir += Camera.CFrame.LookVector end
				if UserInputService:IsKeyDown(Enum.KeyCode.S) then dir -= Camera.CFrame.LookVector end
				if UserInputService:IsKeyDown(Enum.KeyCode.A) then dir -= Camera.CFrame.RightVector end
				if UserInputService:IsKeyDown(Enum.KeyCode.D) then dir += Camera.CFrame.RightVector end
				if UserInputService:IsKeyDown(Enum.KeyCode.Space) then dir += Vector3.yAxis end
				if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) then dir -= Vector3.yAxis end
				if dir.Magnitude > 0.05 then
					dir = dir.Unit * spd
					root.AssemblyLinearVelocity = dir
					if hum then
						pcall(function() hum:ChangeState(Enum.HumanoidStateType.Freefall) end)
					end
				else
					-- hover: kill only vertical fall, do NOT zero horizontal (walk safe if fly key left on)
					local v = root.AssemblyLinearVelocity
					root.AssemblyLinearVelocity = Vector3.new(v.X * 0.9, 0, v.Z * 0.9)
				end
			end
		end
	end
	pcall(runKillAura)
end)

task.spawn(function()
	while true do
		task.wait(0.2)
		pcall(updateHitboxes)
	end
end)
task.spawn(function()
	while true do
		task.wait(4)
		pcall(checkStaff)
		if S.DeviceSpoof then pcall(fireDevice) end
	end
end)
task.spawn(function()
	while true do
		task.wait(60)
		if S.AntiAFK then
			pcall(function()
				local vu = game:GetService("VirtualUser")
				vu:CaptureController()
				vu:ClickButton2(Vector2.new())
			end)
		end
	end
end)


-- config (json)
local HttpService = game:GetService("HttpService")
local function sw(path, data)
	pcall(function()
		if writefile then writefile(path, data) end
	end)
end
local function sr(path)
	local ok, d = pcall(function()
		if isfile and isfile(path) and readfile then return readfile(path) end
	end)
	return ok and d or nil
end
pcall(function()
	if makefolder then
		makefolder("Vasper")
		makefolder("Vasper/Configs")
	end
end)
local function saveCfg()
	if not S.AutoSave then return end
	pcall(function()
		local encoded = HttpService:JSONEncode(S)
		sw("Vasper/Configs/autosave.json", encoded)
		sw("Vasper/autosave.json", encoded)
	end)
end
local function loadCfg()

-- fill missing flags from old configs
local _defaults = {
	SilentFOV = 140, AimFOV = 150, AimSmooth = 40, HitboxSize = 8, HitboxTransparency = 85,
	KillAuraRange = 90, KillAuraBehind = 2.0, SpeedValue = 28, FlySpeed = 50, FOVValue = 90, MaxDistance = 1200,
	DeviceSpoofDelay = 1.5, SilentPart = "Head", AimKey = "MB2", AimMode = "Hold",
	HitboxPart = "Head", DeviceMode = "Console", BoxStyle = "Full", TracerOrigin = "Bottom",
	FlyKey = "F",
}
for k, v in pairs(_defaults) do
	if S[k] == nil then S[k] = v end
end

-- Don't leave player stuck from old autosave movement flags
S.Noclip = false
S.Fly = false
flying = false
	local raw = sr("Vasper/Configs/autosave.json") or sr("Vasper/autosave.json")
	if not raw then return end
	pcall(function()
		local d = HttpService:JSONDecode(raw)
		if type(d) == "table" then
			for k, v in pairs(d) do
				if S[k] ~= nil then S[k] = v end
			end
		end
	end)
end
loadCfg()

-- fill missing flags from old configs
local _defaults = {
	SilentFOV = 140, AimFOV = 150, AimSmooth = 40, HitboxSize = 8, HitboxTransparency = 85,
	KillAuraRange = 60, SpeedValue = 28, FlySpeed = 50, FOVValue = 90, MaxDistance = 1200,
	DeviceSpoofDelay = 1.5, SilentPart = "Head", AimKey = "MB2", AimMode = "Hold",
	HitboxPart = "Head", DeviceMode = "Console", BoxStyle = "Full", TracerOrigin = "Bottom",
	FlyKey = "F",
}
for k, v in pairs(_defaults) do
	if S[k] == nil then S[k] = v end
end

-- Don't leave player stuck from old autosave movement flags
S.Noclip = false
S.Fly = false
flying = false
task.spawn(function()
	while true do
		task.wait(12)
		saveCfg()
	end
end)


-- fps boost
local Lighting = game:GetService("Lighting")
local Terrain = workspace:FindFirstChildOfClass("Terrain")
local fpsBoostApplied = false
local savedLighting = {}

local function snapshotLighting()
	savedLighting = {}
	pcall(function()
		savedLighting.Brightness = Lighting.Brightness
		savedLighting.GlobalShadows = Lighting.GlobalShadows
		savedLighting.FogEnd = Lighting.FogEnd
		savedLighting.FogStart = Lighting.FogStart
		savedLighting.EnvironmentDiffuseScale = Lighting.EnvironmentDiffuseScale
		savedLighting.EnvironmentSpecularScale = Lighting.EnvironmentSpecularScale
		savedLighting.Technology = Lighting.Technology
	end)
end
snapshotLighting()

local function stripEffects()
	pcall(function()
		for _, v in ipairs(Lighting:GetChildren()) do
			if v:IsA("BlurEffect") or v:IsA("BloomEffect") or v:IsA("SunRaysEffect")
				or v:IsA("ColorCorrectionEffect") or v:IsA("DepthOfFieldEffect")
				or v:IsA("Atmosphere") or v:IsA("Clouds") then
				v.Enabled = false
			end
		end
	end)
end

local function plasticPart(p)
	if not p:IsA("BasePart") then return end
	pcall(function()
		p.Material = Enum.Material.Plastic
		p.Reflectance = 0
		if p.MaterialVariant then p.MaterialVariant = "" end
	end)
	pcall(function()
		if p:IsA("MeshPart") then
			p.TextureID = ""
		end
	end)
end

local function applyFPSBoost(on)
	fpsBoostApplied = on
	pcall(function()
		settings().Rendering.QualityLevel = on and Enum.QualityLevel.Level01 or Enum.QualityLevel.Automatic
	end)
	pcall(function()
		if on then
			Lighting.GlobalShadows = false
			Lighting.FogEnd = 1e6
			Lighting.Brightness = 2
			Lighting.EnvironmentDiffuseScale = 0
			Lighting.EnvironmentSpecularScale = 0
			pcall(function() Lighting.Technology = Enum.Technology.Legacy end)
			stripEffects()
			if Terrain then
				Terrain.Decoration = false
				pcall(function()
					Terrain.WaterWaveSize = 0
					Terrain.WaterWaveSpeed = 0
					Terrain.WaterReflectance = 0
					Terrain.WaterTransparency = 1
				end)
			end
		else
			if savedLighting.GlobalShadows ~= nil then
				Lighting.GlobalShadows = savedLighting.GlobalShadows
				Lighting.FogEnd = savedLighting.FogEnd or 1000
				Lighting.Brightness = savedLighting.Brightness or 1
				Lighting.EnvironmentDiffuseScale = savedLighting.EnvironmentDiffuseScale or 1
				Lighting.EnvironmentSpecularScale = savedLighting.EnvironmentSpecularScale or 1
			end
		end
	end)
	-- Particles / trails / beams off for boost
	pcall(function()
		for _, v in ipairs(workspace:GetDescendants()) do
			if on then
				if v:IsA("ParticleEmitter") or v:IsA("Trail") or v:IsA("Beam") or v:IsA("Fire")
					or v:IsA("Smoke") or v:IsA("Sparkles") then
					v.Enabled = false
				end
				if S.FPSBoostPlastic and v:IsA("BasePart") and not v.Parent:FindFirstChildOfClass("Humanoid") then
					-- light plastic pass (skip character parts)
					if v.Material ~= Enum.Material.Plastic then
						plasticPart(v)
					end
				end
			end
		end
	end)
end

task.spawn(function()
	local was = false
	while true do
		task.wait(1)
		if S.FPSBoost and not was then
			applyFPSBoost(true)
			was = true
		elseif not S.FPSBoost and was then
			applyFPSBoost(false)
			was = false
		elseif S.FPSBoost then
			-- keep effects dead (games re-add them)
			stripEffects()
			pcall(function()
				Lighting.GlobalShadows = false
				settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
			end)
		end
	end
end)

-- New instances: kill particles when boost on
pcall(function()
	workspace.DescendantAdded:Connect(function(v)
		if not S.FPSBoost then return end
		task.defer(function()
			pcall(function()
				if v:IsA("ParticleEmitter") or v:IsA("Trail") or v:IsA("Beam") or v:IsA("Fire")
					or v:IsA("Smoke") or v:IsA("Sparkles") then
					v.Enabled = false
				end
				if S.FPSBoostPlastic and v:IsA("BasePart") then
					local plrChar = false
					pcall(function()
						local model = v:FindFirstAncestorOfClass("Model")
						if model and model:FindFirstChildOfClass("Humanoid") then plrChar = true end
					end)
					if not plrChar then plasticPart(v) end
				end
			end)
		end)
	end)
end)

-- esp
local ESPGui = create("ScreenGui", {
	Name = "VasperESP",
	ResetOnSpawn = false,
	IgnoreGuiInset = true,
	DisplayOrder = 999980,
	ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
}, guiParent())

local ESPObjects = {}
local ChamsObjects = {}
local TracerLines = {}

local function getChamsHolder()
	local h
	pcall(function()
		if gethui then h = gethui() end
	end)
	if not h then
		pcall(function()
			h = CoreGui
		end)
	end
	return h or LP:FindFirstChild("PlayerGui")
end

local function clearPlayerESP(plr)
	local d = ESPObjects[plr]
	if d then
		pcall(function()
			if d.fullBox then d.fullBox:Destroy() end
			if d.name then d.name:Destroy() end
			if d.dist then d.dist:Destroy() end
			if d.healthBg then d.healthBg:Destroy() end
			if d.healthFill then d.healthFill:Destroy() end
			if d.headDot then d.headDot:Destroy() end
			if d.corners then
				for _, c in pairs(d.corners) do
					pcall(function()
						c:Destroy()
					end)
				end
			end
			if d.bones then
				for _, b in pairs(d.bones) do
					pcall(function()
						b:Destroy()
					end)
				end
			end
		end)
		ESPObjects[plr] = nil
	end
	if ChamsObjects[plr] then
		pcall(function()
			ChamsObjects[plr]:Destroy()
		end)
		ChamsObjects[plr] = nil
	end
	if TracerLines[plr] then
		pcall(function()
			TracerLines[plr]:Destroy()
		end)
		TracerLines[plr] = nil
	end
end

local function clearAllESP()
	for plr in pairs(ESPObjects) do
		clearPlayerESP(plr)
	end
	for plr in pairs(ChamsObjects) do
		clearPlayerESP(plr)
	end
	for plr in pairs(TracerLines) do
		clearPlayerESP(plr)
	end
end

local function makeESP(plr)
	if ESPObjects[plr] then return ESPObjects[plr] end
	local fullBox = create("Frame", {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Visible = false,
	}, ESPGui)
	local fullStroke = create("UIStroke", { Thickness = 1, Color = Color3.new(1, 1, 1) }, fullBox)

	local corners = {}
	for i = 1, 8 do
		corners[i] = create("Frame", {
			BorderSizePixel = 0,
			BackgroundColor3 = Color3.new(1, 1, 1),
			Visible = false,
		}, ESPGui)
	end

	local name = create("TextLabel", {
		BackgroundTransparency = 1,
		Font = Enum.Font.GothamBold,
		TextSize = 12,
		TextStrokeTransparency = 0.4,
		TextColor3 = Color3.new(1, 1, 1),
		Visible = false,
	}, ESPGui)

	local dist = create("TextLabel", {
		BackgroundTransparency = 1,
		Font = Enum.Font.Gotham,
		TextSize = 11,
		TextStrokeTransparency = 0.4,
		TextColor3 = Color3.new(1, 1, 1),
		Visible = false,
	}, ESPGui)

	local healthBg = create("Frame", {
		BorderSizePixel = 0,
		BackgroundColor3 = Color3.new(0, 0, 0),
		BackgroundTransparency = 0.35,
		Visible = false,
	}, ESPGui)
	local healthFill = create("Frame", {
		BorderSizePixel = 0,
		Visible = false,
	}, ESPGui)

	local headDot = create("Frame", {
		BorderSizePixel = 0,
		Visible = false,
	}, ESPGui)
	create("UICorner", { CornerRadius = UDim.new(1, 0) }, headDot)

	-- skeleton lines (simple 2D segments)
	local bones = {}
	for i = 1, 12 do
		bones[i] = create("Frame", {
			BorderSizePixel = 0,
			BackgroundColor3 = Color3.new(1, 1, 1),
			Visible = false,
		}, ESPGui)
	end

	local tracer = create("Frame", {
		BorderSizePixel = 0,
		BackgroundColor3 = Color3.new(1, 1, 1),
		Visible = false,
		AnchorPoint = Vector2.new(0.5, 0.5),
	}, ESPGui)
	TracerLines[plr] = tracer

	local data = {
		fullBox = fullBox,
		fullStroke = fullStroke,
		corners = corners,
		name = name,
		dist = dist,
		healthBg = healthBg,
		healthFill = healthFill,
		headDot = headDot,
		bones = bones,
		tracer = tracer,
		_hp = 100,
		_maxHp = 100,
	}
	ESPObjects[plr] = data
	return data
end

local function hideESP(d)
	if not d then return end
	d.fullBox.Visible = false
	d.name.Visible = false
	d.dist.Visible = false
	d.healthBg.Visible = false
	d.healthFill.Visible = false
	d.headDot.Visible = false
	if d.tracer then d.tracer.Visible = false end
	for i = 1, 8 do
		if d.corners[i] then d.corners[i].Visible = false end
	end
	if d.bones then
		for i = 1, 12 do
			if d.bones[i] then d.bones[i].Visible = false end
		end
	end
end

local function worldToBox(char)
	-- Use normal body parts only. Expanded hitboxes are ignored so ESP stays player-sized.
	if not Camera or not char then return nil end
	local minX, minY, maxX, maxY = math.huge, math.huge, -math.huge, -math.huge
	local any = false
	-- Fixed-size body anchors (ignore inflated Head/Torso sizes from hitbox expand)
	local anchors = {
		{ "Head", Vector3.new(1.2, 1.2, 1.2) },
		{ "HumanoidRootPart", Vector3.new(2, 2, 1) },
		{ "UpperTorso", Vector3.new(2, 2, 1) },
		{ "LowerTorso", Vector3.new(2, 1, 1) },
		{ "Torso", Vector3.new(2, 2, 1) },
		{ "LeftUpperArm", Vector3.new(1, 2, 1) },
		{ "RightUpperArm", Vector3.new(1, 2, 1) },
		{ "LeftUpperLeg", Vector3.new(1, 2, 1) },
		{ "RightUpperLeg", Vector3.new(1, 2, 1) },
		{ "Left Arm", Vector3.new(1, 2, 1) },
		{ "Right Arm", Vector3.new(1, 2, 1) },
		{ "Left Leg", Vector3.new(1, 2, 1) },
		{ "Right Leg", Vector3.new(1, 2, 1) },
	}
	for _, entry in ipairs(anchors) do
		local part = char:FindFirstChild(entry[1])
		if part and part:IsA("BasePart") then
			local cf = part.CFrame
			local sz = entry[2] -- natural size, not expanded
			for _, ox in ipairs({ -0.5, 0.5 }) do
				for _, oy in ipairs({ -0.5, 0.5 }) do
					for _, oz in ipairs({ -0.5, 0.5 }) do
						local wp = (cf * CFrame.new(ox * sz.X, oy * sz.Y, oz * sz.Z)).Position
						local sp = Camera:WorldToViewportPoint(wp)
						if sp.Z > 0 then
							any = true
							minX = math.min(minX, sp.X)
							minY = math.min(minY, sp.Y)
							maxX = math.max(maxX, sp.X)
							maxY = math.max(maxY, sp.Y)
						end
					end
				end
			end
		end
	end
	if not any then
		-- fallback HRP only
		local hrp = char:FindFirstChild("HumanoidRootPart")
		if hrp then
			local sp = Camera:WorldToViewportPoint(hrp.Position)
			if sp.Z > 0 then
				local w, h = 40, 70
				return sp.X - w / 2, sp.Y - h / 2, sp.X + w / 2, sp.Y + h / 2
			end
		end
		return nil
	end
	return minX, minY, maxX, maxY
end

local function drawBone(frame, a, b, col)
	if not a or not b or not Camera then
		frame.Visible = false
		return
	end
	local sa, oa = Camera:WorldToViewportPoint(a)
	local sb, ob = Camera:WorldToViewportPoint(b)
	if not oa or not ob or sa.Z <= 0 or sb.Z <= 0 then
		frame.Visible = false
		return
	end
	local dx, dy = sb.X - sa.X, sb.Y - sa.Y
	local len = math.sqrt(dx * dx + dy * dy)
	if len < 1 then
		frame.Visible = false
		return
	end
	frame.Visible = true
	frame.BackgroundColor3 = col
	frame.Size = UDim2.fromOffset(len, 1)
	frame.Position = UDim2.fromOffset((sa.X + sb.X) / 2, (sa.Y + sb.Y) / 2)
	frame.Rotation = math.deg(math.atan2(dy, dx))
	frame.AnchorPoint = Vector2.new(0.5, 0.5)
end

local espWasOn = true
local function updateESP()
	if not S.ESP then
		if espWasOn then
			clearAllESP()
			espWasOn = false
		end
		return
	end
	espWasOn = true
	if not Camera then return end
	local myChar = getChar(LP)
	local myRoot = myChar and myChar:FindFirstChild("HumanoidRootPart")
	local maxd = tonumber(S.MaxDistance) or 1200
	local holder = getChamsHolder()
	local seen = {}
	local vp = Camera.ViewportSize

	for _, plr in ipairs(Players:GetPlayers()) do
		if isEnemy(plr) then
			local char = getChar(plr)
			local hrp = char and char:FindFirstChild("HumanoidRootPart")
			local head = char and char:FindFirstChild("Head")
			local hum = char and char:FindFirstChildOfClass("Humanoid")
			if char and hrp and hum and hum.Health > 0 then
				local distM = myRoot and (hrp.Position - myRoot.Position).Magnitude or 0
				if distM <= maxd then
					local spCheck = Camera:WorldToViewportPoint(hrp.Position)
					if spCheck.Z > 0 then
						seen[plr] = true
						local col = espColor(plr)
						local d = makeESP(plr)
						d._hp = hum.Health
						d._maxHp = math.max(hum.MaxHealth, 1)

						-- Chams
						if S.Chams then
							local hl = ChamsObjects[plr]
							if not hl or not hl.Parent then
								hl = Instance.new("Highlight")
								hl.Name = "VasperChams"
								hl.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
								hl.FillTransparency = S.ChamsFill or 0.45
								hl.OutlineTransparency = 0
								hl.Parent = holder
								ChamsObjects[plr] = hl
							end
							hl.Adornee = char
							hl.FillColor = col
							hl.OutlineColor = col
							hl.Enabled = true
							hl.FillTransparency = S.ChamsFill or 0.45
						elseif ChamsObjects[plr] then
							ChamsObjects[plr].Enabled = false
						end

						local x1, y1, x2, y2 = worldToBox(char)
						if not x1 then
							hideESP(d)
						else
							local bw = math.max(x2 - x1, 4)
							local bh = math.max(y2 - y1, 4)

							-- Boxes
							if S.Boxes and S.BoxStyle == "Full" then
								d.fullBox.Visible = true
								d.fullBox.Position = UDim2.fromOffset(x1, y1)
								d.fullBox.Size = UDim2.fromOffset(bw, bh)
								d.fullStroke.Color = col
								d.fullStroke.Thickness = S.BoxThickness or 1
								for i = 1, 8 do
									d.corners[i].Visible = false
								end
							elseif S.Boxes then
								d.fullBox.Visible = false
								local len = math.clamp(math.min(bw, bh) * 0.25, 4, 16)
								local function seg(i, px, py, sx, sy)
									d.corners[i].Visible = true
									d.corners[i].BackgroundColor3 = col
									d.corners[i].Position = UDim2.fromOffset(px, py)
									d.corners[i].Size = UDim2.fromOffset(sx, sy)
								end
								seg(1, x1, y1, len, 2)
								seg(2, x1, y1, 2, len)
								seg(3, x2 - len, y1, len, 2)
								seg(4, x2 - 2, y1, 2, len)
								seg(5, x1, y2 - 2, len, 2)
								seg(6, x1, y2 - len, 2, len)
								seg(7, x2 - len, y2 - 2, len, 2)
								seg(8, x2 - 2, y2 - len, 2, len)
							else
								d.fullBox.Visible = false
								for i = 1, 8 do
									d.corners[i].Visible = false
								end
							end

							-- Name
							if S.Names then
								d.name.Visible = true
								d.name.Text = plr.DisplayName ~= "" and plr.DisplayName or plr.Name
								d.name.TextColor3 = col
								d.name.Size = UDim2.fromOffset(180, 16)
								d.name.Position = UDim2.fromOffset(x1 + bw / 2 - 90, y1 - 18)
								d.name.TextXAlignment = Enum.TextXAlignment.Center
							else
								d.name.Visible = false
							end

							-- Distance
							if S.Distance then
								d.dist.Visible = true
								d.dist.Text = string.format("%dm", math.floor(distM))
								d.dist.TextColor3 = col
								d.dist.Size = UDim2.fromOffset(80, 14)
								d.dist.Position = UDim2.fromOffset(x1 + bw / 2 - 40, y2 + 2)
								d.dist.TextXAlignment = Enum.TextXAlignment.Center
							else
								d.dist.Visible = false
							end

							-- Health bar
							if S.Health then
								local ratio = math.clamp(d._hp / d._maxHp, 0, 1)
								d.healthBg.Visible = true
								d.healthBg.Position = UDim2.fromOffset(x1 - 6, y1)
								d.healthBg.Size = UDim2.fromOffset(3, bh)
								d.healthFill.Visible = true
								d.healthFill.Size = UDim2.fromOffset(3, math.max(bh * ratio, 1))
								d.healthFill.Position = UDim2.fromOffset(x1 - 6, y1 + bh * (1 - ratio))
								d.healthFill.BackgroundColor3 = Color3.fromRGB(255 * (1 - ratio), 255 * ratio, 40)
							else
								d.healthBg.Visible = false
								d.healthFill.Visible = false
							end

							-- Head dot
							if S.HeadDot and head then
								local sp, on = Camera:WorldToViewportPoint(head.Position)
								if on and sp.Z > 0 then
									d.headDot.Visible = true
									d.headDot.BackgroundColor3 = col
									d.headDot.Size = UDim2.fromOffset(5, 5)
									d.headDot.Position = UDim2.fromOffset(sp.X - 2.5, sp.Y - 2.5)
								else
									d.headDot.Visible = false
								end
							else
								d.headDot.Visible = false
							end

							-- Tracers
							if S.Tracers and d.tracer then
								local from
								if S.TracerOrigin == "Center" then
									from = Vector2.new(vp.X / 2, vp.Y / 2)
								else
									from = Vector2.new(vp.X / 2, vp.Y)
								end
								local toX = x1 + bw / 2
								local toY = y2
								local dx, dy = toX - from.X, toY - from.Y
								local len = math.sqrt(dx * dx + dy * dy)
								if len > 2 then
									d.tracer.Visible = true
									d.tracer.BackgroundColor3 = col
									d.tracer.BackgroundTransparency = 0.25
									d.tracer.Size = UDim2.fromOffset(len, 1)
									d.tracer.Position = UDim2.fromOffset((from.X + toX) / 2, (from.Y + toY) / 2)
									d.tracer.Rotation = math.deg(math.atan2(dy, dx))
								else
									d.tracer.Visible = false
								end
							elseif d.tracer then
								d.tracer.Visible = false
							end

							-- Skeleton
							if S.Skeleton and d.bones then
								local function part(n)
									return char:FindFirstChild(n)
								end
								local function pos(p)
									return p and p.Position
								end
								local h = pos(part("Head"))
								local ut = pos(part("UpperTorso")) or pos(part("Torso"))
								local lt = pos(part("LowerTorso")) or ut
								local hrpP = pos(hrp)
								local torso = ut or hrpP
								drawBone(d.bones[1], h, torso, col)
								drawBone(d.bones[2], torso, lt or torso, col)
								drawBone(d.bones[3], torso, pos(part("LeftUpperArm") or part("Left Arm")), col)
								drawBone(d.bones[4], torso, pos(part("RightUpperArm") or part("Right Arm")), col)
								drawBone(d.bones[5], pos(part("LeftUpperArm") or part("Left Arm")), pos(part("LeftLowerArm") or part("Left Arm")), col)
								drawBone(d.bones[6], pos(part("RightUpperArm") or part("Right Arm")), pos(part("RightLowerArm") or part("Right Arm")), col)
								drawBone(d.bones[7], pos(part("LeftLowerArm")), pos(part("LeftHand") or part("Left Arm")), col)
								drawBone(d.bones[8], pos(part("RightLowerArm")), pos(part("RightHand") or part("Right Arm")), col)
								drawBone(d.bones[9], lt or torso, pos(part("LeftUpperLeg") or part("Left Leg")), col)
								drawBone(d.bones[10], lt or torso, pos(part("RightUpperLeg") or part("Right Leg")), col)
								drawBone(d.bones[11], pos(part("LeftUpperLeg") or part("Left Leg")), pos(part("LeftLowerLeg") or part("Left Leg")), col)
								drawBone(d.bones[12], pos(part("RightUpperLeg") or part("Right Leg")), pos(part("RightLowerLeg") or part("Right Leg")), col)
							elseif d.bones then
								for i = 1, 12 do
									d.bones[i].Visible = false
								end
							end
						end
					end
				end
			end
		end
	end

	for plr in pairs(ESPObjects) do
		if not seen[plr] then
			clearPlayerESP(plr)
		end
	end
	for plr in pairs(ChamsObjects) do
		if not seen[plr] then
			clearPlayerESP(plr)
		end
	end
end

-- death cleanup
Players.PlayerRemoving:Connect(function(plr)
	clearPlayerESP(plr)
end)

RunService.RenderStepped:Connect(function()
	Camera = workspace.CurrentCamera
	pcall(updateESP)
end)

-- ui
local parent = LP:WaitForChild("PlayerGui")
local gui = create("ScreenGui", {
	Name = "VasperFull",
	ResetOnSpawn = false,
	IgnoreGuiInset = true,
	DisplayOrder = 999999,
	ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
}, guiParent()) -- gethui/CoreGui so ESC menu does not cover hub


-- stay on top
task.spawn(function()
	while gui and gui.Parent do
		pcall(function()
			if gui.DisplayOrder < 999999 then
				gui.DisplayOrder = 999999
			end
			if ESPGui and ESPGui.Parent and ESPGui.DisplayOrder < 999980 then
				ESPGui.DisplayOrder = 999980
			end
			if FOVGui and FOVGui.Parent and FOVGui.DisplayOrder < 999990 then
				FOVGui.DisplayOrder = 999990
			end
		end)
		task.wait(0.5)
	end
end)

local window = create("Frame", {
	Name = "Window",
	AnchorPoint = Vector2.new(0.5, 0.5),
	Position = UDim2.fromScale(0.5, 0.5),
	Size = UDim2.fromOffset(760, 500),
	BackgroundColor3 = Theme.Background,
	BorderSizePixel = 0,
	ClipsDescendants = true,
	Visible = false,
}, gui)
corner(window, 14)
outline(window, Theme.Border)
local uiScale = create("UIScale", { Scale = 1 }, window)

local header = create("Frame", {
	Size = UDim2.new(1, 0, 0, 60),
	BackgroundColor3 = Theme.Sidebar,
	BorderSizePixel = 0,
}, window)
create("Frame", {
	Position = UDim2.new(0, 0, 1, -1),
	Size = UDim2.new(1, 0, 0, 1),
	BackgroundColor3 = Theme.Border,
	BorderSizePixel = 0,
}, header)

local logo = create("Frame", {
	Position = UDim2.fromOffset(17, 14),
	Size = UDim2.fromOffset(32, 32),
	BackgroundColor3 = Theme.Accent,
	BorderSizePixel = 0,
}, header)
corner(logo, 9)
create("TextLabel", {
	Size = UDim2.fromScale(1, 1),
	BackgroundTransparency = 1,
	Text = "V",
	TextColor3 = Color3.new(0, 0, 0),
	Font = Enum.Font.GothamBold,
	TextSize = 20,
}, logo)

create("TextLabel", {
	Position = UDim2.fromOffset(59, 10),
	Size = UDim2.fromOffset(220, 23),
	BackgroundTransparency = 1,
	Text = "VASPER",
	TextColor3 = Theme.Text,
	Font = Enum.Font.GothamBold,
	TextSize = 17,
	TextXAlignment = Enum.TextXAlignment.Left,
}, header)
create("TextLabel", {
	Position = UDim2.fromOffset(60, 33),
	Size = UDim2.fromOffset(230, 15),
	BackgroundTransparency = 1,
	Text = "full build",
	TextColor3 = Theme.Muted,
	Font = Enum.Font.Code,
	TextSize = 9,
	TextXAlignment = Enum.TextXAlignment.Left,
}, header)

local modePill = create("TextLabel", {
	AnchorPoint = Vector2.new(1, 0.5),
	Position = UDim2.new(1, -55, 0.5, 0),
	Size = UDim2.fromOffset(98, 25),
	BackgroundColor3 = Color3.fromRGB(35, 35, 35),
	Text = "FULL",
	TextColor3 = Theme.Green,
	Font = Enum.Font.GothamMedium,
	TextSize = 10,
}, header)
corner(modePill, 7)

local closeButton = create("TextButton", {
	AnchorPoint = Vector2.new(1, 0.5),
	Position = UDim2.new(1, -14, 0.5, 0),
	Size = UDim2.fromOffset(28, 28),
	BackgroundColor3 = Theme.Card,
	Text = "×",
	TextColor3 = Theme.Text,
	Font = Enum.Font.Gotham,
	TextSize = 20,
	AutoButtonColor = false,
}, header)
corner(closeButton, 8)

local sidebar = create("Frame", {
	Position = UDim2.fromOffset(0, 60),
	Size = UDim2.new(0, 180, 1, -60),
	BackgroundColor3 = Theme.Sidebar,
	BorderSizePixel = 0,
}, window)
create("Frame", {
	AnchorPoint = Vector2.new(1, 0),
	Position = UDim2.new(1, 0, 0, 0),
	Size = UDim2.new(0, 1, 1, 0),
	BackgroundColor3 = Theme.Border,
	BorderSizePixel = 0,
}, sidebar)
create("TextLabel", {
	Position = UDim2.fromOffset(17, 17),
	Size = UDim2.new(1, -30, 0, 17),
	BackgroundTransparency = 1,
	Text = "MAIN MENU",
	TextColor3 = Theme.Muted,
	Font = Enum.Font.GothamBold,
	TextSize = 10,
	TextXAlignment = Enum.TextXAlignment.Left,
}, sidebar)

local nav = create("Frame", {
	Position = UDim2.fromOffset(10, 43),
	Size = UDim2.new(1, -20, 0, 360),
	BackgroundTransparency = 1,
}, sidebar)
create("UIListLayout", { Padding = UDim.new(0, 5), SortOrder = Enum.SortOrder.LayoutOrder }, nav)

local pageHost = create("Frame", {
	Position = UDim2.fromOffset(181, 61),
	Size = UDim2.new(1, -181, 1, -61),
	BackgroundTransparency = 1,
	ClipsDescendants = true,
}, window)

local pages, navButtons = {}, {}
local activePage
local animationsEnabled = true

local function makePage(name, subtitle)
	local page = create("ScrollingFrame", {
		Name = name,
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ScrollBarThickness = 3,
		ScrollBarImageColor3 = Theme.Accent,
		AutomaticCanvasSize = Enum.AutomaticSize.Y,
		CanvasSize = UDim2.new(),
		Visible = false,
	}, pageHost)
	create("TextLabel", {
		Position = UDim2.fromOffset(18, 16),
		Size = UDim2.new(1, -36, 0, 32),
		BackgroundTransparency = 1,
		Text = name,
		TextColor3 = Theme.Text,
		Font = Enum.Font.GothamBold,
		TextSize = 23,
		TextXAlignment = Enum.TextXAlignment.Left,
	}, page)
	create("TextLabel", {
		Position = UDim2.fromOffset(19, 49),
		Size = UDim2.new(1, -38, 0, 20),
		BackgroundTransparency = 1,
		Text = subtitle,
		TextColor3 = Theme.Muted,
		Font = Enum.Font.Gotham,
		TextSize = 11,
		TextXAlignment = Enum.TextXAlignment.Left,
	}, page)
	pages[name] = page
	return page
end

local function addNav(name, order)
	local button = create("TextButton", {
		Name = name,
		Size = UDim2.new(1, 0, 0, 39),
		BackgroundColor3 = Theme.Sidebar,
		Text = "   " .. name,
		TextColor3 = Theme.Muted,
		Font = Enum.Font.GothamMedium,
		TextSize = 12,
		TextXAlignment = Enum.TextXAlignment.Left,
		AutoButtonColor = false,
		LayoutOrder = order,
	}, nav)
	corner(button, 8)
	local marker = create("Frame", {
		Name = "Marker",
		Position = UDim2.new(0, 0, 0.2, 0),
		Size = UDim2.new(0, 3, 0.6, 0),
		BackgroundColor3 = Theme.Accent,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
	}, button)
	corner(marker, 2)
	button.MouseButton1Click:Connect(function()
		if activePage and pages[activePage] then pages[activePage].Visible = false end
		activePage = name
		pages[name].Visible = true
		for pageName, navButton in pairs(navButtons) do
			local selected = pageName == name
			navButton.TextColor3 = selected and Theme.Text or Theme.Muted
			local navMarker = navButton:FindFirstChild("Marker")
			if navMarker then navMarker.BackgroundTransparency = selected and 0 or 1 end
			navButton.BackgroundColor3 = selected and Theme.Hover or Theme.Sidebar
		end
	end)
	navButtons[name] = button
end

local function section(page, title, y)
	return create("TextLabel", {
		Position = UDim2.fromOffset(18, y),
		Size = UDim2.new(1, -36, 0, 18),
		BackgroundTransparency = 1,
		Text = string.upper(title),
		TextColor3 = Theme.Muted,
		Font = Enum.Font.GothamBold,
		TextSize = 10,
		TextXAlignment = Enum.TextXAlignment.Left,
	}, page)
end

local function card(page, title, description, y, height)
	local frame = create("Frame", {
		Position = UDim2.fromOffset(18, y),
		Size = UDim2.new(1, -36, 0, height or 72),
		BackgroundColor3 = Theme.Panel,
		BorderSizePixel = 0,
	}, page)
	corner(frame, 10)
	outline(frame)
	create("TextLabel", {
		Position = UDim2.fromOffset(13, 11),
		Size = UDim2.new(1, -70, 0, 20),
		BackgroundTransparency = 1,
		Text = title,
		TextColor3 = Theme.Text,
		Font = Enum.Font.GothamMedium,
		TextSize = 12,
		TextXAlignment = Enum.TextXAlignment.Left,
	}, frame)
	if description and description ~= "" then
		create("TextLabel", {
			Position = UDim2.fromOffset(13, 34),
			Size = UDim2.new(1, -70, 0, 22),
			BackgroundTransparency = 1,
			Text = description,
			TextColor3 = Theme.Muted,
			Font = Enum.Font.Gotham,
			TextSize = 10,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Left,
		}, frame)
	end
	return frame
end

local function toggle(page, title, description, y, flag)
	local frame = card(page, title, description, y)
	local track = create("TextButton", {
		Position = UDim2.new(1, -52, 0.5, -11),
		Size = UDim2.fromOffset(37, 22),
		BackgroundColor3 = S[flag] and Theme.Accent or Theme.Hover,
		Text = "",
		AutoButtonColor = false,
	}, frame)
	corner(track, 11)
	local knob = create("Frame", {
		Position = S[flag] and UDim2.fromOffset(18, 3) or UDim2.fromOffset(3, 3),
		Size = UDim2.fromOffset(16, 16),
		BackgroundColor3 = S[flag] and Color3.new(0, 0, 0) or Theme.Text,
		BorderSizePixel = 0,
	}, track)
	corner(knob, 8)
	track.MouseButton1Click:Connect(function()
		S[flag] = not S[flag]
		track.BackgroundColor3 = S[flag] and Theme.Accent or Theme.Hover
		knob.Position = S[flag] and UDim2.fromOffset(18, 3) or UDim2.fromOffset(3, 3)
		knob.BackgroundColor3 = S[flag] and Color3.new(0, 0, 0) or Theme.Text
		if flag == "ESP" and not S.ESP then
			clearAllESP()
		end
	end)
end

local function slider(page, title, y, minValue, maxValue, flag)
	local frame = create("Frame", {
		Position = UDim2.fromOffset(18, y),
		Size = UDim2.new(1, -36, 0, 82),
		BackgroundColor3 = Theme.Panel,
		BorderSizePixel = 0,
	}, page)
	corner(frame, 10)
	outline(frame)
	create("TextLabel", {
		Position = UDim2.fromOffset(13, 10),
		Size = UDim2.new(1, -90, 0, 20),
		BackgroundTransparency = 1,
		Text = title,
		TextColor3 = Theme.Text,
		Font = Enum.Font.GothamMedium,
		TextSize = 12,
		TextXAlignment = Enum.TextXAlignment.Left,
	}, frame)
	local valueLabel = create("TextLabel", {
		AnchorPoint = Vector2.new(1, 0),
		Position = UDim2.new(1, -13, 0, 10),
		Size = UDim2.fromOffset(55, 20),
		BackgroundTransparency = 1,
		Text = tostring(S[flag]),
		TextColor3 = Theme.Accent,
		Font = Enum.Font.GothamBold,
		TextSize = 12,
		TextXAlignment = Enum.TextXAlignment.Right,
	}, frame)
	local rail = create("TextButton", {
		Position = UDim2.fromOffset(13, 47),
		Size = UDim2.new(1, -26, 0, 6),
		BackgroundColor3 = Theme.Hover,
		Text = "",
		AutoButtonColor = false,
	}, frame)
	corner(rail, 4)
	local cur = tonumber(S[flag])
	if cur == nil then
		cur = minValue
		S[flag] = cur
	end
	cur = math.clamp(cur, minValue, maxValue)
	S[flag] = cur
	local ratio = (cur - minValue) / math.max(maxValue - minValue, 1)
	local fill = create("Frame", {
		Size = UDim2.new(ratio, 0, 1, 0),
		BackgroundColor3 = Theme.Accent,
		BorderSizePixel = 0,
	}, rail)
	corner(fill, 4)
	local dragging = false
	local function update(x)
		local width = rail.AbsoluteSize.X
		if width <= 0 then return end
		local r = math.clamp((x - rail.AbsolutePosition.X) / width, 0, 1)
		local value = math.floor(minValue + r * (maxValue - minValue) + 0.5)
		S[flag] = value
		valueLabel.Text = tostring(value)
		fill.Size = UDim2.new(r, 0, 1, 0)
	end
	rail.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			update(input.Position.X)
		end
	end)
	UserInputService.InputChanged:Connect(function(input)
		if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			update(input.Position.X)
		end
	end)
	UserInputService.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = false
		end
	end)
end

local function cycleButton(page, title, y, flag, options)
	local frame = card(page, title, "Tap to cycle", y)
	local btn = create("TextButton", {
		AnchorPoint = Vector2.new(1, 0.5),
		Position = UDim2.new(1, -12, 0.5, 0),
		Size = UDim2.fromOffset(100, 28),
		BackgroundColor3 = Theme.Hover,
		Text = tostring(S[flag] or options[1]),
		TextColor3 = Theme.Text,
		Font = Enum.Font.GothamBold,
		TextSize = 11,
		AutoButtonColor = false,
	}, frame)
	corner(btn, 7)
	if S[flag] == nil then S[flag] = options[1] end
	local idx = 1
	for i, o in ipairs(options) do
		if o == S[flag] then idx = i break end
	end
	btn.MouseButton1Click:Connect(function()
		idx = idx % #options + 1
		S[flag] = options[idx]
		btn.Text = tostring(S[flag])
	end)
end

pcall(function() -- ui pages
-- tabs
local overview = makePage("Overview", "Everything loaded — ESP on by default.")
local combat = makePage("Combat", "Silent, aimbot, hitbox, kill aura.")
local visuals = makePage("Visuals", "Every ESP option — toggles are live.")
local playerPage = makePage("Player", "Movement and world.")
local misc = makePage("Misc", "Staff, device, utility.")
local settings = makePage("Settings", "Range and UI.")
local about = makePage("About", "Vasper full build.")

section(overview, "STATUS", 82)
card(overview, "Systems", "ESP + silent + aimbot + hitbox + kill aura + speed + fly + staff + device.", 105, 90)
card(overview, "Defaults", "ESP suite ON. Combat OFF until you enable. RightShift = menu.", 205, 80)

section(combat, "SILENT", 82)
toggle(combat, "Silent Aim", "Hooks bullet/ray toward target.", 105, "SilentAim")
slider(combat, "Silent FOV", 184, 20, 400, "SilentFOV")
cycleButton(combat, "Hit Part", 276, "SilentPart", { "Head", "Torso", "HumanoidRootPart" })
toggle(combat, "Show Silent FOV", "Center FOV ring.", 355, "SilentShowFOV")

section(combat, "AIMBOT", 440)
toggle(combat, "Aimbot", "Smooth camera lock.", 463, "Aimbot")
cycleButton(combat, "Aim Key", 542, "AimKey", { "MB2", "MB1", "E", "Q", "F" })
cycleButton(combat, "Aim Mode", 621, "AimMode", { "Hold", "Toggle", "Always" })
slider(combat, "Aim FOV", 700, 20, 500, "AimFOV")
slider(combat, "Smoothness", 792, 1, 100, "AimSmooth")
toggle(combat, "Show Aim FOV", "Center FOV ring.", 884, "AimShowFOV")
toggle(combat, "Wall Check", "Only lock targets not behind walls.", 963, "WallCheck")

section(combat, "RAGE", 1050)
toggle(combat, "Hitbox Expand", "Grow enemy hit parts.", 1073, "Hitbox")
cycleButton(combat, "Hitbox Part", 1152, "HitboxPart", { "Head", "Torso", "Both" })
slider(combat, "Hitbox Size", 1231, 1, 40, "HitboxSize")
slider(combat, "Hitbox Transparency", 1323, 30, 98, "HitboxTransparency")
toggle(combat, "Kill Aura", "Follow from TOP + fat hitbox + shoot.", 1415, "KillAura")
slider(combat, "Aura Range", 1494, 10, 200, "KillAuraRange")
slider(combat, "Behind Dist", 1586, 0.5, 8, "KillAuraBehind")

section(visuals, "ESP MASTER", 82)
toggle(visuals, "ESP Enabled", "Master switch for all ESP.", 105, "ESP")
toggle(visuals, "Team Check", "Hide teammates.", 184, "TeamCheck")
toggle(visuals, "Visible Check", "Green = visible, red = behind wall.", 263, "VisibleCheck")

section(visuals, "DRAW", 350)
toggle(visuals, "Boxes", "2D box around players.", 373, "Boxes")
cycleButton(visuals, "Box Style", 452, "BoxStyle", { "Full", "Corner" })
toggle(visuals, "Names", "Player display name.", 531, "Names")
toggle(visuals, "Distance", "Meters away.", 610, "Distance")
toggle(visuals, "Health Bar", "Side HP bar.", 689, "Health")
toggle(visuals, "Head Dot", "Dot on head.", 768, "HeadDot")
toggle(visuals, "Chams", "Full body highlight.", 847, "Chams")
toggle(visuals, "Tracers", "Line to player.", 926, "Tracers")
cycleButton(visuals, "Tracer Origin", 1005, "TracerOrigin", { "Bottom", "Center" })
toggle(visuals, "Skeleton", "Bone lines (heavier).", 1084, "Skeleton")

section(playerPage, "MOVEMENT", 82)
toggle(playerPage, "Speed", "WalkSpeed boost.", 105, "Speed")
slider(playerPage, "Speed Value", 184, 16, 120, "SpeedValue")
toggle(playerPage, "Noclip", "Walk through walls.", 276, "Noclip")
toggle(playerPage, "Fly", "Press Fly Key to toggle.", 355, "Fly")
slider(playerPage, "Fly Speed", 434, 10, 120, "FlySpeed")
cycleButton(playerPage, "Fly Key", 526, "FlyKey", { "F", "G", "LeftControl", "V" })
toggle(playerPage, "Pos Freeze", "ON: walk free. OFF: stay at NEW pos (teleport style).", 618, "PosFreeze")
cycleButton(playerPage, "Freeze Key", 697, "PosFreezeKey", { "X", "C", "V", "Z", "T" })

section(playerPage, "WORLD", 790)
toggle(playerPage, "Fullbright", "Bright lighting.", 813, "Fullbright")
toggle(playerPage, "Custom FOV", "Camera field of view.", 892, "CustomFOV")
slider(playerPage, "FOV Value", 971, 40, 120, "FOVValue")

section(playerPage, "PERFORMANCE", 1070)
toggle(playerPage, "FPS Boost", "Low quality + no shadows/particles.", 1093, "FPSBoost")
toggle(playerPage, "Plastic Look", "Force plastic materials (with boost).", 1172, "FPSBoostPlastic")

section(misc, "PROTECT", 82)
toggle(misc, "Staff Detect", "Group rank check.", 105, "StaffDetect")
toggle(misc, "Auto Leave", "Kick self if staff found.", 184, "StaffLeave")
toggle(misc, "Device Spoof", "Jailbird DeviceUpdate remote.", 263, "DeviceSpoof")
cycleButton(misc, "Device Mode", 342, "DeviceMode", { "Console", "Desktop", "Mobile" })
slider(misc, "Spoof Delay (sec)", 421, 1, 5, "DeviceSpoofDelay")
toggle(misc, "Anti AFK", "Idle click.", 513, "AntiAFK")
toggle(misc, "Show FPS", "Watermark.", 592, "ShowPerf")
toggle(misc, "Auto Save Config", "Saves settings every 12s.", 671, "AutoSave")

section(settings, "RANGE", 82)
slider(settings, "Max Distance (m)", 105, 100, 3000, "MaxDistance")

section(about, "BUILD", 82)
card(about, "VASPER FULL", "ESP + combat + player + misc. RightShift toggles menu.", 105)
card(about, "Silent", "Enable Silent Aim, equip gun, wait for hook (or rejoin).", 183)

addNav("Overview", 1)
addNav("Combat", 2)
addNav("Visuals", 3)
addNav("Player", 4)
addNav("Misc", 5)
addNav("Settings", 6)
addNav("About", 7)
end)
if not pages.Overview then
	warn("[Vasper] page build failed — minimal UI")
end


activePage = "Overview"
pages[activePage].Visible = true
navButtons[activePage].TextColor3 = Theme.Text
navButtons[activePage].BackgroundColor3 = Theme.Hover
navButtons[activePage].Marker.BackgroundTransparency = 0

-- drag
do
	local dragging, dragStart, startPosition
	header.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPosition = window.Position
		end
	end)
	UserInputService.InputChanged:Connect(function(input)
		if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			local delta = input.Position - dragStart
			window.Position = UDim2.new(
				startPosition.X.Scale, startPosition.X.Offset + delta.X,
				startPosition.Y.Scale, startPosition.Y.Offset + delta.Y
			)
		end
	end)
	UserInputService.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = false
		end
	end)
end

closeButton.MouseButton1Click:Connect(function()
	window.Visible = false
end)

local visible = true
UserInputService.InputBegan:Connect(function(input, processed)
	if processed then return end
	if input.KeyCode == Enum.KeyCode.RightShift then
		visible = not visible
		window.Visible = visible
	end
end)

local function makeMobileBtn(name, text, pos, color)
	local b = create("TextButton", {
		Name = name,
		AnchorPoint = Vector2.new(1, 1),
		Position = pos,
		Size = UDim2.fromOffset(56, 46),
		BackgroundColor3 = color or Theme.Card,
		BorderSizePixel = 0,
		Text = text,
		TextColor3 = Theme.Text,
		Font = Enum.Font.GothamBold,
		TextSize = 14,
		Visible = UserInputService.TouchEnabled,
		ZIndex = 90,
		AutoButtonColor = false,
	}, gui)
	corner(b, 10)
	outline(b, Theme.Border)
	-- drag
	local dragging, dstart, pstart
	b.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = false
			dstart = input.Position
			pstart = b.Position
			local moved
			local c; c = input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End and c then c:Disconnect() end
			end)
			task.delay(0.12, function()
				if input.UserInputState == Enum.UserInputState.Change or input.UserInputState == Enum.UserInputState.Begin then
					-- allow drag after slight hold handled below
				end
			end)
		end
	end)
	UserInputService.InputChanged:Connect(function(input)
		if not dstart then return end
		if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement then
			local delta = input.Position - dstart
			if delta.Magnitude > 12 then
				dragging = true
				b.Position = UDim2.new(pstart.X.Scale, pstart.X.Offset + delta.X, pstart.Y.Scale, pstart.Y.Offset + delta.Y)
			end
		end
	end)
	UserInputService.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
			dstart = nil
			task.defer(function() dragging = false end)
		end
	end)
	return b, function() return dragging end
end

local touchToggle, touchDragging = makeMobileBtn("VasperTouchToggle", "MENU", UDim2.new(1, -12, 1, -12), Theme.Card)
local freezeBtn, freezeDragging = makeMobileBtn("VasperFreezeBtn", "FREEZE", UDim2.new(1, -76, 1, -12), Color3.fromRGB(40, 40, 55))

touchToggle.MouseButton1Click:Connect(function()
	if touchDragging and touchDragging() then return end
	visible = not visible
	window.Visible = visible
end)

freezeBtn.MouseButton1Click:Connect(function()
	if freezeDragging and freezeDragging() then return end
	togglePosFreeze()
	freezeBtn.Text = freezeActive and "STAY" or "FREEZE"
	freezeBtn.BackgroundColor3 = freezeActive and Color3.fromRGB(80, 40, 40) or Color3.fromRGB(40, 40, 55)
end)

-- Keep mobile buttons visible on touch devices
task.spawn(function()
	while gui and gui.Parent do
		local touch = UserInputService.TouchEnabled
		if touchToggle then touchToggle.Visible = touch and not window.Visible end
		if freezeBtn then freezeBtn.Visible = touch end
		if freezeBtn and freezeActive then
			freezeBtn.Text = "STAY"
		elseif freezeBtn then
			freezeBtn.Text = "FREEZE"
		end
		task.wait(0.35)
	end
end)

-- Terminal
local loader = create("Frame", {
	Name = "VasperTerminal",
	Size = UDim2.fromScale(1, 1),
	BackgroundColor3 = Color3.fromRGB(0, 0, 0),
	BackgroundTransparency = 0.12,
	BorderSizePixel = 0,
	ZIndex = 100,
}, gui)

local terminal = create("Frame", {
	AnchorPoint = Vector2.new(0.5, 0.5),
	Position = UDim2.fromScale(0.5, 0.5),
	Size = UDim2.fromOffset(650, 390),
	BackgroundColor3 = Color3.fromRGB(8, 8, 8),
	BorderSizePixel = 0,
	ZIndex = 101,
}, loader)
corner(terminal, 8)
outline(terminal, Color3.fromRGB(100, 100, 100))

local terminalTop = create("Frame", {
	Size = UDim2.new(1, 0, 0, 32),
	BackgroundColor3 = Color3.fromRGB(20, 20, 20),
	BorderSizePixel = 0,
	ZIndex = 102,
}, terminal)
create("TextLabel", {
	Position = UDim2.fromOffset(13, 0),
	Size = UDim2.new(1, -26, 1, 0),
	BackgroundTransparency = 1,
	Text = "vasper",
	TextColor3 = Color3.fromRGB(215, 215, 215),
	Font = Enum.Font.Code,
	TextSize = 12,
	TextXAlignment = Enum.TextXAlignment.Left,
	ZIndex = 103,
}, terminalTop)

create("TextLabel", {
	Position = UDim2.fromOffset(0, 46),
	Size = UDim2.new(1, 0, 0, 54),
	BackgroundTransparency = 1,
	Text = "VASPER HUB",
	TextColor3 = Color3.fromRGB(248, 248, 248),
	Font = Enum.Font.GothamBlack,
	TextSize = 36,
	TextXAlignment = Enum.TextXAlignment.Center,
	ZIndex = 102,
}, terminal)
create("TextLabel", {
	Position = UDim2.fromOffset(0, 99),
	Size = UDim2.new(1, 0, 0, 22),
	BackgroundTransparency = 1,
	Text = "FULL BUILD  /  ALL SYSTEMS",
	TextColor3 = Color3.fromRGB(145, 145, 145),
	Font = Enum.Font.Code,
	TextSize = 11,
	TextXAlignment = Enum.TextXAlignment.Center,
	ZIndex = 102,
}, terminal)

local terminalLog = create("TextLabel", {
	Position = UDim2.fromOffset(27, 148),
	Size = UDim2.new(1, -54, 0, 120),
	BackgroundTransparency = 1,
	Text = "> loading\n> esp / combat / misc\n> wait a sec...",
	TextColor3 = Color3.fromRGB(205, 205, 205),
	Font = Enum.Font.Code,
	TextSize = 12,
	TextWrapped = true,
	TextYAlignment = Enum.TextYAlignment.Top,
	TextXAlignment = Enum.TextXAlignment.Left,
	ZIndex = 102,
}, terminal)

local buttonRow = create("Frame", {
	Position = UDim2.new(0, 24, 1, -65),
	Size = UDim2.new(1, -48, 0, 38),
	BackgroundTransparency = 1,
	ZIndex = 103,
}, terminal)

local injectButton = create("TextButton", {
	Size = UDim2.new(0.64, 0, 1, 0),
	BackgroundColor3 = Color3.fromRGB(235, 235, 235),
	Text = "INJECT",
	TextColor3 = Color3.fromRGB(12, 12, 12),
	Font = Enum.Font.GothamBold,
	TextSize = 12,
	AutoButtonColor = false,
	ZIndex = 104,
}, buttonRow)
corner(injectButton, 5)

local closeTerminalButton = create("TextButton", {
	Position = UDim2.new(0.70, 0, 0, 0),
	Size = UDim2.new(0.30, 0, 1, 0),
	BackgroundColor3 = Color3.fromRGB(16, 16, 16),
	BorderSizePixel = 1,
	BorderColor3 = Color3.fromRGB(100, 100, 100),
	Text = "CLOSE",
	TextColor3 = Color3.fromRGB(235, 235, 235),
	Font = Enum.Font.GothamBold,
	TextSize = 12,
	AutoButtonColor = false,
	ZIndex = 104,
}, buttonRow)
corner(closeTerminalButton, 5)

local function openHub()
	pcall(function()
		window.Visible = true
		touchToggle.Visible = UserInputService.TouchEnabled
		uiScale.Scale = 0.94
		animate(uiScale, 0.22, { Scale = 1 })
		if loader and loader.Parent then
			loader:Destroy()
		end
	end)
end

injectButton.MouseButton1Click:Connect(function()
	injectButton.Text = "LOADING..."
	terminalLog.Text = "> ok\n> opening..."
	task.wait(0.2)
	openHub()
end)

closeTerminalButton.MouseButton1Click:Connect(function()
	gui:Destroy()
	clearAllESP()
	getgenv().VasperFull = nil
end)

-- auto open hub
task.defer(function()
	task.wait(0.6)
	if window and window.Parent and not window.Visible then
		pcall(openHub)
	end
end)

-- fps label
local wm = Instance.new("TextLabel")
wm.BackgroundTransparency = 1
wm.Position = UDim2.fromOffset(10, 8)
wm.Size = UDim2.fromOffset(220, 18)
wm.Font = Enum.Font.Code
wm.TextSize = 12
wm.TextColor3 = Color3.fromRGB(255, 255, 255)
wm.TextXAlignment = Enum.TextXAlignment.Left
wm.Text = ""
wm.Parent = gui
task.spawn(function()
	while gui.Parent do
		task.wait(0.5)
		if S.ShowPerf then
			local ping = 0
			pcall(function()
				ping = math.floor(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValue())
			end)
			wm.Text = string.format("vasper  fps %d  ms %d", fps, ping)
			wm.Visible = true
		else
			wm.Visible = false
		end
	end
end)

-- rehook silent if they turn it on later
task.spawn(function()
	local last = false
	while true do
		task.wait(1)
		if S.SilentAim and not last then
			pcall(trySilentHook, true)
		end
		last = S.SilentAim
	end
end)


-- sync freeze toggle
task.spawn(function()
	local last = false
	while true do
		task.wait(0.15)
		if S.PosFreeze and not last then
			if not freezeActive then setPosFreeze(true) end
		elseif (not S.PosFreeze) and last then
			if freezeActive then setPosFreeze(false) end
		end
		last = freezeActive
		-- keep UI flag in sync
		S.PosFreeze = freezeActive
	end
end)

print("[vasper] loaded | rightshift = menu")
