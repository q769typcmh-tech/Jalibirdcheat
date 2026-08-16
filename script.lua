--[[
███████╗██╗   ██╗██╗██╗         █████╗ ██╗  ██╗███████╗
██╔════╝██║   ██║██║██║        ██╔══██╗╚██╗██╔╝██╔════╝
█████╗  ██║   ██║██║██║        ███████║ ╚███╔╝ █████╗
██╔══╝  ╚██╗ ██╔╝██║██║        ██╔══██║ ██╔██╗ ██╔══╝
███████╗ ╚████╔╝ ██║███████╗   ██║  ██║██╔╝ ██╗███████╗
╚══════╝  ╚═══╝  ╚═╝╚══════╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝

        STUDIOS V2 OBFUSCATOR By MAX
        https://eaxe.net

        Sponsored by
        https://BloxDen.com
--]]

pcall(function()
	if not game:IsLoaded() then
		game.Loaded:Wait();
	end;
end);
task.wait(.25);
local n = getgenv or function()
		return _G;
	end;
local W = game:GetService("Players");
local l = game:GetService("UserInputService");
local H = game:GetService("RunService");
local v = game:GetService("Lighting");
local E = game:GetService("Stats");
local g = game:GetService("HttpService");
local u = game:GetService("TweenService");
local y = game:GetService("ReplicatedStorage");
local m = game:GetService("VirtualInputManager");
local T = workspace.CurrentCamera;
local M = l:GetPlatform();
if M == Enum.Platform.IOS or M == Enum.Platform.Android then
	local n = W.LocalPlayer;
	if n then
		pcall(function()
			n:Kick("Sorry bro this is for PC, there is no mobile version.");
		end);
	end;
	return;
end;
local Y = W.LocalPlayer or W.PlayerAdded:Wait();
local s = Y:WaitForChild("PlayerGui", 60);
if not s then
	warn("[Moon] PlayerGui timeout");
	return;
end;
local function G()
	if gethui then
		local n, W = pcall(function()
				return gethui();
			end);
		if n and W then
			return W;
		end;
	end;
	return game:GetService("CoreGui");
end;
local R = G();
pcall(function()
	for n, W in ipairs({
		"MoonHubUI",
		"MoonCursorUI",
		"MoonLoadUI",
		"MoonFOVGui",
		"MoonESPGui",
	}) do
		local l = s:FindFirstChild(W);
		if l then
			l:Destroy();
		end;
		local H = R:FindFirstChild(W);
		if H then
			H:Destroy();
		end;
	end;
end);
task.wait(.05);
local t;
pcall(function()
	t = Y:GetMouse();
end);
local function O()
	local W = "Unknown";
	pcall(function()
		if identifyexecutor then
			local n, l = identifyexecutor();
			W = tostring(n or "Unknown");
			if l then
				W = W .. (" " .. tostring(l));
			end;
		elseif getexecutorname then
			W = tostring(getexecutorname());
		elseif syn and syn.request then
			W = "Synapse";
		elseif fluxus then
			W = "Fluxus";
		elseif KRNL_LOADED then
			W = "Krnl";
		elseif is_sirhurt_closure then
			W = "Sirhurt";
		elseif pebc_execute then
			W = "Parallel";
		elseif SecureDelta or (n()).SecureDelta then
			W = "Delta";
		elseif (n()).drew or (n()).IS_COCO_LOADED then
			W = "Coco";
		elseif (n()).X.X or (n()).WXApple then
			W = "Wave";
		elseif (n()).IsElectron then
			W = "Electron";
		elseif (n()).executor_name then
			W = tostring((n()).executor_name);
		end;
	end);
	if W == "Unknown" or W == "" then
		pcall(function()
			if (n()).OPIUMWARE or (n()).Opiumware then
				W = "Opiumware";
			end;
		end);
	end;
	return W;
end;
local X = O();
local a = Instance.new("ScreenGui");
a.Name = "MoonLoadUI";
a.ResetOnSpawn = false;
a.IgnoreGuiInset = true;
a.DisplayOrder = 9999;
a.Parent = s;
task.spawn(function()
	task.wait(8);
	pcall(function()
		if a and a.Parent then
			a:Destroy();
		end;
	end);
end);
local P = Instance.new("Frame");
P.Size = UDim2.new(1, 0, 1, 0);
P.BackgroundColor3 = Color3.fromRGB(8, 8, 12);
P.BorderSizePixel = 0;
P.Parent = a;
local D = Instance.new("Frame");
D.Size = UDim2.new(0, 320, 0, 160);
D.Position = UDim2.new(.5, -160, .5, -80);
D.BackgroundColor3 = Color3.fromRGB(16, 16, 22);
D.BorderSizePixel = 0;
D.Parent = P;
(Instance.new("UICorner", D)).CornerRadius = UDim.new(0, 14);
local q = Instance.new("TextLabel");
q.Size = UDim2.new(1, -20, 0, 28);
q.Position = UDim2.new(0, 10, 0, 14);
q.BackgroundTransparency = 1;
q.Text = "MOON HUB";
q.TextColor3 = Color3.fromRGB(138, 99, 255);
q.TextSize = 20;
q.Font = Enum.Font.GothamBold;
q.Parent = D;
local U = Instance.new("TextLabel");
U.Size = UDim2.new(1, -20, 0, 18);
U.Position = UDim2.new(0, 10, 0, 42);
U.BackgroundTransparency = 1;
U.Text = "jailbird";
U.TextColor3 = Color3.fromRGB(160, 160, 180);
U.TextSize = 12;
U.Font = Enum.Font.Gotham;
U.Parent = D;
local Z = Instance.new("TextLabel");
Z.Size = UDim2.new(1, -20, 0, 18);
Z.Position = UDim2.new(0, 10, 0, 70);
Z.BackgroundTransparency = 1;
Z.Text = "Starting...";
Z.TextColor3 = Color3.fromRGB(220, 220, 230);
Z.TextSize = 12;
Z.Font = Enum.Font.Gotham;
Z.TextXAlignment = Enum.TextXAlignment.Left;
Z.Parent = D;
local e = Instance.new("Frame");
e.Size = UDim2.new(1, -24, 0, 10);
e.Position = UDim2.new(0, 12, 0, 100);
e.BackgroundColor3 = Color3.fromRGB(30, 30, 40);
e.BorderSizePixel = 0;
e.Parent = D;
(Instance.new("UICorner", e)).CornerRadius = UDim.new(1, 0);
local Q = Instance.new("Frame");
Q.Size = UDim2.new(0, 0, 1, 0);
Q.BackgroundColor3 = Color3.fromRGB(138, 99, 255);
Q.BorderSizePixel = 0;
Q.Parent = e;
(Instance.new("UICorner", Q)).CornerRadius = UDim.new(1, 0);
local z = Instance.new("TextLabel");
z.Size = UDim2.new(1, -20, 0, 32);
z.Position = UDim2.new(0, 10, 0, 118);
z.BackgroundTransparency = 1;
z.Text = "Executor: " .. X;
z.TextColor3 = Color3.fromRGB(140, 140, 160);
z.TextSize = 11;
z.Font = Enum.Font.Gotham;
z.TextXAlignment = Enum.TextXAlignment.Left;
z.TextYAlignment = Enum.TextYAlignment.Top;
z.Parent = D;
local function J(n, W)
	n = math.clamp(n, 0, 1);
	pcall(function()
		Z.Text = W or Z.Text;
		(u:Create(Q, TweenInfo.new(.25, Enum.EasingStyle.Quad), { Size = UDim2.new(n, 0, 1, 0) })):Play();
	end);
end;
J(.08, "Detecting executor...");
task.wait(.2);
J(.2, "Executor: " .. X);
task.wait(.15);
J(.35, "Loading config...");
task.wait(.1);
local function L(n, W)
	pcall(function()
		if writefile then
			writefile(n, W);
		end;
	end);
end;
local function r(n)
	local W, l = pcall(function()
			if isfile and (isfile(n) and readfile) then
				return readfile(n);
			end;
		end);
	return W and l or nil;
end;
pcall(function()
	if makefolder then
		makefolder("MoonHub");
		makefolder("MoonHub/Configs");
	end;
end);
(n()).MoonHubState = (n()).MoonHubState or {};
local F = (n()).MoonHubState;
local N = {
		Aimbot = false,
		AimKey = "MB2",
		AimMode = "Hold",
		AimFOV = 150,
		AimSmooth = .95,
		ShowFOV = false,
		WallCheck = true,
		TeamCheck = true,
		Prediction = true,
		PredictAmount = .12,
		Triggerbot = false,
		TriggerFOV = 55,
		TriggerDelay = .06,
		KillAura = false,
		KillAuraRange = 90,
		KillAuraBehind = 3.2,
		CustomFOV = false,
		FOVValue = 90,
		Speed = false,
		SpeedValue = 24,
		Noclip = false,
		AntiBow = true,
		StreamProof = false,
		SpoofName = "Player",
		ShowVerified = true,
		StaffDetect = false,
		StaffLeave = false,
		ESP = false,
		ShowBoxes = true,
		BoxStyle = "Corner",
		ShowNames = true,
		ShowDistance = true,
		ShowHealth = true,
		ShowHeadDot = true,
		RGBESP = false,
		ESPColorR = 170,
		ESPColorG = 0,
		ESPColorB = 255,
		Hitbox = false,
		HitboxPart = "Head",
		HitboxSize = 3,
		Radar = false,
		RadarSize = 140,
		RadarRange = 200,
		CursorName = "Off",
		CursorSize = 32,
		DeviceSpoof = false,
		DeviceMode = "Console",
		DeviceSpoofDelay = 1.5,
		ScreenStretch = false,
		StretchAmount = .53,
		ShowPerf = true,
		Potato = false,
		MobileAim = false,
		MobileSmooth = .9,
		MobileFOV = 160,
		MobileShowFOV = true,
		ConfigName = "default",
	};
for n, W in pairs(N) do
	if F[n] == nil then
		F[n] = W;
	end;
end;
F.NoRecoil = nil;
F.NoJumpCooldown = nil;
F.KillAuraDelay = nil;
F.HideFromRecord = nil;
if type(F.CursorSize) ~= "number" then
	F.CursorSize = 32;
end;
if type(F.AimSmooth) ~= "number" then
	F.AimSmooth = .95;
end;
if type(F.FOVValue) ~= "number" then
	F.FOVValue = 90;
end;
if type(F.TriggerDelay) ~= "number" then
	F.TriggerDelay = .06;
end;
if type(F.TriggerFOV) ~= "number" then
	F.TriggerFOV = 55;
end;
if type(F.DeviceSpoofDelay) ~= "number" then
	F.DeviceSpoofDelay = 1.5;
end;
F.StretchAmount = math.clamp(tonumber(F.StretchAmount) or .53, .3, 1);
if F.HitboxPart ~= "Head" and F.HitboxPart ~= "Torso" then
	F.HitboxPart = "Head";
end;
if type(F.KillAuraRange) ~= "number" then
	F.KillAuraRange = 90;
end;
if type(F.KillAuraBehind) ~= "number" then
	F.KillAuraBehind = 3.2;
end;
local j = false;
task.delay(2.5, function()
	j = true;
end);
local function S()
	local n = (tostring(F.ConfigName or "default")):gsub("[^%w%-%_]", "");
	if n == "" then
		n = "default";
	end;
	F.ConfigName = n;
	F.NoRecoil = nil;
	F.NoJumpCooldown = nil;
	F.KillAuraDelay = nil;
	F.HideFromRecord = nil;
	F.StretchAmount = math.clamp(tonumber(F.StretchAmount) or .53, .3, 1);
	L("MoonHub/Configs/" .. (n .. ".json"), g:JSONEncode(F));
	L("MoonHub/Jailbird.json", g:JSONEncode(F));
end;
local function I()
	local n = (tostring(F.ConfigName or "default")):gsub("[^%w%-%_]", "");
	local W = r("MoonHub/Configs/" .. (n .. ".json")) or r("MoonHub/Jailbird.json");
	if W then
		pcall(function()
			local n = g:JSONDecode(W);
			if type(n) == "table" then
				for n, W in pairs(n) do
					F[n] = W;
				end;
			end;
		end);
	end;
	F.NoRecoil = nil;
	F.NoJumpCooldown = nil;
	F.KillAuraDelay = nil;
	F.HideFromRecord = nil;
	if type(F.DeviceSpoofDelay) ~= "number" then
		F.DeviceSpoofDelay = 1.5;
	end;
	F.StretchAmount = math.clamp(tonumber(F.StretchAmount) or .53, .3, 1);
	if not j then
		local n = F.ScreenStretch == true;
		F.ScreenStretch = false;
		task.delay(2.6, function()
			if n then
				F.ScreenStretch = true;
			end;
			j = true;
		end);
	end;
	if F.HitboxPart ~= "Head" and F.HitboxPart ~= "Torso" then
		F.HitboxPart = "Head";
	end;
end;
pcall(I);
J(.5, "Loading Drawing...");
local B = false;
local A = nil;
local function x(n)
	if not n or type(n.new) ~= "function" then
		return false;
	end;
	local W = pcall(function()
			local W = n.new("Text");
			W.Visible = false;
			W:Remove();
		end);
	if W then
		B = true;
		A = n;
		return true;
	end;
	return false;
end;
x(Drawing);
x((n()).Drawing);
pcall(function()
	x((getrenv()).Drawing);
end);
pcall(function()
	x(getrawmetatable and getrawmetatable(Drawing));
end);
J(.65, B and "Drawing OK" or "Drawing missing (ESP disabled)");
local d = Color3.fromRGB(138, 99, 255);
local b = Color3.fromRGB(12, 12, 16);
local k = Color3.fromRGB(18, 18, 24);
local f = Color3.fromRGB(20, 20, 28);
local c = Color3.fromRGB(235, 235, 245);
local w = Color3.fromRGB(160, 160, 180);
local i = Enum.Font.Gotham;
local function K()
	if F.RGBESP then
		return Color3.fromHSV(((tick() * .4)) % 1, 1, 1);
	end;
	return Color3.fromRGB(math.clamp(tonumber(F.ESPColorR) or 170, 0, 255), math.clamp(tonumber(F.ESPColorG) or 0, 0, 255), math.clamp(tonumber(F.ESPColorB) or 255, 0, 255));
end;
local function V()
	pcall(function()
		l.MouseBehavior = Enum.MouseBehavior.Default;
		l.MouseIconEnabled = true;
	end);
end;
local C = {
		{ Name = "Off", Id = nil },
		{ Name = "Game Crosshair", Id = "GAME" },
		{ Name = "Star Wars", Id = "5462831" },
		{ Name = "Snowflake", Id = "11780968239" },
		{ Name = "Red Dot", Id = "412284862" },
		{ Name = "Diamond", Id = "61210994" },
		{ Name = "Hello Kitty", Id = "10973237327" },
		{ Name = "Eye", Id = "12534101433" },
	};
local h = {};
for n, W in ipairs(C) do
	h[n] = W.Name;
end;
local p = Instance.new("ScreenGui");
p.Name = "MoonCursorUI";
p.ResetOnSpawn = false;
p.IgnoreGuiInset = true;
p.DisplayOrder = 10000;
p.Parent = s;
local o = Instance.new("ImageLabel");
o.BackgroundTransparency = 1;
o.AnchorPoint = Vector2.new(.5, .5);
o.Size = UDim2.new(0, 32, 0, 32);
o.Visible = false;
o.ZIndex = 100;
o.Parent = p;
local function nz(n)
	local W = s:FindFirstChild("Crosshair");
	if not W then
		return;
	end;
	pcall(function()
		if W:IsA("ScreenGui") then
			W.Enabled = n;
		end;
		W.Visible = n;
		for W, l in ipairs(W:GetDescendants()) do
			if l:IsA("GuiObject") then
				l.Visible = n;
			end;
		end;
	end);
end;
local function Wz(n)
	n = n or F.CursorName or "Off";
	F.CursorName = n;
	local W = C[1];
	for l, H in ipairs(C) do
		if H.Name == n then
			W = H;
			break;
		end;
	end;
	nz(false);
	o.Visible = false;
	local H = math.clamp(tonumber(F.CursorSize) or 32, 8, 128);
	o.Size = UDim2.new(0, H, 0, H);
	if not W.Id or W.Name == "Off" then
		pcall(function()
			if t then
				t.Icon = "";
			end;
			l.MouseIconEnabled = true;
		end);
		return;
	end;
	if W.Id == "GAME" then
		nz(true);
		pcall(function()
			if t then
				t.Icon = "rbxassetid://0";
			end;
			l.MouseIconEnabled = true;
		end);
		return;
	end;
	pcall(function()
		l.MouseIconEnabled = false;
		if t then
			t.Icon = "rbxassetid://0";
		end;
		o.Image = "rbxassetid://" .. tostring(W.Id);
		o.Visible = true;
	end);
end;
local lz = 70;
pcall(function()
	lz = T.FieldOfView;
end);
local function Hz()
	if not F.CustomFOV then
		return;
	end;
	local n = math.clamp(tonumber(F.FOVValue) or 90, 40, 120);
	pcall(function()
		if math.abs(T.FieldOfView - n) > .5 then
			T.FieldOfView = n;
		end;
	end);
end;
local vz = false;
local function Ez()
	if not j then
		return;
	end;
	if not F.ScreenStretch then
		return;
	end;
	if vz then
		return;
	end;
	if not T or not T.Parent then
		return;
	end;
	local n = math.clamp(tonumber(F.StretchAmount) or .53, .3, 1);
	if n >= .995 then
		return;
	end;
	pcall(function()
		local W = T.CFrame;
		if W then
			T.CFrame = W * CFrame.new(0, 0, 0, 1, 0, 0, 0, n, 0, 0, 0, 1);
		end;
	end);
end;
local function gz(n)
	local W = Y.Character;
	if not W then
		return;
	end;
	local l = W:FindFirstChild("HumanoidRootPart");
	if not l or not n then
		return;
	end;
	pcall(function()
		local W = l.Position;
		l.CFrame = CFrame.new(W, Vector3.new(n.X, W.Y, n.Z));
	end);
end;
local function uz(n)
	if not n then
		return nil;
	end;
	local W, l = pcall(function()
			return n.Character;
		end);
	return W and l or nil;
end;
local function yz(n)
	local W = uz(n);
	if not W then
		return false;
	end;
	local l = W:FindFirstChildOfClass("Humanoid");
	return l ~= nil and l.Health > 0;
end;
local function mz(n)
	if not n or n == Y then
		return false;
	end;
	if not F.TeamCheck then
		return true;
	end;
	local W, l = Y.Team, n.Team;
	if W and l then
		return W ~= l;
	end;
	return true;
end;
local Tz = {
		"box",
		"crate",
		"barrel",
		"dumpster",
		"trash",
		"container",
		"shipping",
		"wall",
		"pillar",
		"fence",
		"gate",
		"car",
		"truck",
		"van",
		"generator",
		"cabinet",
		"shelf",
		"locker",
		"desk",
		"table",
		"couch",
		"bench",
		"stairs",
		"ladder",
		"ramp",
		"pipe",
		"vent",
		"sandbag",
		"pallet",
		"forklift",
	};
local function Mz(n, W)
	for l = 1, #W, 1 do
		if string.find(n, W[l], 1, true) then
			return true;
		end;
	end;
	return false;
end;
local function Yz(n)
	if not n or not n:IsA("BasePart") then
		return true;
	end;
	local W = string.lower(n.Name or "");
	local l = string.lower(n:GetFullName() or "");
	local H = string.lower(tostring(n.Material));
	if string.find(W, "glass", 1, true) or string.find(H, "glass", 1, true) then
		return true;
	end;
	if n.Transparency >= .7 then
		return true;
	end;
	if string.find(W, "door", 1, true) or string.find(l, "door", 1, true) then
		if string.find(W, "wood", 1, true) or string.find(l, "wood", 1, true) then
			return false;
		end;
		return true;
	end;
	if string.find(W, "window", 1, true) then
		return true;
	end;
	if n.CanCollide == false and n.Transparency >= .25 then
		return true;
	end;
	if Mz(W, Tz) or Mz(l, Tz) then
		return false;
	end;
	return false;
end;
local function sz(n)
	if not F.WallCheck then
		return true;
	end;
	local W = uz(n);
	local l = W and W:FindFirstChild("Head");
	if not l then
		return false;
	end;
	local H = uz(Y);
	local v = T.CFrame.Position + T.CFrame.LookVector * .8;
	local E = l.Position;
	local g = E - v;
	local u = g.Magnitude;
	if u < 1.5 then
		return true;
	end;
	local y = { T };
	if H then
		table.insert(y, H);
	end;
	if W then
		table.insert(y, W);
	end;
	local m = RaycastParams.new();
	m.FilterType = Enum.RaycastFilterType.Exclude;
	m.FilterDescendantsInstances = y;
	m.IgnoreWater = true;
	local M, s, G = 0, v, g.Unit;
	for n = 1, 12, 1 do
		local l = u - M;
		if l <= .15 then
			return true;
		end;
		local H = workspace:Raycast(s, G * l, m);
		if not H then
			return true;
		end;
		if H.Instance and (W and H.Instance:IsDescendantOf(W)) then
			return true;
		end;
		if Yz(H.Instance) then
			table.insert(y, H.Instance);
			m.FilterDescendantsInstances = y;
			local n = ((H.Position - s)).Magnitude;
			s = H.Position + G * .15;
			M = (M + n) + .15;
		else
			return false;
		end;
	end;
	return false;
end;
local function Gz(n, W)
	if not F.Prediction or not n then
		return n.Position;
	end;
	local l = W and ((W:FindFirstChild("HumanoidRootPart") or W:FindFirstChild("Torso")));
	local H = Vector3.zero;
	if l then
		pcall(function()
			H = l.AssemblyLinearVelocity;
		end);
	end;
	return n.Position + H * ((tonumber(F.PredictAmount) or .12));
end;
local function Rz(n, l)
	local H, v, E = nil, nil, n;
	local g = T.ViewportSize / 2;
	for n, W in ipairs(W:GetPlayers()) do
		if W ~= Y and (mz(W) and yz(W)) then
			local n = uz(W);
			local u = n and n:FindFirstChild("Head");
			if u then
				local y = Gz(u, n);
				local m, M = T:WorldToViewportPoint(y);
				if M and m.Z > 0 then
					local n = ((Vector2.new(m.X, m.Y) - g)).Magnitude;
					if n < E and (((not l) or sz(W))) then
						E = n;
						H = W;
						v = y;
					end;
				end;
			end;
		end;
	end;
	return H, v;
end;
local tz = {};
local function Oz(n)
	return n and ((n:FindFirstChild("Torso") or n:FindFirstChild("UpperTorso")));
end;
local function Xz(n)
	if not n then
		return;
	end;
	local W = tz[n];
	if W then
		pcall(function()
			n.Size = W;
		end);
		tz[n] = nil;
	end;
end;
local function az()
	for n, W in pairs(tz) do
		Xz(n);
	end;
	tz = {};
end;
local function Pz(n, W)
	if not n or not n:IsA("BasePart") then
		return;
	end;
	if tz[n] == nil then
		tz[n] = n.Size;
	end;
	local l = math.clamp(tonumber(W) or 3, 1.2, 12);
	pcall(function()
		n.Size = Vector3.new(l, l, l);
		n.Massless = true;
		n.CanCollide = false;
	end);
end;
local function Dz()
	if not F.Hitbox then
		az();
		return;
	end;
	local n = F.HitboxPart;
	local l = tonumber(F.HitboxSize) or 3;
	for W, H in ipairs(W:GetPlayers()) do
		if H ~= Y and (mz(H) and yz(H)) then
			local W = uz(H);
			if W then
				local H = W:FindFirstChild("Head");
				local v = Oz(W);
				if n == "Head" then
					if H then
						Pz(H, l);
					end;
					if v then
						Xz(v);
					end;
				else
					if v then
						Pz(v, l);
					end;
					if H then
						Xz(H);
					end;
				end;
			end;
		end;
	end;
end;
local qz = 0;
local function Uz()
	local n = uz(Y);
	if not n then
		return nil;
	end;
	return n:FindFirstChildOfClass("Tool");
end;
local function Zz()
	local n = Uz();
	if n then
		pcall(function()
			n:Activate();
		end);
		task.defer(function()
			pcall(function()
				if n and n.Parent then
					n:Activate();
				end;
			end);
		end);
	end;
	pcall(function()
		local n = T.ViewportSize;
		local W, l = n.X / 2, n.Y / 2;
		m:SendMouseButtonEvent(W, l, 0, true, game, 1);
		task.wait(.02);
		m:SendMouseButtonEvent(W, l, 0, false, game, 1);
	end);
end;
local function ez()
	if not F.Triggerbot then
		return;
	end;
	if not Uz() then
		return;
	end;
	local n = tonumber(F.TriggerDelay) or .06;
	if tick() - qz < n then
		return;
	end;
	local W = tonumber(F.TriggerFOV) or 55;
	local l = Rz(W, F.WallCheck);
	if l then
		qz = tick();
		Zz();
	end;
end;
local Qz = nil;
local function zz(n)
	local l = uz(Y);
	local H = l and l:FindFirstChild("HumanoidRootPart");
	if not H then
		return nil;
	end;
	local v = tonumber(F.KillAuraRange) or 90;
	local E, g = nil, v;
	for W, l in ipairs(W:GetPlayers()) do
		if l ~= Y and (l ~= n and (mz(l) and yz(l))) then
			local n = uz(l);
			local W = n and n:FindFirstChild("HumanoidRootPart");
			local v = n and n:FindFirstChild("Head");
			if W and v then
				local n = ((W.Position - H.Position)).Magnitude;
				if n < g then
					g = n;
					E = l;
				end;
			end;
		end;
	end;
	return E;
end;
local function Jz(n)
	local W = uz(Y);
	local l = W and W:FindFirstChild("HumanoidRootPart");
	local H = uz(n);
	local v = H and H:FindFirstChild("HumanoidRootPart");
	local E = H and H:FindFirstChild("Head");
	if not l or not v or not E then
		return false;
	end;
	local g = tonumber(F.KillAuraBehind) or 3.2;
	local u = v.CFrame.LookVector;
	local y = (v.Position - u * g) + Vector3.new(0, 1.4, 0);
	pcall(function()
		l.CFrame = CFrame.new(y, E.Position);
	end);
	pcall(function()
		T.CFrame = CFrame.new(T.CFrame.Position, E.Position);
	end);
	return true;
end;
local function Lz()
	if not F.KillAura then
		Qz = nil;
		return;
	end;
	local n = uz(Y);
	local W = n and n:FindFirstChildOfClass("Humanoid");
	if not W or W.Health <= 0 then
		Qz = nil;
		return;
	end;
	if not Qz or not yz(Qz) or not mz(Qz) then
		Qz = zz(Qz);
	end;
	if not Qz then
		return;
	end;
	if Jz(Qz) then
		Zz();
	else
		Qz = nil;
	end;
end;
local rz = nil;
pcall(function()
	rz = (y:WaitForChild("GameEvents", 8)):WaitForChild("DeviceUpdate", 8);
end);
local function Fz()
	if not rz then
		pcall(function()
			rz = y.GameEvents.DeviceUpdate;
		end);
	end;
	if not rz then
		return;
	end;
	local n = F.DeviceMode or "Console";
	pcall(function()
		if n == "Console" then
			rz:FireServer();
			pcall(function()
				rz:FireServer("Console");
			end);
		elseif n == "Desktop" then
			rz:FireServer("Desktop");
		else
			rz:FireServer("Mobile");
		end;
	end);
end;
task.spawn(function()
	while true do
		local n = tonumber(F.DeviceSpoofDelay) or 1.5;
		if n < .3 then
			n = .3;
		end;
		task.wait(n);
		if F.DeviceSpoof then
			pcall(Fz);
		end;
	end;
end);
J(.78, "Building ESP...");
local Nz = {};
local function jz(n)
	if not B or not A then
		return nil;
	end;
	local W, l = pcall(function()
			return A.new(n);
		end);
	if W and l then
		return l;
	end;
	return nil;
end;
local function Sz(n)
	if not n then
		return;
	end;
	pcall(function()
		if n.Remove then
			n:Remove();
		elseif n.Destroy then
			n:Destroy();
		else
			n.Visible = false;
		end;
	end);
end;
local function Iz(n)
	local W = Nz[n];
	if not W then
		return;
	end;
	for n, W in pairs(W) do
		if type(W) == "table" then
			for n, W in pairs(W) do
				Sz(W);
			end;
		else
			Sz(W);
		end;
	end;
	Nz[n] = nil;
end;
local function Bz()
	for n in pairs(Nz) do
		Iz(n);
	end;
	Nz = {};
end;
local function Az(n)
	if Nz[n] then
		return Nz[n];
	end;
	if not B then
		return nil;
	end;
	local W = jz("Square");
	if not W then
		return nil;
	end;
	pcall(function()
		W.Thickness = 1.5;
		W.Filled = false;
		W.Visible = false;
	end);
	local l = {};
	for n = 1, 8, 1 do
		local W = jz("Line");
		if W then
			pcall(function()
				W.Thickness = 1.5;
				W.Visible = false;
			end);
			l[n] = W;
		end;
	end;
	local H = jz("Text");
	if H then
		pcall(function()
			H.Size = 14;
			H.Center = true;
			H.Outline = true;
			H.Visible = false;
		end);
		pcall(function()
			H.Font = 2;
		end);
	end;
	local v = jz("Text");
	if v then
		pcall(function()
			v.Size = 12;
			v.Center = true;
			v.Outline = true;
			v.Visible = false;
		end);
		pcall(function()
			v.Font = 2;
		end);
	end;
	local E = jz("Square");
	if E then
		pcall(function()
			E.Filled = false;
			E.Visible = false;
		end);
	end;
	local g = jz("Square");
	if g then
		pcall(function()
			g.Filled = true;
			g.Visible = false;
		end);
	end;
	local u = jz("Circle");
	if u then
		pcall(function()
			u.NumSides = 16;
			u.Filled = true;
			u.Visible = false;
		end);
	end;
	Nz[n] = {
			Box = W,
			Lines = l,
			Name = H,
			Dist = v,
			HB = E,
			HF = g,
			Dot = u,
		};
	return Nz[n];
end;
local function xz(n)
	if not n then
		return;
	end;
	pcall(function()
		if n.Box then
			n.Box.Visible = false;
		end;
		if n.Name then
			n.Name.Visible = false;
		end;
		if n.Dist then
			n.Dist.Visible = false;
		end;
		if n.HB then
			n.HB.Visible = false;
		end;
		if n.HF then
			n.HF.Visible = false;
		end;
		if n.Dot then
			n.Dot.Visible = false;
		end;
		if n.Lines then
			for W = 1, #n.Lines, 1 do
				if n.Lines[W] then
					n.Lines[W].Visible = false;
				end;
			end;
		end;
	end);
end;
local function dz()
	if not F.ESP then
		Bz();
		return;
	end;
	if not B then
		return;
	end;
	if not T or not T.Parent then
		return;
	end;
	local n = T.ViewportSize;
	if n.X < 1 or n.Y < 1 then
		return;
	end;
	local l = K();
	local H = uz(Y) and (uz(Y)):FindFirstChild("HumanoidRootPart");
	local v = {};
	for n, W in ipairs(W:GetPlayers()) do
		if W ~= Y and (mz(W) and yz(W)) then
			v[W] = true;
			local n = uz(W);
			local E = n and ((n:FindFirstChild("HumanoidRootPart") or n:FindFirstChild("Torso")));
			local g = n and n:FindFirstChild("Head");
			local u = n and n:FindFirstChildOfClass("Humanoid");
			if not E or not g then
				Iz(W);
				continue;
			end;
			local y = Az(W);
			if not y or not y.Box then
				continue;
			end;
			local m, M = T:WorldToViewportPoint(E.Position);
			local Y, s = T:WorldToViewportPoint(g.Position + Vector3.new(0, 1.1, 0));
			local G, R = T:WorldToViewportPoint(E.Position - Vector3.new(0, 2.8, 0));
			if not m or not Y or not M or not s then
				xz(y);
				continue;
			end;
			if m.Z <= 0 or Y.Z <= 0 then
				xz(y);
				continue;
			end;
			local t = G or m;
			local O = math.max(math.abs(t.Y - Y.Y), 8);
			local X = math.clamp(O / 1.85, 8, 120);
			local a = m.X - X / 2;
			local P = Y.Y;
			local D = Vector2.new(X, O);
			local q = math.clamp(X * .25, 4, 12);
			local U = F.BoxStyle or "Corner";
			if F.ShowBoxes and ((U == "Full" or U == "Both")) then
				y.Box.Size = D;
				y.Box.Position = Vector2.new(a, P);
				y.Box.Color = l;
				y.Box.Visible = true;
			else
				y.Box.Visible = false;
			end;
			if F.ShowBoxes and (((U == "Corner" or U == "Both")) and (y.Lines and y.Lines[1])) then
				local n, W = a, P;
				local H, v = a + X, P + O;
				y.Lines[1].From, y.Lines[1].To = Vector2.new(n, W), Vector2.new(n, W + q);
				y.Lines[2].From, y.Lines[2].To = Vector2.new(n, W), Vector2.new(n + q, W);
				y.Lines[3].From, y.Lines[3].To = Vector2.new(H, W), Vector2.new(H, W + q);
				y.Lines[4].From, y.Lines[4].To = Vector2.new(H, W), Vector2.new(H - q, W);
				y.Lines[5].From, y.Lines[5].To = Vector2.new(n, v), Vector2.new(n, v - q);
				y.Lines[6].From, y.Lines[6].To = Vector2.new(n, v), Vector2.new(n + q, v);
				y.Lines[7].From, y.Lines[7].To = Vector2.new(H, v), Vector2.new(H, v - q);
				y.Lines[8].From, y.Lines[8].To = Vector2.new(H, v), Vector2.new(H - q, v);
				for n = 1, 8, 1 do
					if y.Lines[n] then
						y.Lines[n].Color = l;
						y.Lines[n].Visible = true;
					end;
				end;
			elseif y.Lines then
				for n = 1, 8, 1 do
					if y.Lines[n] then
						y.Lines[n].Visible = false;
					end;
				end;
			end;
			if F.ShowNames and y.Name then
				y.Name.Text = W.DisplayName;
				y.Name.Position = Vector2.new(m.X, Y.Y - 18);
				y.Name.Color = l;
				y.Name.Visible = true;
			elseif y.Name then
				y.Name.Visible = false;
			end;
			if F.ShowDistance and (y.Dist and H) then
				y.Dist.Text = math.floor(((E.Position - H.Position)).Magnitude) .. "m";
				y.Dist.Position = Vector2.new(m.X, (P + O) + 2);
				y.Dist.Color = l;
				y.Dist.Visible = true;
			elseif y.Dist then
				y.Dist.Visible = false;
			end;
			if F.ShowHealth and (u and (y.HB and y.HF)) then
				local n = math.clamp(u.Health / math.max(u.MaxHealth, 1), 0, 1);
				y.HB.Size = Vector2.new(3, O);
				y.HB.Position = Vector2.new(a - 6, P);
				y.HB.Color = l;
				y.HB.Visible = true;
				local W = O * n;
				y.HF.Size = Vector2.new(2, W);
				y.HF.Position = Vector2.new(a - 5.5, (P + O) - W);
				y.HF.Color = Color3.fromRGB(255 * ((1 - n)), 255 * n, 0);
				y.HF.Visible = true;
			else
				if y.HB then
					y.HB.Visible = false;
				end;
				if y.HF then
					y.HF.Visible = false;
				end;
			end;
			if F.ShowHeadDot and y.Dot then
				local n, W = T:WorldToViewportPoint(g.Position);
				if n and (W and n.Z > 0) then
					y.Dot.Position = Vector2.new(n.X, n.Y);
					y.Dot.Radius = math.clamp(X * .18, 3, 9);
					y.Dot.Color = l;
					y.Dot.Visible = true;
				else
					y.Dot.Visible = false;
				end;
			elseif y.Dot then
				y.Dot.Visible = false;
			end;
		end;
	end;
	for n in pairs(Nz) do
		if not v[n] then
			Iz(n);
		end;
	end;
end;
W.PlayerRemoving:Connect(function(n)
	Iz(n);
	if Qz == n then
		Qz = nil;
	end;
	local W = uz(n);
	if W then
		Xz(W:FindFirstChild("Head"));
		Xz(Oz(W));
	end;
end);
local function bz(n)
	n.CharacterRemoving:Connect(function()
		Iz(n);
	end);
	n.CharacterAdded:Connect(function()
		task.wait(.3);
		Iz(n);
	end);
end;
W.PlayerAdded:Connect(bz);
for n, W in ipairs(W:GetPlayers()) do
	bz(W);
end;
local kz = false;
local function fz(n)
	if n == kz then
		return;
	end;
	kz = n;
	pcall(function()
		v.GlobalShadows = not n;
		if n then
			v.FogEnd = 9000000000;
			if settings and (settings()).Rendering then
				(settings()).Rendering.QualityLevel = Enum.QualityLevel.Level01;
			end;
			for n, l in ipairs(workspace:GetDescendants()) do
				if l:IsA("BasePart") then
					local n = false;
					for W, H in ipairs(W:GetPlayers()) do
						if H.Character and l:IsDescendantOf(H.Character) then
							n = true;
							break;
						end;
					end;
					if not n then
						l.Material = Enum.Material.SmoothPlastic;
						l.CastShadow = false;
					end;
				elseif l:IsA("ParticleEmitter") or l:IsA("Trail") or l:IsA("Beam") then
					l.Enabled = false;
				end;
			end;
		end;
	end);
end;
local cz = "\226\156\147";
pcall(function()
	if utf8 and utf8.char then
		cz = utf8.char(57344);
	end;
end);
J(.9, "Building UI...");
local wz = Instance.new("ScreenGui");
wz.Name = "MoonHubUI";
wz.ResetOnSpawn = false;
wz.IgnoreGuiInset = true;
wz.DisplayOrder = 999;
wz.Parent = s;
local iz = Instance.new("Frame");
iz.Size = UDim2.new(0, math.min(540, T.ViewportSize.X - 20), 0, math.min(420, T.ViewportSize.Y - 50));
iz.Position = UDim2.new(.5, -iz.Size.X.Offset / 2, .5, -iz.Size.Y.Offset / 2);
iz.BackgroundColor3 = b;
iz.BackgroundTransparency = .15;
iz.BorderSizePixel = 0;
iz.Visible = false;
iz.Parent = wz;
(Instance.new("UICorner", iz)).CornerRadius = UDim.new(0, 12);
local Kz = Instance.new("Frame");
Kz.Size = UDim2.new(1, 0, 0, 40);
Kz.BackgroundColor3 = k;
Kz.BorderSizePixel = 0;
Kz.Parent = iz;
(Instance.new("UICorner", Kz)).CornerRadius = UDim.new(0, 12);
local Vz = Instance.new("TextLabel");
Vz.Size = UDim2.new(1, -40, 1, 0);
Vz.Position = UDim2.new(0, 12, 0, 0);
Vz.BackgroundTransparency = 1;
Vz.Text = "MOON HUB  |  jailbird";
Vz.TextColor3 = c;
Vz.TextSize = 14;
Vz.Font = i;
Vz.TextXAlignment = Enum.TextXAlignment.Left;
Vz.Parent = Kz;
local Cz = Instance.new("TextButton");
Cz.Size = UDim2.new(0, 28, 0, 28);
Cz.Position = UDim2.new(1, -34, .5, -14);
Cz.BackgroundColor3 = Color3.fromRGB(40, 30, 50);
Cz.Text = "X";
Cz.TextColor3 = w;
Cz.Font = i;
Cz.TextSize = 14;
Cz.Parent = Kz;
(Instance.new("UICorner", Cz)).CornerRadius = UDim.new(0, 6);
local hz = Instance.new("TextLabel");
hz.Size = UDim2.new(1, -16, 0, 18);
hz.Position = UDim2.new(0, 8, 0, 40);
hz.BackgroundTransparency = 1;
hz.Text = "Executor: " .. X;
hz.TextColor3 = w;
hz.TextSize = 11;
hz.Font = i;
hz.TextXAlignment = Enum.TextXAlignment.Left;
hz.Parent = iz;
local pz = Instance.new("ScrollingFrame");
pz.Size = UDim2.new(0, 100, 1, -66);
pz.Position = UDim2.new(0, 8, 0, 60);
pz.BackgroundColor3 = k;
pz.BorderSizePixel = 0;
pz.ScrollBarThickness = 2;
pz.AutomaticCanvasSize = Enum.AutomaticSize.Y;
pz.CanvasSize = UDim2.new(0, 0, 0, 0);
pz.Parent = iz;
(Instance.new("UICorner", pz)).CornerRadius = UDim.new(0, 8);
local oz = Instance.new("UIListLayout");
oz.Padding = UDim.new(0, 4);
oz.Parent = pz;
local nR = Instance.new("UIPadding");
nR.PaddingTop = UDim.new(0, 6);
nR.PaddingLeft = UDim.new(0, 6);
nR.PaddingRight = UDim.new(0, 6);
nR.Parent = pz;
local WR = Instance.new("Frame");
WR.Size = UDim2.new(1, -120, 1, -70);
WR.Position = UDim2.new(0, 114, 0, 62);
WR.BackgroundTransparency = 1;
WR.Parent = iz;
local lR, HR = {}, {};
local function vR(n)
	for W, l in pairs(lR) do
		l.Visible = (W == n);
	end;
	for W, l in pairs(HR) do
		l.BackgroundColor3 = (W == n) and Color3.fromRGB(40, 35, 60) or Color3.fromRGB(22, 22, 30);
		l.TextColor3 = (W == n) and d or w;
	end;
	V();
end;
local function ER(n)
	local W = Instance.new("ScrollingFrame");
	W.Size = UDim2.new(1, 0, 1, 0);
	W.BackgroundTransparency = 1;
	W.BorderSizePixel = 0;
	W.ScrollBarThickness = 3;
	W.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	W.CanvasSize = UDim2.new(0, 0, 0, 0);
	W.Visible = false;
	W.Parent = WR;
	local l = Instance.new("UIListLayout");
	l.Padding = UDim.new(0, 5);
	l.SortOrder = Enum.SortOrder.LayoutOrder;
	l.Parent = W;
	local H = Instance.new("UIPadding");
	H.PaddingBottom = UDim.new(0, 10);
	H.Parent = W;
	W:SetAttribute("O", 0);
	lR[n] = W;
	local v = Instance.new("TextButton");
	v.Size = UDim2.new(1, 0, 0, 28);
	v.BackgroundColor3 = Color3.fromRGB(22, 22, 30);
	v.Text = n;
	v.TextColor3 = w;
	v.TextSize = 12;
	v.Font = i;
	v.Parent = pz;
	(Instance.new("UICorner", v)).CornerRadius = UDim.new(0, 6);
	v.MouseButton1Click:Connect(function()
		vR(n);
	end);
	HR[n] = v;
	return W;
end;
local function gR(n)
	local W = ((n:GetAttribute("O") or 0)) + 1;
	n:SetAttribute("O", W);
	return W;
end;
local function uR(n, W)
	local l = Instance.new("TextLabel");
	l.LayoutOrder = gR(n);
	l.Size = UDim2.new(1, 0, 0, 16);
	l.BackgroundTransparency = 1;
	l.Text = string.upper(W);
	l.TextColor3 = d;
	l.TextSize = 11;
	l.Font = i;
	l.TextXAlignment = Enum.TextXAlignment.Left;
	l.Parent = n;
end;
local function yR(n, W, l)
	local H = Instance.new("Frame");
	H.LayoutOrder = gR(n);
	H.Size = UDim2.new(1, 0, 0, 32);
	H.BackgroundColor3 = f;
	H.BorderSizePixel = 0;
	H.Parent = n;
	(Instance.new("UICorner", H)).CornerRadius = UDim.new(0, 8);
	local v = Instance.new("TextLabel");
	v.Size = UDim2.new(1, -55, 1, 0);
	v.Position = UDim2.new(0, 10, 0, 0);
	v.BackgroundTransparency = 1;
	v.Text = W;
	v.TextColor3 = c;
	v.TextSize = 12;
	v.Font = i;
	v.TextXAlignment = Enum.TextXAlignment.Left;
	v.Parent = H;
	local E = Instance.new("TextButton");
	E.Size = UDim2.new(0, 40, 0, 18);
	E.Position = UDim2.new(1, -48, .5, -9);
	E.BackgroundColor3 = F[l] and d or Color3.fromRGB(45, 45, 58);
	E.Text = "";
	E.Parent = H;
	(Instance.new("UICorner", E)).CornerRadius = UDim.new(1, 0);
	local g = Instance.new("Frame");
	g.Size = UDim2.new(0, 14, 0, 14);
	g.Position = F[l] and UDim2.new(1, -16, .5, -7) or UDim2.new(0, 2, .5, -7);
	g.BackgroundColor3 = Color3.new(1, 1, 1);
	g.BorderSizePixel = 0;
	g.Parent = E;
	(Instance.new("UICorner", g)).CornerRadius = UDim.new(1, 0);
	E.MouseButton1Click:Connect(function()
		F[l] = not F[l];
		local n = F[l];
		E.BackgroundColor3 = n and d or Color3.fromRGB(45, 45, 58);
		g.Position = n and UDim2.new(1, -16, .5, -7) or UDim2.new(0, 2, .5, -7);
		if l == "ESP" then
			if not n then
				Bz();
			end;
		end;
		if l == "Hitbox" and not n then
			az();
		end;
		if l == "DeviceSpoof" and n then
			Fz();
		end;
		if l == "Potato" then
			fz(n);
		end;
		if l == "CustomFOV" then
			if n then
				Hz();
			else
				pcall(function()
					T.FieldOfView = lz;
				end);
			end;
		end;
		if l == "MobileAim" and n then
			F.Aimbot = true;
		end;
		if l == "KillAura" and not n then
			Qz = nil;
		end;
		if l == "ScreenStretch" and (n and not j) then
			j = true;
		end;
		S();
		V();
	end);
end;
local function mR(n, W, H, v, E, g)
	local u = Instance.new("Frame");
	u.LayoutOrder = gR(n);
	u.Size = UDim2.new(1, 0, 0, 46);
	u.BackgroundColor3 = f;
	u.BorderSizePixel = 0;
	u.Parent = n;
	(Instance.new("UICorner", u)).CornerRadius = UDim.new(0, 8);
	local y = Instance.new("TextLabel");
	y.Size = UDim2.new(.65, 0, 0, 16);
	y.Position = UDim2.new(0, 10, 0, 4);
	y.BackgroundTransparency = 1;
	y.Text = W;
	y.TextColor3 = c;
	y.TextSize = 11;
	y.Font = i;
	y.TextXAlignment = Enum.TextXAlignment.Left;
	y.Parent = u;
	local m = Instance.new("TextLabel");
	m.Size = UDim2.new(.3, -8, 0, 16);
	m.Position = UDim2.new(.7, 0, 0, 4);
	m.BackgroundTransparency = 1;
	m.Text = tostring(F[H]);
	m.TextColor3 = d;
	m.TextSize = 11;
	m.Font = i;
	m.TextXAlignment = Enum.TextXAlignment.Right;
	m.Parent = u;
	local T = Instance.new("TextButton");
	T.Size = UDim2.new(1, -20, 0, 8);
	T.Position = UDim2.new(0, 10, 0, 26);
	T.BackgroundColor3 = Color3.fromRGB(40, 40, 55);
	T.Text = "";
	T.Parent = u;
	(Instance.new("UICorner", T)).CornerRadius = UDim.new(1, 0);
	local M = Instance.new("Frame");
	M.Size = UDim2.new(math.clamp(((F[H] - v)) / math.max(E - v, .001), 0, 1), 0, 1, 0);
	M.BackgroundColor3 = d;
	M.BorderSizePixel = 0;
	M.Parent = T;
	(Instance.new("UICorner", M)).CornerRadius = UDim.new(1, 0);
	local function Y(n)
		local W = math.clamp(((n - T.AbsolutePosition.X)) / math.max(T.AbsoluteSize.X, 1), 0, 1);
		local l = v + W * ((E - v));
		l = math.floor(l / g + .5) * g;
		l = math.clamp(l, v, E);
		F[H] = l;
		M.Size = UDim2.new(((l - v)) / math.max(E - v, .001), 0, 1, 0);
		m.Text = tostring(l);
		if H == "CursorSize" then
			o.Size = UDim2.new(0, l, 0, l);
		end;
		if H == "FOVValue" and F.CustomFOV then
			Hz();
		end;
		S();
	end;
	T.MouseButton1Down:Connect(function()
		local n, W;
		n = l.InputChanged:Connect(function(n)
				if n.UserInputType == Enum.UserInputType.MouseMovement or n.UserInputType == Enum.UserInputType.Touch then
					Y(n.Position.X);
				end;
			end);
		W = l.InputEnded:Connect(function(l)
				if l.UserInputType == Enum.UserInputType.MouseButton1 or l.UserInputType == Enum.UserInputType.Touch then
					if n then
						n:Disconnect();
					end;
					if W then
						W:Disconnect();
					end;
				end;
			end);
		pcall(function()
			Y((l:GetMouseLocation()).X);
		end);
	end);
end;
local function TR(n, W, l, H)
	local v = Instance.new("Frame");
	v.LayoutOrder = gR(n);
	v.Size = UDim2.new(1, 0, 0, 32);
	v.BackgroundColor3 = f;
	v.BorderSizePixel = 0;
	v.Parent = n;
	(Instance.new("UICorner", v)).CornerRadius = UDim.new(0, 8);
	local E = Instance.new("TextLabel");
	E.Size = UDim2.new(.4, 0, 1, 0);
	E.Position = UDim2.new(0, 10, 0, 0);
	E.BackgroundTransparency = 1;
	E.Text = W;
	E.TextColor3 = c;
	E.TextSize = 12;
	E.Font = i;
	E.TextXAlignment = Enum.TextXAlignment.Left;
	E.Parent = v;
	local g = 1;
	for n, W in ipairs(H) do
		if W == F[l] then
			g = n;
		end;
	end;
	local u = Instance.new("TextButton");
	u.Size = UDim2.new(.55, -12, 0, 22);
	u.Position = UDim2.new(.45, 0, .5, -11);
	u.BackgroundColor3 = Color3.fromRGB(35, 32, 48);
	u.Text = tostring(F[l]);
	u.TextColor3 = d;
	u.TextSize = 11;
	u.Font = i;
	u.Parent = v;
	(Instance.new("UICorner", u)).CornerRadius = UDim.new(0, 6);
	u.MouseButton1Click:Connect(function()
		g = g % #H + 1;
		F[l] = H[g];
		u.Text = H[g];
		if l == "CursorName" then
			Wz(F.CursorName);
		end;
		if l == "DeviceMode" and F.DeviceSpoof then
			Fz();
		end;
		if l == "HitboxPart" then
			az();
		end;
		S();
		V();
	end);
end;
local function MR(n, W, l, H)
	local v = Instance.new("Frame");
	v.LayoutOrder = gR(n);
	v.Size = UDim2.new(1, 0, 0, 52);
	v.BackgroundColor3 = f;
	v.BorderSizePixel = 0;
	v.Parent = n;
	(Instance.new("UICorner", v)).CornerRadius = UDim.new(0, 8);
	local E = Instance.new("TextLabel");
	E.Size = UDim2.new(1, -16, 0, 14);
	E.Position = UDim2.new(0, 10, 0, 4);
	E.BackgroundTransparency = 1;
	E.Text = W;
	E.TextColor3 = w;
	E.TextSize = 11;
	E.Font = i;
	E.TextXAlignment = Enum.TextXAlignment.Left;
	E.Parent = v;
	local g = Instance.new("TextBox");
	g.Size = UDim2.new(1, -20, 0, 22);
	g.Position = UDim2.new(0, 10, 0, 22);
	g.BackgroundColor3 = Color3.fromRGB(14, 14, 20);
	g.BorderSizePixel = 0;
	g.Text = tostring(F[l] or H or "");
	g.PlaceholderText = H or "";
	g.TextColor3 = c;
	g.TextSize = 12;
	g.Font = i;
	g.ClearTextOnFocus = false;
	g.Parent = v;
	(Instance.new("UICorner", g)).CornerRadius = UDim.new(0, 6);
	g.FocusLost:Connect(function()
		local n = g.Text;
		if not n or n == "" then
			n = H or "default";
			g.Text = n;
		end;
		F[l] = n;
		S();
	end);
end;
local function YR(n, W, l)
	local H = Instance.new("TextButton");
	H.LayoutOrder = gR(n);
	H.Size = UDim2.new(1, 0, 0, 30);
	H.BackgroundColor3 = Color3.fromRGB(35, 30, 55);
	H.Text = W;
	H.TextColor3 = d;
	H.TextSize = 12;
	H.Font = i;
	H.Parent = n;
	(Instance.new("UICorner", H)).CornerRadius = UDim.new(0, 8);
	H.MouseButton1Click:Connect(function()
		l();
		V();
	end);
end;
local sR = ER("Combat");
local GR = ER("Player");
local RR = ER("Stream");
local tR = ER("Staff");
local OR = ER("Mobile");
local XR = ER("Visuals");
local aR = ER("Config");
uR(sR, "Aimbot");
yR(sR, "Aimbot", "Aimbot");
TR(sR, "Key", "AimKey", {
	"MB1",
	"MB2",
	"E",
	"Q",
	"F",
});
TR(sR, "Mode", "AimMode", { "Hold", "Toggle", "Always" });
mR(sR, "FOV", "AimFOV", 40, 350, 1);
mR(sR, "Smooth", "AimSmooth", .1, 1, .05);
yR(sR, "Show FOV", "ShowFOV");
yR(sR, "Wall Check", "WallCheck");
yR(sR, "Team Check", "TeamCheck");
yR(sR, "Prediction", "Prediction");
mR(sR, "Predict", "PredictAmount", 0, .35, .01);
uR(sR, "Triggerbot");
yR(sR, "Triggerbot", "Triggerbot");
mR(sR, "Trigger FOV", "TriggerFOV", 15, 150, 1);
mR(sR, "Trigger Delay", "TriggerDelay", .03, .25, .01);
uR(sR, "Kill Aura");
yR(sR, "Kill Aura", "KillAura");
mR(sR, "Range", "KillAuraRange", 20, 200, 5);
mR(sR, "Behind Dist", "KillAuraBehind", 1.5, 8, .1);
uR(sR, "Camera FOV");
yR(sR, "Custom FOV", "CustomFOV");
mR(sR, "FOV Value", "FOVValue", 40, 120, 1);
uR(sR, "Hitbox Expand");
yR(sR, "Hitbox Expand", "Hitbox");
TR(sR, "Part", "HitboxPart", { "Head", "Torso" });
mR(sR, "Size", "HitboxSize", 1.5, 10, .5);
uR(GR, "Move");
yR(GR, "Speed", "Speed");
mR(GR, "Speed Value", "SpeedValue", 16, 80, 1);
yR(GR, "Noclip", "Noclip");
yR(GR, "Anti-Bow", "AntiBow");
uR(GR, "Device Spoof");
yR(GR, "Device Spoof", "DeviceSpoof");
TR(GR, "Mode", "DeviceMode", { "Console", "Desktop", "Mobile" });
mR(GR, "Delay (sec)", "DeviceSpoofDelay", .3, 5, .1);
YR(GR, "Apply Device Now", Fz);
uR(GR, "Screen Stretch");
yR(GR, "Screen Stretch", "ScreenStretch");
mR(GR, "Stretch Amount", "StretchAmount", .3, 1, .01);
uR(RR, "Stream");
yR(RR, "Stream Proof", "StreamProof");
MR(RR, "Name", "SpoofName", "Player");
yR(RR, "Verified", "ShowVerified");
uR(tR, "Staff");
yR(tR, "Detect", "StaffDetect");
yR(tR, "Leave", "StaffLeave");
uR(OR, "Mobile Aim");
yR(OR, "Mobile Aim ON", "MobileAim");
mR(OR, "Smooth", "MobileSmooth", .1, 1, .05);
mR(OR, "FOV", "MobileFOV", 40, 350, 1);
yR(OR, "Show FOV", "MobileShowFOV");
uR(XR, "ESP");
yR(XR, "ESP Enabled", "ESP");
yR(XR, "Boxes", "ShowBoxes");
TR(XR, "Box Style", "BoxStyle", { "Corner", "Full", "Both" });
yR(XR, "Names", "ShowNames");
yR(XR, "Distance", "ShowDistance");
yR(XR, "Health", "ShowHealth");
yR(XR, "Head Dot", "ShowHeadDot");
YR(XR, "Force Refresh ESP", Bz);
uR(XR, "ESP Color");
yR(XR, "RGB ESP", "RGBESP");
mR(XR, "Red", "ESPColorR", 0, 255, 1);
mR(XR, "Green", "ESPColorG", 0, 255, 1);
mR(XR, "Blue", "ESPColorB", 0, 255, 1);
uR(XR, "Radar");
yR(XR, "Radar", "Radar");
mR(XR, "Radar Size", "RadarSize", 80, 220, 5);
mR(XR, "Radar Range", "RadarRange", 50, 400, 10);
uR(XR, "Cursor");
TR(XR, "Cursor", "CursorName", h);
mR(XR, "Cursor Size", "CursorSize", 8, 128, 1);
for n, W in ipairs(C) do
	YR(XR, W.Name, function()
		Wz(W.Name);
		S();
	end);
end;
uR(aR, "Config");
MR(aR, "Name", "ConfigName", "default");
YR(aR, "Save", S);
YR(aR, "Load", function()
	I();
end);
yR(aR, "FPS + MS", "ShowPerf");
yR(aR, "Potato", "Potato");
uR(aR, "Status");
local PR = Instance.new("TextLabel");
PR.LayoutOrder = gR(aR);
PR.Size = UDim2.new(1, 0, 0, 40);
PR.BackgroundColor3 = f;
PR.BorderSizePixel = 0;
PR.Text = "Executor: " .. X;
PR.TextColor3 = c;
PR.TextSize = 12;
PR.Font = i;
PR.Parent = aR;
(Instance.new("UICorner", PR)).CornerRadius = UDim.new(0, 8);
vR("Combat");
local DR = Instance.new("TextButton");
DR.Size = UDim2.new(0, 60, 0, 40);
DR.Position = UDim2.new(1, -70, 0, 10);
DR.BackgroundColor3 = Color3.fromRGB(30, 30, 40);
DR.Text = "OPEN";
DR.TextColor3 = d;
DR.TextSize = 14;
DR.Font = i;
DR.Visible = true;
DR.Parent = wz;
(Instance.new("UICorner", DR)).CornerRadius = UDim.new(0, 8);
DR.MouseButton1Click:Connect(function()
	iz.Visible = true;
	DR.Visible = false;
end);
local function qR()
	DR.Visible = not iz.Visible;
end;
local UR, ZR, eR;
Kz.InputBegan:Connect(function(n)
	if n.UserInputType == Enum.UserInputType.MouseButton1 or n.UserInputType == Enum.UserInputType.Touch then
		UR = true;
		ZR = n.Position;
		eR = iz.Position;
	end;
end);
Kz.InputEnded:Connect(function(n)
	if n.UserInputType == Enum.UserInputType.MouseButton1 or n.UserInputType == Enum.UserInputType.Touch then
		UR = false;
	end;
end);
l.InputChanged:Connect(function(n)
	if UR and ((n.UserInputType == Enum.UserInputType.MouseMovement or n.UserInputType == Enum.UserInputType.Touch)) then
		local W = n.Position - ZR;
		iz.Position = UDim2.new(eR.X.Scale, eR.X.Offset + W.X, eR.Y.Scale, eR.Y.Offset + W.Y);
	end;
end);
Cz.MouseButton1Click:Connect(function()
	iz.Visible = false;
	qR();
end);
l.InputBegan:Connect(function(n)
	if n.KeyCode == Enum.KeyCode.RightControl or n.KeyCode == Enum.KeyCode.LeftControl then
		iz.Visible = not iz.Visible;
		qR();
		V();
	end;
end);
local QR = {
		MB1 = Enum.UserInputType.MouseButton1,
		MB2 = Enum.UserInputType.MouseButton2,
		E = Enum.KeyCode.E,
		Q = Enum.KeyCode.Q,
		F = Enum.KeyCode.F,
	};
local zR = false;
local JR;
local function LR(n)
	local W = QR[F.AimKey] or Enum.UserInputType.MouseButton2;
	local l = tostring(W);
	if string.find(l, "MouseButton", 1, true) then
		return n.UserInputType == W;
	end;
	if string.find(l, "KeyCode", 1, true) then
		return n.KeyCode == W;
	end;
	return false;
end;
l.InputBegan:Connect(function(n, W)
	if not F.Aimbot or F.MobileAim then
		return;
	end;
	if not LR(n) then
		return;
	end;
	if F.AimMode == "Hold" then
		zR = true;
	elseif F.AimMode == "Toggle" then
		zR = not zR;
	end;
end);
l.InputEnded:Connect(function(n)
	if F.AimMode == "Hold" and LR(n) then
		zR = false;
	end;
end);
local function rR(n)
	if JR then
		JR:Disconnect();
		JR = nil;
	end;
	if not n then
		local n = uz(Y);
		if n then
			for n, W in ipairs(n:GetDescendants()) do
				if W:IsA("BasePart") then
					W.CanCollide = true;
				end;
			end;
		end;
		return;
	end;
	JR = H.Stepped:Connect(function()
			local n = uz(Y);
			if not n then
				return;
			end;
			for n, W in ipairs(n:GetDescendants()) do
				if W:IsA("BasePart") then
					W.CanCollide = false;
				end;
			end;
		end);
end;
task.spawn(function()
	while true do
		task.wait(.2);
		if F.AntiBow then
			pcall(function()
				local n = uz(Y);
				if not n then
					return;
				end;
				local W = n:FindFirstChild("HumanoidRootPart");
				local l = n:FindFirstChildOfClass("Humanoid");
				if not W or not l or l.Health <= 0 then
					return;
				end;
				local H = l:GetState();
				if H == Enum.HumanoidStateType.Jumping or H == Enum.HumanoidStateType.Freefall then
					return;
				end;
				if W.CFrame.UpVector:Dot(Vector3.yAxis) >= .92 then
					return;
				end;
				local v, E = W.CFrame:ToOrientation();
				W.CFrame = CFrame.new(W.Position) * CFrame.Angles(0, E, 0);
			end);
		end;
	end;
end);
task.spawn(function()
	while true do
		task.wait(.5);
		if F.StreamProof then
			local n = tostring(F.SpoofName);
			if F.ShowVerified then
				n = n .. (" " .. cz);
			end;
			pcall(function()
				Y.DisplayName = n;
			end);
		end;
	end;
end);
local FR = 33054943;
local NR = {};
task.spawn(function()
	while true do
		task.wait(2);
		if F.StaffDetect then
			for n, W in ipairs(W:GetPlayers()) do
				if W ~= Y then
					local n, l = pcall(function()
							return W:GetRankInGroup(FR);
						end);
					if n and (type(l) == "number" and l >= 51) then
						if not NR[W.UserId] then
							NR[W.UserId] = true;
							if F.StaffLeave then
								pcall(function()
									Y:Kick("Staff");
								end);
							end;
						end;
					end;
				end;
			end;
		end;
	end;
end);
local jR = Instance.new("ScreenGui");
jR.Name = "MoonFOVGui";
jR.ResetOnSpawn = false;
jR.IgnoreGuiInset = true;
jR.DisplayOrder = 99999;
jR.Parent = R;
local SR = Instance.new("Frame");
SR.AnchorPoint = Vector2.new(.5, .5);
SR.Size = UDim2.new(0, 300, 0, 300);
SR.Position = UDim2.new(.5, 0, .5, 0);
SR.BackgroundTransparency = 1;
SR.BorderSizePixel = 0;
SR.Visible = false;
SR.ZIndex = 999;
SR.Parent = jR;
pcall(function()
	(Instance.new("UICorner", SR)).CornerRadius = UDim.new(1, 0);
end);
local IR;
pcall(function()
	IR = Instance.new("UIStroke");
	IR.Color = Color3.new(1, 1, 1);
	IR.Thickness = 1.5;
	IR.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	IR.Parent = SR;
end);
local BR, AR, xR, dR = 0, tick(), 0, 0;
H.Heartbeat:Connect(function()
	local n = uz(Y);
	if n then
		local W = n:FindFirstChildOfClass("Humanoid");
		if F.Speed and (W and W.Health > 0) then
			W.WalkSpeed = F.SpeedValue or 24;
		end;
		if F.Noclip then
			if not JR then
				rR(true);
			end;
		elseif JR then
			rR(false);
		end;
	end;
	fz(F.Potato == true);
	pcall(ez);
	pcall(Lz);
end);
H.RenderStepped:Connect(function()
	pcall(function()
		BR = BR + 1;
		if tick() - AR >= 1 then
			xR = BR;
			BR = 0;
			AR = tick();
		end;
		if o.Visible then
			local n = l:GetMouseLocation();
			o.Position = UDim2.new(0, n.X, 0, n.Y);
		end;
		if F.CustomFOV then
			Hz();
		end;
		vz = false;
		local n, W, H = false, F.AimSmooth or .95, F.AimFOV or 150;
		if F.KillAura and (Qz and yz(Qz)) then
			vz = true;
		elseif not F.KillAura then
			if F.MobileAim then
				n = true;
				W = F.MobileSmooth or .9;
				H = F.MobileFOV or 160;
			elseif F.Aimbot then
				n = zR or F.AimMode == "Always";
				W = F.AimSmooth or .95;
				H = F.AimFOV or 150;
			end;
		end;
		if n then
			local n, l = Rz(H, true);
			if l then
				vz = true;
				if W >= .98 then
					T.CFrame = CFrame.new(T.CFrame.Position, l);
				else
					T.CFrame = T.CFrame:Lerp(CFrame.new(T.CFrame.Position, l), math.clamp(W, .1, 1));
				end;
				gz(l);
			end;
		end;
		Ez();
		pcall(dz);
		dR = dR + 1;
		if dR >= 2 then
			dR = 0;
			pcall(Dz);
		end;
		local v, E = false, F.AimFOV or 150;
		if F.MobileAim then
			v = F.MobileShowFOV;
			E = F.MobileFOV or 160;
		else
			v = F.ShowFOV;
			E = F.AimFOV or 150;
		end;
		SR.Size = UDim2.new(0, E * 2, 0, E * 2);
		SR.Position = UDim2.new(.5, 0, .5, 0);
		SR.Visible = v;
		if IR then
			if F.RGBESP then
				IR.Color = K();
			end;
		end;
	end);
end);
task.spawn(function()
	while true do
		task.wait(15);
		S();
	end;
end);
if F.CursorName and F.CursorName ~= "Off" then
	Wz(F.CursorName);
end;
if F.CustomFOV then
	Hz();
end;
J(1, "Done");
task.wait(.35);
pcall(function()
	a:Destroy();
end);
iz.Visible = true;
DR.Visible = false;
print("[Moon Hub] PUBLIC | " .. X);
