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
local f = getgenv or function()
		return _G;
	end;
local g = game:GetService("Players");
local T = game:GetService("UserInputService");
local u = game:GetService("RunService");
local n = game:GetService("Lighting");
local w = game:GetService("Stats");
local v = game:GetService("HttpService");
local M = game:GetService("TweenService");
local L = game:GetService("ReplicatedStorage");
local Y = game:GetService("VirtualInputManager");
local H = workspace.CurrentCamera;
local F = g.LocalPlayer or g.PlayerAdded:Wait();
local N = F:WaitForChild("PlayerGui", 60);
if not N then
	warn("[Moon] PlayerGui timeout");
	return;
end;
pcall(function()
	for f, g in ipairs({ "MoonHubUI", "MoonCursorUI", "MoonLoadUI" }) do
		local T = N:FindFirstChild(g);
		if T then
			T:Destroy();
		end;
	end;
	pcall(function()
		if gethui then
			local f = gethui();
			for g, T in ipairs({ "MoonHubUI", "MoonCursorUI", "MoonLoadUI" }) do
				local u = f:FindFirstChild(T);
				if u then
					u:Destroy();
				end;
			end;
		end;
	end);
end);
task.wait(.05);
local D;
pcall(function()
	D = F:GetMouse();
end);
local function W()
	local g = "Unknown";
	pcall(function()
		if identifyexecutor then
			local f, T = identifyexecutor();
			g = tostring(f or "Unknown");
			if T then
				g = g .. (" " .. tostring(T));
			end;
		elseif getexecutorname then
			g = tostring(getexecutorname());
		elseif syn and syn.request then
			g = "Synapse";
		elseif fluxus then
			g = "Fluxus";
		elseif KRNL_LOADED then
			g = "Krnl";
		elseif is_sirhurt_closure then
			g = "Sirhurt";
		elseif pebc_execute then
			g = "Parallel";
		elseif SecureDelta or (f()).SecureDelta then
			g = "Delta";
		elseif (f()).drew or (f()).IS_COCO_LOADED then
			g = "Coco";
		elseif (f()).X.X or (f()).WXApple then
			g = "Wave";
		elseif (f()).IsElectron then
			g = "Electron";
		elseif (f()).executor_name then
			g = tostring((f()).executor_name);
		end;
	end);
	if g == "Unknown" or g == "" then
		pcall(function()
			if (f()).OPIUMWARE or (f()).Opiumware then
				g = "Opiumware";
			end;
		end);
	end;
	return g;
end;
local V = W();
local p = 0;
local function U()
	local f = { "https://api.counterapi.dev/v1/moonhub/jailbird/up", "https://api.countapi.xyz/hit/moonhub-jailbird/executes" };
	for f, g in ipairs(f) do
		local T, u = pcall(function()
				return game:HttpGet(g);
			end);
		if T and (u and #u > 0) then
			local f = nil;
			pcall(function()
				f = v:JSONDecode(u);
			end);
			if type(f) == "table" then
				local g = f.value or f.count or f.Count or f.integer;
				if type(g) == "number" then
					p = g;
					return;
				end;
			end;
			local g = tonumber(u);
			if g then
				p = g;
				return;
			end;
		end;
	end;
end;
pcall(U);
local z = Instance.new("ScreenGui");
z.Name = "MoonLoadUI";
z.ResetOnSpawn = false;
z.IgnoreGuiInset = true;
z.DisplayOrder = 9999;
z.Parent = N;
local t = Instance.new("Frame");
t.Size = UDim2.new(1, 0, 1, 0);
t.BackgroundColor3 = Color3.fromRGB(8, 8, 12);
t.BorderSizePixel = 0;
t.Parent = z;
local a = Instance.new("Frame");
a.Size = UDim2.new(0, 320, 0, 160);
a.Position = UDim2.new(.5, -160, .5, -80);
a.BackgroundColor3 = Color3.fromRGB(16, 16, 22);
a.BorderSizePixel = 0;
a.Parent = t;
(Instance.new("UICorner", a)).CornerRadius = UDim.new(0, 14);
local B = Instance.new("TextLabel");
B.Size = UDim2.new(1, -20, 0, 28);
B.Position = UDim2.new(0, 10, 0, 14);
B.BackgroundTransparency = 1;
B.Text = "MOON HUB";
B.TextColor3 = Color3.fromRGB(138, 99, 255);
B.TextSize = 20;
B.Font = Enum.Font.GothamBold;
B.Parent = a;
local J = Instance.new("TextLabel");
J.Size = UDim2.new(1, -20, 0, 18);
J.Position = UDim2.new(0, 10, 0, 42);
J.BackgroundTransparency = 1;
J.Text = "jailbird";
J.TextColor3 = Color3.fromRGB(160, 160, 180);
J.TextSize = 12;
J.Font = Enum.Font.Gotham;
J.Parent = a;
local e = Instance.new("TextLabel");
e.Size = UDim2.new(1, -20, 0, 18);
e.Position = UDim2.new(0, 10, 0, 70);
e.BackgroundTransparency = 1;
e.Text = "Starting...";
e.TextColor3 = Color3.fromRGB(220, 220, 230);
e.TextSize = 12;
e.Font = Enum.Font.Gotham;
e.TextXAlignment = Enum.TextXAlignment.Left;
e.Parent = a;
local d = Instance.new("Frame");
d.Size = UDim2.new(1, -24, 0, 10);
d.Position = UDim2.new(0, 12, 0, 100);
d.BackgroundColor3 = Color3.fromRGB(30, 30, 40);
d.BorderSizePixel = 0;
d.Parent = a;
(Instance.new("UICorner", d)).CornerRadius = UDim.new(1, 0);
local i = Instance.new("Frame");
i.Size = UDim2.new(0, 0, 1, 0);
i.BackgroundColor3 = Color3.fromRGB(138, 99, 255);
i.BorderSizePixel = 0;
i.Parent = d;
(Instance.new("UICorner", i)).CornerRadius = UDim.new(1, 0);
local X = Instance.new("TextLabel");
X.Size = UDim2.new(1, -20, 0, 32);
X.Position = UDim2.new(0, 10, 0, 118);
X.BackgroundTransparency = 1;
X.Text = "Executor: " .. (V .. ("\nExecutes: " .. tostring(p)));
X.TextColor3 = Color3.fromRGB(140, 140, 160);
X.TextSize = 11;
X.Font = Enum.Font.Gotham;
X.TextXAlignment = Enum.TextXAlignment.Left;
X.TextYAlignment = Enum.TextYAlignment.Top;
X.Parent = a;
local function P(f, g)
	f = math.clamp(f, 0, 1);
	pcall(function()
		e.Text = g or e.Text;
		(M:Create(i, TweenInfo.new(.25, Enum.EasingStyle.Quad), { Size = UDim2.new(f, 0, 1, 0) })):Play();
	end);
end;
P(.08, "Detecting executor...");
task.wait(.2);
P(.2, "Executor: " .. V);
task.wait(.15);
P(.35, "Loading config...");
task.wait(.1);
local function K(f, g)
	pcall(function()
		if writefile then
			writefile(f, g);
		end;
	end);
end;
local function O(f)
	local g, T = pcall(function()
			if isfile and (isfile(f) and readfile) then
				return readfile(f);
			end;
		end);
	return g and T or nil;
end;
pcall(function()
	if makefolder then
		makefolder("MoonHub");
		makefolder("MoonHub/Configs");
	end;
end);
(f()).MoonHubState = (f()).MoonHubState or {};
local j = (f()).MoonHubState;
local r = {
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
for f, g in pairs(r) do
	if j[f] == nil then
		j[f] = g;
	end;
end;
j.NoRecoil = nil;
j.NoJumpCooldown = nil;
j.KillAuraDelay = nil;
j.HideFromRecord = nil;
if type(j.CursorSize) ~= "number" then
	j.CursorSize = 32;
end;
if type(j.AimSmooth) ~= "number" then
	j.AimSmooth = .95;
end;
if type(j.FOVValue) ~= "number" then
	j.FOVValue = 90;
end;
if type(j.TriggerDelay) ~= "number" then
	j.TriggerDelay = .06;
end;
if type(j.TriggerFOV) ~= "number" then
	j.TriggerFOV = 55;
end;
if type(j.DeviceSpoofDelay) ~= "number" then
	j.DeviceSpoofDelay = 1.5;
end;
j.StretchAmount = math.clamp(tonumber(j.StretchAmount) or .53, .3, 1);
if j.HitboxPart ~= "Head" and j.HitboxPart ~= "Torso" then
	j.HitboxPart = "Head";
end;
if type(j.KillAuraRange) ~= "number" then
	j.KillAuraRange = 90;
end;
if type(j.KillAuraBehind) ~= "number" then
	j.KillAuraBehind = 3.2;
end;
local x = false;
task.delay(2.5, function()
	x = true;
end);
local function s()
	local f = (tostring(j.ConfigName or "default")):gsub("[^%w%-%_]", "");
	if f == "" then
		f = "default";
	end;
	j.ConfigName = f;
	j.NoRecoil = nil;
	j.NoJumpCooldown = nil;
	j.KillAuraDelay = nil;
	j.HideFromRecord = nil;
	j.StretchAmount = math.clamp(tonumber(j.StretchAmount) or .53, .3, 1);
	K("MoonHub/Configs/" .. (f .. ".json"), v:JSONEncode(j));
	K("MoonHub/Jailbird.json", v:JSONEncode(j));
end;
local function A()
	local f = (tostring(j.ConfigName or "default")):gsub("[^%w%-%_]", "");
	local g = O("MoonHub/Configs/" .. (f .. ".json")) or O("MoonHub/Jailbird.json");
	if g then
		pcall(function()
			local f = v:JSONDecode(g);
			if type(f) == "table" then
				for f, g in pairs(f) do
					j[f] = g;
				end;
			end;
		end);
	end;
	j.NoRecoil = nil;
	j.NoJumpCooldown = nil;
	j.KillAuraDelay = nil;
	j.HideFromRecord = nil;
	if type(j.DeviceSpoofDelay) ~= "number" then
		j.DeviceSpoofDelay = 1.5;
	end;
	j.StretchAmount = math.clamp(tonumber(j.StretchAmount) or .53, .3, 1);
	if not x then
		local f = j.ScreenStretch == true;
		j.ScreenStretch = false;
		task.delay(2.6, function()
			if f then
				j.ScreenStretch = true;
			end;
			x = true;
		end);
	end;
	if j.HitboxPart ~= "Head" and j.HitboxPart ~= "Torso" then
		j.HitboxPart = "Head";
	end;
end;
pcall(A);
P(.5, "Loading Drawing...");
local E = false;
local l = nil;
pcall(function()
	if Drawing and type(Drawing.new) == "function" then
		l = Drawing;
		local f = Drawing.new("Text");
		f.Visible = false;
		pcall(function()
			f:Remove();
		end);
		E = true;
	end;
end);
if not E then
	pcall(function()
		if (f()).Drawing and type((f()).Drawing.new) == "function" then
			l = (f()).Drawing;
			local g = l.new("Text");
			g.Visible = false;
			pcall(function()
				g:Remove();
			end);
			E = true;
		end;
	end);
end;
P(.65, E and "Drawing OK" or "Drawing missing (ESP off)");
local k = Color3.fromRGB(138, 99, 255);
local G = Color3.fromRGB(12, 12, 16);
local I = Color3.fromRGB(18, 18, 24);
local c = Color3.fromRGB(20, 20, 28);
local y = Color3.fromRGB(235, 235, 245);
local b = Color3.fromRGB(160, 160, 180);
local S = Enum.Font.Gotham;
local m = T.TouchEnabled;
local function h()
	if j.RGBESP then
		return Color3.fromHSV(((tick() * .4)) % 1, 1, 1);
	end;
	return Color3.fromRGB(math.clamp(tonumber(j.ESPColorR) or 170, 0, 255), math.clamp(tonumber(j.ESPColorG) or 0, 0, 255), math.clamp(tonumber(j.ESPColorB) or 255, 0, 255));
end;
local function q()
	pcall(function()
		T.MouseBehavior = Enum.MouseBehavior.Default;
		T.MouseIconEnabled = true;
	end);
end;
local Z = {
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
for f, g in ipairs(Z) do
	Q[f] = g.Name;
end;
local o = Instance.new("ScreenGui");
o.Name = "MoonCursorUI";
o.ResetOnSpawn = false;
o.IgnoreGuiInset = true;
o.DisplayOrder = 10000;
o.Parent = N;
local C = Instance.new("ImageLabel");
C.BackgroundTransparency = 1;
C.AnchorPoint = Vector2.new(.5, .5);
C.Size = UDim2.new(0, 32, 0, 32);
C.Visible = false;
C.ZIndex = 100;
C.Parent = o;
local function R(f)
	local g = N:FindFirstChild("Crosshair");
	if not g then
		return;
	end;
	pcall(function()
		if g:IsA("ScreenGui") then
			g.Enabled = f;
		end;
		g.Visible = f;
		for g, T in ipairs(g:GetDescendants()) do
			if T:IsA("GuiObject") then
				T.Visible = f;
			end;
		end;
	end);
end;
local function fW(f)
	f = f or j.CursorName or "Off";
	j.CursorName = f;
	local g = Z[1];
	for T, u in ipairs(Z) do
		if u.Name == f then
			g = u;
			break;
		end;
	end;
	R(false);
	C.Visible = false;
	local u = math.clamp(tonumber(j.CursorSize) or 32, 8, 128);
	C.Size = UDim2.new(0, u, 0, u);
	if not g.Id or g.Name == "Off" then
		pcall(function()
			if D then
				D.Icon = "";
			end;
			T.MouseIconEnabled = true;
		end);
		return;
	end;
	if g.Id == "GAME" then
		R(true);
		pcall(function()
			if D then
				D.Icon = "rbxassetid://0";
			end;
			T.MouseIconEnabled = true;
		end);
		return;
	end;
	pcall(function()
		T.MouseIconEnabled = false;
		if D then
			D.Icon = "rbxassetid://0";
		end;
		C.Image = "rbxassetid://" .. tostring(g.Id);
		C.Visible = true;
	end);
end;
local gW = 70;
pcall(function()
	gW = H.FieldOfView;
end);
local function TW()
	if not j.CustomFOV then
		return;
	end;
	local f = math.clamp(tonumber(j.FOVValue) or 90, 40, 120);
	pcall(function()
		if math.abs(H.FieldOfView - f) > .5 then
			H.FieldOfView = f;
		end;
	end);
end;
local uW = false;
local function nW()
	if not x then
		return;
	end;
	if not j.ScreenStretch then
		return;
	end;
	if uW then
		return;
	end;
	if not H or not H.Parent then
		return;
	end;
	local f = math.clamp(tonumber(j.StretchAmount) or .53, .3, 1);
	if f >= .995 then
		return;
	end;
	pcall(function()
		local g = H.CFrame;
		if g then
			H.CFrame = g * CFrame.new(0, 0, 0, 1, 0, 0, 0, f, 0, 0, 0, 1);
		end;
	end);
end;
local function wW(f)
	local g = F.Character;
	if not g then
		return;
	end;
	local T = g:FindFirstChild("HumanoidRootPart");
	if not T or not f then
		return;
	end;
	pcall(function()
		local g = T.Position;
		T.CFrame = CFrame.new(g, Vector3.new(f.X, g.Y, f.Z));
	end);
end;
local function vW(f)
	if not f then
		return nil;
	end;
	local g, T = pcall(function()
			return f.Character;
		end);
	return g and T or nil;
end;
local function MW(f)
	local g = vW(f);
	if not g then
		return false;
	end;
	local T = g:FindFirstChildOfClass("Humanoid");
	return T ~= nil and T.Health > 0;
end;
local function LW(f)
	if not f or f == F then
		return false;
	end;
	if not j.TeamCheck then
		return true;
	end;
	local g, T = F.Team, f.Team;
	if g and T then
		return g ~= T;
	end;
	return true;
end;
local YW = {
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
local function HW(f, g)
	for T = 1, #g, 1 do
		if string.find(f, g[T], 1, true) then
			return true;
		end;
	end;
	return false;
end;
local function FW(f)
	if not f or not f:IsA("BasePart") then
		return true;
	end;
	local g = string.lower(f.Name or "");
	local T = string.lower(f:GetFullName() or "");
	local u = string.lower(tostring(f.Material));
	if string.find(g, "glass", 1, true) or string.find(u, "glass", 1, true) then
		return true;
	end;
	if f.Transparency >= .7 then
		return true;
	end;
	if string.find(g, "door", 1, true) or string.find(T, "door", 1, true) then
		if string.find(g, "wood", 1, true) or string.find(T, "wood", 1, true) then
			return false;
		end;
		return true;
	end;
	if string.find(g, "window", 1, true) then
		return true;
	end;
	if f.CanCollide == false and f.Transparency >= .25 then
		return true;
	end;
	if HW(g, YW) or HW(T, YW) then
		return false;
	end;
	return false;
end;
local function NW(f)
	if not j.WallCheck then
		return true;
	end;
	local g = vW(f);
	local T = g and g:FindFirstChild("Head");
	if not T then
		return false;
	end;
	local u = vW(F);
	local n = H.CFrame.Position + H.CFrame.LookVector * .8;
	local w = T.Position;
	local v = w - n;
	local M = v.Magnitude;
	if M < 1.5 then
		return true;
	end;
	local L = { H };
	if u then
		table.insert(L, u);
	end;
	if g then
		table.insert(L, g);
	end;
	local Y = RaycastParams.new();
	Y.FilterType = Enum.RaycastFilterType.Exclude;
	Y.FilterDescendantsInstances = L;
	Y.IgnoreWater = true;
	local N, D, W = 0, n, v.Unit;
	for f = 1, 12, 1 do
		local T = M - N;
		if T <= .15 then
			return true;
		end;
		local u = workspace:Raycast(D, W * T, Y);
		if not u then
			return true;
		end;
		if u.Instance and (g and u.Instance:IsDescendantOf(g)) then
			return true;
		end;
		if FW(u.Instance) then
			table.insert(L, u.Instance);
			Y.FilterDescendantsInstances = L;
			local f = ((u.Position - D)).Magnitude;
			D = u.Position + W * .15;
			N = (N + f) + .15;
		else
			return false;
		end;
	end;
	return false;
end;
local function DW(f, g)
	if not j.Prediction or not f then
		return f.Position;
	end;
	local T = g and ((g:FindFirstChild("HumanoidRootPart") or g:FindFirstChild("Torso")));
	local u = Vector3.zero;
	if T then
		pcall(function()
			u = T.AssemblyLinearVelocity;
		end);
	end;
	return f.Position + u * ((tonumber(j.PredictAmount) or .12));
end;
local function WW(f, T)
	local u, n, w = nil, nil, f;
	local v = H.ViewportSize / 2;
	for f, g in ipairs(g:GetPlayers()) do
		if g ~= F and (LW(g) and MW(g)) then
			local f = vW(g);
			local M = f and f:FindFirstChild("Head");
			if M then
				local L = DW(M, f);
				local Y, F = H:WorldToViewportPoint(L);
				if F and Y.Z > 0 then
					local f = ((Vector2.new(Y.X, Y.Y) - v)).Magnitude;
					if f < w and (((not T) or NW(g))) then
						w = f;
						u = g;
						n = L;
					end;
				end;
			end;
		end;
	end;
	return u, n;
end;
local VW = {};
local function pW(f)
	return f and ((f:FindFirstChild("UpperTorso") or f:FindFirstChild("Torso")));
end;
local function UW(f)
	if not f then
		return;
	end;
	local g = VW[f];
	if g then
		pcall(function()
			f.Size = g;
		end);
		VW[f] = nil;
	end;
end;
local function zW()
	for f, g in pairs(VW) do
		UW(f);
	end;
	VW = {};
end;
local function tW(f, g)
	if not f or not f:IsA("BasePart") then
		return;
	end;
	if VW[f] == nil then
		VW[f] = f.Size;
	end;
	local T = math.clamp(tonumber(g) or 3, 1.2, 12);
	pcall(function()
		f.Size = Vector3.new(T, T, T);
		f.Massless = true;
		f.CanCollide = false;
	end);
end;
local function aW()
	if not j.Hitbox then
		zW();
		return;
	end;
	local f = j.HitboxPart;
	local T = tonumber(j.HitboxSize) or 3;
	for g, u in ipairs(g:GetPlayers()) do
		if u ~= F and (LW(u) and MW(u)) then
			local g = vW(u);
			if g then
				local u = g:FindFirstChild("Head");
				local n = pW(g);
				if f == "Head" then
					if u then
						tW(u, T);
					end;
					if n then
						UW(n);
					end;
				else
					if n then
						tW(n, T);
					end;
					if u then
						UW(u);
					end;
				end;
			end;
		end;
	end;
end;
local BW = 0;
local function JW()
	local f = vW(F);
	if not f then
		return nil;
	end;
	return f:FindFirstChildOfClass("Tool");
end;
local function eW()
	local f = JW();
	if f then
		pcall(function()
			f:Activate();
		end);
		task.defer(function()
			pcall(function()
				if f and f.Parent then
					f:Activate();
				end;
			end);
		end);
	end;
	pcall(function()
		local f = H.ViewportSize;
		local g, T = f.X / 2, f.Y / 2;
		Y:SendMouseButtonEvent(g, T, 0, true, game, 1);
		task.wait(.02);
		Y:SendMouseButtonEvent(g, T, 0, false, game, 1);
	end);
end;
local function dW()
	if not j.Triggerbot then
		return;
	end;
	if not JW() then
		return;
	end;
	local f = tonumber(j.TriggerDelay) or .06;
	if tick() - BW < f then
		return;
	end;
	local g = tonumber(j.TriggerFOV) or 55;
	local T = WW(g, j.WallCheck);
	if T then
		BW = tick();
		eW();
	end;
end;
local iW = nil;
local function XW(f)
	local T = vW(F);
	local u = T and T:FindFirstChild("HumanoidRootPart");
	if not u then
		return nil;
	end;
	local n = tonumber(j.KillAuraRange) or 90;
	local w, v = nil, n;
	for g, T in ipairs(g:GetPlayers()) do
		if T ~= F and (T ~= f and (LW(T) and MW(T))) then
			local f = vW(T);
			local g = f and f:FindFirstChild("HumanoidRootPart");
			local n = f and f:FindFirstChild("Head");
			if g and n then
				local f = ((g.Position - u.Position)).Magnitude;
				if f < v then
					v = f;
					w = T;
				end;
			end;
		end;
	end;
	return w;
end;
local function PW(f)
	local g = vW(F);
	local T = g and g:FindFirstChild("HumanoidRootPart");
	local u = vW(f);
	local n = u and u:FindFirstChild("HumanoidRootPart");
	local w = u and u:FindFirstChild("Head");
	if not T or not n or not w then
		return false;
	end;
	local v = tonumber(j.KillAuraBehind) or 3.2;
	local M = n.CFrame.LookVector;
	local L = (n.Position - M * v) + Vector3.new(0, 1.4, 0);
	pcall(function()
		T.CFrame = CFrame.new(L, w.Position);
	end);
	pcall(function()
		H.CFrame = CFrame.new(H.CFrame.Position, w.Position);
	end);
	return true;
end;
local function KW()
	if not j.KillAura then
		iW = nil;
		return;
	end;
	local f = vW(F);
	local g = f and f:FindFirstChildOfClass("Humanoid");
	if not g or g.Health <= 0 then
		iW = nil;
		return;
	end;
	if not iW or not MW(iW) or not LW(iW) then
		iW = XW(iW);
	end;
	if not iW then
		return;
	end;
	if PW(iW) then
		eW();
	else
		iW = nil;
	end;
end;
local OW = nil;
pcall(function()
	OW = (L:WaitForChild("GameEvents", 8)):WaitForChild("DeviceUpdate", 8);
end);
local function jW()
	if not OW then
		pcall(function()
			OW = L.GameEvents.DeviceUpdate;
		end);
	end;
	if not OW then
		return;
	end;
	local f = j.DeviceMode or "Console";
	pcall(function()
		if f == "Console" then
			OW:FireServer();
			pcall(function()
				OW:FireServer("Console");
			end);
		elseif f == "Desktop" then
			OW:FireServer("Desktop");
		else
			OW:FireServer("Mobile");
		end;
	end);
end;
task.spawn(function()
	while true do
		local f = tonumber(j.DeviceSpoofDelay) or 1.5;
		if f < .3 then
			f = .3;
		end;
		task.wait(f);
		if j.DeviceSpoof then
			pcall(jW);
		end;
	end;
end);
P(.78, "Building ESP...");
local rW = {};
local function xW(f)
	if not E or not l then
		return nil;
	end;
	local g, T = pcall(function()
			return l.new(f);
		end);
	if g and T then
		return T;
	end;
	return nil;
end;
local function sW(f)
	if not f then
		return;
	end;
	pcall(function()
		if f.Remove then
			f:Remove();
		elseif f.Destroy then
			f:Destroy();
		else
			f.Visible = false;
		end;
	end);
end;
local function AW(f)
	local g = rW[f];
	if not g then
		return;
	end;
	for f, g in pairs(g) do
		if type(g) == "table" then
			for f, g in pairs(g) do
				sW(g);
			end;
		else
			sW(g);
		end;
	end;
	rW[f] = nil;
end;
local function EW()
	for f in pairs(rW) do
		AW(f);
	end;
	rW = {};
end;
local function lW(f)
	if rW[f] then
		return rW[f];
	end;
	if not E then
		return nil;
	end;
	local g = xW("Square");
	if not g then
		return nil;
	end;
	pcall(function()
		g.Thickness = 1.5;
		g.Filled = false;
		g.Visible = false;
	end);
	local T = {};
	for f = 1, 8, 1 do
		local g = xW("Line");
		if g then
			pcall(function()
				g.Thickness = 1.5;
				g.Visible = false;
			end);
			T[f] = g;
		end;
	end;
	local u = xW("Text");
	if u then
		pcall(function()
			u.Size = 14;
			u.Center = true;
			u.Outline = true;
			u.Font = 2;
			u.Visible = false;
		end);
	end;
	local n = xW("Text");
	if n then
		pcall(function()
			n.Size = 12;
			n.Center = true;
			n.Outline = true;
			n.Font = 2;
			n.Visible = false;
		end);
	end;
	local w = xW("Square");
	if w then
		pcall(function()
			w.Filled = false;
			w.Visible = false;
		end);
	end;
	local v = xW("Square");
	if v then
		pcall(function()
			v.Filled = true;
			v.Visible = false;
		end);
	end;
	local M = xW("Circle");
	if M then
		pcall(function()
			M.NumSides = 16;
			M.Filled = true;
			M.Visible = false;
		end);
	end;
	rW[f] = {
			Box = g,
			Lines = T,
			Name = u,
			Dist = n,
			HB = w,
			HF = v,
			Dot = M,
		};
	return rW[f];
end;
local function kW(f)
	if not f then
		return;
	end;
	pcall(function()
		if f.Box then
			f.Box.Visible = false;
		end;
		if f.Name then
			f.Name.Visible = false;
		end;
		if f.Dist then
			f.Dist.Visible = false;
		end;
		if f.HB then
			f.HB.Visible = false;
		end;
		if f.HF then
			f.HF.Visible = false;
		end;
		if f.Dot then
			f.Dot.Visible = false;
		end;
		if f.Lines then
			for g = 1, #f.Lines, 1 do
				if f.Lines[g] then
					f.Lines[g].Visible = false;
				end;
			end;
		end;
	end);
end;
local GW = 0;
local function IW()
	if not j.ESP then
		EW();
		return;
	end;
	if not E then
		return;
	end;
	GW = GW + 1;
	if GW % 3 ~= 0 then
		return;
	end;
	local f = h();
	local T = vW(F) and (vW(F)):FindFirstChild("HumanoidRootPart");
	local u = {};
	for g, n in ipairs(g:GetPlayers()) do
		if n ~= F and (LW(n) and MW(n)) then
			u[n] = true;
			local g = vW(n);
			local w = g and ((g:FindFirstChild("HumanoidRootPart") or g:FindFirstChild("Torso")));
			local v = g and g:FindFirstChild("Head");
			local M = g and g:FindFirstChildOfClass("Humanoid");
			if not w or not v then
				AW(n);
			else
				local g = lW(n);
				if g and g.Box then
					local u, L, Y = pcall(function()
							local f, g = H:WorldToViewportPoint(w.Position);
							return f, g;
						end);
					if not u or not Y or not L or L.Z < 0 then
						kW(g);
					else
						local u = H:WorldToViewportPoint(v.Position + Vector3.new(0, 1.1, 0));
						local Y = H:WorldToViewportPoint(w.Position - Vector3.new(0, 2.8, 0));
						local F = math.max(math.abs(Y.Y - u.Y), 8);
						local N = math.clamp(F / 1.85, 8, 120);
						local D = Vector2.new(N, F);
						local W = Vector2.new(L.X - N / 2, u.Y);
						local V = math.clamp(N * .25, 4, 12);
						local p = j.BoxStyle or "Corner";
						pcall(function()
							if j.ShowBoxes and ((p == "Full" or p == "Both")) then
								g.Box.Size = D;
								g.Box.Position = W;
								g.Box.Color = f;
								g.Box.Visible = true;
							else
								g.Box.Visible = false;
							end;
						end);
						pcall(function()
							if j.ShowBoxes and (((p == "Corner" or p == "Both")) and (g.Lines and g.Lines[1])) then
								local T = g.Lines;
								T[1].From, T[1].To = W, Vector2.new(W.X, W.Y + V);
								T[2].From, T[2].To = W, Vector2.new(W.X + V, W.Y);
								T[3].From, T[3].To = Vector2.new(W.X + D.X, W.Y), Vector2.new(W.X + D.X, W.Y + V);
								T[4].From, T[4].To = Vector2.new(W.X + D.X, W.Y), Vector2.new((W.X + D.X) - V, W.Y);
								T[5].From, T[5].To = Vector2.new(W.X, W.Y + D.Y), Vector2.new(W.X, (W.Y + D.Y) - V);
								T[6].From, T[6].To = Vector2.new(W.X, W.Y + D.Y), Vector2.new(W.X + V, W.Y + D.Y);
								T[7].From, T[7].To = Vector2.new(W.X + D.X, W.Y + D.Y), Vector2.new(W.X + D.X, (W.Y + D.Y) - V);
								T[8].From, T[8].To = Vector2.new(W.X + D.X, W.Y + D.Y), Vector2.new((W.X + D.X) - V, W.Y + D.Y);
								for g = 1, 8, 1 do
									if T[g] then
										T[g].Color = f;
										T[g].Visible = true;
									end;
								end;
							elseif g.Lines then
								for f = 1, #g.Lines, 1 do
									if g.Lines[f] then
										g.Lines[f].Visible = false;
									end;
								end;
							end;
						end);
						pcall(function()
							if j.ShowNames and g.Name then
								g.Name.Text = n.DisplayName;
								g.Name.Position = Vector2.new(L.X, W.Y - 14);
								g.Name.Color = f;
								g.Name.Visible = true;
							elseif g.Name then
								g.Name.Visible = false;
							end;
						end);
						pcall(function()
							if j.ShowDistance and (g.Dist and T) then
								g.Dist.Text = math.floor(((w.Position - T.Position)).Magnitude) .. "m";
								g.Dist.Position = Vector2.new(L.X, (W.Y + D.Y) + 2);
								g.Dist.Visible = true;
							elseif g.Dist then
								g.Dist.Visible = false;
							end;
						end);
						pcall(function()
							if j.ShowHealth and (M and (g.HB and g.HF)) then
								local f = math.clamp(M.Health / math.max(M.MaxHealth, 1), 0, 1);
								g.HB.Size = Vector2.new(3, D.Y);
								g.HB.Position = Vector2.new(W.X - 6, W.Y);
								g.HB.Visible = true;
								local T = D.Y * f;
								g.HF.Size = Vector2.new(2, T);
								g.HF.Position = Vector2.new(W.X - 5.5, (W.Y + D.Y) - T);
								g.HF.Color = Color3.fromRGB(255 * ((1 - f)), 255 * f, 0);
								g.HF.Visible = true;
							else
								if g.HB then
									g.HB.Visible = false;
								end;
								if g.HF then
									g.HF.Visible = false;
								end;
							end;
						end);
						pcall(function()
							if j.ShowHeadDot and g.Dot then
								local T, u = H:WorldToViewportPoint(v.Position);
								if u then
									g.Dot.Position = Vector2.new(T.X, T.Y);
									g.Dot.Radius = math.clamp(N * .18, 3, 9);
									g.Dot.Color = f;
									g.Dot.Visible = true;
								else
									g.Dot.Visible = false;
								end;
							elseif g.Dot then
								g.Dot.Visible = false;
							end;
						end);
					end;
				end;
			end;
		end;
	end;
	for f in pairs(rW) do
		if not u[f] then
			AW(f);
		end;
	end;
end;
g.PlayerRemoving:Connect(function(f)
	AW(f);
	if iW == f then
		iW = nil;
	end;
	local g = vW(f);
	if g then
		UW(g:FindFirstChild("Head"));
		UW(pW(g));
	end;
end);
local function cW(f)
	f.CharacterRemoving:Connect(function()
		AW(f);
	end);
	f.CharacterAdded:Connect(function()
		task.wait(.3);
		AW(f);
	end);
end;
g.PlayerAdded:Connect(cW);
for f, g in ipairs(g:GetPlayers()) do
	cW(g);
end;
local yW = false;
local function bW(f)
	if f == yW then
		return;
	end;
	yW = f;
	pcall(function()
		if f then
			n.GlobalShadows = false;
			n.FogEnd = 9000000000;
			(settings()).Rendering.QualityLevel = Enum.QualityLevel.Level01;
			for f, T in ipairs(workspace:GetDescendants()) do
				if T:IsA("BasePart") then
					local f = false;
					for g, u in ipairs(g:GetPlayers()) do
						if u.Character and T:IsDescendantOf(u.Character) then
							f = true;
							break;
						end;
					end;
					if not f then
						T.Material = Enum.Material.SmoothPlastic;
						T.CastShadow = false;
					end;
				elseif T:IsA("ParticleEmitter") or T:IsA("Trail") or T:IsA("Beam") then
					T.Enabled = false;
				end;
			end;
		else
			n.GlobalShadows = true;
			(settings()).Rendering.QualityLevel = Enum.QualityLevel.Automatic;
		end;
	end);
end;
local SW = "\226\156\147";
pcall(function()
	if utf8 and utf8.char then
		SW = utf8.char(57344);
	end;
end);
P(.9, "Building UI...");
local mW = Instance.new("ScreenGui");
mW.Name = "MoonHubUI";
mW.ResetOnSpawn = false;
mW.IgnoreGuiInset = true;
mW.DisplayOrder = 999;
mW.Parent = N;
local hW = Instance.new("TextButton");
hW.Size = UDim2.new(0, 56, 0, 56);
hW.Position = UDim2.new(.5, -28, .85, -28);
hW.BackgroundColor3 = Color3.fromRGB(20, 20, 30);
hW.BackgroundTransparency = .05;
hW.Text = "\226\152\176";
hW.TextColor3 = Color3.fromRGB(220, 220, 240);
hW.TextSize = 32;
hW.Font = Enum.Font.GothamBold;
hW.Parent = mW;
(Instance.new("UICorner", hW)).CornerRadius = UDim.new(0, 14);
hW.ZIndex = 100;
hW.ClipsDescendants = true;
hW.Visible = m;
local qW = Instance.new("ImageLabel");
qW.Size = UDim2.new(1.8, 0, 1.8, 0);
qW.Position = UDim2.new(.5, -22.4, .5, -22.4);
qW.BackgroundTransparency = 1;
qW.Image = "rbxassetid://5378395687";
qW.ImageColor3 = Color3.fromRGB(138, 99, 255);
qW.ImageTransparency = .5;
qW.ZIndex = 99;
qW.Parent = hW;
local ZW = Instance.new("ImageLabel");
ZW.Size = UDim2.new(.8, 0, .8, 0);
ZW.Position = UDim2.new(.5, -17.92, .5, -17.92);
ZW.BackgroundTransparency = 1;
ZW.Image = "rbxassetid://5378395687";
ZW.ImageColor3 = Color3.fromRGB(200, 180, 255);
ZW.ImageTransparency = .6;
ZW.ZIndex = 100;
ZW.Parent = hW;
local QW = Instance.new("TextLabel");
QW.Size = UDim2.new(0, 100, 0, 20);
QW.Position = UDim2.new(.5, -50, 1, 4);
QW.BackgroundTransparency = 1;
QW.Text = "MENU";
QW.TextColor3 = Color3.fromRGB(180, 180, 200);
QW.TextSize = 11;
QW.Font = Enum.Font.Gotham;
QW.Parent = hW;
QW.Visible = m;
local oW = false;
local CW, RW;
hW.InputBegan:Connect(function(f)
	if f.UserInputType == Enum.UserInputType.Touch or f.UserInputType == Enum.UserInputType.MouseButton1 then
		oW = true;
		CW = f.Position;
		RW = hW.Position;
	end;
end);
hW.InputEnded:Connect(function(f)
	if f.UserInputType == Enum.UserInputType.Touch or f.UserInputType == Enum.UserInputType.MouseButton1 then
		oW = false;
	end;
end);
T.InputChanged:Connect(function(f)
	if oW and ((f.UserInputType == Enum.UserInputType.Touch or f.UserInputType == Enum.UserInputType.MouseMovement)) then
		local g = f.Position - CW;
		hW.Position = UDim2.new(RW.X.Scale, RW.X.Offset + g.X, RW.Y.Scale, RW.Y.Offset + g.Y);
	end;
end);
local f4 = Instance.new("Frame");
f4.Size = UDim2.new(0, 0, 0, 0);
f4.Position = UDim2.new(.5, 0, .5, 0);
f4.BackgroundColor3 = G;
f4.BackgroundTransparency = .2;
f4.BorderSizePixel = 0;
f4.Visible = false;
f4.ClipsDescendants = true;
f4.Parent = mW;
(Instance.new("UICorner", f4)).CornerRadius = UDim.new(0, 12);
local g4 = Instance.new("ImageLabel");
g4.Size = UDim2.new(1, 40, 1, 40);
g4.Position = UDim2.new(.5, -20, .5, -20);
g4.BackgroundTransparency = 1;
g4.Image = "rbxassetid://5378395687";
g4.ImageColor3 = Color3.fromRGB(138, 99, 255);
g4.ImageTransparency = .7;
g4.ZIndex = 0;
g4.Parent = f4;
local T4 = Instance.new("Frame");
T4.Size = UDim2.new(1, 0, 0, 40);
T4.BackgroundColor3 = I;
T4.BackgroundTransparency = .3;
T4.BorderSizePixel = 0;
T4.Parent = f4;
(Instance.new("UICorner", T4)).CornerRadius = UDim.new(0, 12);
local u4 = Instance.new("TextLabel");
u4.Size = UDim2.new(1, -40, 1, 0);
u4.Position = UDim2.new(0, 12, 0, 0);
u4.BackgroundTransparency = 1;
u4.Text = "MOON HUB  |  jailbird";
u4.TextColor3 = y;
u4.TextSize = 14;
u4.Font = S;
u4.TextXAlignment = Enum.TextXAlignment.Left;
u4.Parent = T4;
local n4 = Instance.new("TextButton");
n4.Size = UDim2.new(0, 28, 0, 28);
n4.Position = UDim2.new(1, -34, .5, -14);
n4.BackgroundColor3 = Color3.fromRGB(40, 30, 50);
n4.Text = "X";
n4.TextColor3 = b;
n4.TextSize = 14;
n4.Font = S;
n4.Parent = T4;
(Instance.new("UICorner", n4)).CornerRadius = UDim.new(0, 6);
n4.ClipsDescendants = true;
local w4 = Instance.new("ScrollingFrame");
w4.Size = UDim2.new(0, 100, 1, -60);
w4.Position = UDim2.new(0, 8, 0, 46);
w4.BackgroundColor3 = I;
w4.BackgroundTransparency = .4;
w4.BorderSizePixel = 0;
w4.ScrollBarThickness = 2;
w4.AutomaticCanvasSize = Enum.AutomaticSize.Y;
w4.CanvasSize = UDim2.new(0, 0, 0, 0);
w4.Parent = f4;
(Instance.new("UICorner", w4)).CornerRadius = UDim.new(0, 8);
local v4 = Instance.new("UIListLayout");
v4.Padding = UDim.new(0, 4);
v4.Parent = w4;
local M4 = Instance.new("UIPadding");
M4.PaddingTop = UDim.new(0, 6);
M4.PaddingLeft = UDim.new(0, 6);
M4.PaddingRight = UDim.new(0, 6);
M4.Parent = w4;
local L4 = Instance.new("Frame");
L4.Size = UDim2.new(1, -120, 1, -70);
L4.Position = UDim2.new(0, 114, 0, 48);
L4.BackgroundTransparency = 1;
L4.Parent = f4;
local Y4, H4 = {}, {};
local function F4(f)
	for g, T in pairs(Y4) do
		T.Visible = (g == f);
	end;
	for g, T in pairs(H4) do
		T.BackgroundColor3 = (g == f) and Color3.fromRGB(40, 35, 60) or Color3.fromRGB(22, 22, 30);
		T.TextColor3 = (g == f) and k or b;
	end;
	q();
end;
local function N4(f)
	local g = Instance.new("ScrollingFrame");
	g.Size = UDim2.new(1, 0, 1, 0);
	g.BackgroundTransparency = 1;
	g.BorderSizePixel = 0;
	g.ScrollBarThickness = 3;
	g.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	g.CanvasSize = UDim2.new(0, 0, 0, 0);
	g.Visible = false;
	g.Parent = L4;
	local T = Instance.new("UIListLayout");
	T.Padding = UDim.new(0, 5);
	T.SortOrder = Enum.SortOrder.LayoutOrder;
	T.Parent = g;
	local u = Instance.new("UIPadding");
	u.PaddingBottom = UDim.new(0, 10);
	u.Parent = g;
	g:SetAttribute("O", 0);
	Y4[f] = g;
	local n = Instance.new("TextButton");
	n.Size = UDim2.new(1, 0, 0, 28);
	n.BackgroundColor3 = Color3.fromRGB(22, 22, 30);
	n.Text = f;
	n.TextColor3 = b;
	n.TextSize = 12;
	n.Font = S;
	n.Parent = w4;
	(Instance.new("UICorner", n)).CornerRadius = UDim.new(0, 6);
	n.MouseButton1Click:Connect(function()
		F4(f);
	end);
	H4[f] = n;
	return g;
end;
local function D4(f)
	local g = ((f:GetAttribute("O") or 0)) + 1;
	f:SetAttribute("O", g);
	return g;
end;
local function W4(f, g)
	local T = Instance.new("TextLabel");
	T.LayoutOrder = D4(f);
	T.Size = UDim2.new(1, 0, 0, 16);
	T.BackgroundTransparency = 1;
	T.Text = string.upper(g);
	T.TextColor3 = k;
	T.TextSize = 11;
	T.Font = S;
	T.TextXAlignment = Enum.TextXAlignment.Left;
	T.Parent = f;
end;
local function V4(f, g, T)
	local u = Instance.new("Frame");
	u.LayoutOrder = D4(f);
	u.Size = UDim2.new(1, 0, 0, 32);
	u.BackgroundColor3 = c;
	u.BackgroundTransparency = .2;
	u.BorderSizePixel = 0;
	u.Parent = f;
	(Instance.new("UICorner", u)).CornerRadius = UDim.new(0, 8);
	local n = Instance.new("TextLabel");
	n.Size = UDim2.new(1, -55, 1, 0);
	n.Position = UDim2.new(0, 10, 0, 0);
	n.BackgroundTransparency = 1;
	n.Text = g;
	n.TextColor3 = y;
	n.TextSize = 12;
	n.Font = S;
	n.TextXAlignment = Enum.TextXAlignment.Left;
	n.Parent = u;
	local w = Instance.new("TextButton");
	w.Size = UDim2.new(0, 40, 0, 18);
	w.Position = UDim2.new(1, -48, .5, -9);
	w.BackgroundColor3 = j[T] and k or Color3.fromRGB(45, 45, 58);
	w.Text = "";
	w.Parent = u;
	(Instance.new("UICorner", w)).CornerRadius = UDim.new(1, 0);
	local v = Instance.new("Frame");
	v.Size = UDim2.new(0, 14, 0, 14);
	v.Position = j[T] and UDim2.new(1, -16, .5, -7) or UDim2.new(0, 2, .5, -7);
	v.BackgroundColor3 = Color3.new(1, 1, 1);
	v.BorderSizePixel = 0;
	v.Parent = w;
	(Instance.new("UICorner", v)).CornerRadius = UDim.new(1, 0);
	w.MouseButton1Click:Connect(function()
		j[T] = not j[T];
		local f = j[T];
		local u = f and UDim2.new(1, -16, .5, -7) or UDim2.new(0, 2, .5, -7);
		local n = f and k or Color3.fromRGB(45, 45, 58);
		(M:Create(v, TweenInfo.new(.2, Enum.EasingStyle.Quad), { Position = u })):Play();
		(M:Create(w, TweenInfo.new(.2, Enum.EasingStyle.Quad), { BackgroundColor3 = n })):Play();
		if T == "ESP" then
			EW();
		end;
		if T == "Hitbox" and not f then
			zW();
		end;
		if T == "DeviceSpoof" and f then
			jW();
		end;
		if T == "Potato" then
			bW(f);
		end;
		if T == "CustomFOV" then
			if f then
				TW();
			else
				pcall(function()
					H.FieldOfView = gW;
				end);
			end;
		end;
		if T == "MobileAim" and f then
			j.Aimbot = true;
		end;
		if T == "KillAura" and not f then
			iW = nil;
		end;
		if T == "ScreenStretch" and (f and not x) then
			x = true;
		end;
		s();
		q();
		notify(g .. (" \226\134\146 " .. ((f and "ON" or "OFF"))));
	end);
end;
local function p4(f, g, n, w, v, M)
	local L = Instance.new("Frame");
	L.LayoutOrder = D4(f);
	L.Size = UDim2.new(1, 0, 0, 46);
	L.BackgroundColor3 = c;
	L.BackgroundTransparency = .2;
	L.BorderSizePixel = 0;
	L.Parent = f;
	(Instance.new("UICorner", L)).CornerRadius = UDim.new(0, 8);
	local Y = Instance.new("TextLabel");
	Y.Size = UDim2.new(.65, 0, 0, 16);
	Y.Position = UDim2.new(0, 10, 0, 4);
	Y.BackgroundTransparency = 1;
	Y.Text = g;
	Y.TextColor3 = y;
	Y.TextSize = 11;
	Y.Font = S;
	Y.TextXAlignment = Enum.TextXAlignment.Left;
	Y.Parent = L;
	local H = Instance.new("TextLabel");
	H.Size = UDim2.new(.3, -8, 0, 16);
	H.Position = UDim2.new(.7, 0, 0, 4);
	H.BackgroundTransparency = 1;
	H.Text = tostring(j[n]);
	H.TextColor3 = k;
	H.TextSize = 11;
	H.Font = S;
	H.TextXAlignment = Enum.TextXAlignment.Right;
	H.Parent = L;
	local F = Instance.new("TextButton");
	F.Size = UDim2.new(1, -20, 0, 8);
	F.Position = UDim2.new(0, 10, 0, 26);
	F.BackgroundColor3 = Color3.fromRGB(40, 40, 55);
	F.Text = "";
	F.Parent = L;
	(Instance.new("UICorner", F)).CornerRadius = UDim.new(1, 0);
	local N = Instance.new("Frame");
	local D = math.clamp(((j[n] - w)) / ((v - w)), 0, 1);
	N.Size = UDim2.new(D, 0, 1, 0);
	N.BackgroundColor3 = k;
	N.BorderSizePixel = 0;
	N.Parent = F;
	(Instance.new("UICorner", N)).CornerRadius = UDim.new(1, 0);
	local function W(f)
		local g = F.AbsolutePosition and F.AbsolutePosition.X;
		local T = F.AbsoluteSize and F.AbsoluteSize.X;
		if not g or T <= 0 then
			for f = 1, 5, 1 do
				u.Heartbeat:Wait();
				g = F.AbsolutePosition and F.AbsolutePosition.X;
				T = F.AbsoluteSize and F.AbsoluteSize.X;
				if g and T > 0 then
					break;
				end;
			end;
			if not g or T <= 0 then
				return;
			end;
		end;
		local L = math.clamp(((f - g)) / T, 0, 1);
		local Y = w + L * ((v - w));
		Y = math.floor(Y / M + .5) * M;
		Y = math.clamp(Y, w, v);
		j[n] = Y;
		N.Size = UDim2.new(((Y - w)) / ((v - w)), 0, 1, 0);
		H.Text = tostring(Y);
		if n == "CursorSize" then
			C.Size = UDim2.new(0, Y, 0, Y);
		end;
		if n == "FOVValue" and j.CustomFOV then
			TW();
		end;
		s();
	end;
	F.MouseButton1Down:Connect(function()
		local f, g;
		f = T.InputChanged:Connect(function(f)
				if f.UserInputType == Enum.UserInputType.MouseMovement or f.UserInputType == Enum.UserInputType.Touch then
					W(f.Position.X);
				end;
			end);
		g = T.InputEnded:Connect(function(T)
				if T.UserInputType == Enum.UserInputType.MouseButton1 or T.UserInputType == Enum.UserInputType.Touch then
					if f then
						f:Disconnect();
					end;
					if g then
						g:Disconnect();
					end;
				end;
			end);
		W((T:GetMouseLocation()).X);
	end);
end;
local function U4(f, g, T, u)
	local n = Instance.new("Frame");
	n.LayoutOrder = D4(f);
	n.Size = UDim2.new(1, 0, 0, 32);
	n.BackgroundColor3 = c;
	n.BackgroundTransparency = .2;
	n.BorderSizePixel = 0;
	n.Parent = f;
	(Instance.new("UICorner", n)).CornerRadius = UDim.new(0, 8);
	local w = Instance.new("TextLabel");
	w.Size = UDim2.new(.4, 0, 1, 0);
	w.Position = UDim2.new(0, 10, 0, 0);
	w.BackgroundTransparency = 1;
	w.Text = g;
	w.TextColor3 = y;
	w.TextSize = 12;
	w.Font = S;
	w.TextXAlignment = Enum.TextXAlignment.Left;
	w.Parent = n;
	local v = 1;
	for f, g in ipairs(u) do
		if g == j[T] then
			v = f;
		end;
	end;
	local M = Instance.new("TextButton");
	M.Size = UDim2.new(.55, -12, 0, 22);
	M.Position = UDim2.new(.45, 0, .5, -11);
	M.BackgroundColor3 = Color3.fromRGB(35, 32, 48);
	M.Text = tostring(j[T]);
	M.TextColor3 = k;
	M.TextSize = 11;
	M.Font = S;
	M.Parent = n;
	(Instance.new("UICorner", M)).CornerRadius = UDim.new(0, 6);
	M.MouseButton1Click:Connect(function()
		v = v % #u + 1;
		j[T] = u[v];
		M.Text = u[v];
		if T == "CursorName" then
			fW(j.CursorName);
		end;
		if T == "DeviceMode" and j.DeviceSpoof then
			jW();
		end;
		if T == "HitboxPart" then
			zW();
		end;
		s();
		q();
		notify(g .. (" \226\134\146 " .. j[T]));
	end);
end;
local function z4(f, g, T, u)
	local n = Instance.new("Frame");
	n.LayoutOrder = D4(f);
	n.Size = UDim2.new(1, 0, 0, 52);
	n.BackgroundColor3 = c;
	n.BackgroundTransparency = .2;
	n.BorderSizePixel = 0;
	n.Parent = f;
	(Instance.new("UICorner", n)).CornerRadius = UDim.new(0, 8);
	local w = Instance.new("TextLabel");
	w.Size = UDim2.new(1, -16, 0, 14);
	w.Position = UDim2.new(0, 10, 0, 4);
	w.BackgroundTransparency = 1;
	w.Text = g;
	w.TextColor3 = b;
	w.TextSize = 11;
	w.Font = S;
	w.TextXAlignment = Enum.TextXAlignment.Left;
	w.Parent = n;
	local v = Instance.new("TextBox");
	v.Size = UDim2.new(1, -20, 0, 22);
	v.Position = UDim2.new(0, 10, 0, 22);
	v.BackgroundColor3 = Color3.fromRGB(14, 14, 20);
	v.BorderSizePixel = 0;
	v.Text = tostring(j[T] or u or "");
	v.PlaceholderText = u or "";
	v.TextColor3 = y;
	v.TextSize = 12;
	v.Font = S;
	v.ClearTextOnFocus = false;
	v.Parent = n;
	(Instance.new("UICorner", v)).CornerRadius = UDim.new(0, 6);
	v.FocusLost:Connect(function()
		local f = v.Text;
		if not f or f == "" then
			f = u or "default";
			v.Text = f;
		end;
		j[T] = f;
		s();
		notify("Set " .. (g .. (" \226\134\146 " .. f)));
	end);
end;
local function t4(f, g, T)
	local u = Instance.new("TextButton");
	u.LayoutOrder = D4(f);
	u.Size = UDim2.new(1, 0, 0, 30);
	u.BackgroundColor3 = Color3.fromRGB(35, 30, 55);
	u.Text = g;
	u.TextColor3 = k;
	u.TextSize = 12;
	u.Font = S;
	u.Parent = f;
	(Instance.new("UICorner", u)).CornerRadius = UDim.new(0, 8);
	u.MouseEnter:Connect(function()
		(M:Create(u, TweenInfo.new(.15, Enum.EasingStyle.Quad), { BackgroundColor3 = Color3.fromRGB(50, 45, 75) })):Play();
	end);
	u.MouseLeave:Connect(function()
		(M:Create(u, TweenInfo.new(.15, Enum.EasingStyle.Quad), { BackgroundColor3 = Color3.fromRGB(35, 30, 55) })):Play();
	end);
	u.MouseButton1Click:Connect(function()
		local f = M:Create(u, TweenInfo.new(.1, Enum.EasingStyle.Quad), { BackgroundColor3 = Color3.fromRGB(255, 255, 255) });
		f:Play();
		f.Completed:Connect(function()
			(M:Create(u, TweenInfo.new(.15, Enum.EasingStyle.Quad), { BackgroundColor3 = Color3.fromRGB(35, 30, 55) })):Play();
		end);
		T();
		q();
	end);
end;
local a4 = {};
local B4 = false;
local function J4(f, g)
	g = g or 2;
	table.insert(a4, { text = f, duration = g });
	if not B4 then
		B4 = true;
		spawn(function()
			while #a4 > 0 do
				local f = table.remove(a4, 1);
				local g = Instance.new("Frame");
				g.Size = UDim2.new(0, 200, 0, 32);
				g.Position = UDim2.new(1, -220, 0, 20);
				g.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
				g.BackgroundTransparency = .3;
				g.Parent = mW;
				(Instance.new("UICorner", g)).CornerRadius = UDim.new(0, 8);
				local T = Instance.new("TextLabel");
				T.Size = UDim2.new(1, 0, 1, 0);
				T.BackgroundTransparency = 1;
				T.Text = f.text;
				T.TextColor3 = Color3.fromRGB(220, 220, 240);
				T.TextSize = 12;
				T.Font = S;
				T.Parent = g;
				(M:Create(g, TweenInfo.new(.3, Enum.EasingStyle.Quad), { Position = UDim2.new(1, -220, 0, 20), BackgroundTransparency = .15 })):Play();
				task.delay(f.duration);
				(M:Create(g, TweenInfo.new(.3, Enum.EasingStyle.Quad), { Position = UDim2.new(1, 0, 0, 20), BackgroundTransparency = 1 })):Play();
				task.delay(.4);
				g:Destroy();
			end;
			B4 = false;
		end);
	end;
end;
local e4 = N4("Combat");
local d4 = N4("Player");
local i4 = N4("Stream");
local X4 = N4("Staff");
local P4 = N4("Mobile");
local K4 = N4("Visuals");
local O4 = N4("Config");
W4(e4, "Aimbot");
V4(e4, "Aimbot", "Aimbot");
U4(e4, "Key", "AimKey", {
	"MB1",
	"MB2",
	"E",
	"Q",
	"F",
});
U4(e4, "Mode", "AimMode", { "Hold", "Toggle", "Always" });
p4(e4, "FOV", "AimFOV", 40, 350, 1);
p4(e4, "Smooth", "AimSmooth", .1, 1, .05);
V4(e4, "Show FOV", "ShowFOV");
V4(e4, "Wall Check", "WallCheck");
V4(e4, "Team Check", "TeamCheck");
V4(e4, "Prediction", "Prediction");
p4(e4, "Predict", "PredictAmount", 0, .35, .01);
W4(e4, "Triggerbot");
V4(e4, "Triggerbot", "Triggerbot");
p4(e4, "Trigger FOV", "TriggerFOV", 15, 150, 1);
p4(e4, "Trigger Delay", "TriggerDelay", .03, .25, .01);
W4(e4, "Kill Aura");
V4(e4, "Kill Aura", "KillAura");
p4(e4, "Range", "KillAuraRange", 20, 200, 5);
p4(e4, "Behind Dist", "KillAuraBehind", 1.5, 8, .1);
W4(e4, "Camera FOV");
V4(e4, "Custom FOV", "CustomFOV");
p4(e4, "FOV Value", "FOVValue", 40, 120, 1);
W4(e4, "Hitbox Expand");
V4(e4, "Hitbox Expand", "Hitbox");
U4(e4, "Part", "HitboxPart", { "Head", "Torso" });
p4(e4, "Size", "HitboxSize", 1.5, 10, .5);
W4(d4, "Move");
V4(d4, "Speed", "Speed");
p4(d4, "Speed Value", "SpeedValue", 16, 80, 1);
V4(d4, "Noclip", "Noclip");
V4(d4, "Anti-Bow", "AntiBow");
W4(d4, "Device Spoof");
V4(d4, "Device Spoof", "DeviceSpoof");
U4(d4, "Mode", "DeviceMode", { "Console", "Desktop", "Mobile" });
p4(d4, "Delay (sec)", "DeviceSpoofDelay", .3, 5, .1);
t4(d4, "Apply Device Now", jW);
W4(d4, "Screen Stretch");
V4(d4, "Screen Stretch", "ScreenStretch");
p4(d4, "Stretch Amount", "StretchAmount", .3, 1, .01);
W4(i4, "Stream");
V4(i4, "Stream Proof", "StreamProof");
z4(i4, "Name", "SpoofName", "Player");
V4(i4, "Verified", "ShowVerified");
W4(X4, "Staff");
V4(X4, "Detect", "StaffDetect");
V4(X4, "Leave", "StaffLeave");
W4(P4, "Mobile Aim");
V4(P4, "Mobile Aim ON", "MobileAim");
p4(P4, "Smooth", "MobileSmooth", .1, 1, .05);
p4(P4, "FOV", "MobileFOV", 40, 350, 1);
V4(P4, "Show FOV", "MobileShowFOV");
W4(K4, "ESP");
V4(K4, "ESP Enabled", "ESP");
V4(K4, "Boxes", "ShowBoxes");
U4(K4, "Box Style", "BoxStyle", { "Corner", "Full", "Both" });
V4(K4, "Names", "ShowNames");
V4(K4, "Distance", "ShowDistance");
V4(K4, "Health", "ShowHealth");
V4(K4, "Head Dot", "ShowHeadDot");
t4(K4, "Force Refresh ESP", EW);
W4(K4, "ESP Color");
V4(K4, "RGB ESP", "RGBESP");
p4(K4, "Red", "ESPColorR", 0, 255, 1);
p4(K4, "Green", "ESPColorG", 0, 255, 1);
p4(K4, "Blue", "ESPColorB", 0, 255, 1);
W4(K4, "Radar");
V4(K4, "Radar", "Radar");
p4(K4, "Radar Size", "RadarSize", 80, 220, 5);
p4(K4, "Radar Range", "RadarRange", 50, 400, 10);
W4(K4, "Cursor");
U4(K4, "Cursor", "CursorName", Q);
p4(K4, "Cursor Size", "CursorSize", 8, 128, 1);
for f, g in ipairs(Z) do
	t4(K4, g.Name, function()
		fW(g.Name);
		s();
	end);
end;
W4(O4, "Config");
z4(O4, "Name", "ConfigName", "default");
t4(O4, "Save", s);
t4(O4, "Load", function()
	A();
end);
V4(O4, "FPS + MS", "ShowPerf");
V4(O4, "Potato", "Potato");
F4("Combat");
local function j4()
	f4.Visible = true;
	f4.Size = UDim2.new(0, 0, 0, 0);
	f4.Position = UDim2.new(.5, 0, .5, 0);
	f4.BackgroundTransparency = .4;
	(M:Create(f4, TweenInfo.new(.4, Enum.EasingStyle.Back, Enum.EasingDirection.Out), { Size = UDim2.new(0, math.min(540, 450), 0, math.min(420, 380)), Position = UDim2.new(.5, -math.min(540, 450) / 2, .5, -math.min(420, 380) / 2), BackgroundTransparency = .15 })):Play();
	if m then
		(M:Create(hW, TweenInfo.new(.3, Enum.EasingStyle.Quad), { BackgroundColor3 = Color3.fromRGB(30, 20, 50) })):Play();
	end;
	q();
end;
local function r4()
	(M:Create(f4, TweenInfo.new(.3, Enum.EasingStyle.Back, Enum.EasingDirection.In), { Size = UDim2.new(0, 0, 0, 0), Position = UDim2.new(.5, 0, .5, 0), BackgroundTransparency = .4 })):Play();
	if m then
		(M:Create(hW, TweenInfo.new(.3, Enum.EasingStyle.Quad), { BackgroundColor3 = Color3.fromRGB(20, 20, 30) })):Play();
	end;
	task.delay(.4, function()
		f4.Visible = false;
		f4.Size = UDim2.new(0, 450, 0, 380);
		f4.Position = UDim2.new(.5, -225, .5, -190);
		f4.BackgroundTransparency = .15;
	end);
end;
if m then
	hW.MouseButton1Click:Connect(function()
		if f4.Visible then
			r4();
		else
			j4();
		end;
	end);
end;
n4.MouseButton1Click:Connect(r4);
T.InputBegan:Connect(function(f)
	if f.KeyCode == Enum.KeyCode.RightControl or f.KeyCode == Enum.KeyCode.LeftControl then
		if f4.Visible then
			r4();
		else
			j4();
		end;
	end;
end);
local x4, s4, A4;
T4.InputBegan:Connect(function(f)
	if f.UserInputType == Enum.UserInputType.MouseButton1 or f.UserInputType == Enum.UserInputType.Touch then
		x4 = true;
		s4 = f.Position;
		A4 = f4.Position;
	end;
end);
T4.InputEnded:Connect(function(f)
	if f.UserInputType == Enum.UserInputType.MouseButton1 or f.UserInputType == Enum.UserInputType.Touch then
		x4 = false;
	end;
end);
T.InputChanged:Connect(function(f)
	if x4 and ((f.UserInputType == Enum.UserInputType.MouseMovement or f.UserInputType == Enum.UserInputType.Touch)) then
		local g = f.Position - s4;
		f4.Position = UDim2.new(A4.X.Scale, A4.X.Offset + g.X, A4.Y.Scale, A4.Y.Offset + g.Y);
	end;
end);
local E4 = {
		MB1 = Enum.UserInputType.MouseButton1,
		MB2 = Enum.UserInputType.MouseButton2,
		E = Enum.KeyCode.E,
		Q = Enum.KeyCode.Q,
		F = Enum.KeyCode.F,
	};
local l4 = false;
local k4;
local function G4(f)
	local g = E4[j.AimKey] or Enum.UserInputType.MouseButton2;
	local T = tostring(g);
	if string.find(T, "MouseButton", 1, true) then
		return f.UserInputType == g;
	end;
	if string.find(T, "KeyCode", 1, true) then
		return f.KeyCode == g;
	end;
	return false;
end;
T.InputBegan:Connect(function(f, g)
	if not j.Aimbot or j.MobileAim then
		return;
	end;
	if not G4(f) then
		return;
	end;
	if j.AimMode == "Hold" then
		l4 = true;
	elseif j.AimMode == "Toggle" then
		l4 = not l4;
	end;
end);
T.InputEnded:Connect(function(f)
	if j.AimMode == "Hold" and G4(f) then
		l4 = false;
	end;
end);
local function I4(f)
	if k4 then
		k4:Disconnect();
		k4 = nil;
	end;
	if not f then
		local f = vW(F);
		if f then
			for f, g in ipairs(f:GetDescendants()) do
				if g:IsA("BasePart") then
					g.CanCollide = true;
				end;
			end;
		end;
		return;
	end;
	k4 = u.Stepped:Connect(function()
			local f = vW(F);
			if not f then
				return;
			end;
			for f, g in ipairs(f:GetDescendants()) do
				if g:IsA("BasePart") then
					g.CanCollide = false;
				end;
			end;
		end);
end;
task.spawn(function()
	while true do
		task.wait(.2);
		if j.AntiBow then
			pcall(function()
				local f = vW(F);
				if not f then
					return;
				end;
				local g = f:FindFirstChild("HumanoidRootPart");
				local T = f:FindFirstChildOfClass("Humanoid");
				if not g or not T or T.Health <= 0 then
					return;
				end;
				local u = T:GetState();
				if u == Enum.HumanoidStateType.Jumping or u == Enum.HumanoidStateType.Freefall then
					return;
				end;
				if g.CFrame.UpVector:Dot(Vector3.yAxis) >= .92 then
					return;
				end;
				local n, w = g.CFrame:ToOrientation();
				g.CFrame = CFrame.new(g.Position) * CFrame.Angles(0, w, 0);
			end);
		end;
	end;
end);
task.spawn(function()
	while true do
		task.wait(.5);
		if j.StreamProof then
			local f = tostring(j.SpoofName);
			if j.ShowVerified then
				f = f .. (" " .. SW);
			end;
			pcall(function()
				F.DisplayName = f;
			end);
		end;
	end;
end);
local c4 = 33054943;
local y4 = {};
task.spawn(function()
	while true do
		task.wait(2);
		if j.StaffDetect then
			for f, g in ipairs(g:GetPlayers()) do
				if g ~= F then
					local f, T = pcall(function()
							return g:GetRankInGroup(c4);
						end);
					if f and (type(T) == "number" and T >= 51) then
						if not y4[g.UserId] then
							y4[g.UserId] = true;
							if j.StaffLeave then
								pcall(function()
									F:Kick("Staff");
								end);
							end;
						end;
					end;
				end;
			end;
		end;
	end;
end);
local b4, S4, m4;
local function h4()
	if not E or b4 then
		return;
	end;
	b4 = xW("Circle");
	if b4 then
		b4.Filled = true;
		b4.Color = Color3.fromRGB(10, 10, 14);
		b4.Transparency = .35;
		b4.NumSides = 48;
		b4.Visible = false;
	end;
	S4 = xW("Circle");
	if S4 then
		S4.Filled = false;
		S4.Thickness = 1.5;
		S4.Color = k;
		S4.NumSides = 48;
		S4.Visible = false;
	end;
	m4 = {};
end;
local q4 = xW("Circle");
if q4 then
	q4.Thickness = 1;
	q4.NumSides = 40;
	q4.Filled = false;
	q4.Color = Color3.new(1, 1, 1);
	q4.Visible = false;
end;
local Z4 = xW("Text");
if Z4 then
	Z4.Size = 15;
	Z4.Outline = true;
	Z4.Font = 2;
	Z4.Visible = false;
end;
local Q4, o4, C4, R4 = 0, tick(), 0, 0;
u.Heartbeat:Connect(function()
	local f = vW(F);
	if f then
		local g = f:FindFirstChildOfClass("Humanoid");
		if j.Speed and (g and g.Health > 0) then
			g.WalkSpeed = j.SpeedValue or 24;
		end;
		if j.Noclip then
			if not k4 then
				I4(true);
			end;
		elseif k4 then
			I4(false);
		end;
	end;
	bW(j.Potato == true);
	pcall(dW);
	pcall(KW);
end);
u.RenderStepped:Connect(function()
	Q4 = Q4 + 1;
	if tick() - o4 >= 1 then
		C4 = Q4;
		Q4 = 0;
		o4 = tick();
	end;
	if C.Visible then
		local f = T:GetMouseLocation();
		C.Position = UDim2.new(0, f.X, 0, f.Y);
	end;
	if j.CustomFOV then
		TW();
	end;
	uW = false;
	local f, u, n = false, j.AimSmooth or .95, j.AimFOV or 150;
	if j.KillAura and (iW and MW(iW)) then
		uW = true;
	elseif not j.KillAura then
		if j.MobileAim then
			f = true;
			u = j.MobileSmooth or .9;
			n = j.MobileFOV or 160;
		elseif j.Aimbot then
			f = l4 or j.AimMode == "Always";
			u = j.AimSmooth or .95;
			n = j.AimFOV or 150;
		end;
	end;
	if f then
		local f, g = WW(n, true);
		if g then
			uW = true;
			if u >= .98 then
				H.CFrame = CFrame.new(H.CFrame.Position, g);
			else
				H.CFrame = H.CFrame:Lerp(CFrame.new(H.CFrame.Position, g), math.clamp(u, .1, 1));
			end;
			wW(g);
		end;
	end;
	nW();
	pcall(IW);
	R4 = R4 + 1;
	if R4 >= 2 then
		R4 = 0;
		pcall(aW);
	end;
	if j.ShowPerf and Z4 then
		local f = 0;
		pcall(function()
			f = math.floor(w.Network.ServerStatsItem["Data Ping"]:GetValue());
		end);
		Z4.Text = "FPS " .. (C4  .. ("  MS " .. f));
		Z4.Position = Vector2.new(H.ViewportSize.X - 150, 10);
		Z4.Color = k;
		Z4.Visible = true;
	elseif Z4 then
		Z4.Visible = false;
	end;
	local v, M = false, j.AimFOV or 150;
	if j.MobileAim then
		v = j.MobileShowFOV;
		M = j.MobileFOV or 160;
	else
		v = j.ShowFOV and j.Aimbot;
		M = j.AimFOV or 150;
	end;
	if q4 then
		q4.Position = H.ViewportSize / 2;
		q4.Radius = M;
		q4.Visible = v;
		if j.RGBESP then
			q4.Color = h();
		end;
	end;
	if j.Radar and E then
		h4();
		local f = tonumber(j.RadarSize) or 140;
		local T = tonumber(j.RadarRange) or 200;
		local u = f / 2;
		local n = Vector2.new(20 + u, 20 + u);
		local w = h();
		if b4 then
			b4.Position = n;
			b4.Radius = u;
			b4.Visible = true;
		end;
		if S4 then
			S4.Position = n;
			S4.Radius = u;
			S4.Visible = true;
		end;
		local v = vW(F) and (vW(F)):FindFirstChild("HumanoidRootPart");
		local M = math.atan2(H.CFrame.LookVector.X, H.CFrame.LookVector.Z);
		local L = {};
		if v then
			for f, g in ipairs(g:GetPlayers()) do
				if g ~= F and (LW(g) and MW(g)) then
					local f = vW(g) and (vW(g)):FindFirstChild("HumanoidRootPart");
					if f then
						local Y = f.Position - v.Position;
						if Y.Magnitude <= T then
							local f = Y.X * math.cos(M) - Y.Z * math.sin(M);
							local v = Y.X * math.sin(M) + Y.Z * math.cos(M);
							local H = u / T;
							local F, N = f * H, -v * H;
							if not m4[g] then
								local f = xW("Circle");
								if f then
									f.Filled = true;
									f.NumSides = 10;
									f.Radius = 3;
									m4[g] = f;
								end;
							end;
							local D = m4[g];
							if D then
								D.Position = Vector2.new(n.X + F, n.Y + N);
								D.Color = w;
								D.Visible = true;
							end;
							L[g] = true;
						end;
					end;
				end;
			end;
		end;
		for f, g in pairs(m4) do
			if not L[f] then
				pcall(function()
					if g then
						g.Visible = false;
					end;
				end);
			end;
		end;
	else
		if b4 then
			b4.Visible = false;
		end;
		if S4 then
			S4.Visible = false;
		end;
		if m4 then
			for f, g in pairs(m4) do
				pcall(function()
					if g then
						g.Visible = false;
					end;
				end);
			end;
		end;
	end;
end);
task.spawn(function()
	while true do
		task.wait(15);
		s();
	end;
end);
if j.CursorName and j.CursorName ~= "Off" then
	fW(j.CursorName);
end;
if j.CustomFOV then
	TW();
end;
P(1, "Done");
task.wait(.35);
pcall(function()
	z:Destroy();
end);
task.delay(.5, function()
	j4();
	if m then
		J4("\240\159\147\177 Tap \226\152\176 to open | Drag to move", 3);
	else
		J4("\240\159\146\187 Press Right Control to open/close", 3);
	end;
end);
print("[Moon Hub] Loaded | Mobile:", m);
