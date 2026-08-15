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
local A = getgenv or function()
		return _G;
	end;
local Z = game:GetService("Players");
local C = game:GetService("UserInputService");
local q = game:GetService("RunService");
local H = game:GetService("Lighting");
local X = game:GetService("Stats");
local S = game:GetService("HttpService");
local V = game:GetService("TweenService");
local c = game:GetService("ReplicatedStorage");
local R = game:GetService("VirtualInputManager");
local m = workspace.CurrentCamera;
local u = Z.LocalPlayer or Z.PlayerAdded:Wait();
local i = u:WaitForChild("PlayerGui", 60);
if not i then
	warn("[Moon] PlayerGui timeout");
	return;
end;
pcall(function()
	for A, Z in ipairs({ "MoonHubUI", "MoonCursorUI", "MoonLoadUI" }) do
		local C = i:FindFirstChild(Z);
		if C then
			C:Destroy();
		end;
	end;
	pcall(function()
		if gethui then
			local A = gethui();
			for Z, C in ipairs({ "MoonHubUI", "MoonCursorUI", "MoonLoadUI" }) do
				local q = A:FindFirstChild(C);
				if q then
					q:Destroy();
				end;
			end;
		end;
	end);
end);
task.wait(.05);
local T;
pcall(function()
	T = u:GetMouse();
end);
local function h()
	local Z = "Unknown";
	pcall(function()
		if identifyexecutor then
			local A, C = identifyexecutor();
			Z = tostring(A or "Unknown");
			if C then
				Z = Z .. (" " .. tostring(C));
			end;
		elseif getexecutorname then
			Z = tostring(getexecutorname());
		elseif syn and syn.request then
			Z = "Synapse";
		elseif fluxus then
			Z = "Fluxus";
		elseif KRNL_LOADED then
			Z = "Krnl";
		elseif is_sirhurt_closure then
			Z = "Sirhurt";
		elseif pebc_execute then
			Z = "Parallel";
		elseif SecureDelta or (A()).SecureDelta then
			Z = "Delta";
		elseif (A()).drew or (A()).IS_COCO_LOADED then
			Z = "Coco";
		elseif (A()).X.X or (A()).WXApple then
			Z = "Wave";
		elseif (A()).IsElectron then
			Z = "Electron";
		elseif (A()).executor_name then
			Z = tostring((A()).executor_name);
		end;
	end);
	if Z == "Unknown" or Z == "" then
		pcall(function()
			if (A()).OPIUMWARE or (A()).Opiumware then
				Z = "Opiumware";
			end;
		end);
	end;
	return Z;
end;
local y = h();
local F = 0;
local function L()
	local A = { "https://api.counterapi.dev/v1/moonhub/jailbird/up", "https://api.countapi.xyz/hit/moonhub-jailbird/executes" };
	for A, Z in ipairs(A) do
		local C, q = pcall(function()
				return game:HttpGet(Z);
			end);
		if C and (q and #q > 0) then
			local A = nil;
			pcall(function()
				A = S:JSONDecode(q);
			end);
			if type(A) == "table" then
				local Z = A.value or A.count or A.Count or A.integer;
				if type(Z) == "number" then
					F = Z;
					return;
				end;
			end;
			local Z = tonumber(q);
			if Z then
				F = Z;
				return;
			end;
		end;
	end;
end;
pcall(L);
local W = Instance.new("ScreenGui");
W.Name = "MoonLoadUI";
W.ResetOnSpawn = false;
W.IgnoreGuiInset = true;
W.DisplayOrder = 9999;
W.Parent = i;
local g = Instance.new("Frame");
g.Size = UDim2.new(1, 0, 1, 0);
g.BackgroundColor3 = Color3.fromRGB(8, 8, 12);
g.BorderSizePixel = 0;
g.Parent = W;
local n = Instance.new("Frame");
n.Size = UDim2.new(0, 320, 0, 160);
n.Position = UDim2.new(.5, -160, .5, -80);
n.BackgroundColor3 = Color3.fromRGB(16, 16, 22);
n.BorderSizePixel = 0;
n.Parent = g;
(Instance.new("UICorner", n)).CornerRadius = UDim.new(0, 14);
local M = Instance.new("TextLabel");
M.Size = UDim2.new(1, -20, 0, 28);
M.Position = UDim2.new(0, 10, 0, 14);
M.BackgroundTransparency = 1;
M.Text = "MOON HUB";
M.TextColor3 = Color3.fromRGB(138, 99, 255);
M.TextSize = 20;
M.Font = Enum.Font.GothamBold;
M.Parent = n;
local s = Instance.new("TextLabel");
s.Size = UDim2.new(1, -20, 0, 18);
s.Position = UDim2.new(0, 10, 0, 42);
s.BackgroundTransparency = 1;
s.Text = "jailbird";
s.TextColor3 = Color3.fromRGB(160, 160, 180);
s.TextSize = 12;
s.Font = Enum.Font.Gotham;
s.Parent = n;
local w = Instance.new("TextLabel");
w.Size = UDim2.new(1, -20, 0, 18);
w.Position = UDim2.new(0, 10, 0, 70);
w.BackgroundTransparency = 1;
w.Text = "Starting...";
w.TextColor3 = Color3.fromRGB(220, 220, 230);
w.TextSize = 12;
w.Font = Enum.Font.Gotham;
w.TextXAlignment = Enum.TextXAlignment.Left;
w.Parent = n;
local v = Instance.new("Frame");
v.Size = UDim2.new(1, -24, 0, 10);
v.Position = UDim2.new(0, 12, 0, 100);
v.BackgroundColor3 = Color3.fromRGB(30, 30, 40);
v.BorderSizePixel = 0;
v.Parent = n;
(Instance.new("UICorner", v)).CornerRadius = UDim.new(1, 0);
local Y = Instance.new("Frame");
Y.Size = UDim2.new(0, 0, 1, 0);
Y.BackgroundColor3 = Color3.fromRGB(138, 99, 255);
Y.BorderSizePixel = 0;
Y.Parent = v;
(Instance.new("UICorner", Y)).CornerRadius = UDim.new(1, 0);
local f = Instance.new("TextLabel");
f.Size = UDim2.new(1, -20, 0, 32);
f.Position = UDim2.new(0, 10, 0, 118);
f.BackgroundTransparency = 1;
f.Text = "Executor: " .. (y .. ("\nExecutes: " .. tostring(F)));
f.TextColor3 = Color3.fromRGB(140, 140, 160);
f.TextSize = 11;
f.Font = Enum.Font.Gotham;
f.TextXAlignment = Enum.TextXAlignment.Left;
f.TextYAlignment = Enum.TextYAlignment.Top;
f.Parent = n;
local function p(A, Z)
	A = math.clamp(A, 0, 1);
	pcall(function()
		w.Text = Z or w.Text;
		(V:Create(Y, TweenInfo.new(.25, Enum.EasingStyle.Quad), { Size = UDim2.new(A, 0, 1, 0) })):Play();
	end);
end;
p(.08, "Detecting executor...");
task.wait(.2);
p(.2, "Executor: " .. y);
task.wait(.15);
p(.35, "Loading config...");
task.wait(.1);
local function r(A, Z)
	pcall(function()
		if writefile then
			writefile(A, Z);
		end;
	end);
end;
local function D(A)
	local Z, C = pcall(function()
			if isfile and (isfile(A) and readfile) then
				return readfile(A);
			end;
		end);
	return Z and C or nil;
end;
pcall(function()
	if makefolder then
		makefolder("MoonHub");
		makefolder("MoonHub/Configs");
	end;
end);
(A()).MoonHubState = (A()).MoonHubState or {};
local x = (A()).MoonHubState;
local d = {
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
for A, Z in pairs(d) do
	if x[A] == nil then
		x[A] = Z;
	end;
end;
x.NoRecoil = nil;
x.NoJumpCooldown = nil;
x.KillAuraDelay = nil;
x.HideFromRecord = nil;
if type(x.CursorSize) ~= "number" then
	x.CursorSize = 32;
end;
if type(x.AimSmooth) ~= "number" then
	x.AimSmooth = .95;
end;
if type(x.FOVValue) ~= "number" then
	x.FOVValue = 90;
end;
if type(x.TriggerDelay) ~= "number" then
	x.TriggerDelay = .06;
end;
if type(x.TriggerFOV) ~= "number" then
	x.TriggerFOV = 55;
end;
if type(x.DeviceSpoofDelay) ~= "number" then
	x.DeviceSpoofDelay = 1.5;
end;
x.StretchAmount = math.clamp(tonumber(x.StretchAmount) or .53, .3, 1);
if x.HitboxPart ~= "Head" and x.HitboxPart ~= "Torso" then
	x.HitboxPart = "Head";
end;
if type(x.KillAuraRange) ~= "number" then
	x.KillAuraRange = 90;
end;
if type(x.KillAuraBehind) ~= "number" then
	x.KillAuraBehind = 3.2;
end;
local k = false;
task.delay(2.5, function()
	k = true;
end);
local function P()
	local A = (tostring(x.ConfigName or "default")):gsub("[^%w%-%_]", "");
	if A == "" then
		A = "default";
	end;
	x.ConfigName = A;
	x.NoRecoil = nil;
	x.NoJumpCooldown = nil;
	x.KillAuraDelay = nil;
	x.HideFromRecord = nil;
	x.StretchAmount = math.clamp(tonumber(x.StretchAmount) or .53, .3, 1);
	r("MoonHub/Configs/" .. (A .. ".json"), S:JSONEncode(x));
	r("MoonHub/Jailbird.json", S:JSONEncode(x));
end;
local function I()
	local A = (tostring(x.ConfigName or "default")):gsub("[^%w%-%_]", "");
	local Z = D("MoonHub/Configs/" .. (A .. ".json")) or D("MoonHub/Jailbird.json");
	if Z then
		pcall(function()
			local A = S:JSONDecode(Z);
			if type(A) == "table" then
				for A, Z in pairs(A) do
					x[A] = Z;
				end;
			end;
		end);
	end;
	x.NoRecoil = nil;
	x.NoJumpCooldown = nil;
	x.KillAuraDelay = nil;
	x.HideFromRecord = nil;
	if type(x.DeviceSpoofDelay) ~= "number" then
		x.DeviceSpoofDelay = 1.5;
	end;
	x.StretchAmount = math.clamp(tonumber(x.StretchAmount) or .53, .3, 1);
	if not k then
		local A = x.ScreenStretch == true;
		x.ScreenStretch = false;
		task.delay(2.6, function()
			if A then
				x.ScreenStretch = true;
			end;
			k = true;
		end);
	end;
	if x.HitboxPart ~= "Head" and x.HitboxPart ~= "Torso" then
		x.HitboxPart = "Head";
	end;
end;
pcall(I);
p(.5, "Loading Drawing...");
local e = false;
local J = nil;
pcall(function()
	if Drawing and type(Drawing.new) == "function" then
		J = Drawing;
		local A = Drawing.new("Text");
		A.Visible = false;
		pcall(function()
			A:Remove();
		end);
		e = true;
	end;
end);
if not e then
	pcall(function()
		if (A()).Drawing and type((A()).Drawing.new) == "function" then
			J = (A()).Drawing;
			local Z = J.new("Text");
			Z.Visible = false;
			pcall(function()
				Z:Remove();
			end);
			e = true;
		end;
	end);
end;
p(.65, e and "Drawing OK" or "Drawing missing (ESP off)");
local N = Color3.fromRGB(138, 99, 255);
local j = Color3.fromRGB(12, 12, 16);
local G = Color3.fromRGB(18, 18, 24);
local t = Color3.fromRGB(20, 20, 28);
local o = Color3.fromRGB(235, 235, 245);
local a = Color3.fromRGB(160, 160, 180);
local b = Enum.Font.Gotham;
local function l()
	if x.RGBESP then
		return Color3.fromHSV(((tick() * .4)) % 1, 1, 1);
	end;
	return Color3.fromRGB(math.clamp(tonumber(x.ESPColorR) or 170, 0, 255), math.clamp(tonumber(x.ESPColorG) or 0, 0, 255), math.clamp(tonumber(x.ESPColorB) or 255, 0, 255));
end;
local function O()
	pcall(function()
		C.MouseBehavior = Enum.MouseBehavior.Default;
		C.MouseIconEnabled = true;
	end);
end;
local E = {
		{ Name = "Off", Id = nil },
		{ Name = "Game Crosshair", Id = "GAME" },
		{ Name = "Star Wars", Id = "5462831" },
		{ Name = "Snowflake", Id = "11780968239" },
		{ Name = "Red Dot", Id = "412284862" },
		{ Name = "Diamond", Id = "61210994" },
		{ Name = "Hello Kitty", Id = "10973237327" },
		{ Name = "Eye", Id = "12534101433" },
	};
local Q = {};
for A, Z in ipairs(E) do
	Q[A] = Z.Name;
end;
local U = Instance.new("ScreenGui");
U.Name = "MoonCursorUI";
U.ResetOnSpawn = false;
U.IgnoreGuiInset = true;
U.DisplayOrder = 10000;
U.Parent = i;
local B = Instance.new("ImageLabel");
B.BackgroundTransparency = 1;
B.AnchorPoint = Vector2.new(.5, .5);
B.Size = UDim2.new(0, 32, 0, 32);
B.Visible = false;
B.ZIndex = 100;
B.Parent = U;
local function z(A)
	local Z = i:FindFirstChild("Crosshair");
	if not Z then
		return;
	end;
	pcall(function()
		if Z:IsA("ScreenGui") then
			Z.Enabled = A;
		end;
		Z.Visible = A;
		for Z, C in ipairs(Z:GetDescendants()) do
			if C:IsA("GuiObject") then
				C.Visible = A;
			end;
		end;
	end);
end;
local function K(A)
	A = A or x.CursorName or "Off";
	x.CursorName = A;
	local Z = E[1];
	for C, q in ipairs(E) do
		if q.Name == A then
			Z = q;
			break;
		end;
	end;
	z(false);
	B.Visible = false;
	local q = math.clamp(tonumber(x.CursorSize) or 32, 8, 128);
	B.Size = UDim2.new(0, q, 0, q);
	if not Z.Id or Z.Name == "Off" then
		pcall(function()
			if T then
				T.Icon = "";
			end;
			C.MouseIconEnabled = true;
		end);
		return;
	end;
	if Z.Id == "GAME" then
		z(true);
		pcall(function()
			if T then
				T.Icon = "rbxassetid://0";
			end;
			C.MouseIconEnabled = true;
		end);
		return;
	end;
	pcall(function()
		C.MouseIconEnabled = false;
		if T then
			T.Icon = "rbxassetid://0";
		end;
		B.Image = "rbxassetid://" .. tostring(Z.Id);
		B.Visible = true;
	end);
end;
local AG = 70;
pcall(function()
	AG = m.FieldOfView;
end);
local function ZG()
	if not x.CustomFOV then
		return;
	end;
	local A = math.clamp(tonumber(x.FOVValue) or 90, 40, 120);
	pcall(function()
		if math.abs(m.FieldOfView - A) > .5 then
			m.FieldOfView = A;
		end;
	end);
end;
local CG = false;
local function qG()
	if not k then
		return;
	end;
	if not x.ScreenStretch then
		return;
	end;
	if CG then
		return;
	end;
	if not m or not m.Parent then
		return;
	end;
	local A = math.clamp(tonumber(x.StretchAmount) or .53, .3, 1);
	if A >= .995 then
		return;
	end;
	pcall(function()
		local Z = m.CFrame;
		if Z then
			m.CFrame = Z * CFrame.new(0, 0, 0, 1, 0, 0, 0, A, 0, 0, 0, 1);
		end;
	end);
end;
local function HG(A)
	local Z = u.Character;
	if not Z then
		return;
	end;
	local C = Z:FindFirstChild("HumanoidRootPart");
	if not C or not A then
		return;
	end;
	pcall(function()
		local Z = C.Position;
		C.CFrame = CFrame.new(Z, Vector3.new(A.X, Z.Y, A.Z));
	end);
end;
local function XG(A)
	if not A then
		return nil;
	end;
	local Z, C = pcall(function()
			return A.Character;
		end);
	return Z and C or nil;
end;
local function SG(A)
	local Z = XG(A);
	if not Z then
		return false;
	end;
	local C = Z:FindFirstChildOfClass("Humanoid");
	return C ~= nil and C.Health > 0;
end;
local function VG(A)
	if not A or A == u then
		return false;
	end;
	if not x.TeamCheck then
		return true;
	end;
	local Z, C = u.Team, A.Team;
	if Z and C then
		return Z ~= C;
	end;
	return true;
end;
local cG = {
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
local function RG(A, Z)
	for C = 1, #Z, 1 do
		if string.find(A, Z[C], 1, true) then
			return true;
		end;
	end;
	return false;
end;
local function mG(A)
	if not A or not A:IsA("BasePart") then
		return true;
	end;
	local Z = string.lower(A.Name or "");
	local C = string.lower(A:GetFullName() or "");
	local q = string.lower(tostring(A.Material));
	if string.find(Z, "glass", 1, true) or string.find(q, "glass", 1, true) then
		return true;
	end;
	if A.Transparency >= .7 then
		return true;
	end;
	if string.find(Z, "door", 1, true) or string.find(C, "door", 1, true) then
		if string.find(Z, "wood", 1, true) or string.find(C, "wood", 1, true) then
			return false;
		end;
		return true;
	end;
	if string.find(Z, "window", 1, true) then
		return true;
	end;
	if A.CanCollide == false and A.Transparency >= .25 then
		return true;
	end;
	if RG(Z, cG) or RG(C, cG) then
		return false;
	end;
	return false;
end;
local function uG(A)
	if not x.WallCheck then
		return true;
	end;
	local Z = XG(A);
	local C = Z and Z:FindFirstChild("Head");
	if not C then
		return false;
	end;
	local q = XG(u);
	local H = m.CFrame.Position + m.CFrame.LookVector * .8;
	local X = C.Position;
	local S = X - H;
	local V = S.Magnitude;
	if V < 1.5 then
		return true;
	end;
	local c = { m };
	if q then
		table.insert(c, q);
	end;
	if Z then
		table.insert(c, Z);
	end;
	local R = RaycastParams.new();
	R.FilterType = Enum.RaycastFilterType.Exclude;
	R.FilterDescendantsInstances = c;
	R.IgnoreWater = true;
	local i, T, h = 0, H, S.Unit;
	for A = 1, 12, 1 do
		local C = V - i;
		if C <= .15 then
			return true;
		end;
		local q = workspace:Raycast(T, h * C, R);
		if not q then
			return true;
		end;
		if q.Instance and (Z and q.Instance:IsDescendantOf(Z)) then
			return true;
		end;
		if mG(q.Instance) then
			table.insert(c, q.Instance);
			R.FilterDescendantsInstances = c;
			local A = ((q.Position - T)).Magnitude;
			T = q.Position + h * .15;
			i = (i + A) + .15;
		else
			return false;
		end;
	end;
	return false;
end;
local function iG(A, Z)
	if not x.Prediction or not A then
		return A.Position;
	end;
	local C = Z and ((Z:FindFirstChild("HumanoidRootPart") or Z:FindFirstChild("Torso")));
	local q = Vector3.zero;
	if C then
		pcall(function()
			q = C.AssemblyLinearVelocity;
		end);
	end;
	return A.Position + q * ((tonumber(x.PredictAmount) or .12));
end;
local function TG(A, C)
	local q, H, X = nil, nil, A;
	local S = m.ViewportSize / 2;
	for A, Z in ipairs(Z:GetPlayers()) do
		if Z ~= u and (VG(Z) and SG(Z)) then
			local A = XG(Z);
			local V = A and A:FindFirstChild("Head");
			if V then
				local c = iG(V, A);
				local R, u = m:WorldToViewportPoint(c);
				if u and R.Z > 0 then
					local A = ((Vector2.new(R.X, R.Y) - S)).Magnitude;
					if A < X and (((not C) or uG(Z))) then
						X = A;
						q = Z;
						H = c;
					end;
				end;
			end;
		end;
	end;
	return q, H;
end;
local hG = {};
local function yG(A)
	return A and ((A:FindFirstChild("UpperTorso") or A:FindFirstChild("Torso")));
end;
local function FG(A)
	if not A then
		return;
	end;
	local Z = hG[A];
	if Z then
		pcall(function()
			A.Size = Z;
		end);
		hG[A] = nil;
	end;
end;
local function LG()
	for A, Z in pairs(hG) do
		FG(A);
	end;
	hG = {};
end;
local function WG(A, Z)
	if not A or not A:IsA("BasePart") then
		return;
	end;
	if hG[A] == nil then
		hG[A] = A.Size;
	end;
	local C = math.clamp(tonumber(Z) or 3, 1.2, 12);
	pcall(function()
		A.Size = Vector3.new(C, C, C);
		A.Massless = true;
		A.CanCollide = false;
	end);
end;
local function gG()
	if not x.Hitbox then
		LG();
		return;
	end;
	local A = x.HitboxPart;
	local C = tonumber(x.HitboxSize) or 3;
	for Z, q in ipairs(Z:GetPlayers()) do
		if q ~= u and (VG(q) and SG(q)) then
			local Z = XG(q);
			if Z then
				local q = Z:FindFirstChild("Head");
				local H = yG(Z);
				if A == "Head" then
					if q then
						WG(q, C);
					end;
					if H then
						FG(H);
					end;
				else
					if H then
						WG(H, C);
					end;
					if q then
						FG(q);
					end;
				end;
			end;
		end;
	end;
end;
local nG = 0;
local function MG()
	local A = XG(u);
	if not A then
		return nil;
	end;
	return A:FindFirstChildOfClass("Tool");
end;
local function sG()
	local A = MG();
	if A then
		pcall(function()
			A:Activate();
		end);
		task.defer(function()
			pcall(function()
				if A and A.Parent then
					A:Activate();
				end;
			end);
		end);
	end;
	pcall(function()
		local A = m.ViewportSize;
		local Z, C = A.X / 2, A.Y / 2;
		R:SendMouseButtonEvent(Z, C, 0, true, game, 1);
		task.wait(.02);
		R:SendMouseButtonEvent(Z, C, 0, false, game, 1);
	end);
end;
local function wG()
	if not x.Triggerbot then
		return;
	end;
	if not MG() then
		return;
	end;
	local A = tonumber(x.TriggerDelay) or .06;
	if tick() - nG < A then
		return;
	end;
	local Z = tonumber(x.TriggerFOV) or 55;
	local C = TG(Z, x.WallCheck);
	if C then
		nG = tick();
		sG();
	end;
end;
local vG = nil;
local function YG(A)
	local C = XG(u);
	local q = C and C:FindFirstChild("HumanoidRootPart");
	if not q then
		return nil;
	end;
	local H = tonumber(x.KillAuraRange) or 90;
	local X, S = nil, H;
	for Z, C in ipairs(Z:GetPlayers()) do
		if C ~= u and (C ~= A and (VG(C) and SG(C))) then
			local A = XG(C);
			local Z = A and A:FindFirstChild("HumanoidRootPart");
			local H = A and A:FindFirstChild("Head");
			if Z and H then
				local A = ((Z.Position - q.Position)).Magnitude;
				if A < S then
					S = A;
					X = C;
				end;
			end;
		end;
	end;
	return X;
end;
local function fG(A)
	local Z = XG(u);
	local C = Z and Z:FindFirstChild("HumanoidRootPart");
	local q = XG(A);
	local H = q and q:FindFirstChild("HumanoidRootPart");
	local X = q and q:FindFirstChild("Head");
	if not C or not H or not X then
		return false;
	end;
	local S = tonumber(x.KillAuraBehind) or 3.2;
	local V = H.CFrame.LookVector;
	local c = (H.Position - V * S) + Vector3.new(0, 1.4, 0);
	pcall(function()
		C.CFrame = CFrame.new(c, X.Position);
	end);
	pcall(function()
		m.CFrame = CFrame.new(m.CFrame.Position, X.Position);
	end);
	return true;
end;
local function pG()
	if not x.KillAura then
		vG = nil;
		return;
	end;
	local A = XG(u);
	local Z = A and A:FindFirstChildOfClass("Humanoid");
	if not Z or Z.Health <= 0 then
		vG = nil;
		return;
	end;
	if not vG or not SG(vG) or not VG(vG) then
		vG = YG(vG);
	end;
	if not vG then
		return;
	end;
	if fG(vG) then
		sG();
	else
		vG = nil;
	end;
end;
local rG = nil;
pcall(function()
	rG = (c:WaitForChild("GameEvents", 8)):WaitForChild("DeviceUpdate", 8);
end);
local function DG()
	if not rG then
		pcall(function()
			rG = c.GameEvents.DeviceUpdate;
		end);
	end;
	if not rG then
		return;
	end;
	local A = x.DeviceMode or "Console";
	pcall(function()
		if A == "Console" then
			rG:FireServer();
			pcall(function()
				rG:FireServer("Console");
			end);
		elseif A == "Desktop" then
			rG:FireServer("Desktop");
		else
			rG:FireServer("Mobile");
		end;
	end);
end;
task.spawn(function()
	while true do
		local A = tonumber(x.DeviceSpoofDelay) or 1.5;
		if A < .3 then
			A = .3;
		end;
		task.wait(A);
		if x.DeviceSpoof then
			pcall(DG);
		end;
	end;
end);
p(.78, "Building ESP...");
local xG = {};
local function dG(A)
	if not e or not J then
		return nil;
	end;
	local Z, C = pcall(function()
			return J.new(A);
		end);
	if Z and C then
		return C;
	end;
	return nil;
end;
local function kG(A)
	if not A then
		return;
	end;
	pcall(function()
		if A.Remove then
			A:Remove();
		elseif A.Destroy then
			A:Destroy();
		else
			A.Visible = false;
		end;
	end);
end;
local function PG(A)
	local Z = xG[A];
	if not Z then
		return;
	end;
	for A, Z in pairs(Z) do
		if type(Z) == "table" then
			for A, Z in pairs(Z) do
				kG(Z);
			end;
		else
			kG(Z);
		end;
	end;
	xG[A] = nil;
end;
local function IG()
	for A in pairs(xG) do
		PG(A);
	end;
	xG = {};
end;
local function eG(A)
	if xG[A] then
		return xG[A];
	end;
	if not e then
		return nil;
	end;
	local Z = dG("Square");
	if not Z then
		return nil;
	end;
	pcall(function()
		Z.Thickness = 1.5;
		Z.Filled = false;
		Z.Visible = false;
	end);
	local C = {};
	for A = 1, 8, 1 do
		local Z = dG("Line");
		if Z then
			pcall(function()
				Z.Thickness = 1.5;
				Z.Visible = false;
			end);
			C[A] = Z;
		end;
	end;
	local q = dG("Text");
	if q then
		pcall(function()
			q.Size = 14;
			q.Center = true;
			q.Outline = true;
			q.Font = 2;
			q.Visible = false;
		end);
	end;
	local H = dG("Text");
	if H then
		pcall(function()
			H.Size = 12;
			H.Center = true;
			H.Outline = true;
			H.Font = 2;
			H.Visible = false;
		end);
	end;
	local X = dG("Square");
	if X then
		pcall(function()
			X.Filled = false;
			X.Visible = false;
		end);
	end;
	local S = dG("Square");
	if S then
		pcall(function()
			S.Filled = true;
			S.Visible = false;
		end);
	end;
	local V = dG("Circle");
	if V then
		pcall(function()
			V.NumSides = 16;
			V.Filled = true;
			V.Visible = false;
		end);
	end;
	xG[A] = {
			Box = Z,
			Lines = C,
			Name = q,
			Dist = H,
			HB = X,
			HF = S,
			Dot = V,
		};
	return xG[A];
end;
local function JG(A)
	if not A then
		return;
	end;
	pcall(function()
		if A.Box then
			A.Box.Visible = false;
		end;
		if A.Name then
			A.Name.Visible = false;
		end;
		if A.Dist then
			A.Dist.Visible = false;
		end;
		if A.HB then
			A.HB.Visible = false;
		end;
		if A.HF then
			A.HF.Visible = false;
		end;
		if A.Dot then
			A.Dot.Visible = false;
		end;
		if A.Lines then
			for Z = 1, #A.Lines, 1 do
				if A.Lines[Z] then
					A.Lines[Z].Visible = false;
				end;
			end;
		end;
	end);
end;
local function NG()
	if not x.ESP then
		IG();
		return;
	end;
	if not e then
		return;
	end;
	local A = l();
	local C = XG(u) and (XG(u)):FindFirstChild("HumanoidRootPart");
	local q = {};
	for Z, H in ipairs(Z:GetPlayers()) do
		if H ~= u and (VG(H) and SG(H)) then
			q[H] = true;
			local Z = XG(H);
			local X = Z and ((Z:FindFirstChild("HumanoidRootPart") or Z:FindFirstChild("Torso")));
			local S = Z and Z:FindFirstChild("Head");
			local V = Z and Z:FindFirstChildOfClass("Humanoid");
			if not X or not S then
				PG(H);
			else
				local Z = eG(H);
				if Z and Z.Box then
					local q, c, R = pcall(function()
							local A, Z = m:WorldToViewportPoint(X.Position);
							return A, Z;
						end);
					if not q or not R or not c or c.Z < 0 then
						JG(Z);
					else
						local q = m:WorldToViewportPoint(S.Position + Vector3.new(0, 1.1, 0));
						local R = m:WorldToViewportPoint(X.Position - Vector3.new(0, 2.8, 0));
						local u = math.max(math.abs(R.Y - q.Y), 8);
						local i = math.clamp(u / 1.85, 8, 120);
						local T = Vector2.new(i, u);
						local h = Vector2.new(c.X - i / 2, q.Y);
						local y = math.clamp(i * .25, 4, 12);
						local F = x.BoxStyle or "Corner";
						pcall(function()
							if x.ShowBoxes and ((F == "Full" or F == "Both")) then
								Z.Box.Size = T;
								Z.Box.Position = h;
								Z.Box.Color = A;
								Z.Box.Visible = true;
							else
								Z.Box.Visible = false;
							end;
						end);
						pcall(function()
							if x.ShowBoxes and (((F == "Corner" or F == "Both")) and (Z.Lines and Z.Lines[1])) then
								local C = Z.Lines;
								C[1].From, C[1].To = h, Vector2.new(h.X, h.Y + y);
								C[2].From, C[2].To = h, Vector2.new(h.X + y, h.Y);
								C[3].From, C[3].To = Vector2.new(h.X + T.X, h.Y), Vector2.new(h.X + T.X, h.Y + y);
								C[4].From, C[4].To = Vector2.new(h.X + T.X, h.Y), Vector2.new((h.X + T.X) - y, h.Y);
								C[5].From, C[5].To = Vector2.new(h.X, h.Y + T.Y), Vector2.new(h.X, (h.Y + T.Y) - y);
								C[6].From, C[6].To = Vector2.new(h.X, h.Y + T.Y), Vector2.new(h.X + y, h.Y + T.Y);
								C[7].From, C[7].To = Vector2.new(h.X + T.X, h.Y + T.Y), Vector2.new(h.X + T.X, (h.Y + T.Y) - y);
								C[8].From, C[8].To = Vector2.new(h.X + T.X, h.Y + T.Y), Vector2.new((h.X + T.X) - y, h.Y + T.Y);
								for Z = 1, 8, 1 do
									if C[Z] then
										C[Z].Color = A;
										C[Z].Visible = true;
									end;
								end;
							elseif Z.Lines then
								for A = 1, #Z.Lines, 1 do
									if Z.Lines[A] then
										Z.Lines[A].Visible = false;
									end;
								end;
							end;
						end);
						pcall(function()
							if x.ShowNames and Z.Name then
								Z.Name.Text = H.DisplayName;
								Z.Name.Position = Vector2.new(c.X, h.Y - 14);
								Z.Name.Color = A;
								Z.Name.Visible = true;
							elseif Z.Name then
								Z.Name.Visible = false;
							end;
						end);
						pcall(function()
							if x.ShowDistance and (Z.Dist and C) then
								Z.Dist.Text = math.floor(((X.Position - C.Position)).Magnitude) .. "m";
								Z.Dist.Position = Vector2.new(c.X, (h.Y + T.Y) + 2);
								Z.Dist.Visible = true;
							elseif Z.Dist then
								Z.Dist.Visible = false;
							end;
						end);
						pcall(function()
							if x.ShowHealth and (V and (Z.HB and Z.HF)) then
								local A = math.clamp(V.Health / math.max(V.MaxHealth, 1), 0, 1);
								Z.HB.Size = Vector2.new(3, T.Y);
								Z.HB.Position = Vector2.new(h.X - 6, h.Y);
								Z.HB.Visible = true;
								local C = T.Y * A;
								Z.HF.Size = Vector2.new(2, C);
								Z.HF.Position = Vector2.new(h.X - 5.5, (h.Y + T.Y) - C);
								Z.HF.Color = Color3.fromRGB(255 * ((1 - A)), 255 * A, 0);
								Z.HF.Visible = true;
							else
								if Z.HB then
									Z.HB.Visible = false;
								end;
								if Z.HF then
									Z.HF.Visible = false;
								end;
							end;
						end);
						pcall(function()
							if x.ShowHeadDot and Z.Dot then
								local C, q = m:WorldToViewportPoint(S.Position);
								if q then
									Z.Dot.Position = Vector2.new(C.X, C.Y);
									Z.Dot.Radius = math.clamp(i * .18, 3, 9);
									Z.Dot.Color = A;
									Z.Dot.Visible = true;
								else
									Z.Dot.Visible = false;
								end;
							elseif Z.Dot then
								Z.Dot.Visible = false;
							end;
						end);
					end;
				end;
			end;
		end;
	end;
	for A in pairs(xG) do
		if not q[A] then
			PG(A);
		end;
	end;
end;
Z.PlayerRemoving:Connect(function(A)
	PG(A);
	if vG == A then
		vG = nil;
	end;
	local Z = XG(A);
	if Z then
		FG(Z:FindFirstChild("Head"));
		FG(yG(Z));
	end;
end);
local function jG(A)
	A.CharacterRemoving:Connect(function()
		PG(A);
	end);
	A.CharacterAdded:Connect(function()
		task.wait(.3);
		PG(A);
	end);
end;
Z.PlayerAdded:Connect(jG);
for A, Z in ipairs(Z:GetPlayers()) do
	jG(Z);
end;
local GG = false;
local function tG(A)
	if A == GG then
		return;
	end;
	GG = A;
	pcall(function()
		if A then
			H.GlobalShadows = false;
			H.FogEnd = 9000000000;
			(settings()).Rendering.QualityLevel = Enum.QualityLevel.Level01;
			for A, C in ipairs(workspace:GetDescendants()) do
				if C:IsA("BasePart") then
					local A = false;
					for Z, q in ipairs(Z:GetPlayers()) do
						if q.Character and C:IsDescendantOf(q.Character) then
							A = true;
							break;
						end;
					end;
					if not A then
						C.Material = Enum.Material.SmoothPlastic;
						C.CastShadow = false;
					end;
				elseif C:IsA("ParticleEmitter") or C:IsA("Trail") or C:IsA("Beam") then
					C.Enabled = false;
				end;
			end;
		else
			H.GlobalShadows = true;
			(settings()).Rendering.QualityLevel = Enum.QualityLevel.Automatic;
		end;
	end);
end;
local oG = "\226\156\147";
pcall(function()
	if utf8 and utf8.char then
		oG = utf8.char(57344);
	end;
end);
p(.9, "Building UI...");
local aG = Instance.new("ScreenGui");
aG.Name = "MoonHubUI";
aG.ResetOnSpawn = false;
aG.IgnoreGuiInset = true;
aG.DisplayOrder = 999;
aG.Parent = i;
local bG = Instance.new("Frame");
bG.Size = UDim2.new(0, math.min(540, m.ViewportSize.X - 20), 0, math.min(420, m.ViewportSize.Y - 50));
bG.Position = UDim2.new(.5, -bG.Size.X.Offset / 2, .5, -bG.Size.Y.Offset / 2);
bG.BackgroundColor3 = j;
bG.BackgroundTransparency = .15;
bG.BorderSizePixel = 0;
bG.Visible = false;
bG.Parent = aG;
(Instance.new("UICorner", bG)).CornerRadius = UDim.new(0, 12);
local lG = Instance.new("Frame");
lG.Size = UDim2.new(1, 0, 0, 40);
lG.BackgroundColor3 = G;
lG.BorderSizePixel = 0;
lG.Parent = bG;
(Instance.new("UICorner", lG)).CornerRadius = UDim.new(0, 12);
local OG = Instance.new("TextLabel");
OG.Size = UDim2.new(1, -40, 1, 0);
OG.Position = UDim2.new(0, 12, 0, 0);
OG.BackgroundTransparency = 1;
OG.Text = "MOON HUB  |  jailbird";
OG.TextColor3 = o;
OG.TextSize = 14;
OG.Font = b;
OG.TextXAlignment = Enum.TextXAlignment.Left;
OG.Parent = lG;
local EG = Instance.new("TextButton");
EG.Size = UDim2.new(0, 28, 0, 28);
EG.Position = UDim2.new(1, -34, .5, -14);
EG.BackgroundColor3 = Color3.fromRGB(40, 30, 50);
EG.Text = "X";
EG.TextColor3 = a;
EG.Font = b;
EG.TextSize = 14;
EG.Parent = lG;
(Instance.new("UICorner", EG)).CornerRadius = UDim.new(0, 6);
local QG = Instance.new("ScrollingFrame");
QG.Size = UDim2.new(0, 100, 1, -60);
QG.Position = UDim2.new(0, 8, 0, 46);
QG.BackgroundColor3 = G;
QG.BorderSizePixel = 0;
QG.ScrollBarThickness = 2;
QG.AutomaticCanvasSize = Enum.AutomaticSize.Y;
QG.CanvasSize = UDim2.new(0, 0, 0, 0);
QG.Parent = bG;
(Instance.new("UICorner", QG)).CornerRadius = UDim.new(0, 8);
local UG = Instance.new("UIListLayout");
UG.Padding = UDim.new(0, 4);
UG.Parent = QG;
local BG = Instance.new("UIPadding");
BG.PaddingTop = UDim.new(0, 6);
BG.PaddingLeft = UDim.new(0, 6);
BG.PaddingRight = UDim.new(0, 6);
BG.Parent = QG;
local zG = Instance.new("Frame");
zG.Size = UDim2.new(1, -120, 1, -70);
zG.Position = UDim2.new(0, 114, 0, 48);
zG.BackgroundTransparency = 1;
zG.Parent = bG;
local KG, AB = {}, {};
local function ZB(A)
	for Z, C in pairs(KG) do
		C.Visible = (Z == A);
	end;
	for Z, C in pairs(AB) do
		C.BackgroundColor3 = (Z == A) and Color3.fromRGB(40, 35, 60) or Color3.fromRGB(22, 22, 30);
		C.TextColor3 = (Z == A) and N or a;
	end;
	O();
end;
local function CB(A)
	local Z = Instance.new("ScrollingFrame");
	Z.Size = UDim2.new(1, 0, 1, 0);
	Z.BackgroundTransparency = 1;
	Z.BorderSizePixel = 0;
	Z.ScrollBarThickness = 3;
	Z.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	Z.CanvasSize = UDim2.new(0, 0, 0, 0);
	Z.Visible = false;
	Z.Parent = zG;
	local C = Instance.new("UIListLayout");
	C.Padding = UDim.new(0, 5);
	C.SortOrder = Enum.SortOrder.LayoutOrder;
	C.Parent = Z;
	local q = Instance.new("UIPadding");
	q.PaddingBottom = UDim.new(0, 10);
	q.Parent = Z;
	Z:SetAttribute("O", 0);
	KG[A] = Z;
	local H = Instance.new("TextButton");
	H.Size = UDim2.new(1, 0, 0, 28);
	H.BackgroundColor3 = Color3.fromRGB(22, 22, 30);
	H.Text = A;
	H.TextColor3 = a;
	H.TextSize = 12;
	H.Font = b;
	H.Parent = QG;
	(Instance.new("UICorner", H)).CornerRadius = UDim.new(0, 6);
	H.MouseButton1Click:Connect(function()
		ZB(A);
	end);
	AB[A] = H;
	return Z;
end;
local function qB(A)
	local Z = ((A:GetAttribute("O") or 0)) + 1;
	A:SetAttribute("O", Z);
	return Z;
end;
local function HB(A, Z)
	local C = Instance.new("TextLabel");
	C.LayoutOrder = qB(A);
	C.Size = UDim2.new(1, 0, 0, 16);
	C.BackgroundTransparency = 1;
	C.Text = string.upper(Z);
	C.TextColor3 = N;
	C.TextSize = 11;
	C.Font = b;
	C.TextXAlignment = Enum.TextXAlignment.Left;
	C.Parent = A;
end;
local function XB(A, Z, C)
	local q = Instance.new("Frame");
	q.LayoutOrder = qB(A);
	q.Size = UDim2.new(1, 0, 0, 32);
	q.BackgroundColor3 = t;
	q.BorderSizePixel = 0;
	q.Parent = A;
	(Instance.new("UICorner", q)).CornerRadius = UDim.new(0, 8);
	local H = Instance.new("TextLabel");
	H.Size = UDim2.new(1, -55, 1, 0);
	H.Position = UDim2.new(0, 10, 0, 0);
	H.BackgroundTransparency = 1;
	H.Text = Z;
	H.TextColor3 = o;
	H.TextSize = 12;
	H.Font = b;
	H.TextXAlignment = Enum.TextXAlignment.Left;
	H.Parent = q;
	local X = Instance.new("TextButton");
	X.Size = UDim2.new(0, 40, 0, 18);
	X.Position = UDim2.new(1, -48, .5, -9);
	X.BackgroundColor3 = x[C] and N or Color3.fromRGB(45, 45, 58);
	X.Text = "";
	X.Parent = q;
	(Instance.new("UICorner", X)).CornerRadius = UDim.new(1, 0);
	local S = Instance.new("Frame");
	S.Size = UDim2.new(0, 14, 0, 14);
	S.Position = x[C] and UDim2.new(1, -16, .5, -7) or UDim2.new(0, 2, .5, -7);
	S.BackgroundColor3 = Color3.new(1, 1, 1);
	S.BorderSizePixel = 0;
	S.Parent = X;
	(Instance.new("UICorner", S)).CornerRadius = UDim.new(1, 0);
	X.MouseButton1Click:Connect(function()
		x[C] = not x[C];
		local A = x[C];
		X.BackgroundColor3 = A and N or Color3.fromRGB(45, 45, 58);
		S.Position = A and UDim2.new(1, -16, .5, -7) or UDim2.new(0, 2, .5, -7);
		if C == "ESP" then
			IG();
		end;
		if C == "Hitbox" and not A then
			LG();
		end;
		if C == "DeviceSpoof" and A then
			DG();
		end;
		if C == "Potato" then
			tG(A);
		end;
		if C == "CustomFOV" then
			if A then
				ZG();
			else
				pcall(function()
					m.FieldOfView = AG;
				end);
			end;
		end;
		if C == "MobileAim" and A then
			x.Aimbot = true;
		end;
		if C == "KillAura" and not A then
			vG = nil;
		end;
		if C == "ScreenStretch" and (A and not k) then
			k = true;
		end;
		P();
		O();
	end);
end;
local function SB(A, Z, q, H, X, S)
	local V = Instance.new("Frame");
	V.LayoutOrder = qB(A);
	V.Size = UDim2.new(1, 0, 0, 46);
	V.BackgroundColor3 = t;
	V.BorderSizePixel = 0;
	V.Parent = A;
	(Instance.new("UICorner", V)).CornerRadius = UDim.new(0, 8);
	local c = Instance.new("TextLabel");
	c.Size = UDim2.new(.65, 0, 0, 16);
	c.Position = UDim2.new(0, 10, 0, 4);
	c.BackgroundTransparency = 1;
	c.Text = Z;
	c.TextColor3 = o;
	c.TextSize = 11;
	c.Font = b;
	c.TextXAlignment = Enum.TextXAlignment.Left;
	c.Parent = V;
	local R = Instance.new("TextLabel");
	R.Size = UDim2.new(.3, -8, 0, 16);
	R.Position = UDim2.new(.7, 0, 0, 4);
	R.BackgroundTransparency = 1;
	R.Text = tostring(x[q]);
	R.TextColor3 = N;
	R.TextSize = 11;
	R.Font = b;
	R.TextXAlignment = Enum.TextXAlignment.Right;
	R.Parent = V;
	local m = Instance.new("TextButton");
	m.Size = UDim2.new(1, -20, 0, 8);
	m.Position = UDim2.new(0, 10, 0, 26);
	m.BackgroundColor3 = Color3.fromRGB(40, 40, 55);
	m.Text = "";
	m.Parent = V;
	(Instance.new("UICorner", m)).CornerRadius = UDim.new(1, 0);
	local u = Instance.new("Frame");
	u.Size = UDim2.new(math.clamp(((x[q] - H)) / math.max(X - H, .001), 0, 1), 0, 1, 0);
	u.BackgroundColor3 = N;
	u.BorderSizePixel = 0;
	u.Parent = m;
	(Instance.new("UICorner", u)).CornerRadius = UDim.new(1, 0);
	local function i(A)
		local Z = math.clamp(((A - m.AbsolutePosition.X)) / math.max(m.AbsoluteSize.X, 1), 0, 1);
		local C = H + Z * ((X - H));
		C = math.floor(C / S + .5) * S;
		C = math.clamp(C, H, X);
		x[q] = C;
		u.Size = UDim2.new(((C - H)) / math.max(X - H, .001), 0, 1, 0);
		R.Text = tostring(C);
		if q == "CursorSize" then
			B.Size = UDim2.new(0, C, 0, C);
		end;
		if q == "FOVValue" and x.CustomFOV then
			ZG();
		end;
		P();
	end;
	m.MouseButton1Down:Connect(function()
		local A, Z;
		A = C.InputChanged:Connect(function(A)
				if A.UserInputType == Enum.UserInputType.MouseMovement or A.UserInputType == Enum.UserInputType.Touch then
					i(A.Position.X);
				end;
			end);
		Z = C.InputEnded:Connect(function(C)
				if C.UserInputType == Enum.UserInputType.MouseButton1 or C.UserInputType == Enum.UserInputType.Touch then
					if A then
						A:Disconnect();
					end;
					if Z then
						Z:Disconnect();
					end;
				end;
			end);
		i((C:GetMouseLocation()).X);
	end);
end;
local function VB(A, Z, C, q)
	local H = Instance.new("Frame");
	H.LayoutOrder = qB(A);
	H.Size = UDim2.new(1, 0, 0, 32);
	H.BackgroundColor3 = t;
	H.BorderSizePixel = 0;
	H.Parent = A;
	(Instance.new("UICorner", H)).CornerRadius = UDim.new(0, 8);
	local X = Instance.new("TextLabel");
	X.Size = UDim2.new(.4, 0, 1, 0);
	X.Position = UDim2.new(0, 10, 0, 0);
	X.BackgroundTransparency = 1;
	X.Text = Z;
	X.TextColor3 = o;
	X.TextSize = 12;
	X.Font = b;
	X.TextXAlignment = Enum.TextXAlignment.Left;
	X.Parent = H;
	local S = 1;
	for A, Z in ipairs(q) do
		if Z == x[C] then
			S = A;
		end;
	end;
	local V = Instance.new("TextButton");
	V.Size = UDim2.new(.55, -12, 0, 22);
	V.Position = UDim2.new(.45, 0, .5, -11);
	V.BackgroundColor3 = Color3.fromRGB(35, 32, 48);
	V.Text = tostring(x[C]);
	V.TextColor3 = N;
	V.TextSize = 11;
	V.Font = b;
	V.Parent = H;
	(Instance.new("UICorner", V)).CornerRadius = UDim.new(0, 6);
	V.MouseButton1Click:Connect(function()
		S = S % #q + 1;
		x[C] = q[S];
		V.Text = q[S];
		if C == "CursorName" then
			K(x.CursorName);
		end;
		if C == "DeviceMode" and x.DeviceSpoof then
			DG();
		end;
		if C == "HitboxPart" then
			LG();
		end;
		P();
		O();
	end);
end;
local function cB(A, Z, C, q)
	local H = Instance.new("Frame");
	H.LayoutOrder = qB(A);
	H.Size = UDim2.new(1, 0, 0, 52);
	H.BackgroundColor3 = t;
	H.BorderSizePixel = 0;
	H.Parent = A;
	(Instance.new("UICorner", H)).CornerRadius = UDim.new(0, 8);
	local X = Instance.new("TextLabel");
	X.Size = UDim2.new(1, -16, 0, 14);
	X.Position = UDim2.new(0, 10, 0, 4);
	X.BackgroundTransparency = 1;
	X.Text = Z;
	X.TextColor3 = a;
	X.TextSize = 11;
	X.Font = b;
	X.TextXAlignment = Enum.TextXAlignment.Left;
	X.Parent = H;
	local S = Instance.new("TextBox");
	S.Size = UDim2.new(1, -20, 0, 22);
	S.Position = UDim2.new(0, 10, 0, 22);
	S.BackgroundColor3 = Color3.fromRGB(14, 14, 20);
	S.BorderSizePixel = 0;
	S.Text = tostring(x[C] or q or "");
	S.PlaceholderText = q or "";
	S.TextColor3 = o;
	S.TextSize = 12;
	S.Font = b;
	S.ClearTextOnFocus = false;
	S.Parent = H;
	(Instance.new("UICorner", S)).CornerRadius = UDim.new(0, 6);
	S.FocusLost:Connect(function()
		local A = S.Text;
		if not A or A == "" then
			A = q or "default";
			S.Text = A;
		end;
		x[C] = A;
		P();
	end);
end;
local function RB(A, Z, C)
	local q = Instance.new("TextButton");
	q.LayoutOrder = qB(A);
	q.Size = UDim2.new(1, 0, 0, 30);
	q.BackgroundColor3 = Color3.fromRGB(35, 30, 55);
	q.Text = Z;
	q.TextColor3 = N;
	q.TextSize = 12;
	q.Font = b;
	q.Parent = A;
	(Instance.new("UICorner", q)).CornerRadius = UDim.new(0, 8);
	q.MouseButton1Click:Connect(function()
		C();
		O();
	end);
end;
local mB = CB("Combat");
local uB = CB("Player");
local iB = CB("Stream");
local TB = CB("Staff");
local hB = CB("Mobile");
local yB = CB("Visuals");
local FB = CB("Config");
HB(mB, "Aimbot");
XB(mB, "Aimbot", "Aimbot");
VB(mB, "Key", "AimKey", {
	"MB1",
	"MB2",
	"E",
	"Q",
	"F",
});
VB(mB, "Mode", "AimMode", { "Hold", "Toggle", "Always" });
SB(mB, "FOV", "AimFOV", 40, 350, 1);
SB(mB, "Smooth", "AimSmooth", .1, 1, .05);
XB(mB, "Show FOV", "ShowFOV");
XB(mB, "Wall Check", "WallCheck");
XB(mB, "Team Check", "TeamCheck");
XB(mB, "Prediction", "Prediction");
SB(mB, "Predict", "PredictAmount", 0, .35, .01);
HB(mB, "Triggerbot");
XB(mB, "Triggerbot", "Triggerbot");
SB(mB, "Trigger FOV", "TriggerFOV", 15, 150, 1);
SB(mB, "Trigger Delay", "TriggerDelay", .03, .25, .01);
HB(mB, "Kill Aura");
XB(mB, "Kill Aura", "KillAura");
SB(mB, "Range", "KillAuraRange", 20, 200, 5);
SB(mB, "Behind Dist", "KillAuraBehind", 1.5, 8, .1);
HB(mB, "Camera FOV");
XB(mB, "Custom FOV", "CustomFOV");
SB(mB, "FOV Value", "FOVValue", 40, 120, 1);
HB(mB, "Hitbox Expand");
XB(mB, "Hitbox Expand", "Hitbox");
VB(mB, "Part", "HitboxPart", { "Head", "Torso" });
SB(mB, "Size", "HitboxSize", 1.5, 10, .5);
HB(uB, "Move");
XB(uB, "Speed", "Speed");
SB(uB, "Speed Value", "SpeedValue", 16, 80, 1);
XB(uB, "Noclip", "Noclip");
XB(uB, "Anti-Bow", "AntiBow");
HB(uB, "Device Spoof");
XB(uB, "Device Spoof", "DeviceSpoof");
VB(uB, "Mode", "DeviceMode", { "Console", "Desktop", "Mobile" });
SB(uB, "Delay (sec)", "DeviceSpoofDelay", .3, 5, .1);
RB(uB, "Apply Device Now", DG);
HB(uB, "Screen Stretch");
XB(uB, "Screen Stretch", "ScreenStretch");
SB(uB, "Stretch Amount", "StretchAmount", .3, 1, .01);
HB(iB, "Stream");
XB(iB, "Stream Proof", "StreamProof");
cB(iB, "Name", "SpoofName", "Player");
XB(iB, "Verified", "ShowVerified");
HB(TB, "Staff");
XB(TB, "Detect", "StaffDetect");
XB(TB, "Leave", "StaffLeave");
HB(hB, "Mobile Aim");
XB(hB, "Mobile Aim ON", "MobileAim");
SB(hB, "Smooth", "MobileSmooth", .1, 1, .05);
SB(hB, "FOV", "MobileFOV", 40, 350, 1);
XB(hB, "Show FOV", "MobileShowFOV");
HB(yB, "ESP");
XB(yB, "ESP Enabled", "ESP");
XB(yB, "Boxes", "ShowBoxes");
VB(yB, "Box Style", "BoxStyle", { "Corner", "Full", "Both" });
XB(yB, "Names", "ShowNames");
XB(yB, "Distance", "ShowDistance");
XB(yB, "Health", "ShowHealth");
XB(yB, "Head Dot", "ShowHeadDot");
RB(yB, "Force Refresh ESP", IG);
HB(yB, "ESP Color");
XB(yB, "RGB ESP", "RGBESP");
SB(yB, "Red", "ESPColorR", 0, 255, 1);
SB(yB, "Green", "ESPColorG", 0, 255, 1);
SB(yB, "Blue", "ESPColorB", 0, 255, 1);
HB(yB, "Radar");
XB(yB, "Radar", "Radar");
SB(yB, "Radar Size", "RadarSize", 80, 220, 5);
SB(yB, "Radar Range", "RadarRange", 50, 400, 10);
HB(yB, "Cursor");
VB(yB, "Cursor", "CursorName", Q);
SB(yB, "Cursor Size", "CursorSize", 8, 128, 1);
for A, Z in ipairs(E) do
	RB(yB, Z.Name, function()
		K(Z.Name);
		P();
	end);
end;
HB(FB, "Config");
cB(FB, "Name", "ConfigName", "default");
RB(FB, "Save", P);
RB(FB, "Load", function()
	I();
end);
XB(FB, "FPS + MS", "ShowPerf");
XB(FB, "Potato", "Potato");
ZB("Combat");
local LB, WB, gB;
lG.InputBegan:Connect(function(A)
	if A.UserInputType == Enum.UserInputType.MouseButton1 or A.UserInputType == Enum.UserInputType.Touch then
		LB = true;
		WB = A.Position;
		gB = bG.Position;
	end;
end);
lG.InputEnded:Connect(function(A)
	if A.UserInputType == Enum.UserInputType.MouseButton1 or A.UserInputType == Enum.UserInputType.Touch then
		LB = false;
	end;
end);
C.InputChanged:Connect(function(A)
	if LB and ((A.UserInputType == Enum.UserInputType.MouseMovement or A.UserInputType == Enum.UserInputType.Touch)) then
		local Z = A.Position - WB;
		bG.Position = UDim2.new(gB.X.Scale, gB.X.Offset + Z.X, gB.Y.Scale, gB.Y.Offset + Z.Y);
	end;
end);
EG.MouseButton1Click:Connect(function()
	bG.Visible = false;
end);
C.InputBegan:Connect(function(A)
	if A.KeyCode == Enum.KeyCode.RightControl or A.KeyCode == Enum.KeyCode.LeftControl then
		bG.Visible = not bG.Visible;
		O();
	end;
end);
local nB = {
		MB1 = Enum.UserInputType.MouseButton1,
		MB2 = Enum.UserInputType.MouseButton2,
		E = Enum.KeyCode.E,
		Q = Enum.KeyCode.Q,
		F = Enum.KeyCode.F,
	};
local MB = false;
local sB;
local function wB(A)
	local Z = nB[x.AimKey] or Enum.UserInputType.MouseButton2;
	local C = tostring(Z);
	if string.find(C, "MouseButton", 1, true) then
		return A.UserInputType == Z;
	end;
	if string.find(C, "KeyCode", 1, true) then
		return A.KeyCode == Z;
	end;
	return false;
end;
C.InputBegan:Connect(function(A, Z)
	if not x.Aimbot or x.MobileAim then
		return;
	end;
	if not wB(A) then
		return;
	end;
	if x.AimMode == "Hold" then
		MB = true;
	elseif x.AimMode == "Toggle" then
		MB = not MB;
	end;
end);
C.InputEnded:Connect(function(A)
	if x.AimMode == "Hold" and wB(A) then
		MB = false;
	end;
end);
local function vB(A)
	if sB then
		sB:Disconnect();
		sB = nil;
	end;
	if not A then
		local A = XG(u);
		if A then
			for A, Z in ipairs(A:GetDescendants()) do
				if Z:IsA("BasePart") then
					Z.CanCollide = true;
				end;
			end;
		end;
		return;
	end;
	sB = q.Stepped:Connect(function()
			local A = XG(u);
			if not A then
				return;
			end;
			for A, Z in ipairs(A:GetDescendants()) do
				if Z:IsA("BasePart") then
					Z.CanCollide = false;
				end;
			end;
		end);
end;
task.spawn(function()
	while true do
		task.wait(.2);
		if x.AntiBow then
			pcall(function()
				local A = XG(u);
				if not A then
					return;
				end;
				local Z = A:FindFirstChild("HumanoidRootPart");
				local C = A:FindFirstChildOfClass("Humanoid");
				if not Z or not C or C.Health <= 0 then
					return;
				end;
				local q = C:GetState();
				if q == Enum.HumanoidStateType.Jumping or q == Enum.HumanoidStateType.Freefall then
					return;
				end;
				if Z.CFrame.UpVector:Dot(Vector3.yAxis) >= .92 then
					return;
				end;
				local H, X = Z.CFrame:ToOrientation();
				Z.CFrame = CFrame.new(Z.Position) * CFrame.Angles(0, X, 0);
			end);
		end;
	end;
end);
task.spawn(function()
	while true do
		task.wait(.5);
		if x.StreamProof then
			local A = tostring(x.SpoofName);
			if x.ShowVerified then
				A = A .. (" " .. oG);
			end;
			pcall(function()
				u.DisplayName = A;
			end);
		end;
	end;
end);
local YB = 33054943;
local fB = {};
task.spawn(function()
	while true do
		task.wait(2);
		if x.StaffDetect then
			for A, Z in ipairs(Z:GetPlayers()) do
				if Z ~= u then
					local A, C = pcall(function()
							return Z:GetRankInGroup(YB);
						end);
					if A and (type(C) == "number" and C >= 51) then
						if not fB[Z.UserId] then
							fB[Z.UserId] = true;
							if x.StaffLeave then
								pcall(function()
									u:Kick("Staff");
								end);
							end;
						end;
					end;
				end;
			end;
		end;
	end;
end);
local pB, rB, DB;
local function xB()
	if not e or pB then
		return;
	end;
	pB = dG("Circle");
	if pB then
		pB.Filled = true;
		pB.Color = Color3.fromRGB(10, 10, 14);
		pB.Transparency = .35;
		pB.NumSides = 48;
		pB.Visible = false;
	end;
	rB = dG("Circle");
	if rB then
		rB.Filled = false;
		rB.Thickness = 1.5;
		rB.Color = N;
		rB.NumSides = 48;
		rB.Visible = false;
	end;
	DB = {};
end;
local dB = dG("Circle");
if dB then
	dB.Thickness = 1;
	dB.NumSides = 40;
	dB.Filled = false;
	dB.Color = Color3.new(1, 1, 1);
	dB.Visible = false;
end;
local kB = dG("Text");
if kB then
	kB.Size = 15;
	kB.Outline = true;
	kB.Font = 2;
	kB.Visible = false;
end;
local PB, IB, eB, JB = 0, tick(), 0, 0;
q.Heartbeat:Connect(function()
	local A = XG(u);
	if A then
		local Z = A:FindFirstChildOfClass("Humanoid");
		if x.Speed and (Z and Z.Health > 0) then
			Z.WalkSpeed = x.SpeedValue or 24;
		end;
		if x.Noclip then
			if not sB then
				vB(true);
			end;
		elseif sB then
			vB(false);
		end;
	end;
	pcall(wG);
	pcall(pG);
	pcall(gG);
end);
q.RenderStepped:Connect(function()
	PB = PB + 1;
	if tick() - IB >= 1 then
		eB = PB;
		PB = 0;
		IB = tick();
	end;
	if B.Visible then
		local A = C:GetMouseLocation();
		B.Position = UDim2.new(0, A.X, 0, A.Y);
	end;
	if x.CustomFOV then
		ZG();
	end;
	CG = false;
	local A, q, H = false, x.AimSmooth or .95, x.AimFOV or 150;
	if x.KillAura and (vG and SG(vG)) then
		CG = true;
	elseif not x.KillAura then
		if x.MobileAim then
			A = true;
			q = x.MobileSmooth or .9;
			H = x.MobileFOV or 160;
		elseif x.Aimbot then
			A = MB or x.AimMode == "Always";
			q = x.AimSmooth or .95;
			H = x.AimFOV or 150;
		end;
	end;
	if A then
		local A, Z = TG(H, true);
		if Z then
			CG = true;
			if q >= .98 then
				m.CFrame = CFrame.new(m.CFrame.Position, Z);
			else
				m.CFrame = m.CFrame:Lerp(CFrame.new(m.CFrame.Position, Z), math.clamp(q, .1, 1));
			end;
			HG(Z);
		end;
	end;
	qG();
	pcall(NG);
	if x.ShowPerf and kB then
		local A = 0;
		pcall(function()
			A = math.floor(X.Network.ServerStatsItem["Data Ping"]:GetValue());
		end);
		kB.Text = "FPS " .. (eB .. ("  MS " .. A));
		kB.Position = Vector2.new(m.ViewportSize.X - 150, 10);
		kB.Color = N;
		kB.Visible = true;
	elseif kB then
		kB.Visible = false;
	end;
	local S, V = false, x.AimFOV or 150;
	if x.MobileAim then
		S = x.MobileShowFOV;
		V = x.MobileFOV or 160;
	else
		S = x.ShowFOV and x.Aimbot;
		V = x.AimFOV or 150;
	end;
	if dB then
		dB.Position = m.ViewportSize / 2;
		dB.Radius = V;
		dB.Visible = S;
		if x.RGBESP then
			dB.Color = l();
		end;
	end;
	if x.Radar and e then
		xB();
		local A = tonumber(x.RadarSize) or 140;
		local C = tonumber(x.RadarRange) or 200;
		local q = A / 2;
		local H = Vector2.new(20 + q, 20 + q);
		local X = l();
		if pB then
			pB.Position = H;
			pB.Radius = q;
			pB.Visible = true;
		end;
		if rB then
			rB.Position = H;
			rB.Radius = q;
			rB.Visible = true;
		end;
		local S = XG(u) and (XG(u)):FindFirstChild("HumanoidRootPart");
		local V = math.atan2(m.CFrame.LookVector.X, m.CFrame.LookVector.Z);
		local c = {};
		if S then
			for A, Z in ipairs(Z:GetPlayers()) do
				if Z ~= u and (VG(Z) and SG(Z)) then
					local A = XG(Z) and (XG(Z)):FindFirstChild("HumanoidRootPart");
					if A then
						local R = A.Position - S.Position;
						if R.Magnitude <= C then
							local A = R.X * math.cos(V) - R.Z * math.sin(V);
							local S = R.X * math.sin(V) + R.Z * math.cos(V);
							local m = q / C;
							local u, i = A * m, -S * m;
							if not DB[Z] then
								local A = dG("Circle");
								if A then
									A.Filled = true;
									A.NumSides = 10;
									A.Radius = 3;
									DB[Z] = A;
								end;
							end;
							local T = DB[Z];
							if T then
								T.Position = Vector2.new(H.X + u, H.Y + i);
								T.Color = X;
								T.Visible = true;
							end;
							c[Z] = true;
						end;
					end;
				end;
			end;
		end;
		for A, Z in pairs(DB) do
			if not c[A] then
				pcall(function()
					if Z then
						Z.Visible = false;
					end;
				end);
			end;
		end;
	else
		if pB then
			pB.Visible = false;
		end;
		if rB then
			rB.Visible = false;
		end;
		if DB then
			for A, Z in pairs(DB) do
				pcall(function()
					if Z then
						Z.Visible = false;
					end;
				end);
			end;
		end;
	end;
end);
task.spawn(function()
	while true do
		task.wait(15);
		P();
	end;
end);
if x.CursorName and x.CursorName ~= "Off" then
	K(x.CursorName);
end;
if x.CustomFOV then
	ZG();
end;
p(1, "Done");
task.wait(.35);
pcall(function()
	W:Destroy();
end);
bG.Visible = true;
print("[Moon Hub] PUBLIC | " .. (y .. (" | executes: " .. tostring(F))));
