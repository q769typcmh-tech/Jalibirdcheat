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
local g = getgenv or function()
		return _G;
	end;
local h = game:GetService("Players");
local K = game:GetService("UserInputService");
local j = game:GetService("RunService");
local T = game:GetService("Lighting");
local R = game:GetService("Stats");
local L = game:GetService("HttpService");
local H = game:GetService("TweenService");
local o = game:GetService("ReplicatedStorage");
local I = game:GetService("VirtualInputManager");
local Z = workspace.CurrentCamera;
local s = h.LocalPlayer or h.PlayerAdded:Wait();
local w = s:WaitForChild("PlayerGui", 60);
if not w then
	warn("[Moon] PlayerGui timeout");
	return;
end;
local function b()
	if gethui then
		local g, h = pcall(function()
				return gethui();
			end);
		if g and h then
			return h;
		end;
	end;
	return game:GetService("CoreGui");
end;
local v = b();
pcall(function()
	for g, h in ipairs({
		"MoonHubUI",
		"MoonCursorUI",
		"MoonLoadUI",
		"MoonFOVGui",
		"MoonESPGui",
	}) do
		local K = w:FindFirstChild(h);
		if K then
			K:Destroy();
		end;
		local j = v:FindFirstChild(h);
		if j then
			j:Destroy();
		end;
	end;
end);
task.wait(.05);
local B;
pcall(function()
	B = s:GetMouse();
end);
local function r()
	local h = "Unknown";
	pcall(function()
		if identifyexecutor then
			local g, K = identifyexecutor();
			h = tostring(g or "Unknown");
			if K then
				h = h .. (" " .. tostring(K));
			end;
		elseif getexecutorname then
			h = tostring(getexecutorname());
		elseif syn and syn.request then
			h = "Synapse";
		elseif fluxus then
			h = "Fluxus";
		elseif KRNL_LOADED then
			h = "Krnl";
		elseif is_sirhurt_closure then
			h = "Sirhurt";
		elseif pebc_execute then
			h = "Parallel";
		elseif SecureDelta or (g()).SecureDelta then
			h = "Delta";
		elseif (g()).drew or (g()).IS_COCO_LOADED then
			h = "Coco";
		elseif (g()).X.X or (g()).WXApple then
			h = "Wave";
		elseif (g()).IsElectron then
			h = "Electron";
		elseif (g()).executor_name then
			h = tostring((g()).executor_name);
		end;
	end);
	if h == "Unknown" or h == "" then
		pcall(function()
			if (g()).OPIUMWARE or (g()).Opiumware then
				h = "Opiumware";
			end;
		end);
	end;
	return h;
end;
local E = r();
local X = Instance.new("ScreenGui");
X.Name = "MoonLoadUI";
X.ResetOnSpawn = false;
X.IgnoreGuiInset = true;
X.DisplayOrder = 9999;
X.Parent = w;
task.spawn(function()
	task.wait(8);
	pcall(function()
		if X and X.Parent then
			X:Destroy();
		end;
	end);
end);
local c = Instance.new("Frame");
c.Size = UDim2.new(1, 0, 1, 0);
c.BackgroundColor3 = Color3.fromRGB(8, 8, 12);
c.BorderSizePixel = 0;
c.Parent = X;
local p = Instance.new("Frame");
p.Size = UDim2.new(0, 320, 0, 160);
p.Position = UDim2.new(.5, -160, .5, -80);
p.BackgroundColor3 = Color3.fromRGB(16, 16, 22);
p.BorderSizePixel = 0;
p.Parent = c;
(Instance.new("UICorner", p)).CornerRadius = UDim.new(0, 14);
local f = Instance.new("TextLabel");
f.Size = UDim2.new(1, -20, 0, 28);
f.Position = UDim2.new(0, 10, 0, 14);
f.BackgroundTransparency = 1;
f.Text = "MOON HUB";
f.TextColor3 = Color3.fromRGB(138, 99, 255);
f.TextSize = 20;
f.Font = Enum.Font.GothamBold;
f.Parent = p;
local P = Instance.new("TextLabel");
P.Size = UDim2.new(1, -20, 0, 18);
P.Position = UDim2.new(0, 10, 0, 42);
P.BackgroundTransparency = 1;
P.Text = "jailbird";
P.TextColor3 = Color3.fromRGB(160, 160, 180);
P.TextSize = 12;
P.Font = Enum.Font.Gotham;
P.Parent = p;
local Y = Instance.new("TextLabel");
Y.Size = UDim2.new(1, -20, 0, 18);
Y.Position = UDim2.new(0, 10, 0, 70);
Y.BackgroundTransparency = 1;
Y.Text = "Starting...";
Y.TextColor3 = Color3.fromRGB(220, 220, 230);
Y.TextSize = 12;
Y.Font = Enum.Font.Gotham;
Y.TextXAlignment = Enum.TextXAlignment.Left;
Y.Parent = p;
local x = Instance.new("Frame");
x.Size = UDim2.new(1, -24, 0, 10);
x.Position = UDim2.new(0, 12, 0, 100);
x.BackgroundColor3 = Color3.fromRGB(30, 30, 40);
x.BorderSizePixel = 0;
x.Parent = p;
(Instance.new("UICorner", x)).CornerRadius = UDim.new(1, 0);
local u = Instance.new("Frame");
u.Size = UDim2.new(0, 0, 1, 0);
u.BackgroundColor3 = Color3.fromRGB(138, 99, 255);
u.BorderSizePixel = 0;
u.Parent = x;
(Instance.new("UICorner", u)).CornerRadius = UDim.new(1, 0);
local F = Instance.new("TextLabel");
F.Size = UDim2.new(1, -20, 0, 32);
F.Position = UDim2.new(0, 10, 0, 118);
F.BackgroundTransparency = 1;
F.Text = "Executor: " .. E;
F.TextColor3 = Color3.fromRGB(140, 140, 160);
F.TextSize = 11;
F.Font = Enum.Font.Gotham;
F.TextXAlignment = Enum.TextXAlignment.Left;
F.TextYAlignment = Enum.TextYAlignment.Top;
F.Parent = p;
local function N(g, h)
	g = math.clamp(g, 0, 1);
	pcall(function()
		Y.Text = h or Y.Text;
		(H:Create(u, TweenInfo.new(.25, Enum.EasingStyle.Quad), { Size = UDim2.new(g, 0, 1, 0) })):Play();
	end);
end;
N(.08, "Detecting executor...");
task.wait(.2);
N(.2, "Executor: " .. E);
task.wait(.15);
N(.35, "Loading config...");
task.wait(.1);
local function W(g, h)
	pcall(function()
		if writefile then
			writefile(g, h);
		end;
	end);
end;
local function l(g)
	local h, K = pcall(function()
			if isfile and (isfile(g) and readfile) then
				return readfile(g);
			end;
		end);
	return h and K or nil;
end;
pcall(function()
	if makefolder then
		makefolder("MoonHub");
		makefolder("MoonHub/Configs");
	end;
end);
(g()).MoonHubState = (g()).MoonHubState or {};
local y = (g()).MoonHubState;
local m = {
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
		Chams = false,
		GadgetESP = false,
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
for g, h in pairs(m) do
	if y[g] == nil then
		y[g] = h;
	end;
end;
y.NoRecoil = nil;
y.NoJumpCooldown = nil;
y.KillAuraDelay = nil;
y.HideFromRecord = nil;
if type(y.CursorSize) ~= "number" then
	y.CursorSize = 32;
end;
if type(y.AimSmooth) ~= "number" then
	y.AimSmooth = .95;
end;
if type(y.FOVValue) ~= "number" then
	y.FOVValue = 90;
end;
if type(y.TriggerDelay) ~= "number" then
	y.TriggerDelay = .06;
end;
if type(y.TriggerFOV) ~= "number" then
	y.TriggerFOV = 55;
end;
if type(y.DeviceSpoofDelay) ~= "number" then
	y.DeviceSpoofDelay = 1.5;
end;
y.StretchAmount = math.clamp(tonumber(y.StretchAmount) or .53, .3, 1);
if y.HitboxPart ~= "Head" and y.HitboxPart ~= "Torso" then
	y.HitboxPart = "Head";
end;
if type(y.KillAuraRange) ~= "number" then
	y.KillAuraRange = 90;
end;
if type(y.KillAuraBehind) ~= "number" then
	y.KillAuraBehind = 3.2;
end;
local e = false;
task.delay(2.5, function()
	e = true;
end);
local function D()
	local g = (tostring(y.ConfigName or "default")):gsub("[^%w%-%_]", "");
	if g == "" then
		g = "default";
	end;
	y.ConfigName = g;
	y.NoRecoil = nil;
	y.NoJumpCooldown = nil;
	y.KillAuraDelay = nil;
	y.HideFromRecord = nil;
	y.StretchAmount = math.clamp(tonumber(y.StretchAmount) or .53, .3, 1);
	W("MoonHub/Configs/" .. (g .. ".json"), L:JSONEncode(y));
	W("MoonHub/Jailbird.json", L:JSONEncode(y));
end;
local function V()
	local g = (tostring(y.ConfigName or "default")):gsub("[^%w%-%_]", "");
	local h = l("MoonHub/Configs/" .. (g .. ".json")) or l("MoonHub/Jailbird.json");
	if h then
		pcall(function()
			local g = L:JSONDecode(h);
			if type(g) == "table" then
				for g, h in pairs(g) do
					y[g] = h;
				end;
			end;
		end);
	end;
	y.NoRecoil = nil;
	y.NoJumpCooldown = nil;
	y.KillAuraDelay = nil;
	y.HideFromRecord = nil;
	if type(y.DeviceSpoofDelay) ~= "number" then
		y.DeviceSpoofDelay = 1.5;
	end;
	y.StretchAmount = math.clamp(tonumber(y.StretchAmount) or .53, .3, 1);
	if not e then
		local g = y.ScreenStretch == true;
		y.ScreenStretch = false;
		task.delay(2.6, function()
			if g then
				y.ScreenStretch = true;
			end;
			e = true;
		end);
	end;
	if y.HitboxPart ~= "Head" and y.HitboxPart ~= "Torso" then
		y.HitboxPart = "Head";
	end;
end;
pcall(V);
N(.5, "Loading Drawing...");
local C = false;
local S = nil;
local function J(g)
	if not g or type(g.new) ~= "function" then
		return false;
	end;
	local h = pcall(function()
			local h = g.new("Text");
			h.Visible = false;
			h:Remove();
		end);
	if h then
		C = true;
		S = g;
		return true;
	end;
	return false;
end;
J(Drawing);
J((g()).Drawing);
pcall(function()
	J((getrenv()).Drawing);
end);
pcall(function()
	J(getrawmetatable and getrawmetatable(Drawing));
end);
N(.65, C and "Drawing OK" or "Drawing missing (ESP off)");
local A = Color3.fromRGB(138, 99, 255);
local M = Color3.fromRGB(12, 12, 16);
local G = Color3.fromRGB(18, 18, 24);
local O = Color3.fromRGB(20, 20, 28);
local n = Color3.fromRGB(235, 235, 245);
local z = Color3.fromRGB(160, 160, 180);
local d = Enum.Font.Gotham;
local function t()
	if y.RGBESP then
		return Color3.fromHSV(((tick() * .4)) % 1, 1, 1);
	end;
	return Color3.fromRGB(math.clamp(tonumber(y.ESPColorR) or 170, 0, 255), math.clamp(tonumber(y.ESPColorG) or 0, 0, 255), math.clamp(tonumber(y.ESPColorB) or 255, 0, 255));
end;
local function q()
	pcall(function()
		K.MouseBehavior = Enum.MouseBehavior.Default;
		K.MouseIconEnabled = true;
	end);
end;
local Q = {
		{ Name = "Off", Id = nil },
		{ Name = "Game Crosshair", Id = "GAME" },
		{ Name = "Star Wars", Id = "5462831" },
		{ Name = "Snowflake", Id = "11780968239" },
		{ Name = "Red Dot", Id = "412284862" },
		{ Name = "Diamond", Id = "61210994" },
		{ Name = "Hello Kitty", Id = "10973237327" },
		{ Name = "Eye", Id = "12534101433" },
	};
local k = {};
for g, h in ipairs(Q) do
	k[g] = h.Name;
end;
local i = Instance.new("ScreenGui");
i.Name = "MoonCursorUI";
i.ResetOnSpawn = false;
i.IgnoreGuiInset = true;
i.DisplayOrder = 10000;
i.Parent = w;
local U = Instance.new("ImageLabel");
U.BackgroundTransparency = 1;
U.AnchorPoint = Vector2.new(.5, .5);
U.Size = UDim2.new(0, 32, 0, 32);
U.Visible = false;
U.ZIndex = 100;
U.Parent = i;
local function a(g)
	local h = w:FindFirstChild("Crosshair");
	if not h then
		return;
	end;
	pcall(function()
		if h:IsA("ScreenGui") then
			h.Enabled = g;
		end;
		h.Visible = g;
		for h, K in ipairs(h:GetDescendants()) do
			if K:IsA("GuiObject") then
				K.Visible = g;
			end;
		end;
	end);
end;
local function gd(g)
	g = g or y.CursorName or "Off";
	y.CursorName = g;
	local h = Q[1];
	for K, j in ipairs(Q) do
		if j.Name == g then
			h = j;
			break;
		end;
	end;
	a(false);
	U.Visible = false;
	local j = math.clamp(tonumber(y.CursorSize) or 32, 8, 128);
	U.Size = UDim2.new(0, j, 0, j);
	if not h.Id or h.Name == "Off" then
		pcall(function()
			if B then
				B.Icon = "";
			end;
			K.MouseIconEnabled = true;
		end);
		return;
	end;
	if h.Id == "GAME" then
		a(true);
		pcall(function()
			if B then
				B.Icon = "rbxassetid://0";
			end;
			K.MouseIconEnabled = true;
		end);
		return;
	end;
	pcall(function()
		K.MouseIconEnabled = false;
		if B then
			B.Icon = "rbxassetid://0";
		end;
		U.Image = "rbxassetid://" .. tostring(h.Id);
		U.Visible = true;
	end);
end;
local hd = 70;
pcall(function()
	hd = Z.FieldOfView;
end);
local function Kd()
	if not y.CustomFOV then
		return;
	end;
	local g = math.clamp(tonumber(y.FOVValue) or 90, 40, 120);
	pcall(function()
		if math.abs(Z.FieldOfView - g) > .5 then
			Z.FieldOfView = g;
		end;
	end);
end;
local jd = false;
local function Td()
	if not e then
		return;
	end;
	if not y.ScreenStretch then
		return;
	end;
	if jd then
		return;
	end;
	if not Z or not Z.Parent then
		return;
	end;
	local g = math.clamp(tonumber(y.StretchAmount) or .53, .3, 1);
	if g >= .995 then
		return;
	end;
	pcall(function()
		local h = Z.CFrame;
		if h then
			Z.CFrame = h * CFrame.new(0, 0, 0, 1, 0, 0, 0, g, 0, 0, 0, 1);
		end;
	end);
end;
local function Rd(g)
	local h = s.Character;
	if not h then
		return;
	end;
	local K = h:FindFirstChild("HumanoidRootPart");
	if not K or not g then
		return;
	end;
	pcall(function()
		local h = K.Position;
		K.CFrame = CFrame.new(h, Vector3.new(g.X, h.Y, g.Z));
	end);
end;
local function Ld(g)
	if not g then
		return nil;
	end;
	local h, K = pcall(function()
			return g.Character;
		end);
	return h and K or nil;
end;
local function Hd(g)
	local h = Ld(g);
	if not h then
		return false;
	end;
	local K = h:FindFirstChildOfClass("Humanoid");
	return K ~= nil and K.Health > 0;
end;
local function od(g)
	if not g or g == s then
		return false;
	end;
	if not y.TeamCheck then
		return true;
	end;
	local h, K = s.Team, g.Team;
	if h and K then
		return h ~= K;
	end;
	return true;
end;
local Id = {
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
local function Zd(g, h)
	for K = 1, #h, 1 do
		if string.find(g, h[K], 1, true) then
			return true;
		end;
	end;
	return false;
end;
local function sd(g)
	if not g or not g:IsA("BasePart") then
		return true;
	end;
	local h = string.lower(g.Name or "");
	local K = string.lower(g:GetFullName() or "");
	local j = string.lower(tostring(g.Material));
	if string.find(h, "glass", 1, true) or string.find(j, "glass", 1, true) then
		return true;
	end;
	if g.Transparency >= .7 then
		return true;
	end;
	if string.find(h, "door", 1, true) or string.find(K, "door", 1, true) then
		if string.find(h, "wood", 1, true) or string.find(K, "wood", 1, true) then
			return false;
		end;
		return true;
	end;
	if string.find(h, "window", 1, true) then
		return true;
	end;
	if g.CanCollide == false and g.Transparency >= .25 then
		return true;
	end;
	if Zd(h, Id) or Zd(K, Id) then
		return false;
	end;
	return false;
end;
local function wd(g)
	if not y.WallCheck then
		return true;
	end;
	local h = Ld(g);
	local K = h and h:FindFirstChild("Head");
	if not K then
		return false;
	end;
	local j = Ld(s);
	local T = Z.CFrame.Position + Z.CFrame.LookVector * .8;
	local R = K.Position;
	local L = R - T;
	local H = L.Magnitude;
	if H < 1.5 then
		return true;
	end;
	local o = { Z };
	if j then
		table.insert(o, j);
	end;
	if h then
		table.insert(o, h);
	end;
	local I = RaycastParams.new();
	I.FilterType = Enum.RaycastFilterType.Exclude;
	I.FilterDescendantsInstances = o;
	I.IgnoreWater = true;
	local w, b, v = 0, T, L.Unit;
	for g = 1, 12, 1 do
		local K = H - w;
		if K <= .15 then
			return true;
		end;
		local j = workspace:Raycast(b, v * K, I);
		if not j then
			return true;
		end;
		if j.Instance and (h and j.Instance:IsDescendantOf(h)) then
			return true;
		end;
		if sd(j.Instance) then
			table.insert(o, j.Instance);
			I.FilterDescendantsInstances = o;
			local g = ((j.Position - b)).Magnitude;
			b = j.Position + v * .15;
			w = (w + g) + .15;
		else
			return false;
		end;
	end;
	return false;
end;
local function bd(g, h)
	if not y.Prediction or not g then
		return g.Position;
	end;
	local K = h and ((h:FindFirstChild("HumanoidRootPart") or h:FindFirstChild("Torso")));
	local j = Vector3.zero;
	if K then
		pcall(function()
			j = K.AssemblyLinearVelocity;
		end);
	end;
	return g.Position + j * ((tonumber(y.PredictAmount) or .12));
end;
local function vd(g, K)
	local j, T, R = nil, nil, g;
	local L = Z.ViewportSize / 2;
	for g, h in ipairs(h:GetPlayers()) do
		if h ~= s and (od(h) and Hd(h)) then
			local g = Ld(h);
			local H = g and g:FindFirstChild("Head");
			if H then
				local o = bd(H, g);
				local I, s = Z:WorldToViewportPoint(o);
				if s and I.Z > 0 then
					local g = ((Vector2.new(I.X, I.Y) - L)).Magnitude;
					if g < R and (((not K) or wd(h))) then
						R = g;
						j = h;
						T = o;
					end;
				end;
			end;
		end;
	end;
	return j, T;
end;
local Bd = {};
local function rd(g)
	return g and ((g:FindFirstChild("Torso") or g:FindFirstChild("UpperTorso")));
end;
local function Ed(g)
	if not g then
		return;
	end;
	local h = Bd[g];
	if h then
		pcall(function()
			g.Size = h;
		end);
		Bd[g] = nil;
	end;
end;
local function Xd()
	for g, h in pairs(Bd) do
		Ed(g);
	end;
	Bd = {};
end;
local function cd(g, h)
	if not g or not g:IsA("BasePart") then
		return;
	end;
	if Bd[g] == nil then
		Bd[g] = g.Size;
	end;
	local K = math.clamp(tonumber(h) or 3, 1.2, 12);
	pcall(function()
		g.Size = Vector3.new(K, K, K);
		g.Massless = true;
		g.CanCollide = false;
	end);
end;
local function pd()
	if not y.Hitbox then
		Xd();
		return;
	end;
	local g = y.HitboxPart;
	local K = tonumber(y.HitboxSize) or 3;
	for h, j in ipairs(h:GetPlayers()) do
		if j ~= s and (od(j) and Hd(j)) then
			local h = Ld(j);
			if h then
				local j = h:FindFirstChild("Head");
				local T = rd(h);
				if g == "Head" then
					if j then
						cd(j, K);
					end;
					if T then
						Ed(T);
					end;
				else
					if T then
						cd(T, K);
					end;
					if j then
						Ed(j);
					end;
				end;
			end;
		end;
	end;
end;
local fd = 0;
local function Pd()
	local g = Ld(s);
	if not g then
		return nil;
	end;
	return g:FindFirstChildOfClass("Tool");
end;
local function Yd()
	local g = Pd();
	if g then
		pcall(function()
			g:Activate();
		end);
		task.defer(function()
			pcall(function()
				if g and g.Parent then
					g:Activate();
				end;
			end);
		end);
	end;
	pcall(function()
		local g = Z.ViewportSize;
		local h, K = g.X / 2, g.Y / 2;
		I:SendMouseButtonEvent(h, K, 0, true, game, 1);
		task.wait(.02);
		I:SendMouseButtonEvent(h, K, 0, false, game, 1);
	end);
end;
local function xd()
	if not y.Triggerbot then
		return;
	end;
	if not Pd() then
		return;
	end;
	local g = tonumber(y.TriggerDelay) or .06;
	if tick() - fd < g then
		return;
	end;
	local h = tonumber(y.TriggerFOV) or 55;
	local K = vd(h, y.WallCheck);
	if K then
		fd = tick();
		Yd();
	end;
end;
local ud = nil;
local function Fd(g)
	local K = Ld(s);
	local j = K and K:FindFirstChild("HumanoidRootPart");
	if not j then
		return nil;
	end;
	local T = tonumber(y.KillAuraRange) or 90;
	local R, L = nil, T;
	for h, K in ipairs(h:GetPlayers()) do
		if K ~= s and (K ~= g and (od(K) and Hd(K))) then
			local g = Ld(K);
			local h = g and g:FindFirstChild("HumanoidRootPart");
			local T = g and g:FindFirstChild("Head");
			if h and T then
				local g = ((h.Position - j.Position)).Magnitude;
				if g < L then
					L = g;
					R = K;
				end;
			end;
		end;
	end;
	return R;
end;
local function Nd(g)
	local h = Ld(s);
	local K = h and h:FindFirstChild("HumanoidRootPart");
	local j = Ld(g);
	local T = j and j:FindFirstChild("HumanoidRootPart");
	local R = j and j:FindFirstChild("Head");
	if not K or not T or not R then
		return false;
	end;
	local L = tonumber(y.KillAuraBehind) or 3.2;
	local H = T.CFrame.LookVector;
	local o = (T.Position - H * L) + Vector3.new(0, 1.4, 0);
	pcall(function()
		K.CFrame = CFrame.new(o, R.Position);
	end);
	pcall(function()
		Z.CFrame = CFrame.new(Z.CFrame.Position, R.Position);
	end);
	return true;
end;
local function Wd()
	if not y.KillAura then
		ud = nil;
		return;
	end;
	local g = Ld(s);
	local h = g and g:FindFirstChildOfClass("Humanoid");
	if not h or h.Health <= 0 then
		ud = nil;
		return;
	end;
	if not ud or not Hd(ud) or not od(ud) then
		ud = Fd(ud);
	end;
	if not ud then
		return;
	end;
	if Nd(ud) then
		Yd();
	else
		ud = nil;
	end;
end;
local ld = nil;
pcall(function()
	ld = (o:WaitForChild("GameEvents", 8)):WaitForChild("DeviceUpdate", 8);
end);
local function yd()
	if not ld then
		pcall(function()
			ld = o.GameEvents.DeviceUpdate;
		end);
	end;
	if not ld then
		return;
	end;
	local g = y.DeviceMode or "Console";
	pcall(function()
		if g == "Console" then
			ld:FireServer();
			pcall(function()
				ld:FireServer("Console");
			end);
		elseif g == "Desktop" then
			ld:FireServer("Desktop");
		else
			ld:FireServer("Mobile");
		end;
	end);
end;
task.spawn(function()
	while true do
		local g = tonumber(y.DeviceSpoofDelay) or 1.5;
		if g < .3 then
			g = .3;
		end;
		task.wait(g);
		if y.DeviceSpoof then
			pcall(yd);
		end;
	end;
end);
N(.78, "Building ESP...");
local md = {};
local function ed(g)
	if not C or not S then
		return nil;
	end;
	local h, K = pcall(function()
			return S.new(g);
		end);
	if h and K then
		return K;
	end;
	return nil;
end;
local function Dd(g)
	if not g then
		return;
	end;
	pcall(function()
		if g.Remove then
			g:Remove();
		elseif g.Destroy then
			g:Destroy();
		else
			g.Visible = false;
		end;
	end);
end;
local function Vd(g)
	local h = md[g];
	if not h then
		return;
	end;
	for g, h in pairs(h) do
		if type(h) == "table" then
			for g, h in pairs(h) do
				Dd(h);
			end;
		else
			Dd(h);
		end;
	end;
	md[g] = nil;
end;
local function Cd()
	for g in pairs(md) do
		Vd(g);
	end;
	md = {};
end;
local function Sd(g)
	if md[g] then
		return md[g];
	end;
	if not C then
		return nil;
	end;
	local h = ed("Square");
	if not h then
		return nil;
	end;
	pcall(function()
		h.Thickness = 1.5;
		h.Filled = false;
		h.Visible = false;
	end);
	local K = {};
	for g = 1, 8, 1 do
		local h = ed("Line");
		if h then
			pcall(function()
				h.Thickness = 1.5;
				h.Visible = false;
			end);
			K[g] = h;
		end;
	end;
	local j = ed("Text");
	if j then
		pcall(function()
			j.Size = 14;
			j.Center = true;
			j.Outline = true;
			j.Visible = false;
		end);
		pcall(function()
			j.Font = 2;
		end);
	end;
	local T = ed("Text");
	if T then
		pcall(function()
			T.Size = 12;
			T.Center = true;
			T.Outline = true;
			T.Visible = false;
		end);
		pcall(function()
			T.Font = 2;
		end);
	end;
	local R = ed("Square");
	if R then
		pcall(function()
			R.Filled = false;
			R.Visible = false;
		end);
	end;
	local L = ed("Square");
	if L then
		pcall(function()
			L.Filled = true;
			L.Visible = false;
		end);
	end;
	local H = ed("Circle");
	if H then
		pcall(function()
			H.NumSides = 16;
			H.Filled = true;
			H.Visible = false;
		end);
	end;
	md[g] = {
			Box = h,
			Lines = K,
			Name = j,
			Dist = T,
			HB = R,
			HF = L,
			Dot = H,
		};
	return md[g];
end;
local function Jd(g)
	if not g then
		return;
	end;
	pcall(function()
		if g.Box then
			g.Box.Visible = false;
		end;
		if g.Name then
			g.Name.Visible = false;
		end;
		if g.Dist then
			g.Dist.Visible = false;
		end;
		if g.HB then
			g.HB.Visible = false;
		end;
		if g.HF then
			g.HF.Visible = false;
		end;
		if g.Dot then
			g.Dot.Visible = false;
		end;
		if g.Lines then
			for h = 1, #g.Lines, 1 do
				if g.Lines[h] then
					g.Lines[h].Visible = false;
				end;
			end;
		end;
	end);
end;
local function Ad()
	if not y.ESP then
		Cd();
		return;
	end;
	if not C then
		return;
	end;
	if not Z or not Z.Parent then
		return;
	end;
	local g = Z.ViewportSize;
	if g.X < 1 or g.Y < 1 then
		return;
	end;
	local K = t();
	local j = Ld(s) and (Ld(s)):FindFirstChild("HumanoidRootPart");
	local T = {};
	for g, h in ipairs(h:GetPlayers()) do
		if h ~= s and (od(h) and Hd(h)) then
			T[h] = true;
			local g = Ld(h);
			local R = g and ((g:FindFirstChild("HumanoidRootPart") or g:FindFirstChild("Torso")));
			local L = g and g:FindFirstChild("Head");
			local H = g and g:FindFirstChildOfClass("Humanoid");
			if not R or not L then
				Vd(h);
				continue;
			end;
			local o = Sd(h);
			if not o or not o.Box then
				continue;
			end;
			local I, s = Z:WorldToViewportPoint(R.Position);
			local w, b = Z:WorldToViewportPoint(L.Position + Vector3.new(0, 1.1, 0));
			local v, B = Z:WorldToViewportPoint(R.Position - Vector3.new(0, 2.8, 0));
			if not I or not w or not s or not b then
				Jd(o);
				continue;
			end;
			if I.Z <= 0 or w.Z <= 0 then
				Jd(o);
				continue;
			end;
			local r = v or I;
			local E = math.max(math.abs(r.Y - w.Y), 8);
			local X = math.clamp(E / 1.85, 8, 120);
			local c = I.X - X / 2;
			local p = w.Y;
			local f = Vector2.new(X, E);
			local P = math.clamp(X * .25, 4, 12);
			local Y = y.BoxStyle or "Corner";
			if y.ShowBoxes and ((Y == "Full" or Y == "Both")) then
				o.Box.Size = f;
				o.Box.Position = Vector2.new(c, p);
				o.Box.Color = K;
				o.Box.Visible = true;
			else
				o.Box.Visible = false;
			end;
			if y.ShowBoxes and (((Y == "Corner" or Y == "Both")) and (o.Lines and o.Lines[1])) then
				local g, h = c, p;
				local j, T = c + X, p + E;
				o.Lines[1].From, o.Lines[1].To = Vector2.new(g, h), Vector2.new(g, h + P);
				o.Lines[2].From, o.Lines[2].To = Vector2.new(g, h), Vector2.new(g + P, h);
				o.Lines[3].From, o.Lines[3].To = Vector2.new(j, h), Vector2.new(j, h + P);
				o.Lines[4].From, o.Lines[4].To = Vector2.new(j, h), Vector2.new(j - P, h);
				o.Lines[5].From, o.Lines[5].To = Vector2.new(g, T), Vector2.new(g, T - P);
				o.Lines[6].From, o.Lines[6].To = Vector2.new(g, T), Vector2.new(g + P, T);
				o.Lines[7].From, o.Lines[7].To = Vector2.new(j, T), Vector2.new(j, T - P);
				o.Lines[8].From, o.Lines[8].To = Vector2.new(j, T), Vector2.new(j - P, T);
				for g = 1, 8, 1 do
					if o.Lines[g] then
						o.Lines[g].Color = K;
						o.Lines[g].Visible = true;
					end;
				end;
			elseif o.Lines then
				for g = 1, 8, 1 do
					if o.Lines[g] then
						o.Lines[g].Visible = false;
					end;
				end;
			end;
			if y.ShowNames and o.Name then
				o.Name.Text = h.DisplayName;
				o.Name.Position = Vector2.new(I.X, w.Y - 18);
				o.Name.Color = K;
				o.Name.Visible = true;
			elseif o.Name then
				o.Name.Visible = false;
			end;
			if y.ShowDistance and (o.Dist and j) then
				o.Dist.Text = math.floor(((R.Position - j.Position)).Magnitude) .. "m";
				o.Dist.Position = Vector2.new(I.X, (p + E) + 2);
				o.Dist.Color = K;
				o.Dist.Visible = true;
			elseif o.Dist then
				o.Dist.Visible = false;
			end;
			if y.ShowHealth and (H and (o.HB and o.HF)) then
				local g = math.clamp(H.Health / math.max(H.MaxHealth, 1), 0, 1);
				o.HB.Size = Vector2.new(3, E);
				o.HB.Position = Vector2.new(c - 6, p);
				o.HB.Color = K;
				o.HB.Visible = true;
				local h = E * g;
				o.HF.Size = Vector2.new(2, h);
				o.HF.Position = Vector2.new(c - 5.5, (p + E) - h);
				o.HF.Color = Color3.fromRGB(255 * ((1 - g)), 255 * g, 0);
				o.HF.Visible = true;
			else
				if o.HB then
					o.HB.Visible = false;
				end;
				if o.HF then
					o.HF.Visible = false;
				end;
			end;
			if y.ShowHeadDot and o.Dot then
				local g, h = Z:WorldToViewportPoint(L.Position);
				if g and (h and g.Z > 0) then
					o.Dot.Position = Vector2.new(g.X, g.Y);
					o.Dot.Radius = math.clamp(X * .18, 3, 9);
					o.Dot.Color = K;
					o.Dot.Visible = true;
				else
					o.Dot.Visible = false;
				end;
			elseif o.Dot then
				o.Dot.Visible = false;
			end;
		end;
	end;
	for g in pairs(md) do
		if not T[g] then
			Vd(g);
		end;
	end;
end;
local Md = {};
local function Gd()
	for g, h in pairs(Md) do
		pcall(function()
			h:Destroy();
		end);
		Md[g] = nil;
	end;
end;
local function Od()
	if not y.Chams then
		Gd();
		return;
	end;
	local g = t();
	local K = {};
	for h, j in ipairs(h:GetPlayers()) do
		if j ~= s and (od(j) and Hd(j)) then
			K[j] = true;
			local h = Ld(j);
			if h then
				local K = Md[j];
				if not K or not K.Parent then
					K = Instance.new("Highlight");
					K.Name = "MoonChams";
					K.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop;
					K.FillTransparency = .5;
					K.OutlineTransparency = 0;
					K.Parent = h;
					Md[j] = K;
				end;
				K.FillColor = g;
				K.OutlineColor = g;
				K.Enabled = true;
			end;
		end;
	end;
	for g, h in pairs(Md) do
		if not K[g] then
			pcall(function()
				h:Destroy();
			end);
			Md[g] = nil;
		end;
	end;
end;
local nd = {
		"smoke grenade",
		"decoy grenade",
		"red smoke",
		"sticky grenade",
		"flashbang",
		"proximity alarm",
		"frag grenade",
		"molotov",
		"frost smoke",
		"tear gas",
		"poison gas",
		"black smoke",
	};
local zd = {
		["smoke grenade"] = Color3.fromRGB(180, 180, 180),
		["decoy grenade"] = Color3.fromRGB(160, 80, 255),
		["red smoke"] = Color3.fromRGB(255, 50, 50),
		["sticky grenade"] = Color3.fromRGB(255, 130, 0),
		flashbang = Color3.fromRGB(255, 255, 0),
		["proximity alarm"] = Color3.fromRGB(0, 255, 255),
		["frag grenade"] = Color3.fromRGB(0, 200, 0),
		molotov = Color3.fromRGB(255, 80, 0),
		["frost smoke"] = Color3.fromRGB(100, 180, 255),
		["tear gas"] = Color3.fromRGB(180, 255, 0),
		["poison gas"] = Color3.fromRGB(0, 255, 0),
		["black smoke"] = Color3.fromRGB(40, 40, 40),
	};
local dd = {};
local td = 0;
local function qd()
	for g, h in pairs(dd) do
		pcall(function()
			h:Destroy();
		end);
		dd[g] = nil;
	end;
end;
local function Qd(g)
	local h = g:lower();
	for g, K in pairs(zd) do
		if h:find(g, 1, true) then
			return K;
		end;
	end;
	return Color3.fromRGB(255, 255, 255);
end;
local function kd(g)
	if g:IsA("BasePart") then
		return g;
	end;
	if g:IsA("Tool") then
		return g:FindFirstChild("Handle") or g:FindFirstChildOfClass("BasePart") or g;
	end;
	if g:IsA("Model") then
		return g:FindFirstChildOfClass("BasePart") or g;
	end;
	return nil;
end;
local function id()
	if not y.GadgetESP then
		qd();
		return;
	end;
	td = td + 1;
	if td < 30 then
		return;
	end;
	td = 0;
	local g = {};
	for h, K in ipairs(workspace:GetDescendants()) do
		local j = K.Name:lower();
		local T = false;
		for g, h in ipairs(nd) do
			if j:find(h, 1, true) then
				T = true;
				break;
			end;
		end;
		if T then
			local h = kd(K);
			if h then
				g[h] = true;
				local K = dd[h];
				if not K or not K.Parent then
					K = Instance.new("Highlight");
					K.Name = "MoonGadgetESP";
					K.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop;
					K.FillTransparency = .4;
					K.OutlineTransparency = 0;
					K.Parent = h;
					dd[h] = K;
				end;
				local T = Qd(j);
				K.FillColor = T;
				K.OutlineColor = T;
				K.Enabled = true;
			end;
		end;
	end;
	for h, K in pairs(dd) do
		if not g[h] then
			pcall(function()
				K:Destroy();
			end);
			dd[h] = nil;
		end;
	end;
end;
h.PlayerRemoving:Connect(function(g)
	Vd(g);
	pcall(function()
		if Md[g] then
			Md[g]:Destroy();
			Md[g] = nil;
		end;
	end);
	if ud == g then
		ud = nil;
	end;
	local h = Ld(g);
	if h then
		Ed(h:FindFirstChild("Head"));
		Ed(rd(h));
	end;
end);
local function Ud(g)
	g.CharacterRemoving:Connect(function()
		Vd(g);
		pcall(function()
			if Md[g] then
				Md[g]:Destroy();
				Md[g] = nil;
			end;
		end);
	end);
	g.CharacterAdded:Connect(function()
		task.wait(.3);
		Vd(g);
	end);
end;
h.PlayerAdded:Connect(Ud);
for g, h in ipairs(h:GetPlayers()) do
	Ud(h);
end;
local ad = false;
local function gh(g)
	if g == ad then
		return;
	end;
	ad = g;
	pcall(function()
		T.GlobalShadows = not g;
		if g then
			T.FogEnd = 9000000000;
			if settings and (settings()).Rendering then
				(settings()).Rendering.QualityLevel = Enum.QualityLevel.Level01;
			end;
			for g, K in ipairs(workspace:GetDescendants()) do
				if K:IsA("BasePart") then
					local g = false;
					for h, j in ipairs(h:GetPlayers()) do
						if j.Character and K:IsDescendantOf(j.Character) then
							g = true;
							break;
						end;
					end;
					if not g then
						K.Material = Enum.Material.SmoothPlastic;
						K.CastShadow = false;
					end;
				elseif K:IsA("ParticleEmitter") or K:IsA("Trail") or K:IsA("Beam") then
					K.Enabled = false;
				end;
			end;
		end;
	end);
end;
local hh = "\226\156\147";
pcall(function()
	if utf8 and utf8.char then
		hh = utf8.char(57344);
	end;
end);
N(.9, "Building UI...");
local Kh = Instance.new("ScreenGui");
Kh.Name = "MoonHubUI";
Kh.ResetOnSpawn = false;
Kh.IgnoreGuiInset = true;
Kh.DisplayOrder = 999;
Kh.Parent = w;
local jh = Instance.new("Frame");
jh.Size = UDim2.new(0, math.min(540, Z.ViewportSize.X - 20), 0, math.min(420, Z.ViewportSize.Y - 50));
jh.Position = UDim2.new(.5, -jh.Size.X.Offset / 2, .5, -jh.Size.Y.Offset / 2);
jh.BackgroundColor3 = M;
jh.BackgroundTransparency = .15;
jh.BorderSizePixel = 0;
jh.Visible = false;
jh.Parent = Kh;
(Instance.new("UICorner", jh)).CornerRadius = UDim.new(0, 12);
local Th = Instance.new("Frame");
Th.Size = UDim2.new(1, 0, 0, 40);
Th.BackgroundColor3 = G;
Th.BorderSizePixel = 0;
Th.Parent = jh;
(Instance.new("UICorner", Th)).CornerRadius = UDim.new(0, 12);
local Rh = Instance.new("TextLabel");
Rh.Size = UDim2.new(1, -40, 1, 0);
Rh.Position = UDim2.new(0, 12, 0, 0);
Rh.BackgroundTransparency = 1;
Rh.Text = "MOON HUB  |  jailbird";
Rh.TextColor3 = n;
Rh.TextSize = 14;
Rh.Font = d;
Rh.TextXAlignment = Enum.TextXAlignment.Left;
Rh.Parent = Th;
local Lh = Instance.new("TextButton");
Lh.Size = UDim2.new(0, 28, 0, 28);
Lh.Position = UDim2.new(1, -34, .5, -14);
Lh.BackgroundColor3 = Color3.fromRGB(40, 30, 50);
Lh.Text = "X";
Lh.TextColor3 = z;
Lh.Font = d;
Lh.TextSize = 14;
Lh.Parent = Th;
(Instance.new("UICorner", Lh)).CornerRadius = UDim.new(0, 6);
local Hh = Instance.new("TextLabel");
Hh.Size = UDim2.new(1, -16, 0, 18);
Hh.Position = UDim2.new(0, 8, 0, 40);
Hh.BackgroundTransparency = 1;
Hh.Text = "Executor: " .. E;
Hh.TextColor3 = z;
Hh.TextSize = 11;
Hh.Font = d;
Hh.TextXAlignment = Enum.TextXAlignment.Left;
Hh.Parent = jh;
local oh = Instance.new("ScrollingFrame");
oh.Size = UDim2.new(0, 100, 1, -66);
oh.Position = UDim2.new(0, 8, 0, 60);
oh.BackgroundColor3 = G;
oh.BorderSizePixel = 0;
oh.ScrollBarThickness = 2;
oh.AutomaticCanvasSize = Enum.AutomaticSize.Y;
oh.CanvasSize = UDim2.new(0, 0, 0, 0);
oh.Parent = jh;
(Instance.new("UICorner", oh)).CornerRadius = UDim.new(0, 8);
local Ih = Instance.new("UIListLayout");
Ih.Padding = UDim.new(0, 4);
Ih.Parent = oh;
local Zh = Instance.new("UIPadding");
Zh.PaddingTop = UDim.new(0, 6);
Zh.PaddingLeft = UDim.new(0, 6);
Zh.PaddingRight = UDim.new(0, 6);
Zh.Parent = oh;
local sh = Instance.new("Frame");
sh.Size = UDim2.new(1, -120, 1, -70);
sh.Position = UDim2.new(0, 114, 0, 62);
sh.BackgroundTransparency = 1;
sh.Parent = jh;
local wh, bh = {}, {};
local function vh(g)
	for h, K in pairs(wh) do
		K.Visible = (h == g);
	end;
	for h, K in pairs(bh) do
		K.BackgroundColor3 = (h == g) and Color3.fromRGB(40, 35, 60) or Color3.fromRGB(22, 22, 30);
		K.TextColor3 = (h == g) and A or z;
	end;
	q();
end;
local function Bh(g)
	local h = Instance.new("ScrollingFrame");
	h.Size = UDim2.new(1, 0, 1, 0);
	h.BackgroundTransparency = 1;
	h.BorderSizePixel = 0;
	h.ScrollBarThickness = 3;
	h.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	h.CanvasSize = UDim2.new(0, 0, 0, 0);
	h.Visible = false;
	h.Parent = sh;
	local K = Instance.new("UIListLayout");
	K.Padding = UDim.new(0, 5);
	K.SortOrder = Enum.SortOrder.LayoutOrder;
	K.Parent = h;
	local j = Instance.new("UIPadding");
	j.PaddingBottom = UDim.new(0, 10);
	j.Parent = h;
	h:SetAttribute("O", 0);
	wh[g] = h;
	local T = Instance.new("TextButton");
	T.Size = UDim2.new(1, 0, 0, 28);
	T.BackgroundColor3 = Color3.fromRGB(22, 22, 30);
	T.Text = g;
	T.TextColor3 = z;
	T.TextSize = 12;
	T.Font = d;
	T.Parent = oh;
	(Instance.new("UICorner", T)).CornerRadius = UDim.new(0, 6);
	T.MouseButton1Click:Connect(function()
		vh(g);
	end);
	bh[g] = T;
	return h;
end;
local function rh(g)
	local h = ((g:GetAttribute("O") or 0)) + 1;
	g:SetAttribute("O", h);
	return h;
end;
local function Eh(g, h)
	local K = Instance.new("TextLabel");
	K.LayoutOrder = rh(g);
	K.Size = UDim2.new(1, 0, 0, 16);
	K.BackgroundTransparency = 1;
	K.Text = string.upper(h);
	K.TextColor3 = A;
	K.TextSize = 11;
	K.Font = d;
	K.TextXAlignment = Enum.TextXAlignment.Left;
	K.Parent = g;
end;
local function Xh(g, h, K)
	local j = Instance.new("Frame");
	j.LayoutOrder = rh(g);
	j.Size = UDim2.new(1, 0, 0, 32);
	j.BackgroundColor3 = O;
	j.BorderSizePixel = 0;
	j.Parent = g;
	(Instance.new("UICorner", j)).CornerRadius = UDim.new(0, 8);
	local T = Instance.new("TextLabel");
	T.Size = UDim2.new(1, -55, 1, 0);
	T.Position = UDim2.new(0, 10, 0, 0);
	T.BackgroundTransparency = 1;
	T.Text = h;
	T.TextColor3 = n;
	T.TextSize = 12;
	T.Font = d;
	T.TextXAlignment = Enum.TextXAlignment.Left;
	T.Parent = j;
	local R = Instance.new("TextButton");
	R.Size = UDim2.new(0, 40, 0, 18);
	R.Position = UDim2.new(1, -48, .5, -9);
	R.BackgroundColor3 = y[K] and A or Color3.fromRGB(45, 45, 58);
	R.Text = "";
	R.Parent = j;
	(Instance.new("UICorner", R)).CornerRadius = UDim.new(1, 0);
	local L = Instance.new("Frame");
	L.Size = UDim2.new(0, 14, 0, 14);
	L.Position = y[K] and UDim2.new(1, -16, .5, -7) or UDim2.new(0, 2, .5, -7);
	L.BackgroundColor3 = Color3.new(1, 1, 1);
	L.BorderSizePixel = 0;
	L.Parent = R;
	(Instance.new("UICorner", L)).CornerRadius = UDim.new(1, 0);
	R.MouseButton1Click:Connect(function()
		y[K] = not y[K];
		local g = y[K];
		R.BackgroundColor3 = g and A or Color3.fromRGB(45, 45, 58);
		L.Position = g and UDim2.new(1, -16, .5, -7) or UDim2.new(0, 2, .5, -7);
		if K == "ESP" then
			if not g then
				Cd();
			end;
		end;
		if K == "Chams" then
			if not g then
				Gd();
			end;
		end;
		if K == "GadgetESP" then
			if not g then
				qd();
			end;
		end;
		if K == "Hitbox" and not g then
			Xd();
		end;
		if K == "DeviceSpoof" and g then
			yd();
		end;
		if K == "Potato" then
			gh(g);
		end;
		if K == "CustomFOV" then
			if g then
				Kd();
			else
				pcall(function()
					Z.FieldOfView = hd;
				end);
			end;
		end;
		if K == "MobileAim" and g then
			y.Aimbot = true;
		end;
		if K == "KillAura" and not g then
			ud = nil;
		end;
		if K == "ScreenStretch" and (g and not e) then
			e = true;
		end;
		D();
		q();
	end);
end;
local function ch(g, h, j, T, R, L)
	local H = Instance.new("Frame");
	H.LayoutOrder = rh(g);
	H.Size = UDim2.new(1, 0, 0, 46);
	H.BackgroundColor3 = O;
	H.BorderSizePixel = 0;
	H.Parent = g;
	(Instance.new("UICorner", H)).CornerRadius = UDim.new(0, 8);
	local o = Instance.new("TextLabel");
	o.Size = UDim2.new(.65, 0, 0, 16);
	o.Position = UDim2.new(0, 10, 0, 4);
	o.BackgroundTransparency = 1;
	o.Text = h;
	o.TextColor3 = n;
	o.TextSize = 11;
	o.Font = d;
	o.TextXAlignment = Enum.TextXAlignment.Left;
	o.Parent = H;
	local I = Instance.new("TextLabel");
	I.Size = UDim2.new(.3, -8, 0, 16);
	I.Position = UDim2.new(.7, 0, 0, 4);
	I.BackgroundTransparency = 1;
	I.Text = tostring(y[j]);
	I.TextColor3 = A;
	I.TextSize = 11;
	I.Font = d;
	I.TextXAlignment = Enum.TextXAlignment.Right;
	I.Parent = H;
	local Z = Instance.new("TextButton");
	Z.Size = UDim2.new(1, -20, 0, 8);
	Z.Position = UDim2.new(0, 10, 0, 26);
	Z.BackgroundColor3 = Color3.fromRGB(40, 40, 55);
	Z.Text = "";
	Z.Parent = H;
	(Instance.new("UICorner", Z)).CornerRadius = UDim.new(1, 0);
	local s = Instance.new("Frame");
	s.Size = UDim2.new(math.clamp(((y[j] - T)) / math.max(R - T, .001), 0, 1), 0, 1, 0);
	s.BackgroundColor3 = A;
	s.BorderSizePixel = 0;
	s.Parent = Z;
	(Instance.new("UICorner", s)).CornerRadius = UDim.new(1, 0);
	local function w(g)
		local h = math.clamp(((g - Z.AbsolutePosition.X)) / math.max(Z.AbsoluteSize.X, 1), 0, 1);
		local K = T + h * ((R - T));
		K = math.floor(K / L + .5) * L;
		K = math.clamp(K, T, R);
		y[j] = K;
		s.Size = UDim2.new(((K - T)) / math.max(R - T, .001), 0, 1, 0);
		I.Text = tostring(K);
		if j == "CursorSize" then
			U.Size = UDim2.new(0, K, 0, K);
		end;
		if j == "FOVValue" and y.CustomFOV then
			Kd();
		end;
		D();
	end;
	Z.MouseButton1Down:Connect(function()
		local g, h;
		g = K.InputChanged:Connect(function(g)
				if g.UserInputType == Enum.UserInputType.MouseMovement or g.UserInputType == Enum.UserInputType.Touch then
					w(g.Position.X);
				end;
			end);
		h = K.InputEnded:Connect(function(K)
				if K.UserInputType == Enum.UserInputType.MouseButton1 or K.UserInputType == Enum.UserInputType.Touch then
					if g then
						g:Disconnect();
					end;
					if h then
						h:Disconnect();
					end;
				end;
			end);
		pcall(function()
			w((K:GetMouseLocation()).X);
		end);
	end);
end;
local function ph(g, h, K, j)
	local T = Instance.new("Frame");
	T.LayoutOrder = rh(g);
	T.Size = UDim2.new(1, 0, 0, 32);
	T.BackgroundColor3 = O;
	T.BorderSizePixel = 0;
	T.Parent = g;
	(Instance.new("UICorner", T)).CornerRadius = UDim.new(0, 8);
	local R = Instance.new("TextLabel");
	R.Size = UDim2.new(.4, 0, 1, 0);
	R.Position = UDim2.new(0, 10, 0, 0);
	R.BackgroundTransparency = 1;
	R.Text = h;
	R.TextColor3 = n;
	R.TextSize = 12;
	R.Font = d;
	R.TextXAlignment = Enum.TextXAlignment.Left;
	R.Parent = T;
	local L = 1;
	for g, h in ipairs(j) do
		if h == y[K] then
			L = g;
		end;
	end;
	local H = Instance.new("TextButton");
	H.Size = UDim2.new(.55, -12, 0, 22);
	H.Position = UDim2.new(.45, 0, .5, -11);
	H.BackgroundColor3 = Color3.fromRGB(35, 32, 48);
	H.Text = tostring(y[K]);
	H.TextColor3 = A;
	H.TextSize = 11;
	H.Font = d;
	H.Parent = T;
	(Instance.new("UICorner", H)).CornerRadius = UDim.new(0, 6);
	H.MouseButton1Click:Connect(function()
		L = L % #j + 1;
		y[K] = j[L];
		H.Text = j[L];
		if K == "CursorName" then
			gd(y.CursorName);
		end;
		if K == "DeviceMode" and y.DeviceSpoof then
			yd();
		end;
		if K == "HitboxPart" then
			Xd();
		end;
		D();
		q();
	end);
end;
local function fh(g, h, K, j)
	local T = Instance.new("Frame");
	T.LayoutOrder = rh(g);
	T.Size = UDim2.new(1, 0, 0, 52);
	T.BackgroundColor3 = O;
	T.BorderSizePixel = 0;
	T.Parent = g;
	(Instance.new("UICorner", T)).CornerRadius = UDim.new(0, 8);
	local R = Instance.new("TextLabel");
	R.Size = UDim2.new(1, -16, 0, 14);
	R.Position = UDim2.new(0, 10, 0, 4);
	R.BackgroundTransparency = 1;
	R.Text = h;
	R.TextColor3 = z;
	R.TextSize = 11;
	R.Font = d;
	R.TextXAlignment = Enum.TextXAlignment.Left;
	R.Parent = T;
	local L = Instance.new("TextBox");
	L.Size = UDim2.new(1, -20, 0, 22);
	L.Position = UDim2.new(0, 10, 0, 22);
	L.BackgroundColor3 = Color3.fromRGB(14, 14, 20);
	L.BorderSizePixel = 0;
	L.Text = tostring(y[K] or j or "");
	L.PlaceholderText = j or "";
	L.TextColor3 = n;
	L.TextSize = 12;
	L.Font = d;
	L.ClearTextOnFocus = false;
	L.Parent = T;
	(Instance.new("UICorner", L)).CornerRadius = UDim.new(0, 6);
	L.FocusLost:Connect(function()
		local g = L.Text;
		if not g or g == "" then
			g = j or "default";
			L.Text = g;
		end;
		y[K] = g;
		D();
	end);
end;
local function Ph(g, h, K)
	local j = Instance.new("TextButton");
	j.LayoutOrder = rh(g);
	j.Size = UDim2.new(1, 0, 0, 30);
	j.BackgroundColor3 = Color3.fromRGB(35, 30, 55);
	j.Text = h;
	j.TextColor3 = A;
	j.TextSize = 12;
	j.Font = d;
	j.Parent = g;
	(Instance.new("UICorner", j)).CornerRadius = UDim.new(0, 8);
	j.MouseButton1Click:Connect(function()
		K();
		q();
	end);
end;
local Yh = Bh("Combat");
local xh = Bh("Player");
local uh = Bh("Stream");
local Fh = Bh("Staff");
local Nh = Bh("Mobile");
local Wh = Bh("Visuals");
local lh = Bh("Config");
Eh(Yh, "Aimbot");
Xh(Yh, "Aimbot", "Aimbot");
ph(Yh, "Key", "AimKey", {
	"MB1",
	"MB2",
	"E",
	"Q",
	"F",
});
ph(Yh, "Mode", "AimMode", { "Hold", "Toggle", "Always" });
ch(Yh, "FOV", "AimFOV", 40, 350, 1);
ch(Yh, "Smooth", "AimSmooth", .1, 1, .05);
Xh(Yh, "Show FOV", "ShowFOV");
Xh(Yh, "Wall Check", "WallCheck");
Xh(Yh, "Team Check", "TeamCheck");
Xh(Yh, "Prediction", "Prediction");
ch(Yh, "Predict", "PredictAmount", 0, .35, .01);
Eh(Yh, "Triggerbot");
Xh(Yh, "Triggerbot", "Triggerbot");
ch(Yh, "Trigger FOV", "TriggerFOV", 15, 150, 1);
ch(Yh, "Trigger Delay", "TriggerDelay", .03, .25, .01);
Eh(Yh, "Kill Aura");
Xh(Yh, "Kill Aura", "KillAura");
ch(Yh, "Range", "KillAuraRange", 20, 200, 5);
ch(Yh, "Behind Dist", "KillAuraBehind", 1.5, 8, .1);
Eh(Yh, "Camera FOV");
Xh(Yh, "Custom FOV", "CustomFOV");
ch(Yh, "FOV Value", "FOVValue", 40, 120, 1);
Eh(Yh, "Hitbox Expand");
Xh(Yh, "Hitbox Expand", "Hitbox");
ph(Yh, "Part", "HitboxPart", { "Head", "Torso" });
ch(Yh, "Size", "HitboxSize", 1.5, 10, .5);
Eh(xh, "Move");
Xh(xh, "Speed", "Speed");
ch(xh, "Speed Value", "SpeedValue", 16, 80, 1);
Xh(xh, "Noclip", "Noclip");
Xh(xh, "Anti-Bow", "AntiBow");
Eh(xh, "Device Spoof");
Xh(xh, "Device Spoof", "DeviceSpoof");
ph(xh, "Mode", "DeviceMode", { "Console", "Desktop", "Mobile" });
ch(xh, "Delay (sec)", "DeviceSpoofDelay", .3, 5, .1);
Ph(xh, "Apply Device Now", yd);
Eh(xh, "Screen Stretch");
Xh(xh, "Screen Stretch", "ScreenStretch");
ch(xh, "Stretch Amount", "StretchAmount", .3, 1, .01);
Eh(uh, "Stream");
Xh(uh, "Stream Proof", "StreamProof");
fh(uh, "Name", "SpoofName", "Player");
Xh(uh, "Verified", "ShowVerified");
Eh(Fh, "Staff");
Xh(Fh, "Detect", "StaffDetect");
Xh(Fh, "Leave", "StaffLeave");
Eh(Nh, "Mobile Aim");
Xh(Nh, "Mobile Aim ON", "MobileAim");
ch(Nh, "Smooth", "MobileSmooth", .1, 1, .05);
ch(Nh, "FOV", "MobileFOV", 40, 350, 1);
Xh(Nh, "Show FOV", "MobileShowFOV");
Eh(Wh, "ESP");
Xh(Wh, "ESP Enabled", "ESP");
Xh(Wh, "Boxes", "ShowBoxes");
ph(Wh, "Box Style", "BoxStyle", { "Corner", "Full", "Both" });
Xh(Wh, "Names", "ShowNames");
Xh(Wh, "Distance", "ShowDistance");
Xh(Wh, "Health", "ShowHealth");
Xh(Wh, "Head Dot", "ShowHeadDot");
Xh(Wh, "Chams ESP", "Chams");
Xh(Wh, "Gadget ESP", "GadgetESP");
Ph(Wh, "Force Refresh ESP", Cd);
Eh(Wh, "ESP Color");
Xh(Wh, "RGB ESP", "RGBESP");
ch(Wh, "Red", "ESPColorR", 0, 255, 1);
ch(Wh, "Green", "ESPColorG", 0, 255, 1);
ch(Wh, "Blue", "ESPColorB", 0, 255, 1);
Eh(Wh, "Radar");
Xh(Wh, "Radar", "Radar");
ch(Wh, "Radar Size", "RadarSize", 80, 220, 5);
ch(Wh, "Radar Range", "RadarRange", 50, 400, 10);
Eh(Wh, "Cursor");
ph(Wh, "Cursor", "CursorName", k);
ch(Wh, "Cursor Size", "CursorSize", 8, 128, 1);
for g, h in ipairs(Q) do
	Ph(Wh, h.Name, function()
		gd(h.Name);
		D();
	end);
end;
Eh(lh, "Config");
fh(lh, "Name", "ConfigName", "default");
Ph(lh, "Save", D);
Ph(lh, "Load", function()
	V();
end);
Xh(lh, "FPS + MS", "ShowPerf");
Xh(lh, "Potato", "Potato");
Eh(lh, "Status");
local yh = Instance.new("TextLabel");
yh.LayoutOrder = rh(lh);
yh.Size = UDim2.new(1, 0, 0, 40);
yh.BackgroundColor3 = O;
yh.BorderSizePixel = 0;
yh.Text = "Executor: " .. E;
yh.TextColor3 = n;
yh.TextSize = 12;
yh.Font = d;
yh.Parent = lh;
(Instance.new("UICorner", yh)).CornerRadius = UDim.new(0, 8);
vh("Combat");
local mh = Instance.new("TextButton");
mh.Size = UDim2.new(0, 60, 0, 40);
mh.Position = UDim2.new(1, -70, 0, 10);
mh.BackgroundColor3 = Color3.fromRGB(30, 30, 40);
mh.Text = "OPEN";
mh.TextColor3 = A;
mh.TextSize = 14;
mh.Font = d;
mh.Visible = true;
mh.Parent = Kh;
(Instance.new("UICorner", mh)).CornerRadius = UDim.new(0, 8);
mh.MouseButton1Click:Connect(function()
	jh.Visible = true;
	mh.Visible = false;
end);
local function eh()
	mh.Visible = not jh.Visible;
end;
local Dh, Vh, Ch;
Th.InputBegan:Connect(function(g)
	if g.UserInputType == Enum.UserInputType.MouseButton1 or g.UserInputType == Enum.UserInputType.Touch then
		Dh = true;
		Vh = g.Position;
		Ch = jh.Position;
	end;
end);
Th.InputEnded:Connect(function(g)
	if g.UserInputType == Enum.UserInputType.MouseButton1 or g.UserInputType == Enum.UserInputType.Touch then
		Dh = false;
	end;
end);
K.InputChanged:Connect(function(g)
	if Dh and ((g.UserInputType == Enum.UserInputType.MouseMovement or g.UserInputType == Enum.UserInputType.Touch)) then
		local h = g.Position - Vh;
		jh.Position = UDim2.new(Ch.X.Scale, Ch.X.Offset + h.X, Ch.Y.Scale, Ch.Y.Offset + h.Y);
	end;
end);
Lh.MouseButton1Click:Connect(function()
	jh.Visible = false;
	eh();
end);
K.InputBegan:Connect(function(g)
	if g.KeyCode == Enum.KeyCode.RightControl or g.KeyCode == Enum.KeyCode.LeftControl then
		jh.Visible = not jh.Visible;
		eh();
		q();
	end;
end);
local Sh = {
		MB1 = Enum.UserInputType.MouseButton1,
		MB2 = Enum.UserInputType.MouseButton2,
		E = Enum.KeyCode.E,
		Q = Enum.KeyCode.Q,
		F = Enum.KeyCode.F,
	};
local Jh = false;
local Ah;
local function Mh(g)
	local h = Sh[y.AimKey] or Enum.UserInputType.MouseButton2;
	local K = tostring(h);
	if string.find(K, "MouseButton", 1, true) then
		return g.UserInputType == h;
	end;
	if string.find(K, "KeyCode", 1, true) then
		return g.KeyCode == h;
	end;
	return false;
end;
K.InputBegan:Connect(function(g, h)
	if not y.Aimbot or y.MobileAim then
		return;
	end;
	if not Mh(g) then
		return;
	end;
	if y.AimMode == "Hold" then
		Jh = true;
	elseif y.AimMode == "Toggle" then
		Jh = not Jh;
	end;
end);
K.InputEnded:Connect(function(g)
	if y.AimMode == "Hold" and Mh(g) then
		Jh = false;
	end;
end);
local function Gh(g)
	if Ah then
		Ah:Disconnect();
		Ah = nil;
	end;
	if not g then
		local g = Ld(s);
		if g then
			for g, h in ipairs(g:GetDescendants()) do
				if h:IsA("BasePart") then
					h.CanCollide = true;
				end;
			end;
		end;
		return;
	end;
	Ah = j.Stepped:Connect(function()
			local g = Ld(s);
			if not g then
				return;
			end;
			for g, h in ipairs(g:GetDescendants()) do
				if h:IsA("BasePart") then
					h.CanCollide = false;
				end;
			end;
		end);
end;
task.spawn(function()
	while true do
		task.wait(.2);
		if y.AntiBow then
			pcall(function()
				local g = Ld(s);
				if not g then
					return;
				end;
				local h = g:FindFirstChild("HumanoidRootPart");
				local K = g:FindFirstChildOfClass("Humanoid");
				if not h or not K or K.Health <= 0 then
					return;
				end;
				local j = K:GetState();
				if j == Enum.HumanoidStateType.Jumping or j == Enum.HumanoidStateType.Freefall then
					return;
				end;
				if h.CFrame.UpVector:Dot(Vector3.yAxis) >= .92 then
					return;
				end;
				local T, R = h.CFrame:ToOrientation();
				h.CFrame = CFrame.new(h.Position) * CFrame.Angles(0, R, 0);
			end);
		end;
	end;
end);
task.spawn(function()
	while true do
		task.wait(.5);
		if y.StreamProof then
			local g = tostring(y.SpoofName);
			if y.ShowVerified then
				g = g .. (" " .. hh);
			end;
			pcall(function()
				s.DisplayName = g;
			end);
		end;
	end;
end);
local Oh = 33054943;
local nh = {};
task.spawn(function()
	while true do
		task.wait(2);
		if y.StaffDetect then
			for g, h in ipairs(h:GetPlayers()) do
				if h ~= s then
					local g, K = pcall(function()
							return h:GetRankInGroup(Oh);
						end);
					if g and (type(K) == "number" and K >= 51) then
						if not nh[h.UserId] then
							nh[h.UserId] = true;
							if y.StaffLeave then
								pcall(function()
									s:Kick("Staff");
								end);
							end;
						end;
					end;
				end;
			end;
		end;
	end;
end);
local zh = Instance.new("ScreenGui");
zh.Name = "MoonFOVGui";
zh.ResetOnSpawn = false;
zh.IgnoreGuiInset = true;
zh.DisplayOrder = 99999;
zh.Parent = v;
local dh = Instance.new("Frame");
dh.AnchorPoint = Vector2.new(.5, .5);
dh.Size = UDim2.new(0, 300, 0, 300);
dh.Position = UDim2.new(.5, 0, .5, 0);
dh.BackgroundTransparency = 1;
dh.BorderSizePixel = 0;
dh.Visible = false;
dh.ZIndex = 999;
dh.Parent = zh;
pcall(function()
	(Instance.new("UICorner", dh)).CornerRadius = UDim.new(1, 0);
end);
local th;
pcall(function()
	th = Instance.new("UIStroke");
	th.Color = Color3.new(1, 1, 1);
	th.Thickness = 1.5;
	th.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	th.Parent = dh;
end);
local qh, Qh, kh, ih = 0, tick(), 0, 0;
j.Heartbeat:Connect(function()
	local g = Ld(s);
	if g then
		local h = g:FindFirstChildOfClass("Humanoid");
		if y.Speed and (h and h.Health > 0) then
			h.WalkSpeed = y.SpeedValue or 24;
		end;
		if y.Noclip then
			if not Ah then
				Gh(true);
			end;
		elseif Ah then
			Gh(false);
		end;
	end;
	gh(y.Potato == true);
	pcall(xd);
	pcall(Wd);
end);
j.RenderStepped:Connect(function()
	pcall(function()
		qh = qh + 1;
		if tick() - Qh >= 1 then
			kh = qh;
			qh = 0;
			Qh = tick();
		end;
		if U.Visible then
			local g = K:GetMouseLocation();
			U.Position = UDim2.new(0, g.X, 0, g.Y);
		end;
		if y.CustomFOV then
			Kd();
		end;
		jd = false;
		local g, h, j = false, y.AimSmooth or .95, y.AimFOV or 150;
		if y.KillAura and (ud and Hd(ud)) then
			jd = true;
		elseif not y.KillAura then
			if y.MobileAim then
				g = true;
				h = y.MobileSmooth or .9;
				j = y.MobileFOV or 160;
			elseif y.Aimbot then
				g = Jh or y.AimMode == "Always";
				h = y.AimSmooth or .95;
				j = y.AimFOV or 150;
			end;
		end;
		if g then
			local g, K = vd(j, true);
			if K then
				jd = true;
				if h >= .98 then
					Z.CFrame = CFrame.new(Z.CFrame.Position, K);
				else
					Z.CFrame = Z.CFrame:Lerp(CFrame.new(Z.CFrame.Position, K), math.clamp(h, .1, 1));
				end;
				Rd(K);
			end;
		end;
		Td();
		pcall(Ad);
		pcall(Od);
		pcall(id);
		ih = ih + 1;
		if ih >= 2 then
			ih = 0;
			pcall(pd);
		end;
		local T, R = false, y.AimFOV or 150;
		if y.MobileAim then
			T = y.MobileShowFOV;
			R = y.MobileFOV or 160;
		else
			T = y.ShowFOV;
			R = y.AimFOV or 150;
		end;
		dh.Size = UDim2.new(0, R * 2, 0, R * 2);
		dh.Position = UDim2.new(.5, 0, .5, 0);
		dh.Visible = T;
		if th then
			if y.RGBESP then
				th.Color = t();
			end;
		end;
	end);
end);
task.spawn(function()
	while true do
		task.wait(15);
		D();
	end;
end);
if y.CursorName and y.CursorName ~= "Off" then
	gd(y.CursorName);
end;
if y.CustomFOV then
	Kd();
end;
N(1, "Done");
task.wait(.35);
pcall(function()
	X:Destroy();
end);
jh.Visible = true;
mh.Visible = false;
print("[Moon Hub] PUBLIC | " .. E);
