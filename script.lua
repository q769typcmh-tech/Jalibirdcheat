-- Moon Hub | Jailbird | PUBLIC
-- PC/Mac only. Mobile users are kicked.
-- ScreenGui ESP always enabled, no Drawing library required, shows through walls
-- FOV circle hidden UI

pcall(function()
	if not game:IsLoaded() then game.Loaded:Wait() end
end)
task.wait(0.25)

local getgenv = getgenv or function() return _G end
local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")
local Stats = game:GetService("Stats")
local HttpService = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local VIM = game:GetService("VirtualInputManager")
local Camera = workspace.CurrentCamera

-- Mobile check: kick mobile users
local platform = UIS:GetPlatform()
if platform == Enum.Platform.IOS or platform == Enum.Platform.Android then
	local LocalPlayer = Players.LocalPlayer
	if LocalPlayer then
		pcall(function()
			LocalPlayer:Kick("Sorry bro this is for PC, there is no mobile version.")
		end)
	end
	return
end

local LP = Players.LocalPlayer or Players.PlayerAdded:Wait()
local PlayerGui = LP:WaitForChild("PlayerGui", 60)
if not PlayerGui then warn("[Moon] PlayerGui timeout") return end

local function getHiddenParent()
	if gethui then
		local ok, h = pcall(function() return gethui() end)
		if ok and h then return h end
	end
	return game:GetService("CoreGui")
end
local HiddenParent = getHiddenParent()

-- Clean old UIs
pcall(function()
	for _, n in ipairs({ "MoonHubUI", "MoonCursorUI", "MoonLoadUI", "MoonFOVGui", "MoonESPGui" }) do
		local a = PlayerGui:FindFirstChild(n)
		if a then a:Destroy() end
		local b = HiddenParent:FindFirstChild(n)
		if b then b:Destroy() end
	end
end)
task.wait(0.05)

local Mouse
pcall(function() Mouse = LP:GetMouse() end)

------------------------------------------------
-- EXECUTOR DETECT
------------------------------------------------
local function getExecutorName()
	local name = "Unknown"
	pcall(function()
		if identifyexecutor then
			local n, v = identifyexecutor()
			name = tostring(n or "Unknown")
			if v then name = name .. " " .. tostring(v) end
		elseif getexecutorname then
			name = tostring(getexecutorname())
		elseif syn and syn.request then
			name = "Synapse"
		elseif fluxus then
			name = "Fluxus"
		elseif KRNL_LOADED then
			name = "Krnl"
		elseif is_sirhurt_closure then
			name = "Sirhurt"
		elseif pebc_execute then
			name = "Parallel"
		elseif SecureDelta or getgenv().SecureDelta then
			name = "Delta"
		elseif getgenv().drew or getgenv().IS_COCO_LOADED then
			name = "Coco"
		elseif getgenv().X.X or getgenv().WXApple then
			name = "Wave"
		elseif getgenv().IsElectron then
			name = "Electron"
		elseif getgenv().executor_name then
			name = tostring(getgenv().executor_name)
		end
	end)
	if name == "Unknown" or name == "" then
		pcall(function()
			if getgenv().OPIUMWARE or getgenv().Opiumware then name = "Opiumware" end
		end)
	end
	return name
end

local EXECUTOR_NAME = getExecutorName()

------------------------------------------------
-- LOADING UI
------------------------------------------------
local LoadGui = Instance.new("ScreenGui")
LoadGui.Name = "MoonLoadUI"
LoadGui.ResetOnSpawn = false
LoadGui.IgnoreGuiInset = true
LoadGui.DisplayOrder = 9999
LoadGui.Parent = PlayerGui

task.spawn(function()
	task.wait(8)
	pcall(function() if LoadGui and LoadGui.Parent then LoadGui:Destroy() end end)
end)

local LoadBg = Instance.new("Frame")
LoadBg.Size = UDim2.new(1, 0, 1, 0)
LoadBg.BackgroundColor3 = Color3.fromRGB(8, 8, 12)
LoadBg.BorderSizePixel = 0
LoadBg.Parent = LoadGui

local LoadCard = Instance.new("Frame")
LoadCard.Size = UDim2.new(0, 320, 0, 160)
LoadCard.Position = UDim2.new(0.5, -160, 0.5, -80)
LoadCard.BackgroundColor3 = Color3.fromRGB(16, 16, 22)
LoadCard.BorderSizePixel = 0
LoadCard.Parent = LoadBg
Instance.new("UICorner", LoadCard).CornerRadius = UDim.new(0, 14)

local LoadTitle = Instance.new("TextLabel")
LoadTitle.Size = UDim2.new(1, -20, 0, 28)
LoadTitle.Position = UDim2.new(0, 10, 0, 14)
LoadTitle.BackgroundTransparency = 1
LoadTitle.Text = "MOON HUB"
LoadTitle.TextColor3 = Color3.fromRGB(138, 99, 255)
LoadTitle.TextSize = 20
LoadTitle.Font = Enum.Font.GothamBold
LoadTitle.Parent = LoadCard

local LoadSub = Instance.new("TextLabel")
LoadSub.Size = UDim2.new(1, -20, 0, 18)
LoadSub.Position = UDim2.new(0, 10, 0, 42)
LoadSub.BackgroundTransparency = 1
LoadSub.Text = "jailbird"
LoadSub.TextColor3 = Color3.fromRGB(160, 160, 180)
LoadSub.TextSize = 12
LoadSub.Font = Enum.Font.Gotham
LoadSub.Parent = LoadCard

local LoadStatus = Instance.new("TextLabel")
LoadStatus.Size = UDim2.new(1, -20, 0, 18)
LoadStatus.Position = UDim2.new(0, 10, 0, 70)
LoadStatus.BackgroundTransparency = 1
LoadStatus.Text = "Starting..."
LoadStatus.TextColor3 = Color3.fromRGB(220, 220, 230)
LoadStatus.TextSize = 12
LoadStatus.Font = Enum.Font.Gotham
LoadStatus.TextXAlignment = Enum.TextXAlignment.Left
LoadStatus.Parent = LoadCard

local BarBG = Instance.new("Frame")
BarBG.Size = UDim2.new(1, -24, 0, 10)
BarBG.Position = UDim2.new(0, 12, 0, 100)
BarBG.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
BarBG.BorderSizePixel = 0
BarBG.Parent = LoadCard
Instance.new("UICorner", BarBG).CornerRadius = UDim.new(1, 0)

local BarFill = Instance.new("Frame")
BarFill.Size = UDim2.new(0, 0, 1, 0)
BarFill.BackgroundColor3 = Color3.fromRGB(138, 99, 255)
BarFill.BorderSizePixel = 0
BarFill.Parent = BarBG
Instance.new("UICorner", BarFill).CornerRadius = UDim.new(1, 0)

local LoadInfo = Instance.new("TextLabel")
LoadInfo.Size = UDim2.new(1, -20, 0, 32)
LoadInfo.Position = UDim2.new(0, 10, 0, 118)
LoadInfo.BackgroundTransparency = 1
LoadInfo.Text = "Executor: " .. EXECUTOR_NAME
LoadInfo.TextColor3 = Color3.fromRGB(140, 140, 160)
LoadInfo.TextSize = 11
LoadInfo.Font = Enum.Font.Gotham
LoadInfo.TextXAlignment = Enum.TextXAlignment.Left
LoadInfo.TextYAlignment = Enum.TextYAlignment.Top
LoadInfo.Parent = LoadCard

local function setLoad(pct, text)
	pct = math.clamp(pct, 0, 1)
	pcall(function()
		LoadStatus.Text = text or LoadStatus.Text
		TweenService:Create(BarFill, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {
			Size = UDim2.new(pct, 0, 1, 0)
		}):Play()
	end)
end

setLoad(0.08, "Detecting executor...")
task.wait(0.2)
setLoad(0.2, "Executor: " .. EXECUTOR_NAME)
task.wait(0.15)
setLoad(0.35, "Loading config...")
task.wait(0.1)

------------------------------------------------
-- FILE / CONFIG
------------------------------------------------
local function sw(p, d) pcall(function() if writefile then writefile(p, d) end end) end
local function sr(p)
	local ok, d = pcall(function()
		if isfile and isfile(p) and readfile then return readfile(p) end
	end)
	return ok and d or nil
end
pcall(function() if makefolder then makefolder("MoonHub") makefolder("MoonHub/Configs") end end)

getgenv().MoonHubState = getgenv().MoonHubState or {}
local S = getgenv().MoonHubState
local DEF = {
	Aimbot = false, AimKey = "MB2", AimMode = "Hold",
	AimFOV = 150, AimSmooth = 0.95, ShowFOV = false,
	WallCheck = true, TeamCheck = true, Prediction = true, PredictAmount = 0.12,
	Triggerbot = false, TriggerFOV = 55, TriggerDelay = 0.06,
	KillAura = false, KillAuraRange = 90, KillAuraBehind = 3.2,
	CustomFOV = false, FOVValue = 90,
	Speed = false, SpeedValue = 24, Noclip = false, AntiBow = true,
	StreamProof = false, SpoofName = "Player", ShowVerified = true,
	StaffDetect = false, StaffLeave = false,
	ESP = false, ShowBoxes = true, BoxStyle = "Corner",
	ShowNames = true, ShowDistance = true, ShowHealth = true, ShowHeadDot = true,
	RGBESP = false, ESPColorR = 170, ESPColorG = 0, ESPColorB = 255,
	Hitbox = false, HitboxPart = "Head", HitboxSize = 3,
	Radar = false, RadarSize = 140, RadarRange = 200,
	CursorName = "Off", CursorSize = 32,
	DeviceSpoof = false, DeviceMode = "Console", DeviceSpoofDelay = 1.5,
	ScreenStretch = false, StretchAmount = 0.53,
	ShowPerf = true, Potato = false,
	MobileAim = false, MobileSmooth = 0.9, MobileFOV = 160, MobileShowFOV = true,
	ConfigName = "default",
}
for k, v in pairs(DEF) do
	if S[k] == nil then S[k] = v end
end
S.NoRecoil = nil
S.NoJumpCooldown = nil
S.KillAuraDelay = nil
S.HideFromRecord = nil
if type(S.CursorSize) ~= "number" then S.CursorSize = 32 end
if type(S.AimSmooth) ~= "number" then S.AimSmooth = 0.95 end
if type(S.FOVValue) ~= "number" then S.FOVValue = 90 end
if type(S.TriggerDelay) ~= "number" then S.TriggerDelay = 0.06 end
if type(S.TriggerFOV) ~= "number" then S.TriggerFOV = 55 end
if type(S.DeviceSpoofDelay) ~= "number" then S.DeviceSpoofDelay = 1.5 end
S.StretchAmount = math.clamp(tonumber(S.StretchAmount) or 0.53, 0.3, 1)
if S.HitboxPart ~= "Head" and S.HitboxPart ~= "Torso" then S.HitboxPart = "Head" end
if type(S.KillAuraRange) ~= "number" then S.KillAuraRange = 90 end
if type(S.KillAuraBehind) ~= "number" then S.KillAuraBehind = 3.2 end

local stretchReady = false
task.delay(2.5, function() stretchReady = true end)

local function saveCfg()
	local n = tostring(S.ConfigName or "default"):gsub("[^%w%-%_]", "")
	if n == "" then n = "default" end
	S.ConfigName = n
	S.NoRecoil = nil
	S.NoJumpCooldown = nil
	S.KillAuraDelay = nil
	S.HideFromRecord = nil
	S.StretchAmount = math.clamp(tonumber(S.StretchAmount) or 0.53, 0.3, 1)
	sw("MoonHub/Configs/" .. n .. ".json", HttpService:JSONEncode(S))
	sw("MoonHub/Jailbird.json", HttpService:JSONEncode(S))
end
local function loadCfg()
	local n = tostring(S.ConfigName or "default"):gsub("[^%w%-%_]", "")
	local raw = sr("MoonHub/Configs/" .. n .. ".json") or sr("MoonHub/Jailbird.json")
	if raw then
		pcall(function()
			local d = HttpService:JSONDecode(raw)
			if type(d) == "table" then
				for k, v in pairs(d) do S[k] = v end
			end
		end)
	end
	S.NoRecoil = nil
	S.NoJumpCooldown = nil
	S.KillAuraDelay = nil
	S.HideFromRecord = nil
	if type(S.DeviceSpoofDelay) ~= "number" then S.DeviceSpoofDelay = 1.5 end
	S.StretchAmount = math.clamp(tonumber(S.StretchAmount) or 0.53, 0.3, 1)
	if not stretchReady then
		local wantStretch = S.ScreenStretch == true
		S.ScreenStretch = false
		task.delay(2.6, function()
			if wantStretch then S.ScreenStretch = true end
			stretchReady = true
		end)
	end
	if S.HitboxPart ~= "Head" and S.HitboxPart ~= "Torso" then S.HitboxPart = "Head" end
end
pcall(loadCfg)

setLoad(0.65, "Loading ScreenGui ESP...")

local ACCENT = Color3.fromRGB(138, 99, 255)
local BG = Color3.fromRGB(12, 12, 16)
local PANEL = Color3.fromRGB(18, 18, 24)
local CARD = Color3.fromRGB(20, 20, 28)
local TEXT = Color3.fromRGB(235, 235, 245)
local MUTED = Color3.fromRGB(160, 160, 180)
local FONT = Enum.Font.Gotham

local function getESPColor()
	if S.RGBESP then
		return Color3.fromHSV((tick() * 0.4) % 1, 1, 1)
	end
	return Color3.fromRGB(
		math.clamp(tonumber(S.ESPColorR) or 170, 0, 255),
		math.clamp(tonumber(S.ESPColorG) or 0, 0, 255),
		math.clamp(tonumber(S.ESPColorB) or 255, 0, 255)
	)
end

local function unlockMouse()
	pcall(function()
		UIS.MouseBehavior = Enum.MouseBehavior.Default
		UIS.MouseIconEnabled = true
	end)
end

local CURSORS = {
	{ Name = "Off", Id = nil },
	{ Name = "Game Crosshair", Id = "GAME" },
	{ Name = "Star Wars", Id = "5462831" },
	{ Name = "Snowflake", Id = "11780968239" },
	{ Name = "Red Dot", Id = "412284862" },
	{ Name = "Diamond", Id = "61210994" },
	{ Name = "Hello Kitty", Id = "10973237327" },
	{ Name = "Eye", Id = "12534101433" },
}
local CURSOR_NAMES = {}
for i, c in ipairs(CURSORS) do CURSOR_NAMES[i] = c.Name end

local CursorGui = Instance.new("ScreenGui")
CursorGui.Name = "MoonCursorUI"
CursorGui.ResetOnSpawn = false
CursorGui.IgnoreGuiInset = true
CursorGui.DisplayOrder = 10000
CursorGui.Parent = PlayerGui
local CursorImg = Instance.new("ImageLabel")
CursorImg.BackgroundTransparency = 1
CursorImg.AnchorPoint = Vector2.new(0.5, 0.5)
CursorImg.Size = UDim2.new(0, 32, 0, 32)
CursorImg.Visible = false
CursorImg.ZIndex = 100
CursorImg.Parent = CursorGui

local function setGameCH(on)
	local ch = PlayerGui:FindFirstChild("Crosshair")
	if not ch then return end
	pcall(function()
		if ch:IsA("ScreenGui") then ch.Enabled = on end
		ch.Visible = on
		for _, d in ipairs(ch:GetDescendants()) do
			if d:IsA("GuiObject") then d.Visible = on end
		end
	end)
end

local function applyCursor(name)
	name = name or S.CursorName or "Off"
	S.CursorName = name
	local entry = CURSORS[1]
	for _, c in ipairs(CURSORS) do
		if c.Name == name then entry = c break end
	end
	setGameCH(false)
	CursorImg.Visible = false
	local sz = math.clamp(tonumber(S.CursorSize) or 32, 8, 128)
	CursorImg.Size = UDim2.new(0, sz, 0, sz)
	if not entry.Id or entry.Name == "Off" then
		pcall(function()
			if Mouse then Mouse.Icon = "" end
			UIS.MouseIconEnabled = true
		end)
		return
	end
	if entry.Id == "GAME" then
		setGameCH(true)
		pcall(function()
			if Mouse then Mouse.Icon = "rbxassetid://0" end
			UIS.MouseIconEnabled = true
		end)
		return
	end
	pcall(function()
		UIS.MouseIconEnabled = false
		if Mouse then Mouse.Icon = "rbxassetid://0" end
		CursorImg.Image = "rbxassetid://" .. tostring(entry.Id)
		CursorImg.Visible = true
	end)
end

local defaultFOV = 70
pcall(function() defaultFOV = Camera.FieldOfView end)
local function applyFOV()
	if not S.CustomFOV then return end
	local v = math.clamp(tonumber(S.FOVValue) or 90, 40, 120)
	pcall(function()
		if math.abs(Camera.FieldOfView - v) > 0.5 then
			Camera.FieldOfView = v
		end
	end)
end

local isAimLocking = false
local function applyScreenStretch()
	if not stretchReady then return end
	if not S.ScreenStretch then return end
	if isAimLocking then return end
	if not Camera or not Camera.Parent then return end
	local amount = math.clamp(tonumber(S.StretchAmount) or 0.53, 0.3, 1)
	if amount >= 0.995 then return end
	pcall(function()
		local cf = Camera.CFrame
		if cf then
			Camera.CFrame = cf * CFrame.new(0, 0, 0, 1, 0, 0, 0, amount, 0, 0, 0, 1)
		end
	end)
end

local function faceBodyTo(worldPos)
	local my = LP.Character
	if not my then return end
	local root = my:FindFirstChild("HumanoidRootPart")
	if not root or not worldPos then return end
	pcall(function()
		local p = root.Position
		root.CFrame = CFrame.new(p, Vector3.new(worldPos.X, p.Y, worldPos.Z))
	end)
end

local function getChar(p)
	if not p then return nil end
	local ok, c = pcall(function() return p.Character end)
	return ok and c or nil
end
local function isAlive(p)
	local c = getChar(p)
	if not c then return false end
	local h = c:FindFirstChildOfClass("Humanoid")
	return h ~= nil and h.Health > 0
end
local function isEnemy(p)
	if not p or p == LP then return false end
	if not S.TeamCheck then return true end
	local a, b = LP.Team, p.Team
	if a and b then return a ~= b end
	return true
end

local SOLID_NAMES = {
	"box","crate","barrel","dumpster","trash","container","shipping",
	"wall","pillar","fence","gate","car","truck","van","generator",
	"cabinet","shelf","locker","desk","table","couch","bench",
	"stairs","ladder","ramp","pipe","vent","sandbag","pallet","forklift",
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
	if not S.WallCheck then return true end
	local char = getChar(plr)
	local head = char and char:FindFirstChild("Head")
	if not head then return false end
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

local function predictPos(head, char)
	if not S.Prediction or not head then return head.Position end
	local root = char and (char:FindFirstChild("HumanoidRootPart") or char:FindFirstChild("Torso"))
	local vel = Vector3.zero
	if root then pcall(function() vel = root.AssemblyLinearVelocity end) end
	return head.Position + vel * (tonumber(S.PredictAmount) or 0.12)
end

local function getClosest(fov, needVis)
	local best, bestPos, bd = nil, nil, fov
	local center = Camera.ViewportSize / 2
	for _, plr in ipairs(Players:GetPlayers()) do
		if plr ~= LP and isEnemy(plr) and isAlive(plr) then
			local char = getChar(plr)
			local head = char and char:FindFirstChild("Head")
			if head then
				local aimAt = predictPos(head, char)
				local pos, on = Camera:WorldToViewportPoint(aimAt)
				if on and pos.Z > 0 then
					local d = (Vector2.new(pos.X, pos.Y) - center).Magnitude
					if d < bd and ((not needVis) or isVisible(plr)) then
						bd = d
						best = plr
						bestPos = aimAt
					end
				end
			end
		end
	end
	return best, bestPos
end

local origSizes = {}
local function getTorso(char)
	return char and (char:FindFirstChild("Torso") or char:FindFirstChild("UpperTorso"))
end
local function restorePart(part)
	if not part then return end
	local o = origSizes[part]
	if o then
		pcall(function() part.Size = o end)
		origSizes[part] = nil
	end
end
local function restoreAllHitboxes()
	for part, _ in pairs(origSizes) do restorePart(part) end
	origSizes = {}
end
local function expandOne(part, size)
	if not part or not part:IsA("BasePart") then return end
	if origSizes[part] == nil then origSizes[part] = part.Size end
	local s = math.clamp(tonumber(size) or 3, 1.2, 12)
	pcall(function()
		part.Size = Vector3.new(s, s, s)
		part.Massless = true
		part.CanCollide = false
	end)
end
local function updateHitboxes()
	if not S.Hitbox then
		restoreAllHitboxes()
		return
	end
	local partName = S.HitboxPart
	local size = tonumber(S.HitboxSize) or 3
	for _, plr in ipairs(Players:GetPlayers()) do
		if plr ~= LP and isEnemy(plr) and isAlive(plr) then
			local char = getChar(plr)
			if char then
				local head = char:FindFirstChild("Head")
				local torso = getTorso(char)
				if partName == "Head" then
					if head then expandOne(head, size) end
					if torso then restorePart(torso) end
				else
					if torso then expandOne(torso, size) end
					if head then restorePart(head) end
				end
			end
		end
	end
end

local lastTrigger = 0
local function getEquippedTool()
	local char = getChar(LP)
	if not char then return nil end
	return char:FindFirstChildOfClass("Tool")
end
local function doShoot()
	local tool = getEquippedTool()
	if tool then
		pcall(function() tool:Activate() end)
		task.defer(function()
			pcall(function()
				if tool and tool.Parent then tool:Activate() end
			end)
		end)
	end
	pcall(function()
		local vs = Camera.ViewportSize
		local cx, cy = vs.X / 2, vs.Y / 2
		VIM:SendMouseButtonEvent(cx, cy, 0, true, game, 1)
		task.wait(0.02)
		VIM:SendMouseButtonEvent(cx, cy, 0, false, game, 1)
	end)
end
local function runTriggerbot()
	if not S.Triggerbot then return end
	if not getEquippedTool() then return end
	local delay = tonumber(S.TriggerDelay) or 0.06
	if tick() - lastTrigger < delay then return end
	local fov = tonumber(S.TriggerFOV) or 55
	local plr = getClosest(fov, S.WallCheck)
	if plr then
		lastTrigger = tick()
		doShoot()
	end
end

local kaTarget = nil
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
local function stickBehind(plr)
	local my = getChar(LP)
	local myRoot = my and my:FindFirstChild("HumanoidRootPart")
	local char = getChar(plr)
	local root = char and char:FindFirstChild("HumanoidRootPart")
	local head = char and char:FindFirstChild("Head")
	if not myRoot or not root or not head then return false end
	local behind = tonumber(S.KillAuraBehind) or 3.2
	local look = root.CFrame.LookVector
	local pos = root.Position - look * behind + Vector3.new(0, 1.4, 0)
	pcall(function()
		myRoot.CFrame = CFrame.new(pos, head.Position)
	end)
	pcall(function()
		Camera.CFrame = CFrame.new(Camera.CFrame.Position, head.Position)
	end)
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
	if stickBehind(kaTarget) then
		doShoot()
	else
		kaTarget = nil
	end
end

local DeviceRemote = nil
pcall(function()
	DeviceRemote = ReplicatedStorage:WaitForChild("GameEvents", 8):WaitForChild("DeviceUpdate", 8)
end)
local function fireDevice()
	if not DeviceRemote then
		pcall(function()
			DeviceRemote = ReplicatedStorage.GameEvents.DeviceUpdate
		end)
	end
	if not DeviceRemote then return end
	local mode = S.DeviceMode or "Console"
	pcall(function()
		if mode == "Console" then
			DeviceRemote:FireServer()
			pcall(function() DeviceRemote:FireServer("Console") end)
		elseif mode == "Desktop" then
			DeviceRemote:FireServer("Desktop")
		else
			DeviceRemote:FireServer("Mobile")
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

setLoad(0.78, "Building ESP...")

-- ================== SCREENGUI ESP (always shows through walls) ==================
local ESPGui = Instance.new("ScreenGui")
ESPGui.Name = "MoonESPGui"
ESPGui.ResetOnSpawn = false
ESPGui.IgnoreGuiInset = true
ESPGui.DisplayOrder = 99999
ESPGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ESPGui.Parent = HiddenParent

local ESPObjects = {}

local function clearESPObjects()
	for plr, data in pairs(ESPObjects) do
		for _, obj in pairs(data) do
			pcall(function() obj:Destroy() end)
		end
		ESPObjects[plr] = nil
	end
end

local function makeESP(plr)
	if ESPObjects[plr] then return ESPObjects[plr] end

	local box = Instance.new("Frame")
	box.BackgroundTransparency = 1
	box.BorderSizePixel = 0
	box.Visible = false
	box.ZIndex = 999
	box.Parent = ESPGui
	pcall(function() Instance.new("UICorner", box).CornerRadius = UDim.new(0, 4) end)

	local stroke
	pcall(function()
		stroke = Instance.new("UIStroke")
		stroke.Color = Color3.new(1, 1, 1)
		stroke.Thickness = 1.5
		stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
		stroke.Parent = box
	end)

	local name = Instance.new("TextLabel")
	name.BackgroundTransparency = 1
	name.TextColor3 = Color3.new(1, 1, 1)
	name.TextSize = 12
	name.Font = Enum.Font.SourceSansBold
	name.TextStrokeTransparency = 0
	name.Visible = false
	name.ZIndex = 999
	name.Parent = ESPGui

	local dist = Instance.new("TextLabel")
	dist.BackgroundTransparency = 1
	dist.TextColor3 = Color3.new(1, 1, 1)
	dist.TextSize = 10
	dist.Font = Enum.Font.SourceSans
	dist.TextStrokeTransparency = 0
	dist.Visible = false
	dist.ZIndex = 999
	dist.Parent = ESPGui

	local health = Instance.new("Frame")
	health.BackgroundTransparency = 1
	health.BorderSizePixel = 0
	health.Visible = false
	health.ZIndex = 999
	health.Parent = ESPGui

	ESPObjects[plr] = {
		box = box,
		stroke = stroke,
		name = name,
		dist = dist,
		health = health,
	}
	return ESPObjects[plr]
end

local function updateScreenESP()
	if not S.ESP then
		clearESPObjects()
		return
	end

	local col = getESPColor()
	local myRoot = getChar(LP) and getChar(LP):FindFirstChild("HumanoidRootPart")
	local aliveSet = {}

	for _, plr in ipairs(Players:GetPlayers()) do
		if plr ~= LP and isEnemy(plr) and isAlive(plr) then
			aliveSet[plr] = true
			local char = getChar(plr)
			local root = char and (char:FindFirstChild("HumanoidRootPart") or char:FindFirstChild("Torso"))
			local head = char and char:FindFirstChild("Head")
			local hum = char and char:FindFirstChildOfClass("Humanoid")

			if root and head then
				local d = makeESP(plr)

				local rootScreen, rootOn = Camera:WorldToViewportPoint(root.Position)
				local headScreen, headOn = Camera:WorldToViewportPoint(head.Position + Vector3.new(0, 1.1, 0))
				local legScreen, legOn = Camera:WorldToViewportPoint(root.Position - Vector3.new(0, 2.8, 0))

				if headOn and rootScreen.Z > 0 then
					local h = math.max(math.abs(legScreen.Y - headScreen.Y), 10)
					local w = math.clamp(h / 1.85, 8, 120)
					local posX = rootScreen.X - w / 2
					local posY = headScreen.Y

					d.box.Size = UDim2.new(0, w, 0, h)
					d.box.Position = UDim2.new(0, posX, 0, posY)
					d.box.Visible = S.ShowBoxes
					if d.stroke then
						d.stroke.Color = col
					end

					if S.ShowNames then
						d.name.Text = plr.DisplayName
						d.name.TextColor3 = col
						d.name.Position = UDim2.new(0, rootScreen.X, 0, posY - 18)
						d.name.Visible = true
					else
						d.name.Visible = false
					end

					if S.ShowDistance and myRoot then
						d.dist.Text = math.floor((root.Position - myRoot.Position).Magnitude) .. "m"
						d.dist.TextColor3 = col
						d.dist.Position = UDim2.new(0, rootScreen.X, 0, posY + h + 2)
						d.dist.Visible = true
					else
						d.dist.Visible = false
					end

					if S.ShowHealth and hum then
						local pct = math.clamp(hum.Health / math.max(hum.MaxHealth, 1), 0, 1)
						d.health.Size = UDim2.new(0, 3, 0, h)
						d.health.Position = UDim2.new(0, posX - 6, 0, posY)
						d.health.BackgroundColor3 = col
						d.health.Visible = true
					else
						d.health.Visible = false
					end
				else
					d.box.Visible = false
					d.name.Visible = false
					d.dist.Visible = false
					d.health.Visible = false
				end
			end
		end
	end

	for plr, data in pairs(ESPObjects) do
		if not aliveSet[plr] then
			for _, obj in pairs(data) do
				pcall(function() obj:Destroy() end)
			end
			ESPObjects[plr] = nil
		end
	end
end

Players.PlayerRemoving:Connect(function(p)
	pcall(function()
		local d = ESPObjects[p]
		if d then
			for _, obj in pairs(d) do pcall(function() obj:Destroy() end) end
			ESPObjects[p] = nil
		end
	end)
	if kaTarget == p then kaTarget = nil end
	local char = getChar(p)
	if char then
		restorePart(char:FindFirstChild("Head"))
		restorePart(getTorso(char))
	end
end)
local function hookChar(p)
	p.CharacterRemoving:Connect(function() pcall(clearESPObjects) end)
	p.CharacterAdded:Connect(function()
		task.wait(0.3)
		pcall(clearESPObjects)
	end)
end
Players.PlayerAdded:Connect(hookChar)
for _, p in ipairs(Players:GetPlayers()) do hookChar(p) end

local potatoOn = false
local function applyPotato(on)
	if on == potatoOn then return end
	potatoOn = on
	pcall(function()
		Lighting.GlobalShadows = not on
		if on then
			Lighting.FogEnd = 9e9
			if settings and settings().Rendering then
				settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
			end
			for _, o in ipairs(workspace:GetDescendants()) do
				if o:IsA("BasePart") then
					local skip = false
					for _, plr in ipairs(Players:GetPlayers()) do
						if plr.Character and o:IsDescendantOf(plr.Character) then skip = true break end
					end
					if not skip then
						o.Material = Enum.Material.SmoothPlastic
						o.CastShadow = false
					end
				elseif o:IsA("ParticleEmitter") or o:IsA("Trail") or o:IsA("Beam") then
					o.Enabled = false
				end
			end
		end
	end)
end

local VERIFIED_MARK = "✓"
pcall(function()
	if utf8 and utf8.char then
		VERIFIED_MARK = utf8.char(0xE000)
	end
end)

setLoad(0.9, "Building UI...")

local Gui = Instance.new("ScreenGui")
Gui.Name = "MoonHubUI"
Gui.ResetOnSpawn = false
Gui.IgnoreGuiInset = true
Gui.DisplayOrder = 999
Gui.Parent = PlayerGui

local Main = Instance.new("Frame")
Main.Size = UDim2.new(0, math.min(540, Camera.ViewportSize.X - 20), 0, math.min(420, Camera.ViewportSize.Y - 50))
Main.Position = UDim2.new(0.5, -Main.Size.X.Offset / 2, 0.5, -Main.Size.Y.Offset / 2)
Main.BackgroundColor3 = BG
Main.BackgroundTransparency = 0.15
Main.BorderSizePixel = 0
Main.Visible = false
Main.Parent = Gui
Instance.new("UICorner", Main).CornerRadius = UDim.new(0, 12)

local Top = Instance.new("Frame")
Top.Size = UDim2.new(1, 0, 0, 40)
Top.BackgroundColor3 = PANEL
Top.BorderSizePixel = 0
Top.Parent = Main
Instance.new("UICorner", Top).CornerRadius = UDim.new(0, 12)
local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, -40, 1, 0)
Title.Position = UDim2.new(0, 12, 0, 0)
Title.BackgroundTransparency = 1
Title.Text = "MOON HUB  |  jailbird"
Title.TextColor3 = TEXT
Title.TextSize = 14
Title.Font = FONT
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = Top
local Close = Instance.new("TextButton")
Close.Size = UDim2.new(0, 28, 0, 28)
Close.Position = UDim2.new(1, -34, 0.5, -14)
Close.BackgroundColor3 = Color3.fromRGB(40, 30, 50)
Close.Text = "X"
Close.TextColor3 = MUTED
Close.Font = FONT
Close.TextSize = 14
Close.Parent = Top
Instance.new("UICorner", Close).CornerRadius = UDim.new(0, 6)

local StatusBar = Instance.new("TextLabel")
StatusBar.Size = UDim2.new(1, -16, 0, 18)
StatusBar.Position = UDim2.new(0, 8, 0, 40)
StatusBar.BackgroundTransparency = 1
StatusBar.Text = "Executor: " .. EXECUTOR_NAME
StatusBar.TextColor3 = MUTED
StatusBar.TextSize = 11
StatusBar.Font = FONT
StatusBar.TextXAlignment = Enum.TextXAlignment.Left
StatusBar.Parent = Main

local Side = Instance.new("ScrollingFrame")
Side.Size = UDim2.new(0, 100, 1, -66)
Side.Position = UDim2.new(0, 8, 0, 60)
Side.BackgroundColor3 = PANEL
Side.BorderSizePixel = 0
Side.ScrollBarThickness = 2
Side.AutomaticCanvasSize = Enum.AutomaticSize.Y
Side.CanvasSize = UDim2.new(0, 0, 0, 0)
Side.Parent = Main
Instance.new("UICorner", Side).CornerRadius = UDim.new(0, 8)
local SL = Instance.new("UIListLayout")
SL.Padding = UDim.new(0, 4)
SL.Parent = Side
local SPad = Instance.new("UIPadding")
SPad.PaddingTop = UDim.new(0, 6)
SPad.PaddingLeft = UDim.new(0, 6)
SPad.PaddingRight = UDim.new(0, 6)
SPad.Parent = Side

local Content = Instance.new("Frame")
Content.Size = UDim2.new(1, -120, 1, -70)
Content.Position = UDim2.new(0, 114, 0, 62)
Content.BackgroundTransparency = 1
Content.Parent = Main

local Pages, TabBtns = {}, {}
local function showPage(n)
	for a, p in pairs(Pages) do p.Visible = (a == n) end
	for a, b in pairs(TabBtns) do
		b.BackgroundColor3 = (a == n) and Color3.fromRGB(40, 35, 60) or Color3.fromRGB(22, 22, 30)
		b.TextColor3 = (a == n) and ACCENT or MUTED
	end
	unlockMouse()
end
local function addTab(name)
	local page = Instance.new("ScrollingFrame")
	page.Size = UDim2.new(1, 0, 1, 0)
	page.BackgroundTransparency = 1
	page.BorderSizePixel = 0
	page.ScrollBarThickness = 3
	page.AutomaticCanvasSize = Enum.AutomaticSize.Y
	page.CanvasSize = UDim2.new(0, 0, 0, 0)
	page.Visible = false
	page.Parent = Content
	local lay = Instance.new("UIListLayout")
	lay.Padding = UDim.new(0, 5)
	lay.SortOrder = Enum.SortOrder.LayoutOrder
	lay.Parent = page
	local pad = Instance.new("UIPadding")
	pad.PaddingBottom = UDim.new(0, 10)
	pad.Parent = page
	page:SetAttribute("O", 0)
	Pages[name] = page
	local btn = Instance.new("TextButton")
	btn.Size = UDim2.new(1, 0, 0, 28)
	btn.BackgroundColor3 = Color3.fromRGB(22, 22, 30)
	btn.Text = name
	btn.TextColor3 = MUTED
	btn.TextSize = 12
	btn.Font = FONT
	btn.Parent = Side
	Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 6)
	btn.MouseButton1Click:Connect(function() showPage(name) end)
	TabBtns[name] = btn
	return page
end
local function nextO(p)
	local o = (p:GetAttribute("O") or 0) + 1
	p:SetAttribute("O", o)
	return o
end
local function addSection(p, t)
	local l = Instance.new("TextLabel")
	l.LayoutOrder = nextO(p)
	l.Size = UDim2.new(1, 0, 0, 16)
	l.BackgroundTransparency = 1
	l.Text = string.upper(t)
	l.TextColor3 = ACCENT
	l.TextSize = 11
	l.Font = FONT
	l.TextXAlignment = Enum.TextXAlignment.Left
	l.Parent = p
end
local function addToggle(p, label, key)
	local row = Instance.new("Frame")
	row.LayoutOrder = nextO(p)
	row.Size = UDim2.new(1, 0, 0, 32)
	row.BackgroundColor3 = CARD
	row.BorderSizePixel = 0
	row.Parent = p
	Instance.new("UICorner", row).CornerRadius = UDim.new(0, 8)
	local t = Instance.new("TextLabel")
	t.Size = UDim2.new(1, -55, 1, 0)
	t.Position = UDim2.new(0, 10, 0, 0)
	t.BackgroundTransparency = 1
	t.Text = label
	t.TextColor3 = TEXT
	t.TextSize = 12
	t.Font = FONT
	t.TextXAlignment = Enum.TextXAlignment.Left
	t.Parent = row
	local pill = Instance.new("TextButton")
	pill.Size = UDim2.new(0, 40, 0, 18)
	pill.Position = UDim2.new(1, -48, 0.5, -9)
	pill.BackgroundColor3 = S[key] and ACCENT or Color3.fromRGB(45, 45, 58)
	pill.Text = ""
	pill.Parent = row
	Instance.new("UICorner", pill).CornerRadius = UDim.new(1, 0)
	local knob = Instance.new("Frame")
	knob.Size = UDim2.new(0, 14, 0, 14)
	knob.Position = S[key] and UDim2.new(1, -16, 0.5, -7) or UDim2.new(0, 2, 0.5, -7)
	knob.BackgroundColor3 = Color3.new(1, 1, 1)
	knob.BorderSizePixel = 0
	knob.Parent = pill
	Instance.new("UICorner", knob).CornerRadius = UDim.new(1, 0)
	pill.MouseButton1Click:Connect(function()
		S[key] = not S[key]
		local on = S[key]
		pill.BackgroundColor3 = on and ACCENT or Color3.fromRGB(45, 45, 58)
		knob.Position = on and UDim2.new(1, -16, 0.5, -7) or UDim2.new(0, 2, 0.5, -7)
		if key == "ESP" then
			if not on then clearESPObjects() end
		end
		if key == "Hitbox" and not on then restoreAllHitboxes() end
		if key == "DeviceSpoof" and on then fireDevice() end
		if key == "Potato" then applyPotato(on) end
		if key == "CustomFOV" then
			if on then applyFOV() else pcall(function() Camera.FieldOfView = defaultFOV end) end
		end
		if key == "MobileAim" and on then S.Aimbot = true end
		if key == "KillAura" and not on then kaTarget = nil end
		if key == "ScreenStretch" and on and not stretchReady then stretchReady = true end
		saveCfg()
		unlockMouse()
	end)
end
local function addSlider(p, label, key, min, max, step)
	local row = Instance.new("Frame")
	row.LayoutOrder = nextO(p)
	row.Size = UDim2.new(1, 0, 0, 46)
	row.BackgroundColor3 = CARD
	row.BorderSizePixel = 0
	row.Parent = p
	Instance.new("UICorner", row).CornerRadius = UDim.new(0, 8)
	local t = Instance.new("TextLabel")
	t.Size = UDim2.new(0.65, 0, 0, 16)
	t.Position = UDim2.new(0, 10, 0, 4)
	t.BackgroundTransparency = 1
	t.Text = label
	t.TextColor3 = TEXT
	t.TextSize = 11
	t.Font = FONT
	t.TextXAlignment = Enum.TextXAlignment.Left
	t.Parent = row
	local val = Instance.new("TextLabel")
	val.Size = UDim2.new(0.3, -8, 0, 16)
	val.Position = UDim2.new(0.7, 0, 0, 4)
	val.BackgroundTransparency = 1
	val.Text = tostring(S[key])
	val.TextColor3 = ACCENT
	val.TextSize = 11
	val.Font = FONT
	val.TextXAlignment = Enum.TextXAlignment.Right
	val.Parent = row
	local bar = Instance.new("TextButton")
	bar.Size = UDim2.new(1, -20, 0, 8)
	bar.Position = UDim2.new(0, 10, 0, 26)
	bar.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
	bar.Text = ""
	bar.Parent = row
	Instance.new("UICorner", bar).CornerRadius = UDim.new(1, 0)
	local fill = Instance.new("Frame")
	fill.Size = UDim2.new(math.clamp((S[key] - min) / math.max(max - min, 0.001), 0, 1), 0, 1, 0)
	fill.BackgroundColor3 = ACCENT
	fill.BorderSizePixel = 0
	fill.Parent = bar
	Instance.new("UICorner", fill).CornerRadius = UDim.new(1, 0)
	local function setX(x)
		local rel = math.clamp((x - bar.AbsolutePosition.X) / math.max(bar.AbsoluteSize.X, 1), 0, 1)
		local v = min + rel * (max - min)
		v = math.floor(v / step + 0.5) * step
		v = math.clamp(v, min, max)
		S[key] = v
		fill.Size = UDim2.new((v - min) / math.max(max - min, 0.001), 0, 1, 0)
		val.Text = tostring(v)
		if key == "CursorSize" then CursorImg.Size = UDim2.new(0, v, 0, v) end
		if key == "FOVValue" and S.CustomFOV then applyFOV() end
		saveCfg()
	end
	bar.MouseButton1Down:Connect(function()
		local c1, c2
		c1 = UIS.InputChanged:Connect(function(i)
			if i.UserInputType == Enum.UserInputType.MouseMovement or i.UserInputType == Enum.UserInputType.Touch then
				setX(i.Position.X)
			end
		end)
		c2 = UIS.InputEnded:Connect(function(i)
			if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
				if c1 then c1:Disconnect() end
				if c2 then c2:Disconnect() end
			end
		end)
		pcall(function() setX(UIS:GetMouseLocation().X) end)
	end)
end
local function addDropdown(p, label, key, options)
	local row = Instance.new("Frame")
	row.LayoutOrder = nextO(p)
	row.Size = UDim2.new(1, 0, 0, 32)
	row.BackgroundColor3 = CARD
	row.BorderSizePixel = 0
	row.Parent = p
	Instance.new("UICorner", row).CornerRadius = UDim.new(0, 8)
	local t = Instance.new("TextLabel")
	t.Size = UDim2.new(0.4, 0, 1, 0)
	t.Position = UDim2.new(0, 10, 0, 0)
	t.BackgroundTransparency = 1
	t.Text = label
	t.TextColor3 = TEXT
	t.TextSize = 12
	t.Font = FONT
	t.TextXAlignment = Enum.TextXAlignment.Left
	t.Parent = row
	local idx = 1
	for i, o in ipairs(options) do
		if o == S[key] then idx = i end
	end
	local btn = Instance.new("TextButton")
	btn.Size = UDim2.new(0.55, -12, 0, 22)
	btn.Position = UDim2.new(0.45, 0, 0.5, -11)
	btn.BackgroundColor3 = Color3.fromRGB(35, 32, 48)
	btn.Text = tostring(S[key])
	btn.TextColor3 = ACCENT
	btn.TextSize = 11
	btn.Font = FONT
	btn.Parent = row
	Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 6)
	btn.MouseButton1Click:Connect(function()
		idx = idx % #options + 1
		S[key] = options[idx]
		btn.Text = options[idx]
		if key == "CursorName" then applyCursor(S.CursorName) end
		if key == "DeviceMode" and S.DeviceSpoof then fireDevice() end
		if key == "HitboxPart" then restoreAllHitboxes() end
		saveCfg()
		unlockMouse()
	end)
end
local function addInput(p, label, key, ph)
	local row = Instance.new("Frame")
	row.LayoutOrder = nextO(p)
	row.Size = UDim2.new(1, 0, 0, 52)
	row.BackgroundColor3 = CARD
	row.BorderSizePixel = 0
	row.Parent = p
	Instance.new("UICorner", row).CornerRadius = UDim.new(0, 8)
	local t = Instance.new("TextLabel")
	t.Size = UDim2.new(1, -16, 0, 14)
	t.Position = UDim2.new(0, 10, 0, 4)
	t.BackgroundTransparency = 1
	t.Text = label
	t.TextColor3 = MUTED
	t.TextSize = 11
	t.Font = FONT
	t.TextXAlignment = Enum.TextXAlignment.Left
	t.Parent = row
	local box = Instance.new("TextBox")
	box.Size = UDim2.new(1, -20, 0, 22)
	box.Position = UDim2.new(0, 10, 0, 22)
	box.BackgroundColor3 = Color3.fromRGB(14, 14, 20)
	box.BorderSizePixel = 0
	box.Text = tostring(S[key] or ph or "")
	box.PlaceholderText = ph or ""
	box.TextColor3 = TEXT
	box.TextSize = 12
	box.Font = FONT
	box.ClearTextOnFocus = false
	box.Parent = row
	Instance.new("UICorner", box).CornerRadius = UDim.new(0, 6)
	box.FocusLost:Connect(function()
		local v = box.Text
		if not v or v == "" then v = ph or "default" box.Text = v end
		S[key] = v
		saveCfg()
	end)
end
local function addButton(p, label, fn)
	local btn = Instance.new("TextButton")
	btn.LayoutOrder = nextO(p)
	btn.Size = UDim2.new(1, 0, 0, 30)
	btn.BackgroundColor3 = Color3.fromRGB(35, 30, 55)
	btn.Text = label
	btn.TextColor3 = ACCENT
	btn.TextSize = 12
	btn.Font = FONT
	btn.Parent = p
	Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 8)
	btn.MouseButton1Click:Connect(function()
		fn()
		unlockMouse()
	end)
end

local Combat = addTab("Combat")
local PlayerT = addTab("Player")
local Stream = addTab("Stream")
local Staff = addTab("Staff")
local Mobile = addTab("Mobile")
local Visuals = addTab("Visuals")
local Sett = addTab("Config")

addSection(Combat, "Aimbot")
addToggle(Combat, "Aimbot", "Aimbot")
addDropdown(Combat, "Key", "AimKey", { "MB1", "MB2", "E", "Q", "F" })
addDropdown(Combat, "Mode", "AimMode", { "Hold", "Toggle", "Always" })
addSlider(Combat, "FOV", "AimFOV", 40, 350, 1)
addSlider(Combat, "Smooth", "AimSmooth", 0.1, 1, 0.05)
addToggle(Combat, "Show FOV", "ShowFOV")
addToggle(Combat, "Wall Check", "WallCheck")
addToggle(Combat, "Team Check", "TeamCheck")
addToggle(Combat, "Prediction", "Prediction")
addSlider(Combat, "Predict", "PredictAmount", 0, 0.35, 0.01)
addSection(Combat, "Triggerbot")
addToggle(Combat, "Triggerbot", "Triggerbot")
addSlider(Combat, "Trigger FOV", "TriggerFOV", 15, 150, 1)
addSlider(Combat, "Trigger Delay", "TriggerDelay", 0.03, 0.25, 0.01)
addSection(Combat, "Kill Aura")
addToggle(Combat, "Kill Aura", "KillAura")
addSlider(Combat, "Range", "KillAuraRange", 20, 200, 5)
addSlider(Combat, "Behind Dist", "KillAuraBehind", 1.5, 8, 0.1)
addSection(Combat, "Camera FOV")
addToggle(Combat, "Custom FOV", "CustomFOV")
addSlider(Combat, "FOV Value", "FOVValue", 40, 120, 1)
addSection(Combat, "Hitbox Expand")
addToggle(Combat, "Hitbox Expand", "Hitbox")
addDropdown(Combat, "Part", "HitboxPart", { "Head", "Torso" })
addSlider(Combat, "Size", "HitboxSize", 1.5, 10, 0.5)

addSection(PlayerT, "Move")
addToggle(PlayerT, "Speed", "Speed")
addSlider(PlayerT, "Speed Value", "SpeedValue", 16, 80, 1)
addToggle(PlayerT, "Noclip", "Noclip")
addToggle(PlayerT, "Anti-Bow", "AntiBow")
addSection(PlayerT, "Device Spoof")
addToggle(PlayerT, "Device Spoof", "DeviceSpoof")
addDropdown(PlayerT, "Mode", "DeviceMode", { "Console", "Desktop", "Mobile" })
addSlider(PlayerT, "Delay (sec)", "DeviceSpoofDelay", 0.3, 5, 0.1)
addButton(PlayerT, "Apply Device Now", fireDevice)
addSection(PlayerT, "Screen Stretch")
addToggle(PlayerT, "Screen Stretch", "ScreenStretch")
addSlider(PlayerT, "Stretch Amount", "StretchAmount", 0.3, 1, 0.01)

addSection(Stream, "Stream")
addToggle(Stream, "Stream Proof", "StreamProof")
addInput(Stream, "Name", "SpoofName", "Player")
addToggle(Stream, "Verified", "ShowVerified")

addSection(Staff, "Staff")
addToggle(Staff, "Detect", "StaffDetect")
addToggle(Staff, "Leave", "StaffLeave")

addSection(Mobile, "Mobile Aim")
addToggle(Mobile, "Mobile Aim ON", "MobileAim")
addSlider(Mobile, "Smooth", "MobileSmooth", 0.1, 1, 0.05)
addSlider(Mobile, "FOV", "MobileFOV", 40, 350, 1)
addToggle(Mobile, "Show FOV", "MobileShowFOV")

addSection(Visuals, "ESP")
addToggle(Visuals, "ESP Enabled", "ESP")
addToggle(Visuals, "Boxes", "ShowBoxes")
addDropdown(Visuals, "Box Style", "BoxStyle", { "Corner", "Full", "Both" })
addToggle(Visuals, "Names", "ShowNames")
addToggle(Visuals, "Distance", "ShowDistance")
addToggle(Visuals, "Health", "ShowHealth")
addToggle(Visuals, "Head Dot", "ShowHeadDot")
addButton(Visuals, "Force Refresh ESP", clearESPObjects)
addSection(Visuals, "ESP Color")
addToggle(Visuals, "RGB ESP", "RGBESP")
addSlider(Visuals, "Red", "ESPColorR", 0, 255, 1)
addSlider(Visuals, "Green", "ESPColorG", 0, 255, 1)
addSlider(Visuals, "Blue", "ESPColorB", 0, 255, 1)
addSection(Visuals, "Radar")
addToggle(Visuals, "Radar", "Radar")
addSlider(Visuals, "Radar Size", "RadarSize", 80, 220, 5)
addSlider(Visuals, "Radar Range", "RadarRange", 50, 400, 10)
addSection(Visuals, "Cursor")
addDropdown(Visuals, "Cursor", "CursorName", CURSOR_NAMES)
addSlider(Visuals, "Cursor Size", "CursorSize", 8, 128, 1)
for _, c in ipairs(CURSORS) do
	addButton(Visuals, c.Name, function()
		applyCursor(c.Name)
		saveCfg()
	end)
end

addSection(Sett, "Config")
addInput(Sett, "Name", "ConfigName", "default")
addButton(Sett, "Save", saveCfg)
addButton(Sett, "Load", function() loadCfg() end)
addToggle(Sett, "FPS + MS", "ShowPerf")
addToggle(Sett, "Potato", "Potato")
addSection(Sett, "Status")
local statusLabel = Instance.new("TextLabel")
statusLabel.LayoutOrder = nextO(Sett)
statusLabel.Size = UDim2.new(1, 0, 0, 40)
statusLabel.BackgroundColor3 = CARD
statusLabel.BorderSizePixel = 0
statusLabel.Text = "Executor: " .. EXECUTOR_NAME
statusLabel.TextColor3 = TEXT
statusLabel.TextSize = 12
statusLabel.Font = FONT
statusLabel.Parent = Sett
Instance.new("UICorner", statusLabel).CornerRadius = UDim.new(0, 8)

showPage("Combat")

local OpenBtn = Instance.new("TextButton")
OpenBtn.Size = UDim2.new(0, 60, 0, 40)
OpenBtn.Position = UDim2.new(1, -70, 0, 10)
OpenBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
OpenBtn.Text = "OPEN"
OpenBtn.TextColor3 = ACCENT
OpenBtn.TextSize = 14
OpenBtn.Font = FONT
OpenBtn.Visible = true
OpenBtn.Parent = Gui
Instance.new("UICorner", OpenBtn).CornerRadius = UDim.new(0, 8)
OpenBtn.MouseButton1Click:Connect(function()
	Main.Visible = true
	OpenBtn.Visible = false
end)

local function updateOpenBtn()
	OpenBtn.Visible = not Main.Visible
end

local dragging, d0, p0
Top.InputBegan:Connect(function(i)
	if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		d0 = i.Position
		p0 = Main.Position
	end
end)
Top.InputEnded:Connect(function(i)
	if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
		dragging = false
	end
end)
UIS.InputChanged:Connect(function(i)
	if dragging and (i.UserInputType == Enum.UserInputType.MouseMovement or i.UserInputType == Enum.UserInputType.Touch) then
		local d = i.Position - d0
		Main.Position = UDim2.new(p0.X.Scale, p0.X.Offset + d.X, p0.Y.Scale, p0.Y.Offset + d.Y)
	end
end)
Close.MouseButton1Click:Connect(function()
	Main.Visible = false
	updateOpenBtn()
end)
UIS.InputBegan:Connect(function(i)
	if i.KeyCode == Enum.KeyCode.RightControl or i.KeyCode == Enum.KeyCode.LeftControl then
		Main.Visible = not Main.Visible
		updateOpenBtn()
		unlockMouse()
	end
end)

local KEY_MAP = {
	MB1 = Enum.UserInputType.MouseButton1,
	MB2 = Enum.UserInputType.MouseButton2,
	E = Enum.KeyCode.E,
	Q = Enum.KeyCode.Q,
	F = Enum.KeyCode.F,
}
local AimbotActive = false
local noclipConn

local function isAimKey(i)
	local key = KEY_MAP[S.AimKey] or Enum.UserInputType.MouseButton2
	local s = tostring(key)
	if string.find(s, "MouseButton", 1, true) then
		return i.UserInputType == key
	end
	if string.find(s, "KeyCode", 1, true) then
		return i.KeyCode == key
	end
	return false
end

UIS.InputBegan:Connect(function(i, gp)
	if not S.Aimbot or S.MobileAim then return end
	if not isAimKey(i) then return end
	if S.AimMode == "Hold" then
		AimbotActive = true
	elseif S.AimMode == "Toggle" then
		AimbotActive = not AimbotActive
	end
end)
UIS.InputEnded:Connect(function(i)
	if S.AimMode == "Hold" and isAimKey(i) then
		AimbotActive = false
	end
end)

local function setNoclip(on)
	if noclipConn then
		noclipConn:Disconnect()
		noclipConn = nil
	end
	if not on then
		local c = getChar(LP)
		if c then
			for _, p in ipairs(c:GetDescendants()) do
				if p:IsA("BasePart") then p.CanCollide = true end
			end
		end
		return
	end
	noclipConn = RunService.Stepped:Connect(function()
		local c = getChar(LP)
		if not c then return end
		for _, p in ipairs(c:GetDescendants()) do
			if p:IsA("BasePart") then p.CanCollide = false end
		end
	end)
end

task.spawn(function()
	while true do
		task.wait(0.2)
		if S.AntiBow then
			pcall(function()
				local c = getChar(LP)
				if not c then return end
				local r = c:FindFirstChild("HumanoidRootPart")
				local h = c:FindFirstChildOfClass("Humanoid")
				if not r or not h or h.Health <= 0 then return end
				local st = h:GetState()
				if st == Enum.HumanoidStateType.Jumping or st == Enum.HumanoidStateType.Freefall then return end
				if r.CFrame.UpVector:Dot(Vector3.yAxis) >= 0.92 then return end
				local _, yaw = r.CFrame:ToOrientation()
				r.CFrame = CFrame.new(r.Position) * CFrame.Angles(0, yaw, 0)
			end)
		end
	end
end)

task.spawn(function()
	while true do
		task.wait(0.5)
		if S.StreamProof then
			local full = tostring(S.SpoofName)
			if S.ShowVerified then
				full = full .. " " .. VERIFIED_MARK
			end
			pcall(function() LP.DisplayName = full end)
		end
	end
end)

local StaffGroupId = 33054943
local flagged = {}
task.spawn(function()
	while true do
		task.wait(2)
		if S.StaffDetect then
			for _, p in ipairs(Players:GetPlayers()) do
				if p ~= LP then
					local ok, rank = pcall(function() return p:GetRankInGroup(StaffGroupId) end)
					if ok and type(rank) == "number" and rank >= 51 then
						if not flagged[p.UserId] then
							flagged[p.UserId] = true
							if S.StaffLeave then pcall(function() LP:Kick("Staff") end) end
						end
					end
				end
			end
		end
	end
end)

-- FOV GUI hidden parent
local FOVGui = Instance.new("ScreenGui")
FOVGui.Name = "MoonFOVGui"
FOVGui.ResetOnSpawn = false
FOVGui.IgnoreGuiInset = true
FOVGui.DisplayOrder = 99999
FOVGui.Parent = HiddenParent

local FOVCircleUI = Instance.new("Frame")
FOVCircleUI.AnchorPoint = Vector2.new(0.5, 0.5)
FOVCircleUI.Size = UDim2.new(0, 300, 0, 300)
FOVCircleUI.Position = UDim2.new(0.5, 0, 0.5, 0)
FOVCircleUI.BackgroundTransparency = 1
FOVCircleUI.BorderSizePixel = 0
FOVCircleUI.Visible = false
FOVCircleUI.ZIndex = 999
FOVCircleUI.Parent = FOVGui
pcall(function() Instance.new("UICorner", FOVCircleUI).CornerRadius = UDim.new(1, 0) end)
local FOVStroke
pcall(function()
	FOVStroke = Instance.new("UIStroke")
	FOVStroke.Color = Color3.new(1, 1, 1)
	FOVStroke.Thickness = 1.5
	FOVStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	FOVStroke.Parent = FOVCircleUI
end)

local frames, lastF, fps, hbTick = 0, tick(), 0, 0

RunService.Heartbeat:Connect(function()
	local c = getChar(LP)
	if c then
		local h = c:FindFirstChildOfClass("Humanoid")
		if S.Speed and h and h.Health > 0 then
			h.WalkSpeed = S.SpeedValue or 24
		end
		if S.Noclip then
			if not noclipConn then setNoclip(true) end
		elseif noclipConn then
			setNoclip(false)
		end
	end
	applyPotato(S.Potato == true)
	pcall(runTriggerbot)
	pcall(runKillAura)
end)

RunService.RenderStepped:Connect(function()
	pcall(function()
		frames = frames + 1
		if tick() - lastF >= 1 then
			fps = frames
			frames = 0
			lastF = tick()
		end

		if CursorImg.Visible then
			local m = UIS:GetMouseLocation()
			CursorImg.Position = UDim2.new(0, m.X, 0, m.Y)
		end

		if S.CustomFOV then applyFOV() end

		isAimLocking = false
		local useAim, smooth, fov = false, S.AimSmooth or 0.95, S.AimFOV or 150
		if S.KillAura and kaTarget and isAlive(kaTarget) then
			isAimLocking = true
		elseif not S.KillAura then
			if S.MobileAim then
				useAim = true
				smooth = S.MobileSmooth or 0.9
				fov = S.MobileFOV or 160
			elseif S.Aimbot then
				useAim = AimbotActive or S.AimMode == "Always"
				smooth = S.AimSmooth or 0.95
				fov = S.AimFOV or 150
			end
		end
		if useAim then
			local _, aimPos = getClosest(fov, true)
			if aimPos then
				isAimLocking = true
				if smooth >= 0.98 then
					Camera.CFrame = CFrame.new(Camera.CFrame.Position, aimPos)
				else
					Camera.CFrame = Camera.CFrame:Lerp(
						CFrame.new(Camera.CFrame.Position, aimPos),
						math.clamp(smooth, 0.1, 1)
					)
				end
				faceBodyTo(aimPos)
			end
		end

		applyScreenStretch()
		pcall(updateScreenESP)

		hbTick = hbTick + 1
		if hbTick >= 2 then
			hbTick = 0
			pcall(updateHitboxes)
		end

		local showFov, fovR = false, S.AimFOV or 150
		if S.MobileAim then
			showFov = S.MobileShowFOV
			fovR = S.MobileFOV or 160
		else
			showFov = S.ShowFOV
			fovR = S.AimFOV or 150
		end
		FOVCircleUI.Size = UDim2.new(0, fovR * 2, 0, fovR * 2)
		FOVCircleUI.Position = UDim2.new(0.5, 0, 0.5, 0)
		FOVCircleUI.Visible = showFov
		if FOVStroke then
			if S.RGBESP then FOVStroke.Color = getESPColor() end
		end
	end)
end)

task.spawn(function()
	while true do
		task.wait(15)
		saveCfg()
	end
end)

if S.CursorName and S.CursorName ~= "Off" then applyCursor(S.CursorName) end
if S.CustomFOV then applyFOV() end

setLoad(1, "Done")
task.wait(0.35)
pcall(function()
	LoadGui:Destroy()
end)
Main.Visible = true
OpenBtn.Visible = false

print("[Moon Hub] PUBLIC | " .. EXECUTOR_NAME)
