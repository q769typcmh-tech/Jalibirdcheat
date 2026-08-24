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
local f = game:GetService("Players");
local d = game:GetService("UserInputService");
local Y = game:GetService("RunService");
local u = game:GetService("Lighting");
local F = game:GetService("Stats");
local Q = game:GetService("HttpService");
local J = game:GetService("TweenService");
local v = game:GetService("ReplicatedStorage");
local N = game:GetService("VirtualInputManager");
local k = workspace.CurrentCamera;
local w = f.LocalPlayer or f.PlayerAdded:Wait();
local g = w:WaitForChild("PlayerGui", 60);
if not g then
	warn("[Moon] PlayerGui timeout");
	return;
end;
local function B()
	if gethui then
		local f, d = pcall(function()
				return gethui();
			end);
		if f and d then
			return d;
		end;
	end;
	return game:GetService("CoreGui");
end;
local m = B();
pcall(function()
	for f, d in ipairs({
		"MoonHubUI",
		"MoonCursorUI",
		"MoonLoadUI",
		"MoonFOVGui",
		"MoonESPGui",
		"MoonMobileESPGui",
	}) do
		local Y = g:FindFirstChild(d);
		if Y then
			Y:Destroy();
		end;
		local u = m:FindFirstChild(d);
		if u then
			u:Destroy();
		end;
	end;
end);
task.wait(.05);
local W;
pcall(function()
	W = w:GetMouse();
end);
local function M()
	local f = "Unknown";
	pcall(function()
		if identifyexecutor then
			local d, Y = identifyexecutor();
			f = tostring(d or "Unknown");
			if Y then
				f = f .. (" " .. tostring(Y));
			end;
		elseif getexecutorname then
			f = tostring(getexecutorname());
		elseif syn and syn.request then
			f = "Synapse";
		elseif fluxus then
			f = "Fluxus";
		elseif KRNL_LOADED then
			f = "Krnl";
		elseif is_sirhurt_closure then
			f = "Sirhurt";
		elseif pebc_execute then
			f = "Parallel";
		elseif SecureDelta then
			f = "Delta";
		end;
	end);
	return f;
end;
local e = M();
local i = Instance.new("ScreenGui");
i.Name = "MoonLoadUI";
i.ResetOnSpawn = false;
i.IgnoreGuiInset = true;
i.DisplayOrder = 9999;
i.Parent = g;
task.spawn(function()
	task.wait(8);
	pcall(function()
		if i and i.Parent then
			i:Destroy();
		end;
	end);
end);
local X = Instance.new("Frame");
X.Size = UDim2.new(1, 0, 1, 0);
X.BackgroundColor3 = Color3.fromRGB(8, 8, 12);
X.BorderSizePixel = 0;
X.Parent = i;
local s = Instance.new("Frame");
s.Size = UDim2.new(0, 320, 0, 160);
s.Position = UDim2.new(.5, -160, .5, -80);
s.BackgroundColor3 = Color3.fromRGB(16, 16, 22);
s.BorderSizePixel = 0;
s.Parent = X;
(Instance.new("UICorner", s)).CornerRadius = UDim.new(0, 14);
local q = Instance.new("TextLabel");
q.Size = UDim2.new(1, -20, 0, 28);
q.Position = UDim2.new(0, 10, 0, 14);
q.BackgroundTransparency = 1;
q.Text = "MOON HUB";
q.TextColor3 = Color3.fromRGB(138, 99, 255);
q.TextSize = 20;
q.Font = Enum.Font.GothamBold;
q.Parent = s;
local P = Instance.new("TextLabel");
P.Size = UDim2.new(1, -20, 0, 18);
P.Position = UDim2.new(0, 10, 0, 42);
P.BackgroundTransparency = 1;
P.Text = "jailbird";
P.TextColor3 = Color3.fromRGB(160, 160, 180);
P.TextSize = 12;
P.Font = Enum.Font.Gotham;
P.Parent = s;
local t = Instance.new("TextLabel");
t.Size = UDim2.new(1, -20, 0, 18);
t.Position = UDim2.new(0, 10, 0, 70);
t.BackgroundTransparency = 1;
t.Text = "Starting...";
t.TextColor3 = Color3.fromRGB(220, 220, 230);
t.TextSize = 12;
t.Font = Enum.Font.Gotham;
t.TextXAlignment = Enum.TextXAlignment.Left;
t.Parent = s;
local V = Instance.new("Frame");
V.Size = UDim2.new(1, -24, 0, 10);
V.Position = UDim2.new(0, 12, 0, 100);
V.BackgroundColor3 = Color3.fromRGB(30, 30, 40);
V.BorderSizePixel = 0;
V.Parent = s;
(Instance.new("UICorner", V)).CornerRadius = UDim.new(1, 0);
local h = Instance.new("Frame");
h.Size = UDim2.new(0, 0, 1, 0);
h.BackgroundColor3 = Color3.fromRGB(138, 99, 255);
h.BorderSizePixel = 0;
h.Parent = V;
(Instance.new("UICorner", h)).CornerRadius = UDim.new(1, 0);
local D = Instance.new("TextLabel");
D.Size = UDim2.new(1, -20, 0, 32);
D.Position = UDim2.new(0, 10, 0, 118);
D.BackgroundTransparency = 1;
D.Text = "Executor: " .. e;
D.TextColor3 = Color3.fromRGB(140, 140, 160);
D.TextSize = 11;
D.Font = Enum.Font.Gotham;
D.TextXAlignment = Enum.TextXAlignment.Left;
D.TextYAlignment = Enum.TextYAlignment.Top;
D.Parent = s;
local function l(f, d)
	f = math.clamp(f, 0, 1);
	pcall(function()
		t.Text = d or t.Text;
		(J:Create(h, TweenInfo.new(.25, Enum.EasingStyle.Quad), { Size = UDim2.new(f, 0, 1, 0) })):Play();
	end);
end;
l(.08, "Detecting executor...");
task.wait(.2);
l(.2, "Executor: " .. e);
task.wait(.15);
l(.35, "Loading config...");
task.wait(.1);
local function a(f, d)
	pcall(function()
		if writefile then
			writefile(f, d);
		end;
	end);
end;
local function S(f)
	local d, Y = pcall(function()
			if isfile and (isfile(f) and readfile) then
				return readfile(f);
			end;
		end);
	return d and Y or nil;
end;
pcall(function()
	if makefolder then
		makefolder("MoonHub");
		makefolder("MoonHub/Configs");
	end;
end);
local n = {};
local Z = {
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
		Radar = false,
		RadarSize = 140,
		RadarRange = 200,
		RGBESP = false,
		ESPColorR = 170,
		ESPColorG = 0,
		ESPColorB = 255,
		Hitbox = false,
		HitboxPart = "Head",
		HitboxSize = 3,
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
for f, d in pairs(Z) do
	n[f] = d;
end;
local z = false;
task.delay(2.5, function()
	z = true;
end);
local function I()
	local f = (tostring(n.ConfigName or "default")):gsub("[^%w%-%_]", "");
	if f == "" then
		f = "default";
	end;
	n.ConfigName = f;
	n.StretchAmount = math.clamp(tonumber(n.StretchAmount) or .53, .3, 1);
	a("MoonHub/Configs/" .. (f .. ".json"), Q:JSONEncode(n));
	a("MoonHub/Jailbird.json", Q:JSONEncode(n));
end;
local function K()
	local f = (tostring(n.ConfigName or "default")):gsub("[^%w%-%_]", "");
	local d = S("MoonHub/Configs/" .. (f .. ".json")) or S("MoonHub/Jailbird.json");
	if d then
		pcall(function()
			local f = Q:JSONDecode(d);
			if type(f) == "table" then
				for f, d in pairs(f) do
					if Z[f] ~= nil then
						n[f] = d;
					end;
				end;
			end;
		end);
	end;
	if type(n.DeviceSpoofDelay) ~= "number" then
		n.DeviceSpoofDelay = 1.5;
	end;
	n.StretchAmount = math.clamp(tonumber(n.StretchAmount) or .53, .3, 1);
	if not z then
		local f = n.ScreenStretch == true;
		n.ScreenStretch = false;
		task.delay(2.6, function()
			if f then
				n.ScreenStretch = true;
			end;
			z = true;
		end);
	end;
	if n.HitboxPart ~= "Head" and n.HitboxPart ~= "Torso" then
		n.HitboxPart = "Head";
	end;
end;
pcall(K);
l(.5, "Loading Drawing...");
local L = false;
local G = nil;
local function o(f)
	if not f or type(f.new) ~= "function" then
		return false;
	end;
	local d = pcall(function()
			local d = f.new("Text");
			d.Visible = false;
			d:Remove();
		end);
	if d then
		L = true;
		G = f;
		return true;
	end;
	return false;
end;
o(Drawing);
pcall(function()
	if getrenv then
		o((getrenv()).Drawing);
	end;
end);
l(.65, L and "Drawing OK" or "Drawing missing (radar unavailable)");
local j = Color3.fromRGB(138, 99, 255);
local O = Color3.fromRGB(12, 12, 16);
local p = Color3.fromRGB(18, 18, 24);
local T = Color3.fromRGB(20, 20, 28);
local E = Color3.fromRGB(235, 235, 245);
local U = Color3.fromRGB(160, 160, 180);
local y = Enum.Font.Gotham;
local C = Color3.fromRGB(40, 255, 40);
local x = Color3.fromRGB(255, 40, 40);
local function R()
	if n.RGBESP then
		return Color3.fromHSV(((tick() * .4)) % 1, 1, 1);
	end;
	return Color3.fromRGB(math.clamp(tonumber(n.ESPColorR) or 170, 0, 255), math.clamp(tonumber(n.ESPColorG) or 0, 0, 255), math.clamp(tonumber(n.ESPColorB) or 255, 0, 255));
end;
local function r()
	pcall(function()
		d.MouseBehavior = Enum.MouseBehavior.Default;
		d.MouseIconEnabled = true;
	end);
end;
local H = {
		{ Name = "Off", Id = nil },
		{ Name = "Game Crosshair", Id = "GAME" },
		{ Name = "Star Wars", Id = "5462831" },
		{ Name = "Snowflake", Id = "11780968239" },
		{ Name = "Red Dot", Id = "412284862" },
		{ Name = "Diamond", Id = "61210994" },
		{ Name = "Hello Kitty", Id = "10973237327" },
		{ Name = "Eye", Id = "12534101433" },
	};
local A = Instance.new("ScreenGui");
A.Name = "MoonCursorUI";
A.ResetOnSpawn = false;
A.IgnoreGuiInset = true;
A.DisplayOrder = 10000;
A.Parent = g;
local c = Instance.new("ImageLabel");
c.BackgroundTransparency = 1;
c.AnchorPoint = Vector2.new(.5, .5);
c.Size = UDim2.new(0, 32, 0, 32);
c.Visible = false;
c.ZIndex = 100;
c.Parent = A;
local function b(f)
	local d = g:FindFirstChild("Crosshair");
	if not d then
		return;
	end;
	pcall(function()
		if d:IsA("ScreenGui") then
			d.Enabled = f;
		end;
		d.Visible = f;
		for d, Y in ipairs(d:GetDescendants()) do
			if Y:IsA("GuiObject") then
				Y.Visible = f;
			end;
		end;
	end);
end;
local function fD(f)
	f = f or n.CursorName or "Off";
	n.CursorName = f;
	local Y = H[1];
	for d, u in ipairs(H) do
		if u.Name == f then
			Y = u;
			break;
		end;
	end;
	b(false);
	c.Visible = false;
	local u = math.clamp(tonumber(n.CursorSize) or 32, 8, 128);
	c.Size = UDim2.new(0, u, 0, u);
	if not Y.Id or Y.Name == "Off" then
		pcall(function()
			if W then
				W.Icon = "";
			end;
			d.MouseIconEnabled = true;
		end);
		return;
	end;
	if Y.Id == "GAME" then
		b(true);
		pcall(function()
			if W then
				W.Icon = "rbxassetid://0";
			end;
			d.MouseIconEnabled = true;
		end);
		return;
	end;
	pcall(function()
		d.MouseIconEnabled = false;
		if W then
			W.Icon = "rbxassetid://0";
		end;
		c.Image = "rbxassetid://" .. tostring(Y.Id);
		c.Visible = true;
	end);
end;
local dD = 70;
pcall(function()
	dD = k.FieldOfView;
end);
local function YD()
	if not n.CustomFOV then
		return;
	end;
	local f = math.clamp(tonumber(n.FOVValue) or 90, 40, 120);
	pcall(function()
		if math.abs(k.FieldOfView - f) > .5 then
			k.FieldOfView = f;
		end;
	end);
end;
local uD = false;
local function FD()
	if not z then
		return;
	end;
	if not n.ScreenStretch then
		return;
	end;
	if uD then
		return;
	end;
	if not k or not k.Parent then
		return;
	end;
	local f = math.clamp(tonumber(n.StretchAmount) or .53, .3, 1);
	if f >= .995 then
		return;
	end;
	pcall(function()
		local d = k.CFrame;
		if d then
			k.CFrame = d * CFrame.new(0, 0, 0, 1, 0, 0, 0, f, 0, 0, 0, 1);
		end;
	end);
end;
local function QD(f)
	local d = w.Character;
	if not d then
		return;
	end;
	local Y = d:FindFirstChild("HumanoidRootPart");
	if not Y or not f then
		return;
	end;
	pcall(function()
		local d = Y.Position;
		Y.CFrame = CFrame.new(d, Vector3.new(f.X, d.Y, f.Z));
	end);
end;
local function JD(f)
	if not f then
		return nil;
	end;
	local d, Y = pcall(function()
			return f.Character;
		end);
	return d and Y or nil;
end;
local function vD(f)
	local d = JD(f);
	if not d then
		return false;
	end;
	local Y = d:FindFirstChildOfClass("Humanoid");
	return Y ~= nil and Y.Health > 0;
end;
local function ND(f)
	if not f or f == w then
		return false;
	end;
	if not n.TeamCheck then
		return true;
	end;
	local d, Y = w.Team, f.Team;
	if d and Y then
		return d ~= Y;
	end;
	return true;
end;
local kD = {
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
local function wD(f, d)
	for Y = 1, #d, 1 do
		if string.find(f, d[Y], 1, true) then
			return true;
		end;
	end;
	return false;
end;
local function gD(f)
	if not f or not f:IsA("BasePart") then
		return true;
	end;
	local d = string.lower(f.Name or "");
	local Y = string.lower(f:GetFullName() or "");
	local u = string.lower(tostring(f.Material));
	if string.find(d, "glass", 1, true) or string.find(u, "glass", 1, true) then
		return true;
	end;
	if f.Transparency >= .7 then
		return true;
	end;
	if string.find(d, "door", 1, true) or string.find(Y, "door", 1, true) then
		if string.find(d, "wood", 1, true) or string.find(Y, "wood", 1, true) then
			return false;
		end;
		return true;
	end;
	if string.find(d, "window", 1, true) then
		return true;
	end;
	if f.CanCollide == false and f.Transparency >= .25 then
		return true;
	end;
	if wD(d, kD) or wD(Y, kD) then
		return false;
	end;
	return false;
end;
local function BD(f)
	if not n.WallCheck then
		return true;
	end;
	local d = JD(f);
	local Y = d and d:FindFirstChild("Head");
	if not Y then
		return false;
	end;
	local u = JD(w);
	local F = k.CFrame.Position + k.CFrame.LookVector * .8;
	local Q = Y.Position;
	local J = Q - F;
	local v = J.Magnitude;
	if v < 1.5 then
		return true;
	end;
	local N = { k };
	if u then
		table.insert(N, u);
	end;
	if d then
		table.insert(N, d);
	end;
	local g = RaycastParams.new();
	g.FilterType = Enum.RaycastFilterType.Exclude;
	g.FilterDescendantsInstances = N;
	g.IgnoreWater = true;
	local B, m, W = 0, F, J.Unit;
	for f = 1, 12, 1 do
		local Y = v - B;
		if Y <= .15 then
			return true;
		end;
		local u = workspace:Raycast(m, W * Y, g);
		if not u then
			return true;
		end;
		if u.Instance and (d and u.Instance:IsDescendantOf(d)) then
			return true;
		end;
		if gD(u.Instance) then
			table.insert(N, u.Instance);
			g.FilterDescendantsInstances = N;
			local f = ((u.Position - m)).Magnitude;
			m = u.Position + W * .15;
			B = (B + f) + .15;
		else
			return false;
		end;
	end;
	return false;
end;
local function mD(f)
	if n.RGBESP then
		return Color3.fromHSV(((tick() * .4)) % 1, 1, 1);
	end;
	if BD(f) then
		return C;
	end;
	return x;
end;
local function WD(f, d)
	if not n.Prediction or not f then
		return f.Position;
	end;
	local Y = d and ((d:FindFirstChild("HumanoidRootPart") or d:FindFirstChild("Torso")));
	local u = Vector3.zero;
	if Y then
		pcall(function()
			u = Y.AssemblyLinearVelocity;
		end);
	end;
	return f.Position + u * ((tonumber(n.PredictAmount) or .12));
end;
local function MD(d, Y)
	local u, F, Q = nil, nil, d;
	local J = k.ViewportSize / 2;
	for f, d in ipairs(f:GetPlayers()) do
		if d ~= w and (ND(d) and vD(d)) then
			local f = JD(d);
			local v = f and f:FindFirstChild("Head");
			if v then
				local N = WD(v, f);
				local w, g = k:WorldToViewportPoint(N);
				if g and w.Z > 0 then
					local f = ((Vector2.new(w.X, w.Y) - J)).Magnitude;
					if f < Q and (((not Y) or BD(d))) then
						Q = f;
						u = d;
						F = N;
					end;
				end;
			end;
		end;
	end;
	return u, F;
end;
local eD = {};
local function iD(f)
	return f and ((f:FindFirstChild("Torso") or f:FindFirstChild("UpperTorso")));
end;
local function XD(f)
	if not f then
		return;
	end;
	local d = eD[f];
	if d then
		pcall(function()
			f.Size = d;
		end);
		eD[f] = nil;
	end;
end;
local function sD()
	for f, d in pairs(eD) do
		XD(f);
	end;
	eD = {};
end;
local function qD(f, d)
	if not f or not f:IsA("BasePart") then
		return;
	end;
	if eD[f] == nil then
		eD[f] = f.Size;
	end;
	local Y = math.clamp(tonumber(d) or 3, 1.2, 12);
	pcall(function()
		f.Size = Vector3.new(Y, Y, Y);
		f.Massless = true;
		f.CanCollide = false;
	end);
end;
local function PD()
	if not n.Hitbox then
		sD();
		return;
	end;
	local d = n.HitboxPart;
	local Y = tonumber(n.HitboxSize) or 3;
	for f, u in ipairs(f:GetPlayers()) do
		if u ~= w and (ND(u) and vD(u)) then
			local f = JD(u);
			if f then
				local u = f:FindFirstChild("Head");
				local F = iD(f);
				if d == "Head" then
					if u then
						qD(u, Y);
					end;
					if F then
						XD(F);
					end;
				else
					if F then
						qD(F, Y);
					end;
					if u then
						XD(u);
					end;
				end;
			end;
		end;
	end;
end;
local tD = 0;
local function VD()
	local f = JD(w);
	if not f then
		return nil;
	end;
	return f:FindFirstChildOfClass("Tool");
end;
local function hD()
	local f = VD();
	if not f then
		return;
	end;
	pcall(function()
		f:Activate();
	end);
	pcall(function()
		local f = k.ViewportSize;
		local d = math.floor(f.X / 2);
		local Y = math.floor(f.Y / 2);
		N:SendMouseButtonEvent(d, Y, 0, true, game, 1);
		task.wait(.02);
		N:SendMouseButtonEvent(d, Y, 0, false, game, 1);
	end);
end;
local function DD()
	if not n.Triggerbot then
		return;
	end;
	if not vD(w) then
		return;
	end;
	local f = VD();
	if not f then
		return;
	end;
	if not k or not k.Parent then
		return;
	end;
	local d = math.max(tonumber(n.TriggerDelay) or .12, .08);
	if tick() - tD < d then
		return;
	end;
	local Y = tonumber(n.TriggerFOV) or 55;
	local u = MD(Y, n.WallCheck);
	if u and (vD(u) and ND(u)) then
		tD = tick();
		hD();
	end;
end;
local lD = nil;
local function aD(d)
	local Y = JD(w);
	local u = Y and Y:FindFirstChild("HumanoidRootPart");
	if not u then
		return nil;
	end;
	local F = tonumber(n.KillAuraRange) or 90;
	local Q, J = nil, F;
	for f, Y in ipairs(f:GetPlayers()) do
		if Y ~= w and (Y ~= d and (ND(Y) and vD(Y))) then
			local f = JD(Y);
			local d = f and f:FindFirstChild("HumanoidRootPart");
			local F = f and f:FindFirstChild("Head");
			if d and F then
				local f = ((d.Position - u.Position)).Magnitude;
				if f < J then
					J = f;
					Q = Y;
				end;
			end;
		end;
	end;
	return Q;
end;
local function SD(f)
	local d = JD(w);
	local Y = d and d:FindFirstChild("HumanoidRootPart");
	local u = JD(f);
	local F = u and u:FindFirstChild("HumanoidRootPart");
	local Q = u and u:FindFirstChild("Head");
	if not Y or not F or not Q then
		return false;
	end;
	local J = tonumber(n.KillAuraBehind) or 3.2;
	local v = F.CFrame.LookVector;
	local N = (F.Position - v * J) + Vector3.new(0, 1.4, 0);
	pcall(function()
		Y.CFrame = CFrame.new(N, Q.Position);
	end);
	pcall(function()
		k.CFrame = CFrame.new(k.CFrame.Position, Q.Position);
	end);
	return true;
end;
local function nD()
	if not n.KillAura then
		lD = nil;
		return;
	end;
	local f = JD(w);
	local d = f and f:FindFirstChildOfClass("Humanoid");
	if not d or d.Health <= 0 then
		lD = nil;
		return;
	end;
	if not lD or not vD(lD) or not ND(lD) then
		lD = aD(lD);
	end;
	if not lD then
		return;
	end;
	if SD(lD) then
		hD();
	else
		lD = nil;
	end;
end;
local ZD = nil;
pcall(function()
	ZD = (v:WaitForChild("GameEvents", 8)):WaitForChild("DeviceUpdate", 8);
end);
local function zD()
	if not ZD then
		pcall(function()
			ZD = v.GameEvents.DeviceUpdate;
		end);
	end;
	if not ZD then
		return;
	end;
	local f = n.DeviceMode or "Console";
	pcall(function()
		if f == "Console" then
			ZD:FireServer();
			pcall(function()
				ZD:FireServer("Console");
			end);
		elseif f == "Desktop" then
			ZD:FireServer("Desktop");
		else
			ZD:FireServer("Mobile");
		end;
	end);
end;
task.spawn(function()
	while true do
		local f = tonumber(n.DeviceSpoofDelay) or 1.5;
		if f < .3 then
			f = .3;
		end;
		task.wait(f);
		if n.DeviceSpoof then
			pcall(zD);
		end;
	end;
end);
l(.78, "Building ESP...");
local ID = Instance.new("ScreenGui");
ID.Name = "MoonMobileESPGui";
ID.ResetOnSpawn = false;
ID.IgnoreGuiInset = true;
ID.DisplayOrder = 99999;
ID.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
ID.Parent = m;
local KD = {};
local function LD(f)
	if not f then
		return;
	end;
	pcall(function()
		if f.fullBox then
			f.fullBox:Destroy();
		end;
	end);
	pcall(function()
		if f.fullStroke then
			f.fullStroke:Destroy();
		end;
	end);
	pcall(function()
		if f.name then
			f.name:Destroy();
		end;
	end);
	pcall(function()
		if f.dist then
			f.dist:Destroy();
		end;
	end);
	pcall(function()
		if f.healthBg then
			f.healthBg:Destroy();
		end;
	end);
	pcall(function()
		if f.healthFill then
			f.healthFill:Destroy();
		end;
	end);
	pcall(function()
		if f.headDot then
			f.headDot:Destroy();
		end;
	end);
	if f.corners then
		for d = 1, #f.corners, 1 do
			local Y = f.corners[d];
			pcall(function()
				if Y then
					Y:Destroy();
				end;
			end);
			f.corners[d] = nil;
		end;
	end;
end;
local function GD()
	for f, d in pairs(KD) do
		LD(d);
		KD[f] = nil;
	end;
	pcall(function()
		for f, d in ipairs(ID:GetChildren()) do
			pcall(function()
				if d then
					d:Destroy();
				end;
			end);
		end;
	end);
	KD = {};
end;
local function oD(f)
	local d = KD[f];
	if not d then
		return;
	end;
	LD(d);
	KD[f] = nil;
end;
local function jD(f)
	if KD[f] then
		return KD[f];
	end;
	local d = Instance.new("Frame");
	d.BackgroundTransparency = 1;
	d.BorderSizePixel = 0;
	d.Visible = false;
	d.ZIndex = 999;
	d.Parent = ID;
	local Y;
	pcall(function()
		Y = Instance.new("UIStroke");
		Y.Color = Color3.new(1, 1, 1);
		Y.Thickness = 1.5;
		Y.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
		Y.Parent = d;
	end);
	local u = {};
	for f = 1, 8, 1 do
		local d = Instance.new("Frame");
		d.BorderSizePixel = 0;
		d.BackgroundColor3 = Color3.new(1, 1, 1);
		d.Visible = false;
		d.ZIndex = 999;
		d.Parent = ID;
		u[f] = d;
	end;
	local F = Instance.new("TextLabel");
	F.BackgroundTransparency = 1;
	F.AnchorPoint = Vector2.new(.5, .5);
	F.TextColor3 = Color3.new(1, 1, 1);
	F.TextSize = 12;
	F.Font = Enum.Font.SourceSansBold;
	F.TextStrokeTransparency = 0;
	F.Visible = false;
	F.ZIndex = 999;
	F.Parent = ID;
	local Q = Instance.new("TextLabel");
	Q.BackgroundTransparency = 1;
	Q.AnchorPoint = Vector2.new(.5, .5);
	Q.TextColor3 = Color3.new(1, 1, 1);
	Q.TextSize = 10;
	Q.Font = Enum.Font.SourceSans;
	Q.TextStrokeTransparency = 0;
	Q.Visible = false;
	Q.ZIndex = 999;
	Q.Parent = ID;
	local J = Instance.new("Frame");
	J.BorderSizePixel = 0;
	J.BackgroundColor3 = Color3.new(0, 0, 0);
	J.Visible = false;
	J.ZIndex = 999;
	J.Parent = ID;
	local v = Instance.new("Frame");
	v.BorderSizePixel = 0;
	v.BackgroundColor3 = Color3.new(1, 0, 0);
	v.Visible = false;
	v.ZIndex = 999;
	v.Parent = ID;
	local N = Instance.new("Frame");
	N.BorderSizePixel = 0;
	N.BackgroundColor3 = Color3.new(1, 1, 1);
	N.Visible = false;
	N.ZIndex = 999;
	N.Parent = ID;
	pcall(function()
		local f = Instance.new("UICorner");
		f.CornerRadius = UDim.new(1, 0);
		f.Parent = N;
	end);
	local k = {
			fullBox = d,
			fullStroke = Y,
			corners = u,
			name = F,
			dist = Q,
			healthBg = J,
			healthFill = v,
			headDot = N,
		};
	KD[f] = k;
	return k;
end;
local function OD()
	if not n.ESP then
		GD();
		return;
	end;
	if not k or not k.Parent then
		return;
	end;
	local d = k.ViewportSize;
	if d.X < 1 or d.Y < 1 then
		return;
	end;
	local Y = {};
	for f, d in ipairs(f:GetPlayers()) do
		Y[d] = true;
	end;
	for f in pairs(KD) do
		if not Y[f] then
			oD(f);
		end;
	end;
	local u = JD(w) and (JD(w)):FindFirstChild("HumanoidRootPart");
	local F = {};
	for f, d in ipairs(f:GetPlayers()) do
		if d ~= w and (ND(d) and vD(d)) then
			F[d] = true;
			local f = JD(d);
			local Y = f and ((f:FindFirstChild("HumanoidRootPart") or f:FindFirstChild("Torso")));
			local Q = f and f:FindFirstChild("Head");
			local J = f and f:FindFirstChildOfClass("Humanoid");
			if not Y or not Q then
				oD(d);
				continue;
			end;
			local v = jD(d);
			local N = mD(d);
			local w, g = k:WorldToViewportPoint(Y.Position);
			local B, m = k:WorldToViewportPoint(Q.Position + Vector3.new(0, 1.1, 0));
			local W = k:WorldToViewportPoint(Y.Position - Vector3.new(0, 2.8, 0));
			if not ((w and (B and (g and (m and (w.Z > 0 and B.Z > 0)))))) then
				v.fullBox.Visible = false;
				v.name.Visible = false;
				v.dist.Visible = false;
				v.healthBg.Visible = false;
				v.healthFill.Visible = false;
				v.headDot.Visible = false;
				for f = 1, 8, 1 do
					if v.corners[f] then
						v.corners[f].Visible = false;
					end;
				end;
				continue;
			end;
			local M = W and W.Y or w.Y + 2.8;
			local e = math.max(math.abs(M - B.Y), 10);
			local i = math.clamp(e / 1.85, 8, 120);
			local X = w.X - i / 2;
			local s = B.Y;
			if n.ShowBoxes and ((n.BoxStyle == "Full" or n.BoxStyle == "Both")) then
				v.fullBox.Size = UDim2.new(0, i, 0, e);
				v.fullBox.Position = UDim2.new(0, X, 0, s);
				v.fullBox.Visible = true;
				if v.fullStroke then
					v.fullStroke.Color = N;
				end;
			else
				v.fullBox.Visible = false;
			end;
			if n.ShowBoxes and ((n.BoxStyle == "Corner" or n.BoxStyle == "Both")) then
				local f = math.clamp(i * .22, 4, 10);
				local d = v.corners;
				d[1].Size = UDim2.new(0, f, 0, 2);
				d[1].Position = UDim2.new(0, X, 0, s);
				d[2].Size = UDim2.new(0, 2, 0, f);
				d[2].Position = UDim2.new(0, X, 0, s);
				d[3].Size = UDim2.new(0, f, 0, 2);
				d[3].Position = UDim2.new(0, (X + i) - f, 0, s);
				d[4].Size = UDim2.new(0, 2, 0, f);
				d[4].Position = UDim2.new(0, (X + i) - 2, 0, s);
				d[5].Size = UDim2.new(0, f, 0, 2);
				d[5].Position = UDim2.new(0, X, 0, (s + e) - 2);
				d[6].Size = UDim2.new(0, 2, 0, f);
				d[6].Position = UDim2.new(0, X, 0, (s + e) - f);
				d[7].Size = UDim2.new(0, f, 0, 2);
				d[7].Position = UDim2.new(0, (X + i) - f, 0, (s + e) - 2);
				d[8].Size = UDim2.new(0, 2, 0, f);
				d[8].Position = UDim2.new(0, (X + i) - 2, 0, (s + e) - f);
				for f = 1, 8, 1 do
					d[f].BackgroundColor3 = N;
					d[f].Visible = true;
				end;
			else
				for f = 1, 8, 1 do
					v.corners[f].Visible = false;
				end;
			end;
			if n.ShowNames then
				v.name.Text = d.DisplayName;
				v.name.Position = UDim2.new(0, w.X, 0, B.Y - 16);
				v.name.TextColor3 = N;
				v.name.Visible = true;
			else
				v.name.Visible = false;
			end;
			if n.ShowDistance and u then
				v.dist.Text = math.floor(((Y.Position - u.Position)).Magnitude) .. "m";
				v.dist.Position = UDim2.new(0, w.X, 0, (s + e) + 2);
				v.dist.TextColor3 = N;
				v.dist.Visible = true;
			else
				v.dist.Visible = false;
			end;
			if n.ShowHealth and J then
				local f = math.clamp(J.Health / math.max(J.MaxHealth, 1), 0, 1);
				v.healthBg.Size = UDim2.new(0, 3, 0, e);
				v.healthBg.Position = UDim2.new(0, X - 6, 0, s);
				v.healthBg.Visible = true;
				local d = math.floor(e * f);
				v.healthFill.Size = UDim2.new(0, 2, 0, d);
				v.healthFill.Position = UDim2.new(0, X - 5.5, 0, (s + e) - d);
				v.healthFill.BackgroundColor3 = Color3.fromRGB(255 * ((1 - f)), 255 * f, 0);
				v.healthFill.Visible = true;
			else
				v.healthBg.Visible = false;
				v.healthFill.Visible = false;
			end;
			if n.ShowHeadDot then
				local f, d = k:WorldToViewportPoint(Q.Position);
				if f and (d and f.Z > 0) then
					local d = math.clamp(i * .18, 3, 9);
					v.headDot.Size = UDim2.new(0, d, 0, d);
					v.headDot.Position = UDim2.new(0, f.X - d / 2, 0, f.Y - d / 2);
					v.headDot.BackgroundColor3 = N;
					v.headDot.Visible = true;
				else
					v.headDot.Visible = false;
				end;
			else
				v.headDot.Visible = false;
			end;
		end;
	end;
	for f in pairs(KD) do
		if not F[f] then
			oD(f);
		end;
	end;
end;
local function pD()
	GD();
	OD();
end;
local TD = {};
local function ED()
	for f, d in pairs(TD) do
		pcall(function()
			d:Destroy();
		end);
		TD[f] = nil;
	end;
end;
local function UD()
	if not n.Chams then
		ED();
		return;
	end;
	local d = {};
	for f, Y in ipairs(f:GetPlayers()) do
		if Y ~= w and (ND(Y) and vD(Y)) then
			d[Y] = true;
			local f = JD(Y);
			if f then
				local d = mD(Y);
				local u = TD[Y];
				if not u or not u.Parent then
					u = Instance.new("Highlight");
					u.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop;
					u.FillTransparency = .45;
					u.OutlineTransparency = 0;
					u.Parent = f;
					TD[Y] = u;
				end;
				u.FillColor = d;
				u.OutlineColor = d;
				u.Enabled = true;
			end;
		end;
	end;
	for f, Y in pairs(TD) do
		if not d[f] then
			pcall(function()
				Y:Destroy();
			end);
			TD[f] = nil;
		end;
	end;
end;
local yD = {
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
local CD = {
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
local xD = {};
local RD = 0;
local function rD()
	for f, d in pairs(xD) do
		pcall(function()
			d:Destroy();
		end);
		xD[f] = nil;
	end;
end;
local function HD(f)
	local d = f:lower();
	for f, Y in pairs(CD) do
		if d:find(f, 1, true) then
			return Y;
		end;
	end;
	return Color3.fromRGB(255, 255, 255);
end;
local function AD(f)
	if f:IsA("BasePart") then
		return f;
	end;
	if f:IsA("Tool") then
		return f:FindFirstChild("Handle") or f:FindFirstChildOfClass("BasePart") or f;
	end;
	if f:IsA("Model") then
		return f:FindFirstChildOfClass("BasePart") or f;
	end;
	return nil;
end;
local function cD()
	if not n.GadgetESP then
		rD();
		return;
	end;
	RD = RD + 1;
	if RD < 30 then
		return;
	end;
	RD = 0;
	local f = {};
	for d, Y in ipairs(workspace:GetDescendants()) do
		local u = Y.Name:lower();
		local F = false;
		for f, d in ipairs(yD) do
			if u:find(d, 1, true) then
				F = true;
				break;
			end;
		end;
		if F then
			local d = AD(Y);
			if d then
				f[d] = true;
				local Y = xD[d];
				if not Y or not Y.Parent then
					Y = Instance.new("Highlight");
					Y.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop;
					Y.FillTransparency = .4;
					Y.OutlineTransparency = 0;
					Y.Parent = d;
					xD[d] = Y;
				end;
				local F = HD(u);
				Y.FillColor = F;
				Y.OutlineColor = F;
				Y.Enabled = true;
			end;
		end;
	end;
	for d, Y in pairs(xD) do
		if not f[d] then
			pcall(function()
				Y:Destroy();
			end);
			xD[d] = nil;
		end;
	end;
end;
local bD = nil;
local fK = nil;
local dK = {};
local function YK(f)
	if not L or not G then
		return nil;
	end;
	local d, Y = pcall(function()
			return G.new(f);
		end);
	if d and Y then
		return Y;
	end;
	return nil;
end;
local function uK()
	if not n.Radar then
		if bD then
			bD.Visible = false;
		end;
		if fK then
			fK.Visible = false;
		end;
		for f, d in pairs(dK) do
			if d then
				d.Visible = false;
			end;
		end;
		return;
	end;
	if not L then
		return;
	end;
	if not bD then
		bD = YK("Circle");
		bD.Filled = true;
		bD.Color = Color3.fromRGB(0, 0, 0);
		bD.Transparency = .5;
		bD.NumSides = 40;
	end;
	if not fK then
		fK = YK("Circle");
		fK.Filled = false;
		fK.Color = Color3.fromRGB(255, 255, 255);
		fK.Thickness = 1.5;
		fK.NumSides = 40;
	end;
	local d = tonumber(n.RadarSize) or 140;
	local Y = tonumber(n.RadarRange) or 200;
	local u = d / 2;
	local F = Vector2.new(20 + u, 20 + u);
	bD.Position = F;
	bD.Radius = u;
	bD.Visible = true;
	fK.Position = F;
	fK.Radius = u;
	fK.Visible = true;
	local Q = JD(w) and (JD(w)):FindFirstChild("HumanoidRootPart");
	if not Q then
		return;
	end;
	local J = math.atan2(k.CFrame.LookVector.X, k.CFrame.LookVector.Z);
	local v = {};
	for f, d in ipairs(f:GetPlayers()) do
		if d ~= w and (vD(d) and ND(d)) then
			local f = JD(d);
			local N = f and f:FindFirstChild("HumanoidRootPart");
			if N then
				local f = N.Position - Q.Position;
				if f.Magnitude <= Y then
					local Q = f.X * math.cos(J) - f.Z * math.sin(J);
					local N = f.X * math.sin(J) + f.Z * math.cos(J);
					local k = u / Y;
					local w = Q * k;
					local g = -N * k;
					local B = dK[d];
					if not B then
						B = YK("Circle");
						B.Filled = true;
						B.NumSides = 8;
						B.Radius = 3;
						dK[d] = B;
					end;
					B.Position = Vector2.new(F.X + w, F.Y + g);
					B.Color = mD(d);
					B.Visible = true;
					v[d] = true;
				end;
			end;
		end;
	end;
	for f, d in pairs(dK) do
		if not v[f] then
			d.Visible = false;
		end;
	end;
end;
f.PlayerRemoving:Connect(function(f)
	oD(f);
	pcall(function()
		if TD[f] then
			TD[f]:Destroy();
			TD[f] = nil;
		end;
	end);
	if lD == f then
		lD = nil;
	end;
	local d = JD(f);
	if d then
		XD(d:FindFirstChild("Head"));
		XD(iD(d));
	end;
end);
local function FK(f)
	f.CharacterRemoving:Connect(function()
		oD(f);
		pcall(function()
			if TD[f] then
				TD[f]:Destroy();
				TD[f] = nil;
			end;
		end);
	end);
	f.CharacterAdded:Connect(function()
		task.wait(.3);
		oD(f);
	end);
end;
f.PlayerAdded:Connect(FK);
for f, d in ipairs(f:GetPlayers()) do
	FK(d);
end;
local QK = false;
local function JK(d)
	if d == QK then
		return;
	end;
	QK = d;
	pcall(function()
		u.GlobalShadows = not d;
		if d then
			u.FogEnd = 9000000000;
			if settings and (settings()).Rendering then
				(settings()).Rendering.QualityLevel = Enum.QualityLevel.Level01;
			end;
			for d, Y in ipairs(workspace:GetDescendants()) do
				if Y:IsA("BasePart") then
					local d = false;
					for f, u in ipairs(f:GetPlayers()) do
						if u.Character and Y:IsDescendantOf(u.Character) then
							d = true;
							break;
						end;
					end;
					if not d then
						Y.Material = Enum.Material.SmoothPlastic;
						Y.CastShadow = false;
					end;
				elseif Y:IsA("ParticleEmitter") or Y:IsA("Trail") or Y:IsA("Beam") then
					Y.Enabled = false;
				end;
			end;
		end;
	end);
end;
local vK = "\226\156\147";
pcall(function()
	if utf8 and utf8.char then
		vK = utf8.char(57344);
	end;
end);
l(.9, "Building UI...");
local NK = Instance.new("ScreenGui");
NK.Name = "MoonHubUI";
NK.ResetOnSpawn = false;
NK.IgnoreGuiInset = true;
NK.DisplayOrder = 999;
NK.Parent = g;
local kK = Instance.new("Frame");
kK.Size = UDim2.new(0, 580, 0, 450);
kK.Position = UDim2.new(.5, -290, .5, -225);
kK.BackgroundColor3 = O;
kK.BackgroundTransparency = .15;
kK.BorderSizePixel = 0;
kK.Visible = false;
kK.Parent = NK;
(Instance.new("UICorner", kK)).CornerRadius = UDim.new(0, 12);
local wK = Instance.new("Frame");
wK.Size = UDim2.new(1, 0, 0, 40);
wK.BackgroundColor3 = p;
wK.BorderSizePixel = 0;
wK.Parent = kK;
(Instance.new("UICorner", wK)).CornerRadius = UDim.new(0, 12);
local gK = Instance.new("TextLabel");
gK.Size = UDim2.new(1, -40, 1, 0);
gK.Position = UDim2.new(0, 12, 0, 0);
gK.BackgroundTransparency = 1;
gK.Text = "MOON HUB  |  jailbird";
gK.TextColor3 = E;
gK.TextSize = 14;
gK.Font = y;
gK.TextXAlignment = Enum.TextXAlignment.Left;
gK.Parent = wK;
local BK = Instance.new("TextButton");
BK.Size = UDim2.new(0, 28, 0, 28);
BK.Position = UDim2.new(1, -34, .5, -14);
BK.BackgroundColor3 = Color3.fromRGB(40, 30, 50);
BK.Text = "X";
BK.TextColor3 = U;
BK.Font = y;
BK.TextSize = 14;
BK.Parent = wK;
(Instance.new("UICorner", BK)).CornerRadius = UDim.new(0, 6);
local mK = Instance.new("TextLabel");
mK.Size = UDim2.new(1, -16, 0, 18);
mK.Position = UDim2.new(0, 8, 0, 40);
mK.BackgroundTransparency = 1;
mK.Text = "Executor: " .. e;
mK.TextColor3 = U;
mK.TextSize = 11;
mK.Font = y;
mK.TextXAlignment = Enum.TextXAlignment.Left;
mK.Parent = kK;
local WK = Instance.new("ScrollingFrame");
WK.Size = UDim2.new(0, 110, 1, -66);
WK.Position = UDim2.new(0, 8, 0, 60);
WK.BackgroundColor3 = p;
WK.BorderSizePixel = 0;
WK.ScrollBarThickness = 2;
WK.AutomaticCanvasSize = Enum.AutomaticSize.Y;
WK.CanvasSize = UDim2.new(0, 0, 0, 0);
WK.Parent = kK;
(Instance.new("UICorner", WK)).CornerRadius = UDim.new(0, 8);
local MK = Instance.new("UIListLayout");
MK.Padding = UDim.new(0, 4);
MK.SortOrder = Enum.SortOrder.LayoutOrder;
MK.Parent = WK;
local eK = Instance.new("UIPadding");
eK.PaddingTop = UDim.new(0, 6);
eK.PaddingLeft = UDim.new(0, 6);
eK.PaddingRight = UDim.new(0, 6);
eK.Parent = WK;
local iK = Instance.new("Frame");
iK.Size = UDim2.new(1, -130, 1, -70);
iK.Position = UDim2.new(0, 122, 0, 62);
iK.BackgroundTransparency = 1;
iK.Parent = kK;
local XK, sK = {}, {};
local function qK(f)
	for d, Y in pairs(XK) do
		Y.Visible = (d == f);
	end;
	for d, Y in pairs(sK) do
		Y.BackgroundColor3 = (d == f) and Color3.fromRGB(40, 35, 60) or Color3.fromRGB(22, 22, 30);
		Y.TextColor3 = (d == f) and j or U;
	end;
	r();
end;
local function PK(f)
	local d = Instance.new("ScrollingFrame");
	d.Size = UDim2.new(1, 0, 1, 0);
	d.BackgroundTransparency = 1;
	d.BorderSizePixel = 0;
	d.ScrollBarThickness = 3;
	d.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	d.CanvasSize = UDim2.new(0, 0, 0, 0);
	d.Visible = false;
	d.Parent = iK;
	local Y = Instance.new("UIListLayout");
	Y.Padding = UDim.new(0, 5);
	Y.SortOrder = Enum.SortOrder.LayoutOrder;
	Y.FillDirection = Enum.FillDirection.Vertical;
	Y.HorizontalAlignment = Enum.HorizontalAlignment.Left;
	Y.Parent = d;
	local u = Instance.new("UIPadding");
	u.PaddingBottom = UDim.new(0, 10);
	u.PaddingTop = UDim.new(0, 4);
	u.PaddingLeft = UDim.new(0, 2);
	u.PaddingRight = UDim.new(0, 8);
	u.Parent = d;
	XK[f] = d;
	local F = Instance.new("TextButton");
	F.Size = UDim2.new(1, 0, 0, 28);
	F.BackgroundColor3 = Color3.fromRGB(22, 22, 30);
	F.Text = f;
	F.TextColor3 = U;
	F.TextSize = 11;
	F.Font = y;
	F.Parent = WK;
	(Instance.new("UICorner", F)).CornerRadius = UDim.new(0, 6);
	F.MouseButton1Click:Connect(function()
		qK(f);
	end);
	sK[f] = F;
	return d;
end;
local function tK(f)
	local d = ((f:GetAttribute("O") or 0)) + 1;
	f:SetAttribute("O", d);
	return d;
end;
local function VK(f, d)
	local Y = Instance.new("TextLabel");
	Y.LayoutOrder = tK(f);
	Y.Size = UDim2.new(1, -4, 0, 18);
	Y.BackgroundTransparency = 1;
	Y.Text = string.upper(d);
	Y.TextColor3 = j;
	Y.TextSize = 11;
	Y.Font = y;
	Y.TextXAlignment = Enum.TextXAlignment.Left;
	Y.TextYAlignment = Enum.TextYAlignment.Center;
	Y.TextTruncate = Enum.TextTruncate.AtEnd;
	Y.Parent = f;
end;
local function hK(f, d, Y)
	local u = Instance.new("Frame");
	u.LayoutOrder = tK(f);
	u.Size = UDim2.new(1, 0, 0, 32);
	u.BackgroundColor3 = T;
	u.BorderSizePixel = 0;
	u.Parent = f;
	(Instance.new("UICorner", u)).CornerRadius = UDim.new(0, 8);
	local F = Instance.new("TextLabel");
	F.Size = UDim2.new(1, -55, 1, 0);
	F.Position = UDim2.new(0, 10, 0, 0);
	F.BackgroundTransparency = 1;
	F.Text = d;
	F.TextColor3 = E;
	F.TextSize = 11;
	F.Font = y;
	F.TextXAlignment = Enum.TextXAlignment.Left;
	F.Parent = u;
	local Q = Instance.new("TextButton");
	Q.Size = UDim2.new(0, 40, 0, 18);
	Q.Position = UDim2.new(1, -48, .5, -9);
	Q.BackgroundColor3 = n[Y] and j or Color3.fromRGB(45, 45, 58);
	Q.Text = "";
	Q.Parent = u;
	(Instance.new("UICorner", Q)).CornerRadius = UDim.new(1, 0);
	local J = Instance.new("Frame");
	J.Size = UDim2.new(0, 14, 0, 14);
	J.Position = n[Y] and UDim2.new(1, -16, .5, -7) or UDim2.new(0, 2, .5, -7);
	J.BackgroundColor3 = Color3.new(1, 1, 1);
	J.BorderSizePixel = 0;
	J.Parent = Q;
	(Instance.new("UICorner", J)).CornerRadius = UDim.new(1, 0);
	Q.MouseButton1Click:Connect(function()
		n[Y] = not n[Y];
		local f = n[Y];
		Q.BackgroundColor3 = f and j or Color3.fromRGB(45, 45, 58);
		J.Position = f and UDim2.new(1, -16, .5, -7) or UDim2.new(0, 2, .5, -7);
		if Y == "ESP" then
			if f then
				pD();
			else
				GD();
			end;
		end;
		if Y == "Chams" then
			if not f then
				ED();
			end;
		end;
		if Y == "GadgetESP" then
			if not f then
				rD();
			end;
		end;
		if Y == "Hitbox" and not f then
			sD();
		end;
		if Y == "DeviceSpoof" and f then
			zD();
		end;
		if Y == "Potato" then
			JK(f);
		end;
		if Y == "CustomFOV" then
			if f then
				YD();
			else
				pcall(function()
					k.FieldOfView = dD;
				end);
			end;
		end;
		if Y == "MobileAim" and f then
			n.Aimbot = true;
		end;
		if Y == "KillAura" and not f then
			lD = nil;
		end;
		if Y == "ScreenStretch" and (f and not z) then
			z = true;
		end;
		I();
		r();
	end);
end;
local function DK(f, Y, u, F, Q, J)
	local v = Instance.new("Frame");
	v.LayoutOrder = tK(f);
	v.Size = UDim2.new(1, 0, 0, 46);
	v.BackgroundColor3 = T;
	v.BorderSizePixel = 0;
	v.Parent = f;
	(Instance.new("UICorner", v)).CornerRadius = UDim.new(0, 8);
	local N = Instance.new("TextLabel");
	N.Size = UDim2.new(.65, 0, 0, 16);
	N.Position = UDim2.new(0, 10, 0, 4);
	N.BackgroundTransparency = 1;
	N.Text = Y;
	N.TextColor3 = E;
	N.TextSize = 11;
	N.Font = y;
	N.TextXAlignment = Enum.TextXAlignment.Left;
	N.Parent = v;
	local k = Instance.new("TextLabel");
	k.Size = UDim2.new(.3, -8, 0, 16);
	k.Position = UDim2.new(.7, 0, 0, 4);
	k.BackgroundTransparency = 1;
	k.Text = tostring(n[u]);
	k.TextColor3 = j;
	k.TextSize = 11;
	k.Font = y;
	k.TextXAlignment = Enum.TextXAlignment.Right;
	k.Parent = v;
	local w = Instance.new("TextButton");
	w.Size = UDim2.new(1, -20, 0, 8);
	w.Position = UDim2.new(0, 10, 0, 26);
	w.BackgroundColor3 = Color3.fromRGB(40, 40, 55);
	w.Text = "";
	w.Parent = v;
	(Instance.new("UICorner", w)).CornerRadius = UDim.new(1, 0);
	local g = Instance.new("Frame");
	g.Size = UDim2.new(math.clamp(((n[u] - F)) / math.max(Q - F, .001), 0, 1), 0, 1, 0);
	g.BackgroundColor3 = j;
	g.BorderSizePixel = 0;
	g.Parent = w;
	(Instance.new("UICorner", g)).CornerRadius = UDim.new(1, 0);
	local function B(f)
		local d = math.clamp(((f - w.AbsolutePosition.X)) / math.max(w.AbsoluteSize.X, 1), 0, 1);
		local Y = F + d * ((Q - F));
		Y = math.floor(Y / J + .5) * J;
		Y = math.clamp(Y, F, Q);
		n[u] = Y;
		g.Size = UDim2.new(((Y - F)) / math.max(Q - F, .001), 0, 1, 0);
		k.Text = tostring(Y);
		if u == "CursorSize" then
			c.Size = UDim2.new(0, Y, 0, Y);
		end;
		if u == "FOVValue" and n.CustomFOV then
			YD();
		end;
		I();
	end;
	w.MouseButton1Down:Connect(function()
		local f, Y;
		f = d.InputChanged:Connect(function(f)
				if f.UserInputType == Enum.UserInputType.MouseMovement or f.UserInputType == Enum.UserInputType.Touch then
					B(f.Position.X);
				end;
			end);
		Y = d.InputEnded:Connect(function(d)
				if d.UserInputType == Enum.UserInputType.MouseButton1 or d.UserInputType == Enum.UserInputType.Touch then
					if f then
						f:Disconnect();
					end;
					if Y then
						Y:Disconnect();
					end;
				end;
			end);
		pcall(function()
			B((d:GetMouseLocation()).X);
		end);
	end);
end;
local function lK(f, d, Y, u)
	local F = Instance.new("Frame");
	F.LayoutOrder = tK(f);
	F.Size = UDim2.new(1, 0, 0, 32);
	F.BackgroundColor3 = T;
	F.BorderSizePixel = 0;
	F.Parent = f;
	(Instance.new("UICorner", F)).CornerRadius = UDim.new(0, 8);
	local Q = Instance.new("TextLabel");
	Q.Size = UDim2.new(.4, 0, 1, 0);
	Q.Position = UDim2.new(0, 10, 0, 0);
	Q.BackgroundTransparency = 1;
	Q.Text = d;
	Q.TextColor3 = E;
	Q.TextSize = 11;
	Q.Font = y;
	Q.TextXAlignment = Enum.TextXAlignment.Left;
	Q.Parent = F;
	local J = 1;
	for f, d in ipairs(u) do
		if d == n[Y] then
			J = f;
		end;
	end;
	local v = Instance.new("TextButton");
	v.Size = UDim2.new(.55, -12, 0, 22);
	v.Position = UDim2.new(.45, 0, .5, -11);
	v.BackgroundColor3 = Color3.fromRGB(35, 32, 48);
	v.Text = tostring(n[Y]);
	v.TextColor3 = j;
	v.TextSize = 11;
	v.Font = y;
	v.Parent = F;
	(Instance.new("UICorner", v)).CornerRadius = UDim.new(0, 6);
	v.MouseButton1Click:Connect(function()
		J = J % #u + 1;
		n[Y] = u[J];
		v.Text = u[J];
		if Y == "CursorName" then
			fD(n.CursorName);
		end;
		if Y == "DeviceMode" and n.DeviceSpoof then
			zD();
		end;
		if Y == "HitboxPart" then
			sD();
		end;
		I();
		r();
	end);
end;
local function aK(f, d, Y, u)
	local F = Instance.new("Frame");
	F.LayoutOrder = tK(f);
	F.Size = UDim2.new(1, 0, 0, 52);
	F.BackgroundColor3 = T;
	F.BorderSizePixel = 0;
	F.Parent = f;
	(Instance.new("UICorner", F)).CornerRadius = UDim.new(0, 8);
	local Q = Instance.new("TextLabel");
	Q.Size = UDim2.new(1, -16, 0, 14);
	Q.Position = UDim2.new(0, 10, 0, 4);
	Q.BackgroundTransparency = 1;
	Q.Text = d;
	Q.TextColor3 = U;
	Q.TextSize = 11;
	Q.Font = y;
	Q.TextXAlignment = Enum.TextXAlignment.Left;
	Q.Parent = F;
	local J = Instance.new("TextBox");
	J.Size = UDim2.new(1, -20, 0, 22);
	J.Position = UDim2.new(0, 10, 0, 22);
	J.BackgroundColor3 = Color3.fromRGB(14, 14, 20);
	J.BorderSizePixel = 0;
	J.Text = tostring(n[Y] or u or "");
	J.PlaceholderText = u or "";
	J.TextColor3 = E;
	J.TextSize = 12;
	J.Font = y;
	J.ClearTextOnFocus = false;
	J.Parent = F;
	(Instance.new("UICorner", J)).CornerRadius = UDim.new(0, 6);
	J.FocusLost:Connect(function()
		local f = J.Text;
		if not f or f == "" then
			f = u or "default";
			J.Text = f;
		end;
		n[Y] = f;
		I();
	end);
end;
local function SK(f, d, Y)
	local u = Instance.new("TextButton");
	u.LayoutOrder = tK(f);
	u.Size = UDim2.new(1, 0, 0, 30);
	u.BackgroundColor3 = Color3.fromRGB(35, 30, 55);
	u.Text = d;
	u.TextColor3 = j;
	u.TextSize = 12;
	u.Font = y;
	u.Parent = f;
	(Instance.new("UICorner", u)).CornerRadius = UDim.new(0, 8);
	u.MouseButton1Click:Connect(function()
		Y();
		r();
	end);
end;
local nK = PK("Combat");
local ZK = PK("Player");
local zK = PK("Stream");
local IK = PK("Staff");
local KK = PK("Mobile");
local LK = PK("Visuals");
local GK = PK("Config");
VK(nK, "Aimbot");
hK(nK, "Aimbot", "Aimbot");
lK(nK, "Key", "AimKey", {
	"MB1",
	"MB2",
	"E",
	"Q",
	"F",
});
lK(nK, "Mode", "AimMode", { "Hold", "Toggle", "Always" });
DK(nK, "FOV", "AimFOV", 40, 350, 1);
DK(nK, "Smooth", "AimSmooth", .1, 1, .05);
hK(nK, "Show FOV", "ShowFOV");
hK(nK, "Wall Check", "WallCheck");
hK(nK, "Team Check", "TeamCheck");
hK(nK, "Prediction", "Prediction");
DK(nK, "Predict", "PredictAmount", 0, .35, .01);
VK(nK, "Triggerbot");
hK(nK, "Triggerbot", "Triggerbot");
DK(nK, "Trigger FOV", "TriggerFOV", 15, 150, 1);
DK(nK, "Trigger Delay", "TriggerDelay", .03, .25, .01);
VK(nK, "Kill Aura");
hK(nK, "Kill Aura", "KillAura");
DK(nK, "Range", "KillAuraRange", 20, 200, 5);
DK(nK, "Behind Dist", "KillAuraBehind", 1.5, 8, .1);
VK(nK, "Camera FOV");
hK(nK, "Custom FOV", "CustomFOV");
DK(nK, "FOV Value", "FOVValue", 40, 120, 1);
VK(nK, "Hitbox Expand");
hK(nK, "Hitbox Expand", "Hitbox");
lK(nK, "Part", "HitboxPart", { "Head", "Torso" });
DK(nK, "Size", "HitboxSize", 1.5, 10, .5);
VK(ZK, "Move");
hK(ZK, "Speed", "Speed");
DK(ZK, "Speed Value", "SpeedValue", 16, 80, 1);
hK(ZK, "Noclip", "Noclip");
hK(ZK, "Anti-Bow", "AntiBow");
VK(ZK, "Device Spoof");
hK(ZK, "Device Spoof", "DeviceSpoof");
lK(ZK, "Mode", "DeviceMode", { "Console", "Desktop", "Mobile" });
DK(ZK, "Delay (sec)", "DeviceSpoofDelay", .3, 5, .1);
SK(ZK, "Apply Device Now", zD);
VK(ZK, "Screen Stretch");
hK(ZK, "Screen Stretch", "ScreenStretch");
DK(ZK, "Stretch Amount", "StretchAmount", .3, 1, .01);
VK(zK, "Stream");
hK(zK, "Stream Proof", "StreamProof");
aK(zK, "Name", "SpoofName", "Player");
hK(zK, "Verified", "ShowVerified");
VK(IK, "Staff");
hK(IK, "Detect", "StaffDetect");
hK(IK, "Leave", "StaffLeave");
VK(KK, "Mobile Aim");
hK(KK, "Mobile Aim ON", "MobileAim");
DK(KK, "Smooth", "MobileSmooth", .1, 1, .05);
DK(KK, "FOV", "MobileFOV", 40, 350, 1);
hK(KK, "Show FOV", "MobileShowFOV");
VK(LK, "ESP");
hK(LK, "ESP Enabled", "ESP");
hK(LK, "Boxes", "ShowBoxes");
lK(LK, "Box Style", "BoxStyle", { "Corner", "Full", "Both" });
hK(LK, "Names", "ShowNames");
hK(LK, "Distance", "ShowDistance");
hK(LK, "Health", "ShowHealth");
hK(LK, "Head Dot", "ShowHeadDot");
hK(LK, "Chams ESP", "Chams");
hK(LK, "Gadget ESP", "GadgetESP");
hK(LK, "Radar ESP", "Radar");
DK(LK, "Radar Size", "RadarSize", 80, 220, 5);
DK(LK, "Radar Range", "RadarRange", 50, 400, 10);
SK(LK, "Force Refresh ESP", pD);
VK(LK, "ESP Color");
hK(LK, "RGB ESP", "RGBESP");
DK(LK, "Red", "ESPColorR", 0, 255, 1);
DK(LK, "Green", "ESPColorG", 0, 255, 1);
DK(LK, "Blue", "ESPColorB", 0, 255, 1);
VK(GK, "Config");
aK(GK, "Name", "ConfigName", "default");
SK(GK, "Save", I);
SK(GK, "Load", function()
	K();
end);
hK(GK, "FPS + MS", "ShowPerf");
hK(GK, "Potato", "Potato");
VK(GK, "Status");
local oK = Instance.new("TextLabel");
oK.LayoutOrder = tK(GK);
oK.Size = UDim2.new(1, 0, 0, 40);
oK.BackgroundColor3 = T;
oK.BorderSizePixel = 0;
oK.Text = "Executor: " .. (e .. " | Vis: Green/Red");
oK.TextColor3 = E;
oK.TextSize = 12;
oK.Font = y;
oK.Parent = GK;
(Instance.new("UICorner", oK)).CornerRadius = UDim.new(0, 8);
qK("Combat");
for f, d in pairs(XK) do
	pcall(function()
		local f = d:FindFirstChildOfClass("UIListLayout");
		if f then
			d.CanvasSize = UDim2.new(0, 0, 0, f.AbsoluteContentSize.Y + 16);
		end;
	end);
end;
local jK = Instance.new("TextButton");
jK.Size = UDim2.new(0, 60, 0, 40);
jK.Position = UDim2.new(1, -70, 0, 10);
jK.BackgroundColor3 = Color3.fromRGB(30, 30, 40);
jK.Text = "OPEN";
jK.TextColor3 = j;
jK.TextSize = 14;
jK.Font = y;
jK.Visible = true;
jK.Parent = NK;
(Instance.new("UICorner", jK)).CornerRadius = UDim.new(0, 8);
jK.MouseButton1Click:Connect(function()
	kK.Visible = true;
	jK.Visible = false;
end);
local function OK()
	jK.Visible = not kK.Visible;
end;
local pK, TK, EK;
wK.InputBegan:Connect(function(f)
	if f.UserInputType == Enum.UserInputType.MouseButton1 or f.UserInputType == Enum.UserInputType.Touch then
		pK = true;
		TK = f.Position;
		EK = kK.Position;
	end;
end);
wK.InputEnded:Connect(function(f)
	if f.UserInputType == Enum.UserInputType.MouseButton1 or f.UserInputType == Enum.UserInputType.Touch then
		pK = false;
	end;
end);
d.InputChanged:Connect(function(f)
	if pK and ((f.UserInputType == Enum.UserInputType.MouseMovement or f.UserInputType == Enum.UserInputType.Touch)) then
		local d = f.Position - TK;
		kK.Position = UDim2.new(EK.X.Scale, EK.X.Offset + d.X, EK.Y.Scale, EK.Y.Offset + d.Y);
	end;
end);
BK.MouseButton1Click:Connect(function()
	kK.Visible = false;
	OK();
end);
d.InputBegan:Connect(function(f)
	if f.KeyCode == Enum.KeyCode.RightControl or f.KeyCode == Enum.KeyCode.LeftControl then
		kK.Visible = not kK.Visible;
		OK();
		r();
	end;
end);
local UK = {
		MB1 = Enum.UserInputType.MouseButton1,
		MB2 = Enum.UserInputType.MouseButton2,
		E = Enum.KeyCode.E,
		Q = Enum.KeyCode.Q,
		F = Enum.KeyCode.F,
	};
local yK = false;
local CK;
local function xK(f)
	local d = UK[n.AimKey] or Enum.UserInputType.MouseButton2;
	local Y = tostring(d);
	if string.find(Y, "MouseButton", 1, true) then
		return f.UserInputType == d;
	end;
	if string.find(Y, "KeyCode", 1, true) then
		return f.KeyCode == d;
	end;
	return false;
end;
d.InputBegan:Connect(function(f, d)
	if not n.Aimbot or n.MobileAim then
		return;
	end;
	if not xK(f) then
		return;
	end;
	if n.AimMode == "Hold" then
		yK = true;
	elseif n.AimMode == "Toggle" then
		yK = not yK;
	end;
end);
d.InputEnded:Connect(function(f)
	if n.AimMode == "Hold" and xK(f) then
		yK = false;
	end;
end);
local function RK(f)
	if CK then
		CK:Disconnect();
		CK = nil;
	end;
	if not f then
		local f = JD(w);
		if f then
			for f, d in ipairs(f:GetDescendants()) do
				if d:IsA("BasePart") then
					d.CanCollide = true;
				end;
			end;
		end;
		return;
	end;
	CK = Y.Stepped:Connect(function()
			local f = JD(w);
			if not f then
				return;
			end;
			for f, d in ipairs(f:GetDescendants()) do
				if d:IsA("BasePart") then
					d.CanCollide = false;
				end;
			end;
		end);
end;
task.spawn(function()
	while true do
		task.wait(.2);
		if n.AntiBow then
			pcall(function()
				local f = JD(w);
				if not f then
					return;
				end;
				local d = f:FindFirstChild("HumanoidRootPart");
				local Y = f:FindFirstChildOfClass("Humanoid");
				if not d or not Y or Y.Health <= 0 then
					return;
				end;
				local u = Y:GetState();
				if u == Enum.HumanoidStateType.Jumping or u == Enum.HumanoidStateType.Freefall then
					return;
				end;
				if d.CFrame.UpVector:Dot(Vector3.yAxis) >= .92 then
					return;
				end;
				local F, Q = d.CFrame:ToOrientation();
				d.CFrame = CFrame.new(d.Position) * CFrame.Angles(0, Q, 0);
			end);
		end;
	end;
end);
task.spawn(function()
	while true do
		task.wait(.5);
		if n.StreamProof then
			local f = tostring(n.SpoofName);
			if n.ShowVerified then
				f = f .. (" " .. vK);
			end;
			pcall(function()
				w.DisplayName = f;
			end);
		end;
	end;
end);
local rK = 33054943;
local HK = {};
task.spawn(function()
	while true do
		task.wait(2);
		if n.StaffDetect then
			for f, d in ipairs(f:GetPlayers()) do
				if d ~= w then
					local f, Y = pcall(function()
							return d:GetRankInGroup(rK);
						end);
					if f and (type(Y) == "number" and Y >= 51) then
						if not HK[d.UserId] then
							HK[d.UserId] = true;
							if n.StaffLeave then
								pcall(function()
									w:Kick("Staff");
								end);
							end;
						end;
					end;
				end;
			end;
		end;
	end;
end);
local AK = Instance.new("ScreenGui");
AK.Name = "MoonFOVGui";
AK.ResetOnSpawn = false;
AK.IgnoreGuiInset = true;
AK.DisplayOrder = 99999;
AK.Parent = m;
local cK = Instance.new("Frame");
cK.AnchorPoint = Vector2.new(.5, .5);
cK.Size = UDim2.new(0, 300, 0, 300);
cK.Position = UDim2.new(.5, 0, .5, 0);
cK.BackgroundTransparency = 1;
cK.BorderSizePixel = 0;
cK.Visible = false;
cK.ZIndex = 999;
cK.Parent = AK;
pcall(function()
	(Instance.new("UICorner", cK)).CornerRadius = UDim.new(1, 0);
end);
local bK;
pcall(function()
	bK = Instance.new("UIStroke");
	bK.Color = Color3.new(1, 1, 1);
	bK.Thickness = 1.5;
	bK.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	bK.Parent = cK;
end);
local fr, dr, Yr, ur = 0, tick(), 0, 0;
Y.Heartbeat:Connect(function()
	local f = JD(w);
	if f then
		local d = f:FindFirstChildOfClass("Humanoid");
		if n.Speed and (d and d.Health > 0) then
			d.WalkSpeed = n.SpeedValue or 24;
		end;
		if n.Noclip then
			if not CK then
				RK(true);
			end;
		elseif CK then
			RK(false);
		end;
	end;
	JK(n.Potato == true);
	pcall(DD);
	pcall(nD);
end);
Y.RenderStepped:Connect(function()
	pcall(function()
		fr = fr + 1;
		if tick() - dr >= 1 then
			Yr = fr;
			fr = 0;
			dr = tick();
		end;
		if c.Visible then
			local f = d:GetMouseLocation();
			c.Position = UDim2.new(0, f.X, 0, f.Y);
		end;
		if n.CustomFOV then
			YD();
		end;
		uD = false;
		local f, Y, u = false, n.AimSmooth or .95, n.AimFOV or 150;
		if n.KillAura and (lD and vD(lD)) then
			uD = true;
		elseif not n.KillAura then
			if n.MobileAim then
				f = true;
				Y = n.MobileSmooth or .9;
				u = n.MobileFOV or 160;
			elseif n.Aimbot then
				f = yK or n.AimMode == "Always";
				Y = n.AimSmooth or .95;
				u = n.AimFOV or 150;
			end;
		end;
		if f then
			local f, d = MD(u, true);
			if d then
				uD = true;
				if Y >= .98 then
					k.CFrame = CFrame.new(k.CFrame.Position, d);
				else
					k.CFrame = k.CFrame:Lerp(CFrame.new(k.CFrame.Position, d), math.clamp(Y, .1, 1));
				end;
				QD(d);
			end;
		end;
		FD();
		pcall(OD);
		pcall(UD);
		pcall(cD);
		pcall(uK);
		ur = ur + 1;
		if ur >= 2 then
			ur = 0;
			pcall(PD);
		end;
		local F, Q = false, n.AimFOV or 150;
		if n.MobileAim then
			F = n.MobileShowFOV;
			Q = n.MobileFOV or 160;
		else
			F = n.ShowFOV;
			Q = n.AimFOV or 150;
		end;
		cK.Size = UDim2.new(0, Q * 2, 0, Q * 2);
		cK.Position = UDim2.new(.5, 0, .5, 0);
		cK.Visible = F;
		if bK then
			if n.RGBESP then
				bK.Color = R();
			end;
		end;
	end);
end);
local Fr = Instance.new("TextLabel");
Fr.Name = "MoonFPSLabel";
Fr.BackgroundTransparency = 1;
Fr.TextColor3 = j;
Fr.TextSize = 14;
Fr.Font = Enum.Font.GothamBold;
Fr.TextStrokeTransparency = 0;
Fr.Position = UDim2.new(0, 10, 0, 10);
Fr.Size = UDim2.new(0, 200, 0, 20);
Fr.Visible = false;
Fr.Parent = m;
task.spawn(function()
	while true do
		task.wait(.5);
		if n.ShowPerf then
			local f = 0;
			pcall(function()
				f = math.floor(F.Network.ServerStatsItem["Data Ping"]:GetValue());
			end);
			Fr.Text = "FPS: " .. (Yr .. ("  MS: " .. f));
			Fr.Visible = true;
		else
			Fr.Visible = false;
		end;
	end;
end);
task.spawn(function()
	while true do
		task.wait(15);
		I();
	end;
end);
if n.CursorName and n.CursorName ~= "Off" then
	fD(n.CursorName);
end;
if n.CustomFOV then
	YD();
end;
l(1, "Done");
task.wait(.35);
pcall(function()
	i:Destroy();
end);
kK.Visible = true;
jK.Visible = false;
print("[Moon Hub] PUBLIC MOBILE | " .. (e .. " | Vis Green/Red"));
