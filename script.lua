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
local Z = game:GetService("Players");
local o = game:GetService("UserInputService");
local x = game:GetService("RunService");
local i = game:GetService("Lighting");
local m = game:GetService("Stats");
local j = game:GetService("HttpService");
local a = game:GetService("TweenService");
local n = game:GetService("ReplicatedStorage");
local O = game:GetService("VirtualInputManager");
local y = workspace.CurrentCamera;
local f = Z.LocalPlayer or Z.PlayerAdded:Wait();
local s = f:WaitForChild("PlayerGui", 60);
if not s then
	warn("[Moon] PlayerGui timeout");
	return;
end;
local function G()
	if gethui then
		local Z, o = pcall(function()
				return gethui();
			end);
		if Z and o then
			return o;
		end;
	end;
	return game:GetService("CoreGui");
end;
local I = G();
pcall(function()
	for Z, o in ipairs({
		"MoonHubUI",
		"MoonCursorUI",
		"MoonLoadUI",
		"MoonFOVGui",
		"MoonESPGui",
		"MoonMobileESPGui",
	}) do
		local x = s:FindFirstChild(o);
		if x then
			x:Destroy();
		end;
		local i = I:FindFirstChild(o);
		if i then
			i:Destroy();
		end;
	end;
end);
task.wait(.05);
local S;
pcall(function()
	S = f:GetMouse();
end);
local function P()
	local Z = "Unknown";
	pcall(function()
		if identifyexecutor then
			local o, x = identifyexecutor();
			Z = tostring(o or "Unknown");
			if x then
				Z = Z .. (" " .. tostring(x));
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
		elseif SecureDelta then
			Z = "Delta";
		end;
	end);
	return Z;
end;
local R = P();
local u = Instance.new("ScreenGui");
u.Name = "MoonLoadUI";
u.ResetOnSpawn = false;
u.IgnoreGuiInset = true;
u.DisplayOrder = 9999;
u.Parent = s;
task.spawn(function()
	task.wait(8);
	pcall(function()
		if u and u.Parent then
			u:Destroy();
		end;
	end);
end);
local l = Instance.new("Frame");
l.Size = UDim2.new(1, 0, 1, 0);
l.BackgroundColor3 = Color3.fromRGB(8, 8, 12);
l.BorderSizePixel = 0;
l.Parent = u;
local X = Instance.new("Frame");
X.Size = UDim2.new(0, 320, 0, 160);
X.Position = UDim2.new(.5, -160, .5, -80);
X.BackgroundColor3 = Color3.fromRGB(16, 16, 22);
X.BorderSizePixel = 0;
X.Parent = l;
(Instance.new("UICorner", X)).CornerRadius = UDim.new(0, 14);
local V = Instance.new("TextLabel");
V.Size = UDim2.new(1, -20, 0, 28);
V.Position = UDim2.new(0, 10, 0, 14);
V.BackgroundTransparency = 1;
V.Text = "MOON HUB";
V.TextColor3 = Color3.fromRGB(138, 99, 255);
V.TextSize = 20;
V.Font = Enum.Font.GothamBold;
V.Parent = X;
local k = Instance.new("TextLabel");
k.Size = UDim2.new(1, -20, 0, 18);
k.Position = UDim2.new(0, 10, 0, 42);
k.BackgroundTransparency = 1;
k.Text = "jailbird";
k.TextColor3 = Color3.fromRGB(160, 160, 180);
k.TextSize = 12;
k.Font = Enum.Font.Gotham;
k.Parent = X;
local v = Instance.new("TextLabel");
v.Size = UDim2.new(1, -20, 0, 18);
v.Position = UDim2.new(0, 10, 0, 70);
v.BackgroundTransparency = 1;
v.Text = "Starting...";
v.TextColor3 = Color3.fromRGB(220, 220, 230);
v.TextSize = 12;
v.Font = Enum.Font.Gotham;
v.TextXAlignment = Enum.TextXAlignment.Left;
v.Parent = X;
local F = Instance.new("Frame");
F.Size = UDim2.new(1, -24, 0, 10);
F.Position = UDim2.new(0, 12, 0, 100);
F.BackgroundColor3 = Color3.fromRGB(30, 30, 40);
F.BorderSizePixel = 0;
F.Parent = X;
(Instance.new("UICorner", F)).CornerRadius = UDim.new(1, 0);
local K = Instance.new("Frame");
K.Size = UDim2.new(0, 0, 1, 0);
K.BackgroundColor3 = Color3.fromRGB(138, 99, 255);
K.BorderSizePixel = 0;
K.Parent = F;
(Instance.new("UICorner", K)).CornerRadius = UDim.new(1, 0);
local H = Instance.new("TextLabel");
H.Size = UDim2.new(1, -20, 0, 32);
H.Position = UDim2.new(0, 10, 0, 118);
H.BackgroundTransparency = 1;
H.Text = "Executor: " .. R;
H.TextColor3 = Color3.fromRGB(140, 140, 160);
H.TextSize = 11;
H.Font = Enum.Font.Gotham;
H.TextXAlignment = Enum.TextXAlignment.Left;
H.TextYAlignment = Enum.TextYAlignment.Top;
H.Parent = X;
local function L(Z, o)
	Z = math.clamp(Z, 0, 1);
	pcall(function()
		v.Text = o or v.Text;
		(a:Create(K, TweenInfo.new(.25, Enum.EasingStyle.Quad), { Size = UDim2.new(Z, 0, 1, 0) })):Play();
	end);
end;
L(.08, "Detecting executor...");
task.wait(.2);
L(.2, "Executor: " .. R);
task.wait(.15);
L(.35, "Loading config...");
task.wait(.1);
local function J(Z, o)
	pcall(function()
		if writefile then
			writefile(Z, o);
		end;
	end);
end;
local function Q(Z)
	local o, x = pcall(function()
			if isfile and (isfile(Z) and readfile) then
				return readfile(Z);
			end;
		end);
	return o and x or nil;
end;
pcall(function()
	if makefolder then
		makefolder("MoonHub");
		makefolder("MoonHub/Configs");
	end;
end);
local b = {};
local q = {
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
		TargetPriority = "Crosshair",
		DesignAccentR = 138,
		DesignAccentG = 99,
		DesignAccentB = 255,
		ConfigName = "default",
	};
for Z, o in pairs(q) do
	b[Z] = o;
end;
local Y = false;
task.delay(2.5, function()
	Y = true;
end);
local function z()
	local Z = (tostring(b.ConfigName or "default")):gsub("[^%w%-%_]", "");
	if Z == "" then
		Z = "default";
	end;
	b.ConfigName = Z;
	b.StretchAmount = math.clamp(tonumber(b.StretchAmount) or .53, .3, 1);
	J("MoonHub/Configs/" .. (Z .. ".json"), j:JSONEncode(b));
	J("MoonHub/Jailbird.json", j:JSONEncode(b));
end;
local function p()
	local Z = (tostring(b.ConfigName or "default")):gsub("[^%w%-%_]", "");
	local o = Q("MoonHub/Configs/" .. (Z .. ".json")) or Q("MoonHub/Jailbird.json");
	if o then
		pcall(function()
			local Z = j:JSONDecode(o);
			if type(Z) == "table" then
				for Z, o in pairs(Z) do
					if q[Z] ~= nil then
						b[Z] = o;
					end;
				end;
			end;
		end);
	end;
	if type(b.DeviceSpoofDelay) ~= "number" then
		b.DeviceSpoofDelay = 1.5;
	end;
	b.StretchAmount = math.clamp(tonumber(b.StretchAmount) or .53, .3, 1);
	if not Y then
		local Z = b.ScreenStretch == true;
		b.ScreenStretch = false;
		task.delay(2.6, function()
			if Z then
				b.ScreenStretch = true;
			end;
			Y = true;
		end);
	end;
	if b.HitboxPart ~= "Head" and b.HitboxPart ~= "Torso" then
		b.HitboxPart = "Head";
	end;
	local x = tostring(b.TargetPriority or "Crosshair");
	if x ~= "Crosshair" and (x ~= "Closest" and x ~= "Lowest HP") then
		b.TargetPriority = "Crosshair";
	end;
end;
pcall(p);
L(.5, "Loading Drawing...");
local N = false;
local B = nil;
local function T(Z)
	if not Z or type(Z.new) ~= "function" then
		return false;
	end;
	local o = pcall(function()
			local o = Z.new("Text");
			o.Visible = false;
			o:Remove();
		end);
	if o then
		N = true;
		B = Z;
		return true;
	end;
	return false;
end;
T(Drawing);
pcall(function()
	if getrenv then
		T((getrenv()).Drawing);
	end;
end);
L(.65, N and "Drawing OK" or "Drawing missing (radar unavailable)");
local function U()
	return Color3.fromRGB(math.clamp(tonumber(b.DesignAccentR) or 138, 0, 255), math.clamp(tonumber(b.DesignAccentG) or 99, 0, 255), math.clamp(tonumber(b.DesignAccentB) or 255, 0, 255));
end;
local h = U();
local w = Color3.fromRGB(12, 12, 16);
local e = Color3.fromRGB(18, 18, 24);
local E = Color3.fromRGB(20, 20, 28);
local r = Color3.fromRGB(235, 235, 245);
local c = Color3.fromRGB(160, 160, 180);
local C = Enum.Font.Gotham;
local W = {};
local function A(Z, o, x)
	if o then
		table.insert(W, { kind = Z, obj = o, extra = x });
	end;
end;
local M = Color3.fromRGB(40, 255, 40);
local d = Color3.fromRGB(255, 40, 40);
local function g()
	if b.RGBESP then
		return Color3.fromHSV(((tick() * .4)) % 1, 1, 1);
	end;
	return Color3.fromRGB(math.clamp(tonumber(b.ESPColorR) or 170, 0, 255), math.clamp(tonumber(b.ESPColorG) or 0, 0, 255), math.clamp(tonumber(b.ESPColorB) or 255, 0, 255));
end;
local function t()
	pcall(function()
		o.MouseBehavior = Enum.MouseBehavior.Default;
		o.MouseIconEnabled = true;
	end);
end;
local D = {
		{ Name = "Off", Id = nil },
		{ Name = "Game Crosshair", Id = "GAME" },
		{ Name = "Star Wars", Id = "5462831" },
		{ Name = "Snowflake", Id = "11780968239" },
		{ Name = "Red Dot", Id = "412284862" },
		{ Name = "Diamond", Id = "61210994" },
		{ Name = "Hello Kitty", Id = "10973237327" },
		{ Name = "Eye", Id = "12534101433" },
	};
local ZG = Instance.new("ScreenGui");
ZG.Name = "MoonCursorUI";
ZG.ResetOnSpawn = false;
ZG.IgnoreGuiInset = true;
ZG.DisplayOrder = 10000;
ZG.Parent = s;
local oG = Instance.new("ImageLabel");
oG.BackgroundTransparency = 1;
oG.AnchorPoint = Vector2.new(.5, .5);
oG.Size = UDim2.new(0, 32, 0, 32);
oG.Visible = false;
oG.ZIndex = 100;
oG.Parent = ZG;
local function xG(Z)
	local o = s:FindFirstChild("Crosshair");
	if not o then
		return;
	end;
	pcall(function()
		if o:IsA("ScreenGui") then
			o.Enabled = Z;
		end;
		o.Visible = Z;
		for o, x in ipairs(o:GetDescendants()) do
			if x:IsA("GuiObject") then
				x.Visible = Z;
			end;
		end;
	end);
end;
local function iG(Z)
	Z = Z or b.CursorName or "Off";
	b.CursorName = Z;
	local x = D[1];
	for o, i in ipairs(D) do
		if i.Name == Z then
			x = i;
			break;
		end;
	end;
	xG(false);
	oG.Visible = false;
	local i = math.clamp(tonumber(b.CursorSize) or 32, 8, 128);
	oG.Size = UDim2.new(0, i, 0, i);
	if not x.Id or x.Name == "Off" then
		pcall(function()
			if S then
				S.Icon = "";
			end;
			o.MouseIconEnabled = true;
		end);
		return;
	end;
	if x.Id == "GAME" then
		xG(true);
		pcall(function()
			if S then
				S.Icon = "rbxassetid://0";
			end;
			o.MouseIconEnabled = true;
		end);
		return;
	end;
	pcall(function()
		o.MouseIconEnabled = false;
		if S then
			S.Icon = "rbxassetid://0";
		end;
		oG.Image = "rbxassetid://" .. tostring(x.Id);
		oG.Visible = true;
	end);
end;
local mG = 70;
pcall(function()
	mG = y.FieldOfView;
end);
local function jG()
	if not b.CustomFOV then
		return;
	end;
	local Z = math.clamp(tonumber(b.FOVValue) or 90, 40, 120);
	pcall(function()
		if math.abs(y.FieldOfView - Z) > .5 then
			y.FieldOfView = Z;
		end;
	end);
end;
local aG = false;
local function nG()
	if not Y then
		return;
	end;
	if not b.ScreenStretch then
		return;
	end;
	if aG then
		return;
	end;
	if not y or not y.Parent then
		return;
	end;
	local Z = math.clamp(tonumber(b.StretchAmount) or .53, .3, 1);
	if Z >= .995 then
		return;
	end;
	pcall(function()
		local o = y.CFrame;
		if o then
			y.CFrame = o * CFrame.new(0, 0, 0, 1, 0, 0, 0, Z, 0, 0, 0, 1);
		end;
	end);
end;
local function OG(Z)
	local o = f.Character;
	if not o then
		return;
	end;
	local x = o:FindFirstChild("HumanoidRootPart");
	if not x or not Z then
		return;
	end;
	pcall(function()
		local o = x.Position;
		x.CFrame = CFrame.new(o, Vector3.new(Z.X, o.Y, Z.Z));
	end);
end;
local function yG(Z)
	if not Z then
		return nil;
	end;
	local o, x = pcall(function()
			return Z.Character;
		end);
	return o and x or nil;
end;
local function fG(Z)
	local o = yG(Z);
	if not o then
		return false;
	end;
	local x = o:FindFirstChildOfClass("Humanoid");
	return x ~= nil and x.Health > 0;
end;
local function sG(Z)
	if not Z or Z == f then
		return false;
	end;
	if not b.TeamCheck then
		return true;
	end;
	local o, x = f.Team, Z.Team;
	if o and x then
		return o ~= x;
	end;
	return true;
end;
local GG = {
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
local function IG(Z, o)
	for x = 1, #o, 1 do
		if string.find(Z, o[x], 1, true) then
			return true;
		end;
	end;
	return false;
end;
local function SG(Z)
	if not Z or not Z:IsA("BasePart") then
		return true;
	end;
	local o = string.lower(Z.Name or "");
	local x = string.lower(Z:GetFullName() or "");
	local i = string.lower(tostring(Z.Material));
	if string.find(o, "glass", 1, true) or string.find(i, "glass", 1, true) then
		return true;
	end;
	if Z.Transparency >= .7 then
		return true;
	end;
	if string.find(o, "door", 1, true) or string.find(x, "door", 1, true) then
		if string.find(o, "wood", 1, true) or string.find(x, "wood", 1, true) then
			return false;
		end;
		return true;
	end;
	if string.find(o, "window", 1, true) then
		return true;
	end;
	if Z.CanCollide == false and Z.Transparency >= .25 then
		return true;
	end;
	if IG(o, GG) or IG(x, GG) then
		return false;
	end;
	return false;
end;
local function PG(Z)
	if not b.WallCheck then
		return true;
	end;
	local o = yG(Z);
	local x = o and o:FindFirstChild("Head");
	if not x then
		return false;
	end;
	local i = yG(f);
	local m = y.CFrame.Position + y.CFrame.LookVector * .8;
	local j = x.Position;
	local a = j - m;
	local n = a.Magnitude;
	if n < 1.5 then
		return true;
	end;
	local O = { y };
	if i then
		table.insert(O, i);
	end;
	if o then
		table.insert(O, o);
	end;
	local s = RaycastParams.new();
	s.FilterType = Enum.RaycastFilterType.Exclude;
	s.FilterDescendantsInstances = O;
	s.IgnoreWater = true;
	local G, I, S = 0, m, a.Unit;
	for Z = 1, 12, 1 do
		local x = n - G;
		if x <= .15 then
			return true;
		end;
		local i = workspace:Raycast(I, S * x, s);
		if not i then
			return true;
		end;
		if i.Instance and (o and i.Instance:IsDescendantOf(o)) then
			return true;
		end;
		if SG(i.Instance) then
			table.insert(O, i.Instance);
			s.FilterDescendantsInstances = O;
			local Z = ((i.Position - I)).Magnitude;
			I = i.Position + S * .15;
			G = (G + Z) + .15;
		else
			return false;
		end;
	end;
	return false;
end;
local function RG(Z)
	if b.RGBESP then
		return Color3.fromHSV(((tick() * .4)) % 1, 1, 1);
	end;
	if PG(Z) then
		return M;
	end;
	return d;
end;
local function uG(Z, o)
	if not b.Prediction or not Z then
		return Z.Position;
	end;
	local x = o and ((o:FindFirstChild("HumanoidRootPart") or o:FindFirstChild("Torso")));
	local i = Vector3.zero;
	if x then
		pcall(function()
			i = x.AssemblyLinearVelocity;
		end);
	end;
	return Z.Position + i * ((tonumber(b.PredictAmount) or .12));
end;
local function lG(o, x)
	local i = tostring(b.TargetPriority or "Crosshair");
	local m, j = nil, nil;
	local a = math.huge;
	local n = y.ViewportSize / 2;
	local O = f.Character and ((f.Character:FindFirstChild("HumanoidRootPart") or f.Character:FindFirstChild("Torso")));
	for Z, s in ipairs(Z:GetPlayers()) do
		if s ~= f and (sG(s) and fG(s)) then
			local Z = yG(s);
			local f = Z and Z:FindFirstChild("Head");
			if f then
				local G = uG(f, Z);
				local I, S = y:WorldToViewportPoint(G);
				if S and I.Z > 0 then
					local y = ((Vector2.new(I.X, I.Y) - n)).Magnitude;
					if y <= ((o or 150)) and (((not x) or PG(s))) then
						local o;
						if i == "Lowest HP" then
							local x = Z:FindFirstChildOfClass("Humanoid");
							o = x and x.Health or 100;
						elseif i == "Closest" then
							if O then
								o = ((f.Position - O.Position)).Magnitude;
							else
								o = I.Z;
							end;
						else
							o = y;
						end;
						if o < a then
							a = o;
							m = s;
							j = G;
						end;
					end;
				end;
			end;
		end;
	end;
	return m, j;
end;
local XG = {};
local function VG(Z)
	return Z and ((Z:FindFirstChild("Torso") or Z:FindFirstChild("UpperTorso")));
end;
local function kG(Z)
	if not Z then
		return;
	end;
	local o = XG[Z];
	if o then
		pcall(function()
			Z.Size = o;
		end);
		XG[Z] = nil;
	end;
end;
local function vG()
	for Z, o in pairs(XG) do
		kG(Z);
	end;
	XG = {};
end;
local function FG(Z, o)
	if not Z or not Z:IsA("BasePart") then
		return;
	end;
	if XG[Z] == nil then
		XG[Z] = Z.Size;
	end;
	local x = math.clamp(tonumber(o) or 3, 1.2, 12);
	pcall(function()
		Z.Size = Vector3.new(x, x, x);
		Z.Massless = true;
		Z.CanCollide = false;
	end);
end;
local function KG()
	if not b.Hitbox then
		vG();
		return;
	end;
	local o = b.HitboxPart;
	local x = tonumber(b.HitboxSize) or 3;
	for Z, i in ipairs(Z:GetPlayers()) do
		if i ~= f and (sG(i) and fG(i)) then
			local Z = yG(i);
			if Z then
				local i = Z:FindFirstChild("Head");
				local m = VG(Z);
				if o == "Head" then
					if i then
						FG(i, x);
					end;
					if m then
						kG(m);
					end;
				else
					if m then
						FG(m, x);
					end;
					if i then
						kG(i);
					end;
				end;
			end;
		end;
	end;
end;
local HG = 0;
local function LG()
	local Z = yG(f);
	if not Z then
		return nil;
	end;
	return Z:FindFirstChildOfClass("Tool");
end;
local function JG()
	local Z = LG();
	if not Z then
		return;
	end;
	pcall(function()
		Z:Activate();
	end);
	pcall(function()
		local Z = y.ViewportSize;
		local o = math.floor(Z.X / 2);
		local x = math.floor(Z.Y / 2);
		O:SendMouseButtonEvent(o, x, 0, true, game, 1);
		task.wait(.02);
		O:SendMouseButtonEvent(o, x, 0, false, game, 1);
	end);
end;
local function QG()
	if not b.Triggerbot then
		return;
	end;
	if not fG(f) then
		return;
	end;
	local Z = LG();
	if not Z then
		return;
	end;
	if not y or not y.Parent then
		return;
	end;
	local o = math.max(tonumber(b.TriggerDelay) or .12, .08);
	if tick() - HG < o then
		return;
	end;
	local x = tonumber(b.TriggerFOV) or 55;
	local i = lG(x, b.WallCheck);
	if i and (fG(i) and sG(i)) then
		HG = tick();
		JG();
	end;
end;
local bG = nil;
local function qG(o)
	local x = yG(f);
	local i = x and x:FindFirstChild("HumanoidRootPart");
	if not i then
		return nil;
	end;
	local m = tonumber(b.KillAuraRange) or 90;
	local j, a = nil, m;
	for Z, x in ipairs(Z:GetPlayers()) do
		if x ~= f and (x ~= o and (sG(x) and fG(x))) then
			local Z = yG(x);
			local o = Z and Z:FindFirstChild("HumanoidRootPart");
			local m = Z and Z:FindFirstChild("Head");
			if o and m then
				local Z = ((o.Position - i.Position)).Magnitude;
				if Z < a then
					a = Z;
					j = x;
				end;
			end;
		end;
	end;
	return j;
end;
local function YG(Z)
	local o = yG(f);
	local x = o and o:FindFirstChild("HumanoidRootPart");
	local i = yG(Z);
	local m = i and i:FindFirstChild("HumanoidRootPart");
	local j = i and i:FindFirstChild("Head");
	if not x or not m or not j then
		return false;
	end;
	local a = tonumber(b.KillAuraBehind) or 3.2;
	local n = m.CFrame.LookVector;
	local O = (m.Position - n * a) + Vector3.new(0, 1.4, 0);
	pcall(function()
		x.CFrame = CFrame.new(O, j.Position);
	end);
	pcall(function()
		y.CFrame = CFrame.new(y.CFrame.Position, j.Position);
	end);
	return true;
end;
local function zG()
	if not b.KillAura then
		bG = nil;
		return;
	end;
	local Z = yG(f);
	local o = Z and Z:FindFirstChildOfClass("Humanoid");
	if not o or o.Health <= 0 then
		bG = nil;
		return;
	end;
	if not bG or not fG(bG) or not sG(bG) then
		bG = qG(bG);
	end;
	if not bG then
		return;
	end;
	if YG(bG) then
		JG();
	else
		bG = nil;
	end;
end;
local pG = nil;
pcall(function()
	pG = (n:WaitForChild("GameEvents", 8)):WaitForChild("DeviceUpdate", 8);
end);
local function NG()
	if not pG then
		pcall(function()
			pG = n.GameEvents.DeviceUpdate;
		end);
	end;
	if not pG then
		return;
	end;
	local Z = b.DeviceMode or "Console";
	pcall(function()
		if Z == "Console" then
			pG:FireServer();
			pcall(function()
				pG:FireServer("Console");
			end);
		elseif Z == "Desktop" then
			pG:FireServer("Desktop");
		else
			pG:FireServer("Mobile");
		end;
	end);
end;
task.spawn(function()
	while true do
		local Z = tonumber(b.DeviceSpoofDelay) or 1.5;
		if Z < .3 then
			Z = .3;
		end;
		task.wait(Z);
		if b.DeviceSpoof then
			pcall(NG);
		end;
	end;
end);
L(.78, "Building ESP...");
local BG = Instance.new("ScreenGui");
BG.Name = "MoonMobileESPGui";
BG.ResetOnSpawn = false;
BG.IgnoreGuiInset = true;
BG.DisplayOrder = 99999;
BG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
BG.Parent = I;
local TG = {};
local function UG(Z)
	if not Z then
		return;
	end;
	pcall(function()
		if Z.fullBox then
			Z.fullBox:Destroy();
		end;
	end);
	pcall(function()
		if Z.fullStroke then
			Z.fullStroke:Destroy();
		end;
	end);
	pcall(function()
		if Z.name then
			Z.name:Destroy();
		end;
	end);
	pcall(function()
		if Z.dist then
			Z.dist:Destroy();
		end;
	end);
	pcall(function()
		if Z.healthBg then
			Z.healthBg:Destroy();
		end;
	end);
	pcall(function()
		if Z.healthFill then
			Z.healthFill:Destroy();
		end;
	end);
	pcall(function()
		if Z.headDot then
			Z.headDot:Destroy();
		end;
	end);
	if Z.corners then
		for o = 1, #Z.corners, 1 do
			local x = Z.corners[o];
			pcall(function()
				if x then
					x:Destroy();
				end;
			end);
			Z.corners[o] = nil;
		end;
	end;
end;
local function hG()
	for Z, o in pairs(TG) do
		UG(o);
		TG[Z] = nil;
	end;
	pcall(function()
		for Z, o in ipairs(BG:GetChildren()) do
			pcall(function()
				if o then
					o:Destroy();
				end;
			end);
		end;
	end);
	TG = {};
end;
local function wG(Z)
	local o = TG[Z];
	if not o then
		return;
	end;
	UG(o);
	TG[Z] = nil;
end;
local function eG(Z)
	if TG[Z] then
		return TG[Z];
	end;
	local o = Instance.new("Frame");
	o.BackgroundTransparency = 1;
	o.BorderSizePixel = 0;
	o.Visible = false;
	o.ZIndex = 999;
	o.Parent = BG;
	local x;
	pcall(function()
		x = Instance.new("UIStroke");
		x.Color = Color3.new(1, 1, 1);
		x.Thickness = 1.5;
		x.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
		x.Parent = o;
	end);
	local i = {};
	for Z = 1, 8, 1 do
		local o = Instance.new("Frame");
		o.BorderSizePixel = 0;
		o.BackgroundColor3 = Color3.new(1, 1, 1);
		o.Visible = false;
		o.ZIndex = 999;
		o.Parent = BG;
		i[Z] = o;
	end;
	local m = Instance.new("TextLabel");
	m.BackgroundTransparency = 1;
	m.AnchorPoint = Vector2.new(.5, .5);
	m.TextColor3 = Color3.new(1, 1, 1);
	m.TextSize = 12;
	m.Font = Enum.Font.SourceSansBold;
	m.TextStrokeTransparency = 0;
	m.Visible = false;
	m.ZIndex = 999;
	m.Parent = BG;
	local j = Instance.new("TextLabel");
	j.BackgroundTransparency = 1;
	j.AnchorPoint = Vector2.new(.5, .5);
	j.TextColor3 = Color3.new(1, 1, 1);
	j.TextSize = 10;
	j.Font = Enum.Font.SourceSans;
	j.TextStrokeTransparency = 0;
	j.Visible = false;
	j.ZIndex = 999;
	j.Parent = BG;
	local a = Instance.new("Frame");
	a.BorderSizePixel = 0;
	a.BackgroundColor3 = Color3.new(0, 0, 0);
	a.Visible = false;
	a.ZIndex = 999;
	a.Parent = BG;
	local n = Instance.new("Frame");
	n.BorderSizePixel = 0;
	n.BackgroundColor3 = Color3.new(1, 0, 0);
	n.Visible = false;
	n.ZIndex = 999;
	n.Parent = BG;
	local O = Instance.new("Frame");
	O.BorderSizePixel = 0;
	O.BackgroundColor3 = Color3.new(1, 1, 1);
	O.Visible = false;
	O.ZIndex = 999;
	O.Parent = BG;
	pcall(function()
		local Z = Instance.new("UICorner");
		Z.CornerRadius = UDim.new(1, 0);
		Z.Parent = O;
	end);
	local y = {
			fullBox = o,
			fullStroke = x,
			corners = i,
			name = m,
			dist = j,
			healthBg = a,
			healthFill = n,
			headDot = O,
		};
	TG[Z] = y;
	return y;
end;
local function EG()
	if not b.ESP then
		hG();
		return;
	end;
	if not y or not y.Parent then
		return;
	end;
	local o = y.ViewportSize;
	if o.X < 1 or o.Y < 1 then
		return;
	end;
	local x = {};
	for Z, o in ipairs(Z:GetPlayers()) do
		x[o] = true;
	end;
	for Z in pairs(TG) do
		if not x[Z] then
			wG(Z);
		end;
	end;
	local i = yG(f) and (yG(f)):FindFirstChild("HumanoidRootPart");
	local m = {};
	for Z, o in ipairs(Z:GetPlayers()) do
		if o ~= f and (sG(o) and fG(o)) then
			m[o] = true;
			local Z = yG(o);
			local x = Z and ((Z:FindFirstChild("HumanoidRootPart") or Z:FindFirstChild("Torso")));
			local j = Z and Z:FindFirstChild("Head");
			local a = Z and Z:FindFirstChildOfClass("Humanoid");
			if not x or not j then
				wG(o);
				continue;
			end;
			local n = eG(o);
			local O = RG(o);
			local f, s = y:WorldToViewportPoint(x.Position);
			local G, I = y:WorldToViewportPoint(j.Position + Vector3.new(0, 1.1, 0));
			local S = y:WorldToViewportPoint(x.Position - Vector3.new(0, 2.8, 0));
			if not ((f and (G and (s and (I and (f.Z > 0 and G.Z > 0)))))) then
				n.fullBox.Visible = false;
				n.name.Visible = false;
				n.dist.Visible = false;
				n.healthBg.Visible = false;
				n.healthFill.Visible = false;
				n.headDot.Visible = false;
				for Z = 1, 8, 1 do
					if n.corners[Z] then
						n.corners[Z].Visible = false;
					end;
				end;
				continue;
			end;
			local P = S and S.Y or f.Y + 2.8;
			local R = math.max(math.abs(P - G.Y), 10);
			local u = math.clamp(R / 1.85, 8, 120);
			local l = f.X - u / 2;
			local X = G.Y;
			if b.ShowBoxes and ((b.BoxStyle == "Full" or b.BoxStyle == "Both")) then
				n.fullBox.Size = UDim2.new(0, u, 0, R);
				n.fullBox.Position = UDim2.new(0, l, 0, X);
				n.fullBox.Visible = true;
				if n.fullStroke then
					n.fullStroke.Color = O;
				end;
			else
				n.fullBox.Visible = false;
			end;
			if b.ShowBoxes and ((b.BoxStyle == "Corner" or b.BoxStyle == "Both")) then
				local Z = math.clamp(u * .22, 4, 10);
				local o = n.corners;
				o[1].Size = UDim2.new(0, Z, 0, 2);
				o[1].Position = UDim2.new(0, l, 0, X);
				o[2].Size = UDim2.new(0, 2, 0, Z);
				o[2].Position = UDim2.new(0, l, 0, X);
				o[3].Size = UDim2.new(0, Z, 0, 2);
				o[3].Position = UDim2.new(0, (l + u) - Z, 0, X);
				o[4].Size = UDim2.new(0, 2, 0, Z);
				o[4].Position = UDim2.new(0, (l + u) - 2, 0, X);
				o[5].Size = UDim2.new(0, Z, 0, 2);
				o[5].Position = UDim2.new(0, l, 0, (X + R) - 2);
				o[6].Size = UDim2.new(0, 2, 0, Z);
				o[6].Position = UDim2.new(0, l, 0, (X + R) - Z);
				o[7].Size = UDim2.new(0, Z, 0, 2);
				o[7].Position = UDim2.new(0, (l + u) - Z, 0, (X + R) - 2);
				o[8].Size = UDim2.new(0, 2, 0, Z);
				o[8].Position = UDim2.new(0, (l + u) - 2, 0, (X + R) - Z);
				for Z = 1, 8, 1 do
					o[Z].BackgroundColor3 = O;
					o[Z].Visible = true;
				end;
			else
				for Z = 1, 8, 1 do
					n.corners[Z].Visible = false;
				end;
			end;
			if b.ShowNames then
				n.name.Text = o.DisplayName;
				n.name.Position = UDim2.new(0, f.X, 0, G.Y - 16);
				n.name.TextColor3 = O;
				n.name.Visible = true;
			else
				n.name.Visible = false;
			end;
			if b.ShowDistance and i then
				n.dist.Text = math.floor(((x.Position - i.Position)).Magnitude) .. "m";
				n.dist.Position = UDim2.new(0, f.X, 0, (X + R) + 2);
				n.dist.TextColor3 = O;
				n.dist.Visible = true;
			else
				n.dist.Visible = false;
			end;
			if b.ShowHealth and a then
				local Z = math.clamp(a.Health / math.max(a.MaxHealth, 1), 0, 1);
				n.healthBg.Size = UDim2.new(0, 3, 0, R);
				n.healthBg.Position = UDim2.new(0, l - 6, 0, X);
				n.healthBg.Visible = true;
				local o = math.floor(R * Z);
				n.healthFill.Size = UDim2.new(0, 2, 0, o);
				n.healthFill.Position = UDim2.new(0, l - 5.5, 0, (X + R) - o);
				n.healthFill.BackgroundColor3 = Color3.fromRGB(255 * ((1 - Z)), 255 * Z, 0);
				n.healthFill.Visible = true;
			else
				n.healthBg.Visible = false;
				n.healthFill.Visible = false;
			end;
			if b.ShowHeadDot then
				local Z, o = y:WorldToViewportPoint(j.Position);
				if Z and (o and Z.Z > 0) then
					local o = math.clamp(u * .18, 3, 9);
					n.headDot.Size = UDim2.new(0, o, 0, o);
					n.headDot.Position = UDim2.new(0, Z.X - o / 2, 0, Z.Y - o / 2);
					n.headDot.BackgroundColor3 = O;
					n.headDot.Visible = true;
				else
					n.headDot.Visible = false;
				end;
			else
				n.headDot.Visible = false;
			end;
		end;
	end;
	for Z in pairs(TG) do
		if not m[Z] then
			wG(Z);
		end;
	end;
end;
local function rG()
	hG();
	EG();
end;
local cG = {};
local function CG()
	for Z, o in pairs(cG) do
		pcall(function()
			o:Destroy();
		end);
		cG[Z] = nil;
	end;
end;
local function WG()
	if not b.Chams then
		CG();
		return;
	end;
	local o = {};
	for Z, x in ipairs(Z:GetPlayers()) do
		if x ~= f and (sG(x) and fG(x)) then
			o[x] = true;
			local Z = yG(x);
			if Z then
				local o = RG(x);
				local i = cG[x];
				if not i or not i.Parent then
					i = Instance.new("Highlight");
					i.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop;
					i.FillTransparency = .45;
					i.OutlineTransparency = 0;
					i.Parent = Z;
					cG[x] = i;
				end;
				i.FillColor = o;
				i.OutlineColor = o;
				i.Enabled = true;
			end;
		end;
	end;
	for Z, x in pairs(cG) do
		if not o[Z] then
			pcall(function()
				x:Destroy();
			end);
			cG[Z] = nil;
		end;
	end;
end;
local AG = {
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
local MG = {
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
local dG = {};
local gG = 0;
local function tG()
	for Z, o in pairs(dG) do
		pcall(function()
			o:Destroy();
		end);
		dG[Z] = nil;
	end;
end;
local function DG(Z)
	local o = Z:lower();
	for Z, x in pairs(MG) do
		if o:find(Z, 1, true) then
			return x;
		end;
	end;
	return Color3.fromRGB(255, 255, 255);
end;
local function Z4(Z)
	if Z:IsA("BasePart") then
		return Z;
	end;
	if Z:IsA("Tool") then
		return Z:FindFirstChild("Handle") or Z:FindFirstChildOfClass("BasePart") or Z;
	end;
	if Z:IsA("Model") then
		return Z:FindFirstChildOfClass("BasePart") or Z;
	end;
	return nil;
end;
local function o4()
	if not b.GadgetESP then
		tG();
		return;
	end;
	gG = gG + 1;
	if gG < 30 then
		return;
	end;
	gG = 0;
	local Z = {};
	for o, x in ipairs(workspace:GetDescendants()) do
		local i = x.Name:lower();
		local m = false;
		for Z, o in ipairs(AG) do
			if i:find(o, 1, true) then
				m = true;
				break;
			end;
		end;
		if m then
			local o = Z4(x);
			if o then
				Z[o] = true;
				local x = dG[o];
				if not x or not x.Parent then
					x = Instance.new("Highlight");
					x.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop;
					x.FillTransparency = .4;
					x.OutlineTransparency = 0;
					x.Parent = o;
					dG[o] = x;
				end;
				local m = DG(i);
				x.FillColor = m;
				x.OutlineColor = m;
				x.Enabled = true;
			end;
		end;
	end;
	for o, x in pairs(dG) do
		if not Z[o] then
			pcall(function()
				x:Destroy();
			end);
			dG[o] = nil;
		end;
	end;
end;
local x4 = nil;
local i4 = nil;
local m4 = {};
local function j4(Z)
	if not N or not B then
		return nil;
	end;
	local o, x = pcall(function()
			return B.new(Z);
		end);
	if o and x then
		return x;
	end;
	return nil;
end;
local function a4()
	if not b.Radar then
		if x4 then
			x4.Visible = false;
		end;
		if i4 then
			i4.Visible = false;
		end;
		for Z, o in pairs(m4) do
			if o then
				o.Visible = false;
			end;
		end;
		return;
	end;
	if not N then
		return;
	end;
	if not x4 then
		x4 = j4("Circle");
		x4.Filled = true;
		x4.Color = Color3.fromRGB(0, 0, 0);
		x4.Transparency = .5;
		x4.NumSides = 40;
	end;
	if not i4 then
		i4 = j4("Circle");
		i4.Filled = false;
		i4.Color = Color3.fromRGB(255, 255, 255);
		i4.Thickness = 1.5;
		i4.NumSides = 40;
	end;
	local o = tonumber(b.RadarSize) or 140;
	local x = tonumber(b.RadarRange) or 200;
	local i = o / 2;
	local m = Vector2.new(20 + i, 20 + i);
	x4.Position = m;
	x4.Radius = i;
	x4.Visible = true;
	i4.Position = m;
	i4.Radius = i;
	i4.Visible = true;
	local j = yG(f) and (yG(f)):FindFirstChild("HumanoidRootPart");
	if not j then
		return;
	end;
	local a = math.atan2(y.CFrame.LookVector.X, y.CFrame.LookVector.Z);
	local n = {};
	for Z, o in ipairs(Z:GetPlayers()) do
		if o ~= f and (fG(o) and sG(o)) then
			local Z = yG(o);
			local O = Z and Z:FindFirstChild("HumanoidRootPart");
			if O then
				local Z = O.Position - j.Position;
				if Z.Magnitude <= x then
					local j = Z.X * math.cos(a) - Z.Z * math.sin(a);
					local O = Z.X * math.sin(a) + Z.Z * math.cos(a);
					local y = i / x;
					local f = j * y;
					local s = -O * y;
					local G = m4[o];
					if not G then
						G = j4("Circle");
						G.Filled = true;
						G.NumSides = 8;
						G.Radius = 3;
						m4[o] = G;
					end;
					G.Position = Vector2.new(m.X + f, m.Y + s);
					G.Color = RG(o);
					G.Visible = true;
					n[o] = true;
				end;
			end;
		end;
	end;
	for Z, o in pairs(m4) do
		if not n[Z] then
			o.Visible = false;
		end;
	end;
end;
Z.PlayerRemoving:Connect(function(Z)
	wG(Z);
	pcall(function()
		if cG[Z] then
			cG[Z]:Destroy();
			cG[Z] = nil;
		end;
	end);
	if bG == Z then
		bG = nil;
	end;
	local o = yG(Z);
	if o then
		kG(o:FindFirstChild("Head"));
		kG(VG(o));
	end;
end);
local function n4(Z)
	Z.CharacterRemoving:Connect(function()
		wG(Z);
		pcall(function()
			if cG[Z] then
				cG[Z]:Destroy();
				cG[Z] = nil;
			end;
		end);
	end);
	Z.CharacterAdded:Connect(function()
		task.wait(.3);
		wG(Z);
	end);
end;
Z.PlayerAdded:Connect(n4);
for Z, o in ipairs(Z:GetPlayers()) do
	n4(o);
end;
local O4 = false;
local function y4(o)
	if o == O4 then
		return;
	end;
	O4 = o;
	pcall(function()
		i.GlobalShadows = not o;
		if o then
			i.FogEnd = 9000000000;
			if settings and (settings()).Rendering then
				(settings()).Rendering.QualityLevel = Enum.QualityLevel.Level01;
			end;
			for o, x in ipairs(workspace:GetDescendants()) do
				if x:IsA("BasePart") then
					local o = false;
					for Z, i in ipairs(Z:GetPlayers()) do
						if i.Character and x:IsDescendantOf(i.Character) then
							o = true;
							break;
						end;
					end;
					if not o then
						x.Material = Enum.Material.SmoothPlastic;
						x.CastShadow = false;
					end;
				elseif x:IsA("ParticleEmitter") or x:IsA("Trail") or x:IsA("Beam") then
					x.Enabled = false;
				end;
			end;
		end;
	end);
end;
local f4 = "\226\156\147";
pcall(function()
	if utf8 and utf8.char then
		f4 = utf8.char(57344);
	end;
end);
L(.9, "Building UI...");
local s4 = Instance.new("ScreenGui");
s4.Name = "MoonHubUI";
s4.ResetOnSpawn = false;
s4.IgnoreGuiInset = true;
s4.DisplayOrder = 999;
s4.Parent = s;
local G4 = Instance.new("Frame");
G4.Size = UDim2.new(0, 580, 0, 450);
G4.Position = UDim2.new(.5, -290, .5, -225);
G4.BackgroundColor3 = w;
G4.BackgroundTransparency = .15;
G4.BorderSizePixel = 0;
G4.Visible = false;
G4.Parent = s4;
(Instance.new("UICorner", G4)).CornerRadius = UDim.new(0, 12);
local I4 = Instance.new("Frame");
I4.Size = UDim2.new(1, 0, 0, 40);
I4.BackgroundColor3 = e;
I4.BorderSizePixel = 0;
I4.Parent = G4;
(Instance.new("UICorner", I4)).CornerRadius = UDim.new(0, 12);
local S4 = Instance.new("TextLabel");
S4.Size = UDim2.new(1, -40, 1, 0);
S4.Position = UDim2.new(0, 12, 0, 0);
S4.BackgroundTransparency = 1;
S4.Text = "MOON HUB  |  jailbird";
S4.TextColor3 = h;
S4.TextSize = 14;
S4.Font = C;
S4.TextXAlignment = Enum.TextXAlignment.Left;
S4.Parent = I4;
A("text", S4);
local P4 = Instance.new("TextButton");
P4.Size = UDim2.new(0, 28, 0, 28);
P4.Position = UDim2.new(1, -34, .5, -14);
P4.BackgroundColor3 = Color3.fromRGB(40, 30, 50);
P4.Text = "X";
P4.TextColor3 = c;
P4.Font = C;
P4.TextSize = 14;
P4.Parent = I4;
(Instance.new("UICorner", P4)).CornerRadius = UDim.new(0, 6);
local R4 = Instance.new("TextLabel");
R4.Size = UDim2.new(1, -16, 0, 18);
R4.Position = UDim2.new(0, 8, 0, 40);
R4.BackgroundTransparency = 1;
R4.Text = "Executor: " .. R;
R4.TextColor3 = c;
R4.TextSize = 11;
R4.Font = C;
R4.TextXAlignment = Enum.TextXAlignment.Left;
R4.Parent = G4;
local u4 = Instance.new("ScrollingFrame");
u4.Size = UDim2.new(0, 110, 1, -66);
u4.Position = UDim2.new(0, 8, 0, 60);
u4.BackgroundColor3 = e;
u4.BorderSizePixel = 0;
u4.ScrollBarThickness = 2;
u4.AutomaticCanvasSize = Enum.AutomaticSize.Y;
u4.CanvasSize = UDim2.new(0, 0, 0, 0);
u4.Parent = G4;
(Instance.new("UICorner", u4)).CornerRadius = UDim.new(0, 8);
local l4 = Instance.new("UIListLayout");
l4.Padding = UDim.new(0, 4);
l4.SortOrder = Enum.SortOrder.LayoutOrder;
l4.Parent = u4;
local X4 = Instance.new("UIPadding");
X4.PaddingTop = UDim.new(0, 6);
X4.PaddingLeft = UDim.new(0, 6);
X4.PaddingRight = UDim.new(0, 6);
X4.Parent = u4;
local V4 = Instance.new("Frame");
V4.Size = UDim2.new(1, -130, 1, -70);
V4.Position = UDim2.new(0, 122, 0, 62);
V4.BackgroundTransparency = 1;
V4.Parent = G4;
local k4, v4 = {}, {};
local function F4(Z)
	local o = U();
	for o, x in pairs(k4) do
		x.Visible = (o == Z);
	end;
	for x, i in pairs(v4) do
		i.BackgroundColor3 = (x == Z) and Color3.fromRGB(40, 35, 60) or Color3.fromRGB(22, 22, 30);
		i.TextColor3 = (x == Z) and o or c;
	end;
	t();
end;
local function K4(Z)
	local o = Instance.new("ScrollingFrame");
	o.Size = UDim2.new(1, 0, 1, 0);
	o.BackgroundTransparency = 1;
	o.BorderSizePixel = 0;
	o.ScrollBarThickness = 3;
	o.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	o.CanvasSize = UDim2.new(0, 0, 0, 0);
	o.Visible = false;
	o.Parent = V4;
	local x = Instance.new("UIListLayout");
	x.Padding = UDim.new(0, 5);
	x.SortOrder = Enum.SortOrder.LayoutOrder;
	x.FillDirection = Enum.FillDirection.Vertical;
	x.HorizontalAlignment = Enum.HorizontalAlignment.Left;
	x.Parent = o;
	local i = Instance.new("UIPadding");
	i.PaddingBottom = UDim.new(0, 10);
	i.PaddingTop = UDim.new(0, 4);
	i.PaddingLeft = UDim.new(0, 2);
	i.PaddingRight = UDim.new(0, 8);
	i.Parent = o;
	k4[Z] = o;
	local m = Instance.new("TextButton");
	m.Size = UDim2.new(1, 0, 0, 28);
	m.BackgroundColor3 = Color3.fromRGB(22, 22, 30);
	m.Text = Z;
	m.TextColor3 = c;
	m.TextSize = 11;
	m.Font = C;
	m.Parent = u4;
	(Instance.new("UICorner", m)).CornerRadius = UDim.new(0, 6);
	m.MouseButton1Click:Connect(function()
		F4(Z);
	end);
	v4[Z] = m;
	return o;
end;
local function H4(Z)
	local o = ((Z:GetAttribute("O") or 0)) + 1;
	Z:SetAttribute("O", o);
	return o;
end;
local function L4(Z, o)
	local x = Instance.new("TextLabel");
	x.LayoutOrder = H4(Z);
	x.Size = UDim2.new(1, -4, 0, 18);
	x.BackgroundTransparency = 1;
	x.Text = string.upper(o);
	x.TextColor3 = h;
	x.TextSize = 11;
	x.Font = C;
	x.TextXAlignment = Enum.TextXAlignment.Left;
	x.TextYAlignment = Enum.TextYAlignment.Center;
	x.TextTruncate = Enum.TextTruncate.AtEnd;
	x.Parent = Z;
	A("text", x);
end;
local function J4(Z, o, x)
	local i = Instance.new("Frame");
	i.LayoutOrder = H4(Z);
	i.Size = UDim2.new(1, 0, 0, 32);
	i.BackgroundColor3 = E;
	i.BorderSizePixel = 0;
	i.Parent = Z;
	(Instance.new("UICorner", i)).CornerRadius = UDim.new(0, 8);
	local m = Instance.new("TextLabel");
	m.Size = UDim2.new(1, -55, 1, 0);
	m.Position = UDim2.new(0, 10, 0, 0);
	m.BackgroundTransparency = 1;
	m.Text = o;
	m.TextColor3 = r;
	m.TextSize = 11;
	m.Font = C;
	m.TextXAlignment = Enum.TextXAlignment.Left;
	m.Parent = i;
	local j = Instance.new("TextButton");
	j.Size = UDim2.new(0, 40, 0, 18);
	j.Position = UDim2.new(1, -48, .5, -9);
	j.BackgroundColor3 = b[x] and h or Color3.fromRGB(45, 45, 58);
	j.Text = "";
	j.Parent = i;
	A("toggle", j, x);
	(Instance.new("UICorner", j)).CornerRadius = UDim.new(1, 0);
	local a = Instance.new("Frame");
	a.Size = UDim2.new(0, 14, 0, 14);
	a.Position = b[x] and UDim2.new(1, -16, .5, -7) or UDim2.new(0, 2, .5, -7);
	a.BackgroundColor3 = Color3.new(1, 1, 1);
	a.BorderSizePixel = 0;
	a.Parent = j;
	(Instance.new("UICorner", a)).CornerRadius = UDim.new(1, 0);
	j.MouseButton1Click:Connect(function()
		b[x] = not b[x];
		local Z = b[x];
		j.BackgroundColor3 = Z and U() or Color3.fromRGB(45, 45, 58);
		a.Position = Z and UDim2.new(1, -16, .5, -7) or UDim2.new(0, 2, .5, -7);
		if x == "ESP" then
			if Z then
				rG();
			else
				hG();
			end;
		end;
		if x == "Chams" then
			if not Z then
				CG();
			end;
		end;
		if x == "GadgetESP" then
			if not Z then
				tG();
			end;
		end;
		if x == "Hitbox" and not Z then
			vG();
		end;
		if x == "DeviceSpoof" and Z then
			NG();
		end;
		if x == "Potato" then
			y4(Z);
		end;
		if x == "CustomFOV" then
			if Z then
				jG();
			else
				pcall(function()
					y.FieldOfView = mG;
				end);
			end;
		end;
		if x == "MobileAim" and Z then
			b.Aimbot = true;
		end;
		if x == "KillAura" and not Z then
			bG = nil;
		end;
		if x == "ScreenStretch" and (Z and not Y) then
			Y = true;
		end;
		z();
		t();
	end);
end;
local function Q4(Z, x, i, m, j, a)
	local n = Instance.new("Frame");
	n.LayoutOrder = H4(Z);
	n.Size = UDim2.new(1, 0, 0, 46);
	n.BackgroundColor3 = E;
	n.BorderSizePixel = 0;
	n.Parent = Z;
	(Instance.new("UICorner", n)).CornerRadius = UDim.new(0, 8);
	local O = Instance.new("TextLabel");
	O.Size = UDim2.new(.65, 0, 0, 16);
	O.Position = UDim2.new(0, 10, 0, 4);
	O.BackgroundTransparency = 1;
	O.Text = x;
	O.TextColor3 = r;
	O.TextSize = 11;
	O.Font = C;
	O.TextXAlignment = Enum.TextXAlignment.Left;
	O.Parent = n;
	local y = Instance.new("TextLabel");
	y.Size = UDim2.new(.3, -8, 0, 16);
	y.Position = UDim2.new(.7, 0, 0, 4);
	y.BackgroundTransparency = 1;
	y.Text = tostring(b[i]);
	y.TextColor3 = h;
	y.TextSize = 11;
	y.Font = C;
	y.TextXAlignment = Enum.TextXAlignment.Right;
	y.Parent = n;
	local f = Instance.new("TextButton");
	f.Size = UDim2.new(1, -20, 0, 8);
	f.Position = UDim2.new(0, 10, 0, 26);
	f.BackgroundColor3 = Color3.fromRGB(40, 40, 55);
	f.Text = "";
	f.Parent = n;
	(Instance.new("UICorner", f)).CornerRadius = UDim.new(1, 0);
	local s = Instance.new("Frame");
	s.Size = UDim2.new(math.clamp(((b[i] - m)) / math.max(j - m, .001), 0, 1), 0, 1, 0);
	s.BackgroundColor3 = h;
	s.BorderSizePixel = 0;
	s.Parent = f;
	A("fill", s);
	(Instance.new("UICorner", s)).CornerRadius = UDim.new(1, 0);
	local function G(Z)
		local o = math.clamp(((Z - f.AbsolutePosition.X)) / math.max(f.AbsoluteSize.X, 1), 0, 1);
		local x = m + o * ((j - m));
		x = math.floor(x / a + .5) * a;
		x = math.clamp(x, m, j);
		b[i] = x;
		s.Size = UDim2.new(((x - m)) / math.max(j - m, .001), 0, 1, 0);
		y.Text = tostring(x);
		if i == "CursorSize" then
			oG.Size = UDim2.new(0, x, 0, x);
		end;
		if i == "FOVValue" and b.CustomFOV then
			jG();
		end;
		if i == "DesignAccentR" or i == "DesignAccentG" or i == "DesignAccentB" then
			pcall(applyDesign);
		end;
		z();
	end;
	f.MouseButton1Down:Connect(function()
		local Z, x;
		Z = o.InputChanged:Connect(function(Z)
				if Z.UserInputType == Enum.UserInputType.MouseMovement or Z.UserInputType == Enum.UserInputType.Touch then
					G(Z.Position.X);
				end;
			end);
		x = o.InputEnded:Connect(function(o)
				if o.UserInputType == Enum.UserInputType.MouseButton1 or o.UserInputType == Enum.UserInputType.Touch then
					if Z then
						Z:Disconnect();
					end;
					if x then
						x:Disconnect();
					end;
				end;
			end);
		pcall(function()
			G((o:GetMouseLocation()).X);
		end);
	end);
end;
local function b4(Z, o, x, i)
	local m = Instance.new("Frame");
	m.LayoutOrder = H4(Z);
	m.Size = UDim2.new(1, 0, 0, 54);
	m.BackgroundColor3 = E;
	m.BorderSizePixel = 0;
	m.Parent = Z;
	(Instance.new("UICorner", m)).CornerRadius = UDim.new(0, 8);
	local j = Instance.new("TextLabel");
	j.Size = UDim2.new(1, -12, 0, 18);
	j.Position = UDim2.new(0, 10, 0, 4);
	j.BackgroundTransparency = 1;
	j.Text = o;
	j.TextColor3 = r;
	j.TextSize = 11;
	j.Font = C;
	j.TextXAlignment = Enum.TextXAlignment.Left;
	j.Parent = m;
	local a = Instance.new("Frame");
	a.Size = UDim2.new(1, -16, 0, 24);
	a.Position = UDim2.new(0, 8, 0, 26);
	a.BackgroundTransparency = 1;
	a.Parent = m;
	local n = Instance.new("UIListLayout");
	n.FillDirection = Enum.FillDirection.Horizontal;
	n.Padding = UDim.new(0, 5);
	n.Parent = a;
	local O = {};
	local function y()
		local Z = U();
		for o, i in pairs(O) do
			local m = (b[x] == o);
			i.BackgroundColor3 = m and Z or Color3.fromRGB(35, 32, 48);
			i.TextColor3 = m and Color3.fromRGB(20, 20, 28) or c;
		end;
	end;
	local f = #i;
	local s = math.clamp(math.floor(300 / math.max(f, 1)), 48, 90);
	for Z, o in ipairs(i) do
		local i = Instance.new("TextButton");
		i.Size = UDim2.new(0, s, 1, 0);
		i.BackgroundColor3 = Color3.fromRGB(35, 32, 48);
		i.Text = o;
		i.TextColor3 = c;
		i.TextSize = 10;
		i.Font = C;
		i.Parent = a;
		(Instance.new("UICorner", i)).CornerRadius = UDim.new(0, 6);
		O[o] = i;
		A("choice", i, x);
		i.MouseButton1Click:Connect(function()
			b[x] = o;
			y();
			if x == "CursorName" then
				iG(b.CursorName);
			end;
			if x == "DeviceMode" and b.DeviceSpoof then
				NG();
			end;
			if x == "HitboxPart" then
				vG();
			end;
			z();
			t();
		end);
	end;
	y();
	A("choiceRefresh", { refresh = y });
end;
local function q4(Z, o, x, i)
	local m = Instance.new("Frame");
	m.LayoutOrder = H4(Z);
	m.Size = UDim2.new(1, 0, 0, 32);
	m.BackgroundColor3 = E;
	m.BorderSizePixel = 0;
	m.Parent = Z;
	(Instance.new("UICorner", m)).CornerRadius = UDim.new(0, 8);
	local j = Instance.new("TextLabel");
	j.Size = UDim2.new(.4, 0, 1, 0);
	j.Position = UDim2.new(0, 10, 0, 0);
	j.BackgroundTransparency = 1;
	j.Text = o;
	j.TextColor3 = r;
	j.TextSize = 11;
	j.Font = C;
	j.TextXAlignment = Enum.TextXAlignment.Left;
	j.Parent = m;
	local a = 1;
	for Z, o in ipairs(i) do
		if o == b[x] then
			a = Z;
		end;
	end;
	local n = Instance.new("TextButton");
	n.Size = UDim2.new(.55, -12, 0, 22);
	n.Position = UDim2.new(.45, 0, .5, -11);
	n.BackgroundColor3 = Color3.fromRGB(35, 32, 48);
	n.Text = tostring(b[x]);
	n.TextColor3 = h;
	n.TextSize = 11;
	n.Font = C;
	n.Parent = m;
	A("text", n);
	(Instance.new("UICorner", n)).CornerRadius = UDim.new(0, 6);
	n.MouseButton1Click:Connect(function()
		a = a % #i + 1;
		b[x] = i[a];
		n.Text = i[a];
		if x == "CursorName" then
			iG(b.CursorName);
		end;
		if x == "DeviceMode" and b.DeviceSpoof then
			NG();
		end;
		if x == "HitboxPart" then
			vG();
		end;
		z();
		t();
	end);
end;
local function Y4(Z, o, x, i)
	local m = Instance.new("Frame");
	m.LayoutOrder = H4(Z);
	m.Size = UDim2.new(1, 0, 0, 52);
	m.BackgroundColor3 = E;
	m.BorderSizePixel = 0;
	m.Parent = Z;
	(Instance.new("UICorner", m)).CornerRadius = UDim.new(0, 8);
	local j = Instance.new("TextLabel");
	j.Size = UDim2.new(1, -16, 0, 14);
	j.Position = UDim2.new(0, 10, 0, 4);
	j.BackgroundTransparency = 1;
	j.Text = o;
	j.TextColor3 = c;
	j.TextSize = 11;
	j.Font = C;
	j.TextXAlignment = Enum.TextXAlignment.Left;
	j.Parent = m;
	local a = Instance.new("TextBox");
	a.Size = UDim2.new(1, -20, 0, 22);
	a.Position = UDim2.new(0, 10, 0, 22);
	a.BackgroundColor3 = Color3.fromRGB(14, 14, 20);
	a.BorderSizePixel = 0;
	a.Text = tostring(b[x] or i or "");
	a.PlaceholderText = i or "";
	a.TextColor3 = r;
	a.TextSize = 12;
	a.Font = C;
	a.ClearTextOnFocus = false;
	a.Parent = m;
	(Instance.new("UICorner", a)).CornerRadius = UDim.new(0, 6);
	a.FocusLost:Connect(function()
		local Z = a.Text;
		if not Z or Z == "" then
			Z = i or "default";
			a.Text = Z;
		end;
		b[x] = Z;
		z();
	end);
end;
local function z4(Z, o, x)
	local i = Instance.new("TextButton");
	i.LayoutOrder = H4(Z);
	i.Size = UDim2.new(1, 0, 0, 30);
	i.BackgroundColor3 = Color3.fromRGB(35, 30, 55);
	i.Text = o;
	i.TextColor3 = h;
	i.TextSize = 12;
	i.Font = C;
	i.Parent = Z;
	(Instance.new("UICorner", i)).CornerRadius = UDim.new(0, 8);
	i.MouseButton1Click:Connect(function()
		x();
		t();
	end);
end;
local p4 = K4("Combat");
local N4 = K4("Player");
local B4 = K4("Stream");
local T4 = K4("Staff");
local U4 = K4("Mobile");
local h4 = K4("Visuals");
local w4 = K4("Design");
local e4 = K4("Config");
L4(p4, "Aimbot");
J4(p4, "Aimbot", "Aimbot");
b4(p4, "Key", "AimKey", {
	"MB1",
	"MB2",
	"E",
	"Q",
	"F",
});
b4(p4, "Mode", "AimMode", { "Hold", "Toggle", "Always" });
Q4(p4, "FOV", "AimFOV", 40, 350, 1);
Q4(p4, "Smooth", "AimSmooth", .1, 1, .05);
J4(p4, "Show FOV", "ShowFOV");
J4(p4, "Wall Check", "WallCheck");
J4(p4, "Team Check", "TeamCheck");
J4(p4, "Prediction", "Prediction");
Q4(p4, "Predict", "PredictAmount", 0, .35, .01);
b4(p4, "Lock Priority", "TargetPriority", { "Crosshair", "Closest", "Lowest HP" });
L4(p4, "Triggerbot");
J4(p4, "Triggerbot", "Triggerbot");
Q4(p4, "Trigger FOV", "TriggerFOV", 15, 150, 1);
Q4(p4, "Trigger Delay", "TriggerDelay", .03, .25, .01);
L4(p4, "Kill Aura");
J4(p4, "Kill Aura", "KillAura");
Q4(p4, "Range", "KillAuraRange", 20, 200, 5);
Q4(p4, "Behind Dist", "KillAuraBehind", 1.5, 8, .1);
L4(p4, "Camera FOV");
J4(p4, "Custom FOV", "CustomFOV");
Q4(p4, "FOV Value", "FOVValue", 40, 120, 1);
L4(p4, "Hitbox Expand");
J4(p4, "Hitbox Expand", "Hitbox");
b4(p4, "Part", "HitboxPart", { "Head", "Torso" });
Q4(p4, "Size", "HitboxSize", 1.5, 10, .5);
L4(N4, "Move");
J4(N4, "Speed", "Speed");
Q4(N4, "Speed Value", "SpeedValue", 16, 80, 1);
J4(N4, "Noclip", "Noclip");
J4(N4, "Anti-Bow", "AntiBow");
L4(N4, "Device Spoof");
J4(N4, "Device Spoof", "DeviceSpoof");
b4(N4, "Mode", "DeviceMode", { "Console", "Desktop", "Mobile" });
Q4(N4, "Delay (sec)", "DeviceSpoofDelay", .3, 5, .1);
z4(N4, "Apply Device Now", NG);
L4(N4, "Screen Stretch");
J4(N4, "Screen Stretch", "ScreenStretch");
Q4(N4, "Stretch Amount", "StretchAmount", .3, 1, .01);
L4(B4, "Stream");
J4(B4, "Stream Proof", "StreamProof");
Y4(B4, "Name", "SpoofName", "Player");
J4(B4, "Verified", "ShowVerified");
L4(T4, "Staff");
J4(T4, "Detect", "StaffDetect");
J4(T4, "Leave", "StaffLeave");
L4(U4, "Mobile Aim");
J4(U4, "Mobile Aim ON", "MobileAim");
Q4(U4, "Smooth", "MobileSmooth", .1, 1, .05);
Q4(U4, "FOV", "MobileFOV", 40, 350, 1);
J4(U4, "Show FOV", "MobileShowFOV");
L4(h4, "ESP");
J4(h4, "ESP Enabled", "ESP");
J4(h4, "Boxes", "ShowBoxes");
b4(h4, "Box Style", "BoxStyle", { "Corner", "Full", "Both" });
J4(h4, "Names", "ShowNames");
J4(h4, "Distance", "ShowDistance");
J4(h4, "Health", "ShowHealth");
J4(h4, "Head Dot", "ShowHeadDot");
J4(h4, "Chams ESP", "Chams");
J4(h4, "Gadget ESP", "GadgetESP");
J4(h4, "Radar ESP", "Radar");
Q4(h4, "Radar Size", "RadarSize", 80, 220, 5);
Q4(h4, "Radar Range", "RadarRange", 50, 400, 10);
z4(h4, "Force Refresh ESP", rG);
L4(h4, "ESP Color");
J4(h4, "RGB ESP", "RGBESP");
Q4(h4, "Red", "ESPColorR", 0, 255, 1);
Q4(h4, "Green", "ESPColorG", 0, 255, 1);
Q4(h4, "Blue", "ESPColorB", 0, 255, 1);
local function E4()
	h = U();
	local Z = h;
	for o, x in ipairs(W) do
		pcall(function()
			local o, i, m = x.kind, x.obj, x.extra;
			if o == "choiceRefresh" and (type(i) == "table" and i.refresh) then
				i.refresh();
				return;
			end;
			if not i or (typeof(i) == "Instance" and not i.Parent) then
				return;
			end;
			if o == "text" then
				i.TextColor3 = Z;
			elseif o == "fill" then
				i.BackgroundColor3 = Z;
			elseif o == "toggle" then
				if b[m] then
					i.BackgroundColor3 = Z;
				end;
			elseif o == "choice" then
 
			end;
		end);
	end;
	for o, x in pairs(v4) do
		if x.TextColor3 ~= c then
			x.TextColor3 = Z;
		end;
	end;
	pcall(function()
		if FOVStroke then
			FOVStroke.Color = Z;
		end;
		if FPSLabel then
			FPSLabel.TextColor3 = Z;
		end;
		if S4 then
			S4.TextColor3 = Z;
		end;
	end);
end;
L4(w4, "Accent Color");
Q4(w4, "Red", "DesignAccentR", 0, 255, 1);
Q4(w4, "Green", "DesignAccentG", 0, 255, 1);
Q4(w4, "Blue", "DesignAccentB", 0, 255, 1);
z4(w4, "Apply Accent", E4);
z4(w4, "Reset Default", function()
	b.DesignAccentR, b.DesignAccentG, b.DesignAccentB = 138, 99, 255;
	E4();
end);
L4(w4, "Presets");
z4(w4, "Purple", function()
	b.DesignAccentR, b.DesignAccentG, b.DesignAccentB = 138, 99, 255;
	E4();
end);
z4(w4, "Red", function()
	b.DesignAccentR, b.DesignAccentG, b.DesignAccentB = 255, 60, 60;
	E4();
end);
z4(w4, "Green", function()
	b.DesignAccentR, b.DesignAccentG, b.DesignAccentB = 60, 220, 100;
	E4();
end);
z4(w4, "Blue", function()
	b.DesignAccentR, b.DesignAccentG, b.DesignAccentB = 60, 140, 255;
	E4();
end);
z4(w4, "Orange", function()
	b.DesignAccentR, b.DesignAccentG, b.DesignAccentB = 255, 140, 40;
	E4();
end);
z4(w4, "White", function()
	b.DesignAccentR, b.DesignAccentG, b.DesignAccentB = 230, 230, 240;
	E4();
end);
L4(e4, "Config");
Y4(e4, "Name", "ConfigName", "default");
z4(e4, "Save", z);
z4(e4, "Load", function()
	p();
end);
J4(e4, "FPS + MS", "ShowPerf");
J4(e4, "Potato", "Potato");
L4(e4, "Status");
local r4 = Instance.new("TextLabel");
r4.LayoutOrder = H4(e4);
r4.Size = UDim2.new(1, 0, 0, 40);
r4.BackgroundColor3 = E;
r4.BorderSizePixel = 0;
r4.Text = "Executor: " .. (R .. " | Vis: Green/Red");
r4.TextColor3 = r;
r4.TextSize = 12;
r4.Font = C;
r4.Parent = e4;
(Instance.new("UICorner", r4)).CornerRadius = UDim.new(0, 8);
F4("Combat");
for Z, o in pairs(k4) do
	pcall(function()
		local Z = o:FindFirstChildOfClass("UIListLayout");
		if Z then
			o.CanvasSize = UDim2.new(0, 0, 0, Z.AbsoluteContentSize.Y + 16);
		end;
	end);
end;
local c4 = Instance.new("TextButton");
c4.Size = UDim2.new(0, 60, 0, 40);
c4.Position = UDim2.new(1, -70, 0, 10);
c4.BackgroundColor3 = Color3.fromRGB(30, 30, 40);
c4.Text = "OPEN";
c4.TextColor3 = h;
c4.TextSize = 14;
c4.Font = C;
c4.Visible = true;
c4.Parent = s4;
(Instance.new("UICorner", c4)).CornerRadius = UDim.new(0, 8);
c4.MouseButton1Click:Connect(function()
	G4.Visible = true;
	c4.Visible = false;
end);
local function C4()
	c4.Visible = not G4.Visible;
end;
local W4, A4, M4;
I4.InputBegan:Connect(function(Z)
	if Z.UserInputType == Enum.UserInputType.MouseButton1 or Z.UserInputType == Enum.UserInputType.Touch then
		W4 = true;
		A4 = Z.Position;
		M4 = G4.Position;
	end;
end);
I4.InputEnded:Connect(function(Z)
	if Z.UserInputType == Enum.UserInputType.MouseButton1 or Z.UserInputType == Enum.UserInputType.Touch then
		W4 = false;
	end;
end);
o.InputChanged:Connect(function(Z)
	if W4 and ((Z.UserInputType == Enum.UserInputType.MouseMovement or Z.UserInputType == Enum.UserInputType.Touch)) then
		local o = Z.Position - A4;
		G4.Position = UDim2.new(M4.X.Scale, M4.X.Offset + o.X, M4.Y.Scale, M4.Y.Offset + o.Y);
	end;
end);
P4.MouseButton1Click:Connect(function()
	G4.Visible = false;
	C4();
end);
o.InputBegan:Connect(function(Z)
	if Z.KeyCode == Enum.KeyCode.RightControl or Z.KeyCode == Enum.KeyCode.LeftControl then
		G4.Visible = not G4.Visible;
		C4();
		t();
	end;
end);
local d4 = {
		MB1 = Enum.UserInputType.MouseButton1,
		MB2 = Enum.UserInputType.MouseButton2,
		E = Enum.KeyCode.E,
		Q = Enum.KeyCode.Q,
		F = Enum.KeyCode.F,
	};
local g4 = false;
local t4;
local function D4(Z)
	local o = d4[b.AimKey] or Enum.UserInputType.MouseButton2;
	local x = tostring(o);
	if string.find(x, "MouseButton", 1, true) then
		return Z.UserInputType == o;
	end;
	if string.find(x, "KeyCode", 1, true) then
		return Z.KeyCode == o;
	end;
	return false;
end;
o.InputBegan:Connect(function(Z, o)
	if not b.Aimbot or b.MobileAim then
		return;
	end;
	if not D4(Z) then
		return;
	end;
	if b.AimMode == "Hold" then
		g4 = true;
	elseif b.AimMode == "Toggle" then
		g4 = not g4;
	end;
end);
o.InputEnded:Connect(function(Z)
	if b.AimMode == "Hold" and D4(Z) then
		g4 = false;
	end;
end);
local function Z6(Z)
	if t4 then
		t4:Disconnect();
		t4 = nil;
	end;
	if not Z then
		local Z = yG(f);
		if Z then
			for Z, o in ipairs(Z:GetDescendants()) do
				if o:IsA("BasePart") then
					o.CanCollide = true;
				end;
			end;
		end;
		return;
	end;
	t4 = x.Stepped:Connect(function()
			local Z = yG(f);
			if not Z then
				return;
			end;
			for Z, o in ipairs(Z:GetDescendants()) do
				if o:IsA("BasePart") then
					o.CanCollide = false;
				end;
			end;
		end);
end;
task.spawn(function()
	while true do
		task.wait(.2);
		if b.AntiBow then
			pcall(function()
				local Z = yG(f);
				if not Z then
					return;
				end;
				local o = Z:FindFirstChild("HumanoidRootPart");
				local x = Z:FindFirstChildOfClass("Humanoid");
				if not o or not x or x.Health <= 0 then
					return;
				end;
				local i = x:GetState();
				if i == Enum.HumanoidStateType.Jumping or i == Enum.HumanoidStateType.Freefall then
					return;
				end;
				if o.CFrame.UpVector:Dot(Vector3.yAxis) >= .92 then
					return;
				end;
				local m, j = o.CFrame:ToOrientation();
				o.CFrame = CFrame.new(o.Position) * CFrame.Angles(0, j, 0);
			end);
		end;
	end;
end);
task.spawn(function()
	while true do
		task.wait(.5);
		if b.StreamProof then
			local Z = tostring(b.SpoofName);
			if b.ShowVerified then
				Z = Z .. (" " .. f4);
			end;
			pcall(function()
				f.DisplayName = Z;
			end);
		end;
	end;
end);
local o6 = 33054943;
local x6 = {};
task.spawn(function()
	while true do
		task.wait(2);
		if b.StaffDetect then
			for Z, o in ipairs(Z:GetPlayers()) do
				if o ~= f then
					local Z, x = pcall(function()
							return o:GetRankInGroup(o6);
						end);
					if Z and (type(x) == "number" and x >= 51) then
						if not x6[o.UserId] then
							x6[o.UserId] = true;
							if b.StaffLeave then
								pcall(function()
									f:Kick("Staff");
								end);
							end;
						end;
					end;
				end;
			end;
		end;
	end;
end);
local i6 = Instance.new("ScreenGui");
i6.Name = "MoonFOVGui";
i6.ResetOnSpawn = false;
i6.IgnoreGuiInset = true;
i6.DisplayOrder = 99999;
i6.Parent = I;
local m6 = Instance.new("Frame");
m6.AnchorPoint = Vector2.new(.5, .5);
m6.Size = UDim2.new(0, 300, 0, 300);
m6.Position = UDim2.new(.5, 0, .5, 0);
m6.BackgroundTransparency = 1;
m6.BorderSizePixel = 0;
m6.Visible = false;
m6.ZIndex = 999;
m6.Parent = i6;
pcall(function()
	(Instance.new("UICorner", m6)).CornerRadius = UDim.new(1, 0);
end);
local j6;
pcall(function()
	j6 = Instance.new("UIStroke");
	j6.Color = Color3.new(1, 1, 1);
	j6.Thickness = 1.5;
	j6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	j6.Parent = m6;
end);
local a6, n6, O6, y6 = 0, tick(), 0, 0;
x.Heartbeat:Connect(function()
	local Z = yG(f);
	if Z then
		local o = Z:FindFirstChildOfClass("Humanoid");
		if b.Speed and (o and o.Health > 0) then
			o.WalkSpeed = b.SpeedValue or 24;
		end;
		if b.Noclip then
			if not t4 then
				Z6(true);
			end;
		elseif t4 then
			Z6(false);
		end;
	end;
	y4(b.Potato == true);
	pcall(QG);
	pcall(zG);
end);
x.RenderStepped:Connect(function()
	pcall(function()
		a6 = a6 + 1;
		if tick() - n6 >= 1 then
			O6 = a6;
			a6 = 0;
			n6 = tick();
		end;
		if oG.Visible then
			local Z = o:GetMouseLocation();
			oG.Position = UDim2.new(0, Z.X, 0, Z.Y);
		end;
		if b.CustomFOV then
			jG();
		end;
		aG = false;
		local Z, x, i = false, b.AimSmooth or .95, b.AimFOV or 150;
		if b.KillAura and (bG and fG(bG)) then
			aG = true;
		elseif not b.KillAura then
			if b.MobileAim then
				Z = true;
				x = b.MobileSmooth or .9;
				i = b.MobileFOV or 160;
			elseif b.Aimbot then
				Z = g4 or b.AimMode == "Always";
				x = b.AimSmooth or .95;
				i = b.AimFOV or 150;
			end;
		end;
		if Z then
			local Z, o = lG(i, true);
			if o then
				aG = true;
				if x >= .98 then
					y.CFrame = CFrame.new(y.CFrame.Position, o);
				else
					y.CFrame = y.CFrame:Lerp(CFrame.new(y.CFrame.Position, o), math.clamp(x, .1, 1));
				end;
				OG(o);
			end;
		end;
		nG();
		pcall(EG);
		pcall(WG);
		pcall(o4);
		pcall(a4);
		y6 = y6 + 1;
		if y6 >= 2 then
			y6 = 0;
			pcall(KG);
		end;
		local m, j = false, b.AimFOV or 150;
		if b.MobileAim then
			m = b.MobileShowFOV;
			j = b.MobileFOV or 160;
		else
			m = b.ShowFOV;
			j = b.AimFOV or 150;
		end;
		m6.Size = UDim2.new(0, j * 2, 0, j * 2);
		m6.Position = UDim2.new(.5, 0, .5, 0);
		m6.Visible = m;
		if j6 then
			if b.RGBESP then
				j6.Color = g();
			end;
		end;
	end);
end);
local f6 = Instance.new("TextLabel");
f6.Name = "MoonFPSLabel";
f6.BackgroundTransparency = 1;
f6.TextColor3 = h;
f6.TextSize = 14;
f6.Font = Enum.Font.GothamBold;
f6.TextStrokeTransparency = 0;
f6.Position = UDim2.new(0, 10, 0, 10);
f6.Size = UDim2.new(0, 200, 0, 20);
f6.Visible = false;
f6.Parent = I;
task.spawn(function()
	while true do
		task.wait(.5);
		if b.ShowPerf then
			local Z = 0;
			pcall(function()
				Z = math.floor(m.Network.ServerStatsItem["Data Ping"]:GetValue());
			end);
			f6.Text = "FPS: " .. (O6  .. ("  MS: " .. Z));
			f6.Visible = true;
		else
			f6.Visible = false;
		end;
	end;
end);
task.spawn(function()
	while true do
		task.wait(15);
		z();
	end;
end);
if b.CursorName and b.CursorName ~= "Off" then
	iG(b.CursorName);
end;
if b.CustomFOV then
	jG();
end;
L(1, "Done");
task.wait(.35);
pcall(function()
	u:Destroy();
end);
G4.Visible = true;
c4.Visible = false;
print("[Moon Hub] PUBLIC MOBILE | " .. (R .. " | Vis Green/Red"));
