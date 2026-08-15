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
local S = getgenv or function()
		return _G;
	end;
local E = game:GetService("Players");
local s = game:GetService("UserInputService");
local U = game:GetService("RunService");
local G = game:GetService("Lighting");
local g = game:GetService("Stats");
local v = game:GetService("HttpService");
local r = game:GetService("TweenService");
local L = game:GetService("ReplicatedStorage");
local l = game:GetService("VirtualInputManager");
local O = workspace.CurrentCamera;
local B = E.LocalPlayer or E.PlayerAdded:Wait();
local q = B:WaitForChild("PlayerGui", 60);
if not q then
	warn("[Moon] PlayerGui timeout");
	return;
end;
pcall(function()
	for S, E in ipairs({ "MoonHubUI", "MoonCursorUI", "MoonLoadUI" }) do
		local s = q:FindFirstChild(E);
		if s then
			s:Destroy();
		end;
	end;
	pcall(function()
		if gethui then
			local S = gethui();
			for E, s in ipairs({ "MoonHubUI", "MoonCursorUI", "MoonLoadUI" }) do
				local U = S:FindFirstChild(s);
				if U then
					U:Destroy();
				end;
			end;
		end;
	end);
end);
task.wait(.05);
local b;
pcall(function()
	b = B:GetMouse();
end);
local function x()
	local E = "Unknown";
	pcall(function()
		if identifyexecutor then
			local S, s = identifyexecutor();
			E = tostring(S or "Unknown");
			if s then
				E = E .. ((" " .. tostring(s)));
			end;
		elseif getexecutorname then
			E = tostring(getexecutorname());
		elseif syn and syn.request then
			E = "Synapse";
		elseif fluxus then
			E = "Fluxus";
		elseif KRNL_LOADED then
			E = "Krnl";
		elseif is_sirhurt_closure then
			E = "Sirhurt";
		elseif pebc_execute then
			E = "Parallel";
		elseif SecureDelta or ((S())).SecureDelta then
			E = "Delta";
		elseif ((S())).drew or ((S())).IS_COCO_LOADED then
			E = "Coco";
		elseif ((S())).X.X or ((S())).WXApple then
			E = "Wave";
		elseif ((S())).IsElectron then
			E = "Electron";
		elseif ((S())).executor_name then
			E = tostring(((S())).executor_name);
		end;
	end);
	if E == "Unknown" or E == "" then
		pcall(function()
			if ((S())).OPIUMWARE or ((S())).Opiumware then
				E = "Opiumware";
			end;
		end);
	end;
	return E;
end;
local J = x();
local k = 0;
local function H()
	local S = { "https://api.counterapi.dev/v1/moonhub/jailbird/up", "https://api.countapi.xyz/hit/moonhub-jailbird/executes" };
	for S, E in ipairs(S) do
		local s, U = pcall(function()
				return game:HttpGet(E);
			end);
		if s and ((U and #U > 0)) then
			local S = nil;
			pcall(function()
				S = v:JSONDecode(U);
			end);
			if type(S) == "table" then
				local E = S.value or S.count or S.Count or S.integer;
				if type(E) == "number" then
					k = E;
					return;
				end;
			end;
			local E = tonumber(U);
			if E then
				k = E;
				return;
			end;
		end;
	end;
end;
pcall(H);
local z = Instance.new("ScreenGui");
z.Name = "MoonLoadUI";
z.ResetOnSpawn = false;
z.IgnoreGuiInset = true;
z.DisplayOrder = 9999;
z.Parent = q;
local u = Instance.new("Frame");
u.Size = UDim2.new(1, 0, 1, 0);
u.BackgroundColor3 = Color3.fromRGB(8, 8, 12);
u.BorderSizePixel = 0;
u.Parent = z;
local Q = Instance.new("Frame");
Q.Size = UDim2.new(0, 320, 0, 160);
Q.Position = UDim2.new(.5, -160, .5, -80);
Q.BackgroundColor3 = Color3.fromRGB(16, 16, 22);
Q.BorderSizePixel = 0;
Q.Parent = u;
((Instance.new("UICorner", Q))).CornerRadius = UDim.new(0, 14);
local p = Instance.new("TextLabel");
p.Size = UDim2.new(1, -20, 0, 28);
p.Position = UDim2.new(0, 10, 0, 14);
p.BackgroundTransparency = 1;
p.Text = "MOON HUB";
p.TextColor3 = Color3.fromRGB(138, 99, 255);
p.TextSize = 20;
p.Font = Enum.Font.GothamBold;
p.Parent = Q;
local j = Instance.new("TextLabel");
j.Size = UDim2.new(1, -20, 0, 18);
j.Position = UDim2.new(0, 10, 0, 42);
j.BackgroundTransparency = 1;
j.Text = "jailbird";
j.TextColor3 = Color3.fromRGB(160, 160, 180);
j.TextSize = 12;
j.Font = Enum.Font.Gotham;
j.Parent = Q;
local m = Instance.new("TextLabel");
m.Size = UDim2.new(1, -20, 0, 18);
m.Position = UDim2.new(0, 10, 0, 70);
m.BackgroundTransparency = 1;
m.Text = "Starting...";
m.TextColor3 = Color3.fromRGB(220, 220, 230);
m.TextSize = 12;
m.Font = Enum.Font.Gotham;
m.TextXAlignment = Enum.TextXAlignment.Left;
m.Parent = Q;
local o = Instance.new("Frame");
o.Size = UDim2.new(1, -24, 0, 10);
o.Position = UDim2.new(0, 12, 0, 100);
o.BackgroundColor3 = Color3.fromRGB(30, 30, 40);
o.BorderSizePixel = 0;
o.Parent = Q;
((Instance.new("UICorner", o))).CornerRadius = UDim.new(1, 0);
local d = Instance.new("Frame");
d.Size = UDim2.new(0, 0, 1, 0);
d.BackgroundColor3 = Color3.fromRGB(138, 99, 255);
d.BorderSizePixel = 0;
d.Parent = o;
((Instance.new("UICorner", d))).CornerRadius = UDim.new(1, 0);
local W = Instance.new("TextLabel");
W.Size = UDim2.new(1, -20, 0, 32);
W.Position = UDim2.new(0, 10, 0, 118);
W.BackgroundTransparency = 1;
W.Text = "Executor: " .. ((J .. (("\nExecutes: " .. tostring(k)))));
W.TextColor3 = Color3.fromRGB(140, 140, 160);
W.TextSize = 11;
W.Font = Enum.Font.Gotham;
W.TextXAlignment = Enum.TextXAlignment.Left;
W.TextYAlignment = Enum.TextYAlignment.Top;
W.Parent = Q;
local function I(S, E)
	S = math.clamp(S, 0, 1);
	pcall(function()
		m.Text = E or m.Text;
		((r:Create(d, TweenInfo.new(.25, Enum.EasingStyle.Quad), { Size = UDim2.new(S, 0, 1, 0) }))):Play();
	end);
end;
I(.08, "Detecting executor...");
task.wait(.2);
I(.2, "Executor: " .. J);
task.wait(.15);
I(.35, "Loading config...");
task.wait(.1);
local function c(S, E)
	pcall(function()
		if writefile then
			writefile(S, E);
		end;
	end);
end;
local function Z(S)
	local E, s = pcall(function()
			if isfile and ((isfile(S) and readfile)) then
				return readfile(S);
			end;
		end);
	return E and s or nil;
end;
pcall(function()
	if makefolder then
		makefolder("MoonHub");
		makefolder("MoonHub/Configs");
	end;
end);
((S())).MoonHubState = ((S())).MoonHubState or {};
local D = ((S())).MoonHubState;
local h = {
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
for S, E in pairs(h) do
	if D[S] == nil then
		D[S] = E;
	end;
end;
D.NoRecoil = nil;
D.NoJumpCooldown = nil;
D.KillAuraDelay = nil;
D.HideFromRecord = nil;
if type(D.CursorSize) ~= "number" then
	D.CursorSize = 32;
end;
if type(D.AimSmooth) ~= "number" then
	D.AimSmooth = .95;
end;
if type(D.FOVValue) ~= "number" then
	D.FOVValue = 90;
end;
if type(D.TriggerDelay) ~= "number" then
	D.TriggerDelay = .06;
end;
if type(D.TriggerFOV) ~= "number" then
	D.TriggerFOV = 55;
end;
if type(D.DeviceSpoofDelay) ~= "number" then
	D.DeviceSpoofDelay = 1.5;
end;
D.StretchAmount = math.clamp(tonumber(D.StretchAmount) or .53, .3, 1);
if D.HitboxPart ~= "Head" and D.HitboxPart ~= "Torso" then
	D.HitboxPart = "Head";
end;
if type(D.KillAuraRange) ~= "number" then
	D.KillAuraRange = 90;
end;
if type(D.KillAuraBehind) ~= "number" then
	D.KillAuraBehind = 3.2;
end;
local M = false;
task.delay(2.5, function()
	M = true;
end);
local function f()
	local S = ((tostring(D.ConfigName or "default"))):gsub("[^%w%-%_]", "");
	if S == "" then
		S = "default";
	end;
	D.ConfigName = S;
	D.NoRecoil = nil;
	D.NoJumpCooldown = nil;
	D.KillAuraDelay = nil;
	D.HideFromRecord = nil;
	D.StretchAmount = math.clamp(tonumber(D.StretchAmount) or .53, .3, 1);
	c("MoonHub/Configs/" .. ((S .. ".json")), v:JSONEncode(D));
	c("MoonHub/Jailbird.json", v:JSONEncode(D));
end;
local function Y()
	local S = ((tostring(D.ConfigName or "default"))):gsub("[^%w%-%_]", "");
	local E = Z("MoonHub/Configs/" .. ((S .. ".json"))) or Z("MoonHub/Jailbird.json");
	if E then
		pcall(function()
			local S = v:JSONDecode(E);
			if type(S) == "table" then
				for S, E in pairs(S) do
					D[S] = E;
				end;
			end;
		end);
	end;
	D.NoRecoil = nil;
	D.NoJumpCooldown = nil;
	D.KillAuraDelay = nil;
	D.HideFromRecord = nil;
	if type(D.DeviceSpoofDelay) ~= "number" then
		D.DeviceSpoofDelay = 1.5;
	end;
	D.StretchAmount = math.clamp(tonumber(D.StretchAmount) or .53, .3, 1);
	if not M then
		local S = D.ScreenStretch == true;
		D.ScreenStretch = false;
		task.delay(2.6, function()
			if S then
				D.ScreenStretch = true;
			end;
			M = true;
		end);
	end;
	if D.HitboxPart ~= "Head" and D.HitboxPart ~= "Torso" then
		D.HitboxPart = "Head";
	end;
end;
pcall(Y);
I(.5, "Loading Drawing...");
local n = false;
local a = nil;
pcall(function()
	if Drawing and type(Drawing.new) == "function" then
		a = Drawing;
		local S = Drawing.new("Text");
		S.Visible = false;
		pcall(function()
			S:Remove();
		end);
		n = true;
	end;
end);
if not n then
	pcall(function()
		if ((S())).Drawing and type(((S())).Drawing.new) == "function" then
			a = ((S())).Drawing;
			local E = a.new("Text");
			E.Visible = false;
			pcall(function()
				E:Remove();
			end);
			n = true;
		end;
	end);
end;
I(.65, n and "Drawing OK" or "Drawing missing (ESP off)");
local C = Color3.fromRGB(138, 99, 255);
local T = Color3.fromRGB(12, 12, 16);
local K = Color3.fromRGB(18, 18, 24);
local A = Color3.fromRGB(20, 20, 28);
local N = Color3.fromRGB(235, 235, 245);
local w = Color3.fromRGB(160, 160, 180);
local R = Enum.Font.Gotham;
local function t()
	if D.RGBESP then
		return Color3.fromHSV(((tick() * .4)) % 1, 1, 1);
	end;
	return Color3.fromRGB(math.clamp(tonumber(D.ESPColorR) or 170, 0, 255), math.clamp(tonumber(D.ESPColorG) or 0, 0, 255), math.clamp(tonumber(D.ESPColorB) or 255, 0, 255));
end;
local function X()
	pcall(function()
		s.MouseBehavior = Enum.MouseBehavior.Default;
		s.MouseIconEnabled = true;
	end);
end;
local F = {
		{ Name = "Off", Id = nil },
		{ Name = "Game Crosshair", Id = "GAME" },
		{ Name = "Star Wars", Id = "5462831" },
		{ Name = "Snowflake", Id = "11780968239" },
		{ Name = "Red Dot", Id = "412284862" },
		{ Name = "Diamond", Id = "61210994" },
		{ Name = "Hello Kitty", Id = "10973237327" },
		{ Name = "Eye", Id = "12534101433" },
	};
local i = {};
for S, E in ipairs(F) do
	i[S] = E.Name;
end;
local P = Instance.new("ScreenGui");
P.Name = "MoonCursorUI";
P.ResetOnSpawn = false;
P.IgnoreGuiInset = true;
P.DisplayOrder = 10000;
P.Parent = q;
local y = Instance.new("ImageLabel");
y.BackgroundTransparency = 1;
y.AnchorPoint = Vector2.new(.5, .5);
y.Size = UDim2.new(0, 32, 0, 32);
y.Visible = false;
y.ZIndex = 100;
y.Parent = P;
local function e(S)
	local E = q:FindFirstChild("Crosshair");
	if not E then
		return;
	end;
	pcall(function()
		if E:IsA("ScreenGui") then
			E.Enabled = S;
		end;
		E.Visible = S;
		for E, s in ipairs(E:GetDescendants()) do
			if s:IsA("GuiObject") then
				s.Visible = S;
			end;
		end;
	end);
end;
local function V(S)
	S = S or D.CursorName or "Off";
	D.CursorName = S;
	local E = F[1];
	for s, U in ipairs(F) do
		if U.Name == S then
			E = U;
			break;
		end;
	end;
	e(false);
	y.Visible = false;
	local U = math.clamp(tonumber(D.CursorSize) or 32, 8, 128);
	y.Size = UDim2.new(0, U, 0, U);
	if not E.Id or E.Name == "Off" then
		pcall(function()
			if b then
				b.Icon = "";
			end;
			s.MouseIconEnabled = true;
		end);
		return;
	end;
	if E.Id == "GAME" then
		e(true);
		pcall(function()
			if b then
				b.Icon = "rbxassetid://0";
			end;
			s.MouseIconEnabled = true;
		end);
		return;
	end;
	pcall(function()
		s.MouseIconEnabled = false;
		if b then
			b.Icon = "rbxassetid://0";
		end;
		y.Image = "rbxassetid://" .. tostring(E.Id);
		y.Visible = true;
	end);
end;
local SU = 70;
pcall(function()
	SU = O.FieldOfView;
end);
local function EU()
	if not D.CustomFOV then
		return;
	end;
	local S = math.clamp(tonumber(D.FOVValue) or 90, 40, 120);
	pcall(function()
		if math.abs(O.FieldOfView - S) > .5 then
			O.FieldOfView = S;
		end;
	end);
end;
local sU = false;
local function UU()
	if not M then
		return;
	end;
	if not D.ScreenStretch then
		return;
	end;
	if sU then
		return;
	end;
	if not O or not O.Parent then
		return;
	end;
	local S = math.clamp(tonumber(D.StretchAmount) or .53, .3, 1);
	if S >= .995 then
		return;
	end;
	pcall(function()
		local E = O.CFrame;
		if E then
			O.CFrame = E * CFrame.new(0, 0, 0, 1, 0, 0, 0, S, 0, 0, 0, 1);
		end;
	end);
end;
local function GU(S)
	local E = B.Character;
	if not E then
		return;
	end;
	local s = E:FindFirstChild("HumanoidRootPart");
	if not s or not S then
		return;
	end;
	pcall(function()
		local E = s.Position;
		s.CFrame = CFrame.new(E, Vector3.new(S.X, E.Y, S.Z));
	end);
end;
local function gU(S)
	if not S then
		return nil;
	end;
	local E, s = pcall(function()
			return S.Character;
		end);
	return E and s or nil;
end;
local function vU(S)
	local E = gU(S);
	if not E then
		return false;
	end;
	local s = E:FindFirstChildOfClass("Humanoid");
	return s ~= nil and s.Health > 0;
end;
local function rU(S)
	if not S or S == B then
		return false;
	end;
	if not D.TeamCheck then
		return true;
	end;
	local E, s = B.Team, S.Team;
	if E and s then
		return E ~= s;
	end;
	return true;
end;
local LU = {
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
local function lU(S, E)
	for s = 1, #E, 1 do
		if string.find(S, E[s], 1, true) then
			return true;
		end;
	end;
	return false;
end;
local function OU(S)
	if not S or not S:IsA("BasePart") then
		return true;
	end;
	local E = string.lower(S.Name or "");
	local s = string.lower(S:GetFullName() or "");
	local U = string.lower(tostring(S.Material));
	if string.find(E, "glass", 1, true) or string.find(U, "glass", 1, true) then
		return true;
	end;
	if S.Transparency >= .7 then
		return true;
	end;
	if string.find(E, "door", 1, true) or string.find(s, "door", 1, true) then
		if string.find(E, "wood", 1, true) or string.find(s, "wood", 1, true) then
			return false;
		end;
		return true;
	end;
	if string.find(E, "window", 1, true) then
		return true;
	end;
	if S.CanCollide == false and S.Transparency >= .25 then
		return true;
	end;
	if lU(E, LU) or lU(s, LU) then
		return false;
	end;
	return false;
end;
local function BU(S)
	if not D.WallCheck then
		return true;
	end;
	local E = gU(S);
	local s = E and E:FindFirstChild("Head");
	if not s then
		return false;
	end;
	local U = gU(B);
	local G = O.CFrame.Position + O.CFrame.LookVector * .8;
	local g = s.Position;
	local v = g - G;
	local r = v.Magnitude;
	if r < 1.5 then
		return true;
	end;
	local L = { O };
	if U then
		table.insert(L, U);
	end;
	if E then
		table.insert(L, E);
	end;
	local l = RaycastParams.new();
	l.FilterType = Enum.RaycastFilterType.Exclude;
	l.FilterDescendantsInstances = L;
	l.IgnoreWater = true;
	local q, b, x = 0, G, v.Unit;
	for S = 1, 12, 1 do
		local s = r - q;
		if s <= .15 then
			return true;
		end;
		local U = workspace:Raycast(b, x * s, l);
		if not U then
			return true;
		end;
		if U.Instance and ((E and U.Instance:IsDescendantOf(E))) then
			return true;
		end;
		if OU(U.Instance) then
			table.insert(L, U.Instance);
			l.FilterDescendantsInstances = L;
			local S = ((U.Position - b)).Magnitude;
			b = U.Position + x * .15;
			q = ((q + S)) + .15;
		else
			return false;
		end;
	end;
	return false;
end;
local function qU(S, E)
	if not D.Prediction or not S then
		return S.Position;
	end;
	local s = E and ((E:FindFirstChild("HumanoidRootPart") or E:FindFirstChild("Torso")));
	local U = Vector3.zero;
	if s then
		pcall(function()
			U = s.AssemblyLinearVelocity;
		end);
	end;
	return S.Position + U * ((tonumber(D.PredictAmount) or .12));
end;
local function bU(S, s)
	local U, G, g = nil, nil, S;
	local v = O.ViewportSize / 2;
	for S, E in ipairs(E:GetPlayers()) do
		if E ~= B and ((rU(E) and vU(E))) then
			local S = gU(E);
			local r = S and S:FindFirstChild("Head");
			if r then
				local L = qU(r, S);
				local l, B = O:WorldToViewportPoint(L);
				if B and l.Z > 0 then
					local S = ((Vector2.new(l.X, l.Y) - v)).Magnitude;
					if S < g and (((not s) or BU(E))) then
						g = S;
						U = E;
						G = L;
					end;
				end;
			end;
		end;
	end;
	return U, G;
end;
local xU = {};
local function JU(S)
	return S and ((S:FindFirstChild("UpperTorso") or S:FindFirstChild("Torso")));
end;
local function kU(S)
	if not S then
		return;
	end;
	local E = xU[S];
	if E then
		pcall(function()
			S.Size = E;
		end);
		xU[S] = nil;
	end;
end;
local function HU()
	for S, E in pairs(xU) do
		kU(S);
	end;
	xU = {};
end;
local function zU(S, E)
	if not S or not S:IsA("BasePart") then
		return;
	end;
	if xU[S] == nil then
		xU[S] = S.Size;
	end;
	local s = math.clamp(tonumber(E) or 3, 1.2, 12);
	pcall(function()
		S.Size = Vector3.new(s, s, s);
		S.Massless = true;
		S.CanCollide = false;
	end);
end;
local function uU()
	if not D.Hitbox then
		HU();
		return;
	end;
	local S = D.HitboxPart;
	local s = tonumber(D.HitboxSize) or 3;
	for E, U in ipairs(E:GetPlayers()) do
		if U ~= B and ((rU(U) and vU(U))) then
			local E = gU(U);
			if E then
				local U = E:FindFirstChild("Head");
				local G = JU(E);
				if S == "Head" then
					if U then
						zU(U, s);
					end;
					if G then
						kU(G);
					end;
				else
					if G then
						zU(G, s);
					end;
					if U then
						kU(U);
					end;
				end;
			end;
		end;
	end;
end;
local QU = 0;
local function pU()
	local S = gU(B);
	if not S then
		return nil;
	end;
	return S:FindFirstChildOfClass("Tool");
end;
local function jU()
	local S = pU();
	if S then
		pcall(function()
			S:Activate();
		end);
		task.defer(function()
			pcall(function()
				if S and S.Parent then
					S:Activate();
				end;
			end);
		end);
	end;
	pcall(function()
		local S = O.ViewportSize;
		local E, s = S.X / 2, S.Y / 2;
		l:SendMouseButtonEvent(E, s, 0, true, game, 1);
		task.wait(.02);
		l:SendMouseButtonEvent(E, s, 0, false, game, 1);
	end);
end;
local function mU()
	if not D.Triggerbot then
		return;
	end;
	if not pU() then
		return;
	end;
	local S = tonumber(D.TriggerDelay) or .06;
	if tick() - QU < S then
		return;
	end;
	local E = tonumber(D.TriggerFOV) or 55;
	local s = bU(E, D.WallCheck);
	if s then
		QU = tick();
		jU();
	end;
end;
local oU = nil;
local function dU(S)
	local s = gU(B);
	local U = s and s:FindFirstChild("HumanoidRootPart");
	if not U then
		return nil;
	end;
	local G = tonumber(D.KillAuraRange) or 90;
	local g, v = nil, G;
	for E, s in ipairs(E:GetPlayers()) do
		if s ~= B and ((s ~= S and ((rU(s) and vU(s))))) then
			local S = gU(s);
			local E = S and S:FindFirstChild("HumanoidRootPart");
			local G = S and S:FindFirstChild("Head");
			if E and G then
				local S = ((E.Position - U.Position)).Magnitude;
				if S < v then
					v = S;
					g = s;
				end;
			end;
		end;
	end;
	return g;
end;
local function WU(S)
	local E = gU(B);
	local s = E and E:FindFirstChild("HumanoidRootPart");
	local U = gU(S);
	local G = U and U:FindFirstChild("HumanoidRootPart");
	local g = U and U:FindFirstChild("Head");
	if not s or not G or not g then
		return false;
	end;
	local v = tonumber(D.KillAuraBehind) or 3.2;
	local r = G.CFrame.LookVector;
	local L = ((G.Position - r * v)) + Vector3.new(0, 1.4, 0);
	pcall(function()
		s.CFrame = CFrame.new(L, g.Position);
	end);
	pcall(function()
		O.CFrame = CFrame.new(O.CFrame.Position, g.Position);
	end);
	return true;
end;
local function IU()
	if not D.KillAura then
		oU = nil;
		return;
	end;
	local S = gU(B);
	local E = S and S:FindFirstChildOfClass("Humanoid");
	if not E or E.Health <= 0 then
		oU = nil;
		return;
	end;
	if not oU or not vU(oU) or not rU(oU) then
		oU = dU(oU);
	end;
	if not oU then
		return;
	end;
	if WU(oU) then
		jU();
	else
		oU = nil;
	end;
end;
local cU = nil;
pcall(function()
	cU = ((L:WaitForChild("GameEvents", 8))):WaitForChild("DeviceUpdate", 8);
end);
local function ZU()
	if not cU then
		pcall(function()
			cU = L.GameEvents.DeviceUpdate;
		end);
	end;
	if not cU then
		return;
	end;
	local S = D.DeviceMode or "Console";
	pcall(function()
		if S == "Console" then
			cU:FireServer();
			pcall(function()
				cU:FireServer("Console");
			end);
		elseif S == "Desktop" then
			cU:FireServer("Desktop");
		else
			cU:FireServer("Mobile");
		end;
	end);
end;
task.spawn(function()
	while true do
		local S = tonumber(D.DeviceSpoofDelay) or 1.5;
		if S < .3 then
			S = .3;
		end;
		task.wait(S);
		if D.DeviceSpoof then
			pcall(ZU);
		end;
	end;
end);
I(.78, "Building ESP...");
local DU = {};
local function hU(S)
	if not n or not a then
		return nil;
	end;
	local E, s = pcall(function()
			return a.new(S);
		end);
	if E and s then
		return s;
	end;
	return nil;
end;
local function MU(S)
	if not S then
		return;
	end;
	pcall(function()
		if S.Remove then
			S:Remove();
		elseif S.Destroy then
			S:Destroy();
		else
			S.Visible = false;
		end;
	end);
end;
local function fU(S)
	local E = DU[S];
	if not E then
		return;
	end;
	for S, E in pairs(E) do
		if type(E) == "table" then
			for S, E in pairs(E) do
				MU(E);
			end;
		else
			MU(E);
		end;
	end;
	DU[S] = nil;
end;
local function YU()
	for S in pairs(DU) do
		fU(S);
	end;
	DU = {};
end;
local function nU(S)
	if DU[S] then
		return DU[S];
	end;
	if not n then
		return nil;
	end;
	local E = hU("Square");
	if not E then
		return nil;
	end;
	pcall(function()
		E.Thickness = 1.5;
		E.Filled = false;
		E.Visible = false;
	end);
	local s = {};
	for S = 1, 8, 1 do
		local E = hU("Line");
		if E then
			pcall(function()
				E.Thickness = 1.5;
				E.Visible = false;
			end);
			s[S] = E;
		end;
	end;
	local U = hU("Text");
	if U then
		pcall(function()
			U.Size = 14;
			U.Center = true;
			U.Outline = true;
			U.Font = 2;
			U.Visible = false;
		end);
	end;
	local G = hU("Text");
	if G then
		pcall(function()
			G.Size = 12;
			G.Center = true;
			G.Outline = true;
			G.Font = 2;
			G.Visible = false;
		end);
	end;
	local g = hU("Square");
	if g then
		pcall(function()
			g.Filled = false;
			g.Visible = false;
		end);
	end;
	local v = hU("Square");
	if v then
		pcall(function()
			v.Filled = true;
			v.Visible = false;
		end);
	end;
	local r = hU("Circle");
	if r then
		pcall(function()
			r.NumSides = 16;
			r.Filled = true;
			r.Visible = false;
		end);
	end;
	DU[S] = {
			Box = E,
			Lines = s,
			Name = U,
			Dist = G,
			HB = g,
			HF = v,
			Dot = r,
		};
	return DU[S];
end;
local function aU(S)
	if not S then
		return;
	end;
	pcall(function()
		if S.Box then
			S.Box.Visible = false;
		end;
		if S.Name then
			S.Name.Visible = false;
		end;
		if S.Dist then
			S.Dist.Visible = false;
		end;
		if S.HB then
			S.HB.Visible = false;
		end;
		if S.HF then
			S.HF.Visible = false;
		end;
		if S.Dot then
			S.Dot.Visible = false;
		end;
		if S.Lines then
			for E = 1, #S.Lines, 1 do
				if S.Lines[E] then
					S.Lines[E].Visible = false;
				end;
			end;
		end;
	end);
end;
local function CU()
	if not D.ESP then
		YU();
		return;
	end;
	if not n then
		return;
	end;
	local S = t();
	local s = gU(B) and ((gU(B))):FindFirstChild("HumanoidRootPart");
	local U = {};
	for E, G in ipairs(E:GetPlayers()) do
		if G ~= B and ((rU(G) and vU(G))) then
			U[G] = true;
			local E = gU(G);
			local g = E and ((E:FindFirstChild("HumanoidRootPart") or E:FindFirstChild("Torso")));
			local v = E and E:FindFirstChild("Head");
			local r = E and E:FindFirstChildOfClass("Humanoid");
			if not g or not v then
				fU(G);
			else
				local E = nU(G);
				if E and E.Box then
					local U, L, l = pcall(function()
							local S, E = O:WorldToViewportPoint(g.Position);
							return S, E;
						end);
					if not U or not l or not L or L.Z < 0 then
						aU(E);
					else
						local U = O:WorldToViewportPoint(v.Position + Vector3.new(0, 1.1, 0));
						local l = O:WorldToViewportPoint(g.Position - Vector3.new(0, 2.8, 0));
						local B = math.max(math.abs(l.Y - U.Y), 8);
						local q = math.clamp(B / 1.85, 8, 120);
						local b = Vector2.new(q, B);
						local x = Vector2.new(L.X - q / 2, U.Y);
						local J = math.clamp(q * .25, 4, 12);
						local k = D.BoxStyle or "Corner";
						pcall(function()
							if D.ShowBoxes and ((k == "Full" or k == "Both")) then
								E.Box.Size = b;
								E.Box.Position = x;
								E.Box.Color = S;
								E.Box.Visible = true;
							else
								E.Box.Visible = false;
							end;
						end);
						pcall(function()
							if D.ShowBoxes and ((((k == "Corner" or k == "Both")) and ((E.Lines and E.Lines[1])))) then
								local s = E.Lines;
								s[1].From, s[1].To = x, Vector2.new(x.X, x.Y + J);
								s[2].From, s[2].To = x, Vector2.new(x.X + J, x.Y);
								s[3].From, s[3].To = Vector2.new(x.X + b.X, x.Y), Vector2.new(x.X + b.X, x.Y + J);
								s[4].From, s[4].To = Vector2.new(x.X + b.X, x.Y), Vector2.new(((x.X + b.X)) - J, x.Y);
								s[5].From, s[5].To = Vector2.new(x.X, x.Y + b.Y), Vector2.new(x.X, ((x.Y + b.Y)) - J);
								s[6].From, s[6].To = Vector2.new(x.X, x.Y + b.Y), Vector2.new(x.X + J, x.Y + b.Y);
								s[7].From, s[7].To = Vector2.new(x.X + b.X, x.Y + b.Y), Vector2.new(x.X + b.X, ((x.Y + b.Y)) - J);
								s[8].From, s[8].To = Vector2.new(x.X + b.X, x.Y + b.Y), Vector2.new(((x.X + b.X)) - J, x.Y + b.Y);
								for E = 1, 8, 1 do
									if s[E] then
										s[E].Color = S;
										s[E].Visible = true;
									end;
								end;
							elseif E.Lines then
								for S = 1, #E.Lines, 1 do
									if E.Lines[S] then
										E.Lines[S].Visible = false;
									end;
								end;
							end;
						end);
						pcall(function()
							if D.ShowNames and E.Name then
								E.Name.Text = G.DisplayName;
								E.Name.Position = Vector2.new(L.X, x.Y - 14);
								E.Name.Color = S;
								E.Name.Visible = true;
							elseif E.Name then
								E.Name.Visible = false;
							end;
						end);
						pcall(function()
							if D.ShowDistance and ((E.Dist and s)) then
								E.Dist.Text = math.floor(((g.Position - s.Position)).Magnitude) .. "m";
								E.Dist.Position = Vector2.new(L.X, ((x.Y + b.Y)) + 2);
								E.Dist.Visible = true;
							elseif E.Dist then
								E.Dist.Visible = false;
							end;
						end);
						pcall(function()
							if D.ShowHealth and ((r and ((E.HB and E.HF)))) then
								local S = math.clamp(r.Health / math.max(r.MaxHealth, 1), 0, 1);
								E.HB.Size = Vector2.new(3, b.Y);
								E.HB.Position = Vector2.new(x.X - 6, x.Y);
								E.HB.Visible = true;
								local s = b.Y * S;
								E.HF.Size = Vector2.new(2, s);
								E.HF.Position = Vector2.new(x.X - 5.5, ((x.Y + b.Y)) - s);
								E.HF.Color = Color3.fromRGB(255 * ((1 - S)), 255 * S, 0);
								E.HF.Visible = true;
							else
								if E.HB then
									E.HB.Visible = false;
								end;
								if E.HF then
									E.HF.Visible = false;
								end;
							end;
						end);
						pcall(function()
							if D.ShowHeadDot and E.Dot then
								local s, U = O:WorldToViewportPoint(v.Position);
								if U then
									E.Dot.Position = Vector2.new(s.X, s.Y);
									E.Dot.Radius = math.clamp(q * .18, 3, 9);
									E.Dot.Color = S;
									E.Dot.Visible = true;
								else
									E.Dot.Visible = false;
								end;
							elseif E.Dot then
								E.Dot.Visible = false;
							end;
						end);
					end;
				end;
			end;
		end;
	end;
	for S in pairs(DU) do
		if not U[S] then
			fU(S);
		end;
	end;
end;
E.PlayerRemoving:Connect(function(S)
	fU(S);
	if oU == S then
		oU = nil;
	end;
	local E = gU(S);
	if E then
		kU(E:FindFirstChild("Head"));
		kU(JU(E));
	end;
end);
local function TU(S)
	S.CharacterRemoving:Connect(function()
		fU(S);
	end);
	S.CharacterAdded:Connect(function()
		task.wait(.3);
		fU(S);
	end);
end;
E.PlayerAdded:Connect(TU);
for S, E in ipairs(E:GetPlayers()) do
	TU(E);
end;
local KU = false;
local function AU(S)
	if S == KU then
		return;
	end;
	KU = S;
	pcall(function()
		if S then
			G.GlobalShadows = false;
			G.FogEnd = 9000000000;
			((settings())).Rendering.QualityLevel = Enum.QualityLevel.Level01;
			for S, s in ipairs(workspace:GetDescendants()) do
				if s:IsA("BasePart") then
					local S = false;
					for E, U in ipairs(E:GetPlayers()) do
						if U.Character and s:IsDescendantOf(U.Character) then
							S = true;
							break;
						end;
					end;
					if not S then
						s.Material = Enum.Material.SmoothPlastic;
						s.CastShadow = false;
					end;
				elseif s:IsA("ParticleEmitter") or s:IsA("Trail") or s:IsA("Beam") then
					s.Enabled = false;
				end;
			end;
		else
			G.GlobalShadows = true;
			((settings())).Rendering.QualityLevel = Enum.QualityLevel.Automatic;
		end;
	end);
end;
local NU = "\226\156\147";
pcall(function()
	if utf8 and utf8.char then
		NU = utf8.char(57344);
	end;
end);
I(.9, "Building UI...");
local wU = Instance.new("ScreenGui");
wU.Name = "MoonHubUI";
wU.ResetOnSpawn = false;
wU.IgnoreGuiInset = true;
wU.DisplayOrder = 999;
wU.Parent = q;
local RU = Instance.new("Frame");
RU.Size = UDim2.new(0, math.min(540, O.ViewportSize.X - 20), 0, math.min(420, O.ViewportSize.Y - 50));
RU.Position = UDim2.new(.5, -RU.Size.X.Offset / 2, .5, -RU.Size.Y.Offset / 2);
RU.BackgroundColor3 = T;
RU.BackgroundTransparency = .15;
RU.BorderSizePixel = 0;
RU.Visible = false;
RU.Parent = wU;
((Instance.new("UICorner", RU))).CornerRadius = UDim.new(0, 12);
local tU = Instance.new("Frame");
tU.Size = UDim2.new(1, 0, 0, 40);
tU.BackgroundColor3 = K;
tU.BorderSizePixel = 0;
tU.Parent = RU;
((Instance.new("UICorner", tU))).CornerRadius = UDim.new(0, 12);
local XU = Instance.new("TextLabel");
XU.Size = UDim2.new(1, -40, 1, 0);
XU.Position = UDim2.new(0, 12, 0, 0);
XU.BackgroundTransparency = 1;
XU.Text = "MOON HUB  |  jailbird";
XU.TextColor3 = N;
XU.TextSize = 14;
XU.Font = R;
XU.TextXAlignment = Enum.TextXAlignment.Left;
XU.Parent = tU;
local FU = Instance.new("TextButton");
FU.Size = UDim2.new(0, 28, 0, 28);
FU.Position = UDim2.new(1, -34, .5, -14);
FU.BackgroundColor3 = Color3.fromRGB(40, 30, 50);
FU.Text = "X";
FU.TextColor3 = w;
FU.Font = R;
FU.TextSize = 14;
FU.Parent = tU;
((Instance.new("UICorner", FU))).CornerRadius = UDim.new(0, 6);
local iU = Instance.new("ScrollingFrame");
iU.Size = UDim2.new(0, 100, 1, -60);
iU.Position = UDim2.new(0, 8, 0, 46);
iU.BackgroundColor3 = K;
iU.BorderSizePixel = 0;
iU.ScrollBarThickness = 2;
iU.AutomaticCanvasSize = Enum.AutomaticSize.Y;
iU.CanvasSize = UDim2.new(0, 0, 0, 0);
iU.Parent = RU;
((Instance.new("UICorner", iU))).CornerRadius = UDim.new(0, 8);
local PU = Instance.new("UIListLayout");
PU.Padding = UDim.new(0, 4);
PU.Parent = iU;
local yU = Instance.new("UIPadding");
yU.PaddingTop = UDim.new(0, 6);
yU.PaddingLeft = UDim.new(0, 6);
yU.PaddingRight = UDim.new(0, 6);
yU.Parent = iU;
local eU = Instance.new("Frame");
eU.Size = UDim2.new(1, -120, 1, -70);
eU.Position = UDim2.new(0, 114, 0, 48);
eU.BackgroundTransparency = 1;
eU.Parent = RU;
local VU, S7 = {}, {};
local function E7(S)
	for E, s in pairs(VU) do
		s.Visible = (E == S);
	end;
	for E, s in pairs(S7) do
		s.BackgroundColor3 = (E == S) and Color3.fromRGB(40, 35, 60) or Color3.fromRGB(22, 22, 30);
		s.TextColor3 = (E == S) and C or w;
	end;
	X();
end;
local function s7(S)
	local E = Instance.new("ScrollingFrame");
	E.Size = UDim2.new(1, 0, 1, 0);
	E.BackgroundTransparency = 1;
	E.BorderSizePixel = 0;
	E.ScrollBarThickness = 3;
	E.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	E.CanvasSize = UDim2.new(0, 0, 0, 0);
	E.Visible = false;
	E.Parent = eU;
	local s = Instance.new("UIListLayout");
	s.Padding = UDim.new(0, 5);
	s.SortOrder = Enum.SortOrder.LayoutOrder;
	s.Parent = E;
	local U = Instance.new("UIPadding");
	U.PaddingBottom = UDim.new(0, 10);
	U.Parent = E;
	E:SetAttribute("O", 0);
	VU[S] = E;
	local G = Instance.new("TextButton");
	G.Size = UDim2.new(1, 0, 0, 28);
	G.BackgroundColor3 = Color3.fromRGB(22, 22, 30);
	G.Text = S;
	G.TextColor3 = w;
	G.TextSize = 12;
	G.Font = R;
	G.Parent = iU;
	((Instance.new("UICorner", G))).CornerRadius = UDim.new(0, 6);
	G.MouseButton1Click:Connect(function()
		E7(S);
	end);
	S7[S] = G;
	return E;
end;
local function U7(S)
	local E = ((S:GetAttribute("O") or 0)) + 1;
	S:SetAttribute("O", E);
	return E;
end;
local function G7(S, E)
	local s = Instance.new("TextLabel");
	s.LayoutOrder = U7(S);
	s.Size = UDim2.new(1, 0, 0, 16);
	s.BackgroundTransparency = 1;
	s.Text = string.upper(E);
	s.TextColor3 = C;
	s.TextSize = 11;
	s.Font = R;
	s.TextXAlignment = Enum.TextXAlignment.Left;
	s.Parent = S;
end;
local function g7(S, E, s)
	local U = Instance.new("Frame");
	U.LayoutOrder = U7(S);
	U.Size = UDim2.new(1, 0, 0, 32);
	U.BackgroundColor3 = A;
	U.BorderSizePixel = 0;
	U.Parent = S;
	((Instance.new("UICorner", U))).CornerRadius = UDim.new(0, 8);
	local G = Instance.new("TextLabel");
	G.Size = UDim2.new(1, -55, 1, 0);
	G.Position = UDim2.new(0, 10, 0, 0);
	G.BackgroundTransparency = 1;
	G.Text = E;
	G.TextColor3 = N;
	G.TextSize = 12;
	G.Font = R;
	G.TextXAlignment = Enum.TextXAlignment.Left;
	G.Parent = U;
	local g = Instance.new("TextButton");
	g.Size = UDim2.new(0, 40, 0, 18);
	g.Position = UDim2.new(1, -48, .5, -9);
	g.BackgroundColor3 = D[s] and C or Color3.fromRGB(45, 45, 58);
	g.Text = "";
	g.Parent = U;
	((Instance.new("UICorner", g))).CornerRadius = UDim.new(1, 0);
	local v = Instance.new("Frame");
	v.Size = UDim2.new(0, 14, 0, 14);
	v.Position = D[s] and UDim2.new(1, -16, .5, -7) or UDim2.new(0, 2, .5, -7);
	v.BackgroundColor3 = Color3.new(1, 1, 1);
	v.BorderSizePixel = 0;
	v.Parent = g;
	((Instance.new("UICorner", v))).CornerRadius = UDim.new(1, 0);
	g.MouseButton1Click:Connect(function()
		D[s] = not D[s];
		local S = D[s];
		g.BackgroundColor3 = S and C or Color3.fromRGB(45, 45, 58);
		v.Position = S and UDim2.new(1, -16, .5, -7) or UDim2.new(0, 2, .5, -7);
		if s == "ESP" then
			YU();
		end;
		if s == "Hitbox" and not S then
			HU();
		end;
		if s == "DeviceSpoof" and S then
			ZU();
		end;
		if s == "Potato" then
			AU(S);
		end;
		if s == "CustomFOV" then
			if S then
				EU();
			else
				pcall(function()
					O.FieldOfView = SU;
				end);
			end;
		end;
		if s == "MobileAim" and S then
			D.Aimbot = true;
		end;
		if s == "KillAura" and not S then
			oU = nil;
		end;
		if s == "ScreenStretch" and ((S and not M)) then
			M = true;
		end;
		f();
		X();
	end);
end;
local function v7(S, E, U, G, g, v)
	local r = Instance.new("Frame");
	r.LayoutOrder = U7(S);
	r.Size = UDim2.new(1, 0, 0, 46);
	r.BackgroundColor3 = A;
	r.BorderSizePixel = 0;
	r.Parent = S;
	((Instance.new("UICorner", r))).CornerRadius = UDim.new(0, 8);
	local L = Instance.new("TextLabel");
	L.Size = UDim2.new(.65, 0, 0, 16);
	L.Position = UDim2.new(0, 10, 0, 4);
	L.BackgroundTransparency = 1;
	L.Text = E;
	L.TextColor3 = N;
	L.TextSize = 11;
	L.Font = R;
	L.TextXAlignment = Enum.TextXAlignment.Left;
	L.Parent = r;
	local l = Instance.new("TextLabel");
	l.Size = UDim2.new(.3, -8, 0, 16);
	l.Position = UDim2.new(.7, 0, 0, 4);
	l.BackgroundTransparency = 1;
	l.Text = tostring(D[U]);
	l.TextColor3 = C;
	l.TextSize = 11;
	l.Font = R;
	l.TextXAlignment = Enum.TextXAlignment.Right;
	l.Parent = r;
	local O = Instance.new("TextButton");
	O.Size = UDim2.new(1, -20, 0, 8);
	O.Position = UDim2.new(0, 10, 0, 26);
	O.BackgroundColor3 = Color3.fromRGB(40, 40, 55);
	O.Text = "";
	O.Parent = r;
	((Instance.new("UICorner", O))).CornerRadius = UDim.new(1, 0);
	local B = Instance.new("Frame");
	B.Size = UDim2.new(math.clamp(((D[U] - G)) / math.max(g - G, .001), 0, 1), 0, 1, 0);
	B.BackgroundColor3 = C;
	B.BorderSizePixel = 0;
	B.Parent = O;
	((Instance.new("UICorner", B))).CornerRadius = UDim.new(1, 0);
	local function q(S)
		local E = math.clamp(((S - O.AbsolutePosition.X)) / math.max(O.AbsoluteSize.X, 1), 0, 1);
		local s = G + E * ((g - G));
		s = math.floor(s / v + .5) * v;
		s = math.clamp(s, G, g);
		D[U] = s;
		B.Size = UDim2.new(((s - G)) / math.max(g - G, .001), 0, 1, 0);
		l.Text = tostring(s);
		if U == "CursorSize" then
			y.Size = UDim2.new(0, s, 0, s);
		end;
		if U == "FOVValue" and D.CustomFOV then
			EU();
		end;
		f();
	end;
	O.MouseButton1Down:Connect(function()
		local S, E;
		S = s.InputChanged:Connect(function(S)
				if S.UserInputType == Enum.UserInputType.MouseMovement or S.UserInputType == Enum.UserInputType.Touch then
					q(S.Position.X);
				end;
			end);
		E = s.InputEnded:Connect(function(s)
				if s.UserInputType == Enum.UserInputType.MouseButton1 or s.UserInputType == Enum.UserInputType.Touch then
					if S then
						S:Disconnect();
					end;
					if E then
						E:Disconnect();
					end;
				end;
			end);
		q(((s:GetMouseLocation())).X);
	end);
end;
local function r7(S, E, s, U)
	local G = Instance.new("Frame");
	G.LayoutOrder = U7(S);
	G.Size = UDim2.new(1, 0, 0, 32);
	G.BackgroundColor3 = A;
	G.BorderSizePixel = 0;
	G.Parent = S;
	((Instance.new("UICorner", G))).CornerRadius = UDim.new(0, 8);
	local g = Instance.new("TextLabel");
	g.Size = UDim2.new(.4, 0, 1, 0);
	g.Position = UDim2.new(0, 10, 0, 0);
	g.BackgroundTransparency = 1;
	g.Text = E;
	g.TextColor3 = N;
	g.TextSize = 12;
	g.Font = R;
	g.TextXAlignment = Enum.TextXAlignment.Left;
	g.Parent = G;
	local v = 1;
	for S, E in ipairs(U) do
		if E == D[s] then
			v = S;
		end;
	end;
	local r = Instance.new("TextButton");
	r.Size = UDim2.new(.55, -12, 0, 22);
	r.Position = UDim2.new(.45, 0, .5, -11);
	r.BackgroundColor3 = Color3.fromRGB(35, 32, 48);
	r.Text = tostring(D[s]);
	r.TextColor3 = C;
	r.TextSize = 11;
	r.Font = R;
	r.Parent = G;
	((Instance.new("UICorner", r))).CornerRadius = UDim.new(0, 6);
	r.MouseButton1Click:Connect(function()
		v = v % #U + 1;
		D[s] = U[v];
		r.Text = U[v];
		if s == "CursorName" then
			V(D.CursorName);
		end;
		if s == "DeviceMode" and D.DeviceSpoof then
			ZU();
		end;
		if s == "HitboxPart" then
			HU();
		end;
		f();
		X();
	end);
end;
local function L7(S, E, s, U)
	local G = Instance.new("Frame");
	G.LayoutOrder = U7(S);
	G.Size = UDim2.new(1, 0, 0, 52);
	G.BackgroundColor3 = A;
	G.BorderSizePixel = 0;
	G.Parent = S;
	((Instance.new("UICorner", G))).CornerRadius = UDim.new(0, 8);
	local g = Instance.new("TextLabel");
	g.Size = UDim2.new(1, -16, 0, 14);
	g.Position = UDim2.new(0, 10, 0, 4);
	g.BackgroundTransparency = 1;
	g.Text = E;
	g.TextColor3 = w;
	g.TextSize = 11;
	g.Font = R;
	g.TextXAlignment = Enum.TextXAlignment.Left;
	g.Parent = G;
	local v = Instance.new("TextBox");
	v.Size = UDim2.new(1, -20, 0, 22);
	v.Position = UDim2.new(0, 10, 0, 22);
	v.BackgroundColor3 = Color3.fromRGB(14, 14, 20);
	v.BorderSizePixel = 0;
	v.Text = tostring(D[s] or U or "");
	v.PlaceholderText = U or "";
	v.TextColor3 = N;
	v.TextSize = 12;
	v.Font = R;
	v.ClearTextOnFocus = false;
	v.Parent = G;
	((Instance.new("UICorner", v))).CornerRadius = UDim.new(0, 6);
	v.FocusLost:Connect(function()
		local S = v.Text;
		if not S or S == "" then
			S = U or "default";
			v.Text = S;
		end;
		D[s] = S;
		f();
	end);
end;
local function l7(S, E, s)
	local U = Instance.new("TextButton");
	U.LayoutOrder = U7(S);
	U.Size = UDim2.new(1, 0, 0, 30);
	U.BackgroundColor3 = Color3.fromRGB(35, 30, 55);
	U.Text = E;
	U.TextColor3 = C;
	U.TextSize = 12;
	U.Font = R;
	U.Parent = S;
	((Instance.new("UICorner", U))).CornerRadius = UDim.new(0, 8);
	U.MouseButton1Click:Connect(function()
		s();
		X();
	end);
end;
local O7 = s7("Combat");
local B7 = s7("Player");
local q7 = s7("Stream");
local b7 = s7("Staff");
local x7 = s7("Mobile");
local J7 = s7("Visuals");
local k7 = s7("Config");
G7(O7, "Aimbot");
g7(O7, "Aimbot", "Aimbot");
r7(O7, "Key", "AimKey", {
	"MB1",
	"MB2",
	"E",
	"Q",
	"F",
});
r7(O7, "Mode", "AimMode", { "Hold", "Toggle", "Always" });
v7(O7, "FOV", "AimFOV", 40, 350, 1);
v7(O7, "Smooth", "AimSmooth", .1, 1, .05);
g7(O7, "Show FOV", "ShowFOV");
g7(O7, "Wall Check", "WallCheck");
g7(O7, "Team Check", "TeamCheck");
g7(O7, "Prediction", "Prediction");
v7(O7, "Predict", "PredictAmount", 0, .35, .01);
G7(O7, "Triggerbot");
g7(O7, "Triggerbot", "Triggerbot");
v7(O7, "Trigger FOV", "TriggerFOV", 15, 150, 1);
v7(O7, "Trigger Delay", "TriggerDelay", .03, .25, .01);
G7(O7, "Kill Aura");
g7(O7, "Kill Aura", "KillAura");
v7(O7, "Range", "KillAuraRange", 20, 200, 5);
v7(O7, "Behind Dist", "KillAuraBehind", 1.5, 8, .1);
G7(O7, "Camera FOV");
g7(O7, "Custom FOV", "CustomFOV");
v7(O7, "FOV Value", "FOVValue", 40, 120, 1);
G7(O7, "Hitbox Expand");
g7(O7, "Hitbox Expand", "Hitbox");
r7(O7, "Part", "HitboxPart", { "Head", "Torso" });
v7(O7, "Size", "HitboxSize", 1.5, 10, .5);
G7(B7, "Move");
g7(B7, "Speed", "Speed");
v7(B7, "Speed Value", "SpeedValue", 16, 80, 1);
g7(B7, "Noclip", "Noclip");
g7(B7, "Anti-Bow", "AntiBow");
G7(B7, "Device Spoof");
g7(B7, "Device Spoof", "DeviceSpoof");
r7(B7, "Mode", "DeviceMode", { "Console", "Desktop", "Mobile" });
v7(B7, "Delay (sec)", "DeviceSpoofDelay", .3, 5, .1);
l7(B7, "Apply Device Now", ZU);
G7(B7, "Screen Stretch");
g7(B7, "Screen Stretch", "ScreenStretch");
v7(B7, "Stretch Amount", "StretchAmount", .3, 1, .01);
G7(q7, "Stream");
g7(q7, "Stream Proof", "StreamProof");
L7(q7, "Name", "SpoofName", "Player");
g7(q7, "Verified", "ShowVerified");
G7(b7, "Staff");
g7(b7, "Detect", "StaffDetect");
g7(b7, "Leave", "StaffLeave");
G7(x7, "Mobile Aim");
g7(x7, "Mobile Aim ON", "MobileAim");
v7(x7, "Smooth", "MobileSmooth", .1, 1, .05);
v7(x7, "FOV", "MobileFOV", 40, 350, 1);
g7(x7, "Show FOV", "MobileShowFOV");
G7(J7, "ESP");
g7(J7, "ESP Enabled", "ESP");
g7(J7, "Boxes", "ShowBoxes");
r7(J7, "Box Style", "BoxStyle", { "Corner", "Full", "Both" });
g7(J7, "Names", "ShowNames");
g7(J7, "Distance", "ShowDistance");
g7(J7, "Health", "ShowHealth");
g7(J7, "Head Dot", "ShowHeadDot");
l7(J7, "Force Refresh ESP", YU);
G7(J7, "ESP Color");
g7(J7, "RGB ESP", "RGBESP");
v7(J7, "Red", "ESPColorR", 0, 255, 1);
v7(J7, "Green", "ESPColorG", 0, 255, 1);
v7(J7, "Blue", "ESPColorB", 0, 255, 1);
G7(J7, "Radar");
g7(J7, "Radar", "Radar");
v7(J7, "Radar Size", "RadarSize", 80, 220, 5);
v7(J7, "Radar Range", "RadarRange", 50, 400, 10);
G7(J7, "Cursor");
r7(J7, "Cursor", "CursorName", i);
v7(J7, "Cursor Size", "CursorSize", 8, 128, 1);
for S, E in ipairs(F) do
	l7(J7, E.Name, function()
		V(E.Name);
		f();
	end);
end;
G7(k7, "Config");
L7(k7, "Name", "ConfigName", "default");
l7(k7, "Save", f);
l7(k7, "Load", function()
	Y();
end);
g7(k7, "FPS + MS", "ShowPerf");
g7(k7, "Potato", "Potato");
E7("Combat");
local H7, z7, u7;
tU.InputBegan:Connect(function(S)
	if S.UserInputType == Enum.UserInputType.MouseButton1 or S.UserInputType == Enum.UserInputType.Touch then
		H7 = true;
		z7 = S.Position;
		u7 = RU.Position;
	end;
end);
tU.InputEnded:Connect(function(S)
	if S.UserInputType == Enum.UserInputType.MouseButton1 or S.UserInputType == Enum.UserInputType.Touch then
		H7 = false;
	end;
end);
s.InputChanged:Connect(function(S)
	if H7 and ((S.UserInputType == Enum.UserInputType.MouseMovement or S.UserInputType == Enum.UserInputType.Touch)) then
		local E = S.Position - z7;
		RU.Position = UDim2.new(u7.X.Scale, u7.X.Offset + E.X, u7.Y.Scale, u7.Y.Offset + E.Y);
	end;
end);
FU.MouseButton1Click:Connect(function()
	RU.Visible = false;
end);
s.InputBegan:Connect(function(S)
	if S.KeyCode == Enum.KeyCode.RightControl or S.KeyCode == Enum.KeyCode.LeftControl then
		RU.Visible = not RU.Visible;
		X();
	end;
end);
local Q7 = {
		MB1 = Enum.UserInputType.MouseButton1,
		MB2 = Enum.UserInputType.MouseButton2,
		E = Enum.KeyCode.E,
		Q = Enum.KeyCode.Q,
		F = Enum.KeyCode.F,
	};
local p7 = false;
local j7;
local function m7(S)
	local E = Q7[D.AimKey] or Enum.UserInputType.MouseButton2;
	local s = tostring(E);
	if string.find(s, "MouseButton", 1, true) then
		return S.UserInputType == E;
	end;
	if string.find(s, "KeyCode", 1, true) then
		return S.KeyCode == E;
	end;
	return false;
end;
s.InputBegan:Connect(function(S, E)
	if not D.Aimbot or D.MobileAim then
		return;
	end;
	if not m7(S) then
		return;
	end;
	if D.AimMode == "Hold" then
		p7 = true;
	elseif D.AimMode == "Toggle" then
		p7 = not p7;
	end;
end);
s.InputEnded:Connect(function(S)
	if D.AimMode == "Hold" and m7(S) then
		p7 = false;
	end;
end);
local function o7(S)
	if j7 then
		j7:Disconnect();
		j7 = nil;
	end;
	if not S then
		local S = gU(B);
		if S then
			for S, E in ipairs(S:GetDescendants()) do
				if E:IsA("BasePart") then
					E.CanCollide = true;
				end;
			end;
		end;
		return;
	end;
	j7 = U.Stepped:Connect(function()
			local S = gU(B);
			if not S then
				return;
			end;
			for S, E in ipairs(S:GetDescendants()) do
				if E:IsA("BasePart") then
					E.CanCollide = false;
				end;
			end;
		end);
end;
task.spawn(function()
	while true do
		task.wait(.2);
		if D.AntiBow then
			pcall(function()
				local S = gU(B);
				if not S then
					return;
				end;
				local E = S:FindFirstChild("HumanoidRootPart");
				local s = S:FindFirstChildOfClass("Humanoid");
				if not E or not s or s.Health <= 0 then
					return;
				end;
				local U = s:GetState();
				if U == Enum.HumanoidStateType.Jumping or U == Enum.HumanoidStateType.Freefall then
					return;
				end;
				if E.CFrame.UpVector:Dot(Vector3.yAxis) >= .92 then
					return;
				end;
				local G, g = E.CFrame:ToOrientation();
				E.CFrame = CFrame.new(E.Position) * CFrame.Angles(0, g, 0);
			end);
		end;
	end;
end);
task.spawn(function()
	while true do
		task.wait(.5);
		if D.StreamProof then
			local S = tostring(D.SpoofName);
			if D.ShowVerified then
				S = S .. ((" " .. NU));
			end;
			pcall(function()
				B.DisplayName = S;
			end);
		end;
	end;
end);
local d7 = 33054943;
local W7 = {};
task.spawn(function()
	while true do
		task.wait(2);
		if D.StaffDetect then
			for S, E in ipairs(E:GetPlayers()) do
				if E ~= B then
					local S, s = pcall(function()
							return E:GetRankInGroup(d7);
						end);
					if S and ((type(s) == "number" and s >= 51)) then
						if not W7[E.UserId] then
							W7[E.UserId] = true;
							if D.StaffLeave then
								pcall(function()
									B:Kick("Staff");
								end);
							end;
						end;
					end;
				end;
			end;
		end;
	end;
end);
local I7, c7, Z7;
local function D7()
	if not n or I7 then
		return;
	end;
	I7 = hU("Circle");
	if I7 then
		I7.Filled = true;
		I7.Color = Color3.fromRGB(10, 10, 14);
		I7.Transparency = .35;
		I7.NumSides = 48;
		I7.Visible = false;
	end;
	c7 = hU("Circle");
	if c7 then
		c7.Filled = false;
		c7.Thickness = 1.5;
		c7.Color = C;
		c7.NumSides = 48;
		c7.Visible = false;
	end;
	Z7 = {};
end;
local h7 = hU("Circle");
if h7 then
	h7.Thickness = 1;
	h7.NumSides = 40;
	h7.Filled = false;
	h7.Color = Color3.new(1, 1, 1);
	h7.Visible = false;
end;
local M7 = hU("Text");
if M7 then
	M7.Size = 15;
	M7.Outline = true;
	M7.Font = 2;
	M7.Visible = false;
end;
local f7, Y7, n7, a7 = 0, tick(), 0, 0;
U.Heartbeat:Connect(function()
	local S = gU(B);
	if S then
		local E = S:FindFirstChildOfClass("Humanoid");
		if D.Speed and ((E and E.Health > 0)) then
			E.WalkSpeed = D.SpeedValue or 24;
		end;
		if D.Noclip then
			if not j7 then
				o7(true);
			end;
		elseif j7 then
			o7(false);
		end;
	end;
	pcall(mU);
	pcall(IU);
	pcall(uU);
end);
U.RenderStepped:Connect(function()
	f7 = f7 + 1;
	if tick() - Y7 >= 1 then
		n7 = f7;
		f7 = 0;
		Y7 = tick();
	end;
	if y.Visible then
		local S = s:GetMouseLocation();
		y.Position = UDim2.new(0, S.X, 0, S.Y);
	end;
	if D.CustomFOV then
		EU();
	end;
	sU = false;
	local S, U, G = false, D.AimSmooth or .95, D.AimFOV or 150;
	if D.KillAura and ((oU and vU(oU))) then
		sU = true;
	elseif not D.KillAura then
		if D.MobileAim then
			S = true;
			U = D.MobileSmooth or .9;
			G = D.MobileFOV or 160;
		elseif D.Aimbot then
			S = p7 or D.AimMode == "Always";
			U = D.AimSmooth or .95;
			G = D.AimFOV or 150;
		end;
	end;
	if S then
		local S, E = bU(G, true);
		if E then
			sU = true;
			if U >= .98 then
				O.CFrame = CFrame.new(O.CFrame.Position, E);
			else
				O.CFrame = O.CFrame:Lerp(CFrame.new(O.CFrame.Position, E), math.clamp(U, .1, 1));
			end;
			GU(E);
		end;
	end;
	UU();
	pcall(CU);
	if D.ShowPerf and M7 then
		local S = 0;
		pcall(function()
			S = math.floor(g.Network.ServerStatsItem["Data Ping"]:GetValue());
		end);
		M7.Text = "FPS " .. ((n7  .. (("  MS " .. S))));
		M7.Position = Vector2.new(O.ViewportSize.X - 150, 10);
		M7.Color = C;
		M7.Visible = true;
	elseif M7 then
		M7.Visible = false;
	end;
	local v, r = false, D.AimFOV or 150;
	if D.MobileAim then
		v = D.MobileShowFOV;
		r = D.MobileFOV or 160;
	else
		v = D.ShowFOV and D.Aimbot;
		r = D.AimFOV or 150;
	end;
	if h7 then
		h7.Position = O.ViewportSize / 2;
		h7.Radius = r;
		h7.Visible = v;
		if D.RGBESP then
			h7.Color = t();
		end;
	end;
	if D.Radar and n then
		D7();
		local S = tonumber(D.RadarSize) or 140;
		local s = tonumber(D.RadarRange) or 200;
		local U = S / 2;
		local G = Vector2.new(20 + U, 20 + U);
		local g = t();
		if I7 then
			I7.Position = G;
			I7.Radius = U;
			I7.Visible = true;
		end;
		if c7 then
			c7.Position = G;
			c7.Radius = U;
			c7.Visible = true;
		end;
		local v = gU(B) and ((gU(B))):FindFirstChild("HumanoidRootPart");
		local r = math.atan2(O.CFrame.LookVector.X, O.CFrame.LookVector.Z);
		local L = {};
		if v then
			for S, E in ipairs(E:GetPlayers()) do
				if E ~= B and ((rU(E) and vU(E))) then
					local S = gU(E) and ((gU(E))):FindFirstChild("HumanoidRootPart");
					if S then
						local l = S.Position - v.Position;
						if l.Magnitude <= s then
							local S = l.X * math.cos(r) - l.Z * math.sin(r);
							local v = l.X * math.sin(r) + l.Z * math.cos(r);
							local O = U / s;
							local B, q = S * O, -v * O;
							if not Z7[E] then
								local S = hU("Circle");
								if S then
									S.Filled = true;
									S.NumSides = 10;
									S.Radius = 3;
									Z7[E] = S;
								end;
							end;
							local b = Z7[E];
							if b then
								b.Position = Vector2.new(G.X + B, G.Y + q);
								b.Color = g;
								b.Visible = true;
							end;
							L[E] = true;
						end;
					end;
				end;
			end;
		end;
		for S, E in pairs(Z7) do
			if not L[S] then
				pcall(function()
					if E then
						E.Visible = false;
					end;
				end);
			end;
		end;
	else
		if I7 then
			I7.Visible = false;
		end;
		if c7 then
			c7.Visible = false;
		end;
		if Z7 then
			for S, E in pairs(Z7) do
				pcall(function()
					if E then
						E.Visible = false;
					end;
				end);
			end;
		end;
	end;
end);
task.spawn(function()
	while true do
		task.wait(15);
		f();
	end;
end);
if D.CursorName and D.CursorName ~= "Off" then
	V(D.CursorName);
end;
if D.CustomFOV then
	EU();
end;
I(1, "Done");
task.wait(.35);
pcall(function()
	z:Destroy();
end);
RU.Visible = true;
print("[Moon Hub] PUBLIC | " .. ((J .. ((" | executes: " .. tostring(k))))));
