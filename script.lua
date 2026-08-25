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
local E = game:GetService("Players");
local Q = game:GetService("UserInputService");
local b = game:GetService("RunService");
local c = game:GetService("Lighting");
local z = game:GetService("Stats");
local e = game:GetService("HttpService");
local l = game:GetService("TweenService");
local v = game:GetService("ReplicatedStorage");
local r = game:GetService("VirtualInputManager");
local S = workspace.CurrentCamera;
local B = E.LocalPlayer or E.PlayerAdded:Wait();
local s = B:WaitForChild("PlayerGui", 60);
if not s then
	warn("[Moon] PlayerGui timeout");
	return;
end;
local function o()
	if gethui then
		local E, Q = pcall(function()
				return gethui();
			end);
		if E and Q then
			return Q;
		end;
	end;
	return game:GetService("CoreGui");
end;
local x = o();
pcall(function()
	for E, Q in ipairs({
		"MoonHubUI",
		"MoonCursorUI",
		"MoonLoadUI",
		"MoonFOVGui",
		"MoonESPGui",
		"MoonMobileESPGui",
	}) do
		local b = s:FindFirstChild(Q);
		if b then
			b:Destroy();
		end;
		local c = x:FindFirstChild(Q);
		if c then
			c:Destroy();
		end;
	end;
end);
task.wait(.05);
local Y;
pcall(function()
	Y = B:GetMouse();
end);
local function F()
	local E = "Unknown";
	pcall(function()
		if identifyexecutor then
			local Q, b = identifyexecutor();
			E = tostring(Q or "Unknown");
			if b then
				E = E .. (" " .. tostring(b));
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
		elseif SecureDelta then
			E = "Delta";
		end;
	end);
	return E;
end;
local D = F();
local A = Instance.new("ScreenGui");
A.Name = "MoonLoadUI";
A.ResetOnSpawn = false;
A.IgnoreGuiInset = true;
A.DisplayOrder = 9999;
A.Parent = s;
task.spawn(function()
	task.wait(8);
	pcall(function()
		if A and A.Parent then
			A:Destroy();
		end;
	end);
end);
local k = Instance.new("Frame");
k.Size = UDim2.new(1, 0, 1, 0);
k.BackgroundColor3 = Color3.fromRGB(8, 8, 12);
k.BorderSizePixel = 0;
k.Parent = A;
local f = Instance.new("Frame");
f.Size = UDim2.new(0, 320, 0, 160);
f.Position = UDim2.new(.5, -160, .5, -80);
f.BackgroundColor3 = Color3.fromRGB(16, 16, 22);
f.BorderSizePixel = 0;
f.Parent = k;
(Instance.new("UICorner", f)).CornerRadius = UDim.new(0, 14);
local W = Instance.new("TextLabel");
W.Size = UDim2.new(1, -20, 0, 28);
W.Position = UDim2.new(0, 10, 0, 14);
W.BackgroundTransparency = 1;
W.Text = "MOON HUB";
W.TextColor3 = Color3.fromRGB(138, 99, 255);
W.TextSize = 20;
W.Font = Enum.Font.GothamBold;
W.Parent = f;
local U = Instance.new("TextLabel");
U.Size = UDim2.new(1, -20, 0, 18);
U.Position = UDim2.new(0, 10, 0, 42);
U.BackgroundTransparency = 1;
U.Text = "jailbird";
U.TextColor3 = Color3.fromRGB(160, 160, 180);
U.TextSize = 12;
U.Font = Enum.Font.Gotham;
U.Parent = f;
local g = Instance.new("TextLabel");
g.Size = UDim2.new(1, -20, 0, 18);
g.Position = UDim2.new(0, 10, 0, 70);
g.BackgroundTransparency = 1;
g.Text = "Starting...";
g.TextColor3 = Color3.fromRGB(220, 220, 230);
g.TextSize = 12;
g.Font = Enum.Font.Gotham;
g.TextXAlignment = Enum.TextXAlignment.Left;
g.Parent = f;
local O = Instance.new("Frame");
O.Size = UDim2.new(1, -24, 0, 10);
O.Position = UDim2.new(0, 12, 0, 100);
O.BackgroundColor3 = Color3.fromRGB(30, 30, 40);
O.BorderSizePixel = 0;
O.Parent = f;
(Instance.new("UICorner", O)).CornerRadius = UDim.new(1, 0);
local J = Instance.new("Frame");
J.Size = UDim2.new(0, 0, 1, 0);
J.BackgroundColor3 = Color3.fromRGB(138, 99, 255);
J.BorderSizePixel = 0;
J.Parent = O;
(Instance.new("UICorner", J)).CornerRadius = UDim.new(1, 0);
local N = Instance.new("TextLabel");
N.Size = UDim2.new(1, -20, 0, 32);
N.Position = UDim2.new(0, 10, 0, 118);
N.BackgroundTransparency = 1;
N.Text = "Executor: " .. D;
N.TextColor3 = Color3.fromRGB(140, 140, 160);
N.TextSize = 11;
N.Font = Enum.Font.Gotham;
N.TextXAlignment = Enum.TextXAlignment.Left;
N.TextYAlignment = Enum.TextYAlignment.Top;
N.Parent = f;
local function j(E, Q)
	E = math.clamp(E, 0, 1);
	pcall(function()
		g.Text = Q or g.Text;
		(l:Create(J, TweenInfo.new(.25, Enum.EasingStyle.Quad), { Size = UDim2.new(E, 0, 1, 0) })):Play();
	end);
end;
j(.08, "Detecting executor...");
task.wait(.2);
j(.2, "Executor: " .. D);
task.wait(.15);
j(.35, "Loading config...");
task.wait(.1);
local function t(E, Q)
	pcall(function()
		if writefile then
			writefile(E, Q);
		end;
	end);
end;
local function H(E)
	local Q, b = pcall(function()
			if isfile and (isfile(E) and readfile) then
				return readfile(E);
			end;
		end);
	return Q and b or nil;
end;
pcall(function()
	if makefolder then
		makefolder("MoonHub");
		makefolder("MoonHub/Configs");
	end;
end);
local p = {};
local T = {
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
for E, Q in pairs(T) do
	p[E] = Q;
end;
local K = false;
task.delay(2.5, function()
	K = true;
end);
local function u()
	local E = (tostring(p.ConfigName or "default")):gsub("[^%w%-%_]", "");
	if E == "" then
		E = "default";
	end;
	p.ConfigName = E;
	p.StretchAmount = math.clamp(tonumber(p.StretchAmount) or .53, .3, 1);
	t("MoonHub/Configs/" .. (E .. ".json"), e:JSONEncode(p));
	t("MoonHub/Jailbird.json", e:JSONEncode(p));
end;
local function V()
	local E = (tostring(p.ConfigName or "default")):gsub("[^%w%-%_]", "");
	local Q = H("MoonHub/Configs/" .. (E .. ".json")) or H("MoonHub/Jailbird.json");
	if Q then
		pcall(function()
			local E = e:JSONDecode(Q);
			if type(E) == "table" then
				for E, Q in pairs(E) do
					if T[E] ~= nil then
						p[E] = Q;
					end;
				end;
			end;
		end);
	end;
	if type(p.DeviceSpoofDelay) ~= "number" then
		p.DeviceSpoofDelay = 1.5;
	end;
	p.StretchAmount = math.clamp(tonumber(p.StretchAmount) or .53, .3, 1);
	if not K then
		local E = p.ScreenStretch == true;
		p.ScreenStretch = false;
		task.delay(2.6, function()
			if E then
				p.ScreenStretch = true;
			end;
			K = true;
		end);
	end;
	if p.HitboxPart ~= "Head" and p.HitboxPart ~= "Torso" then
		p.HitboxPart = "Head";
	end;
	local b = tostring(p.TargetPriority or "Crosshair");
	if b ~= "Crosshair" and (b ~= "Closest" and b ~= "Lowest HP") then
		p.TargetPriority = "Crosshair";
	end;
end;
pcall(V);
j(.5, "Loading Drawing...");
local G = false;
local q = nil;
local function L(E)
	if not E or type(E.new) ~= "function" then
		return false;
	end;
	local Q = pcall(function()
			local Q = E.new("Text");
			Q.Visible = false;
			Q:Remove();
		end);
	if Q then
		G = true;
		q = E;
		return true;
	end;
	return false;
end;
L(Drawing);
pcall(function()
	if getrenv then
		L((getrenv()).Drawing);
	end;
end);
j(.65, G and "Drawing OK" or "Drawing missing (radar unavailable)");
local function m()
	return Color3.fromRGB(math.clamp(tonumber(p.DesignAccentR) or 138, 0, 255), math.clamp(tonumber(p.DesignAccentG) or 99, 0, 255), math.clamp(tonumber(p.DesignAccentB) or 255, 0, 255));
end;
local M = m();
local Z = Color3.fromRGB(12, 12, 16);
local R = Color3.fromRGB(18, 18, 24);
local w = Color3.fromRGB(20, 20, 28);
local I = Color3.fromRGB(235, 235, 245);
local n = Color3.fromRGB(160, 160, 180);
local d = Enum.Font.Gotham;
local y = {};
local function X(E, Q, b)
	if Q then
		table.insert(y, { kind = E, obj = Q, extra = b });
	end;
end;
local C = Color3.fromRGB(40, 255, 40);
local h = Color3.fromRGB(255, 40, 40);
local function i()
	if p.RGBESP then
		return Color3.fromHSV(((tick() * .4)) % 1, 1, 1);
	end;
	return Color3.fromRGB(math.clamp(tonumber(p.ESPColorR) or 170, 0, 255), math.clamp(tonumber(p.ESPColorG) or 0, 0, 255), math.clamp(tonumber(p.ESPColorB) or 255, 0, 255));
end;
local function a()
	pcall(function()
		Q.MouseBehavior = Enum.MouseBehavior.Default;
		Q.MouseIconEnabled = true;
	end);
end;
local P = { { Name = "Off", Id = nil }, { Name = "TC2", Id = "8680062686" }, { Name = "Cinnamoroll", Id = "11719890577" } };
local Ey = Instance.new("ScreenGui");
Ey.Name = "MoonCursorUI";
Ey.ResetOnSpawn = false;
Ey.IgnoreGuiInset = true;
Ey.DisplayOrder = 10000;
Ey.Parent = s;
local Qy = Instance.new("ImageLabel");
Qy.BackgroundTransparency = 1;
Qy.AnchorPoint = Vector2.new(.5, .5);
Qy.Size = UDim2.new(0, 32, 0, 32);
Qy.Visible = false;
Qy.ZIndex = 100;
Qy.Parent = Ey;
local function by(E)
	local Q = s:FindFirstChild("Crosshair");
	if not Q then
		return;
	end;
	pcall(function()
		if Q:IsA("ScreenGui") then
			Q.Enabled = E;
		end;
		Q.Visible = E;
		for Q, b in ipairs(Q:GetDescendants()) do
			if b:IsA("GuiObject") then
				b.Visible = E;
			end;
		end;
	end);
end;
local function cy(E)
	E = E or p.CursorName or "Off";
	p.CursorName = E;
	local b = P[1];
	for Q, c in ipairs(P) do
		if c.Name == E then
			b = c;
			break;
		end;
	end;
	by(false);
	Qy.Visible = false;
	local c = math.clamp(tonumber(p.CursorSize) or 32, 8, 128);
	Qy.Size = UDim2.new(0, c, 0, c);
	if not b.Id or b.Name == "Off" then
		pcall(function()
			if Y then
				Y.Icon = "";
			end;
			Q.MouseIconEnabled = true;
		end);
		return;
	end;
	if b.Id == "GAME" then
		by(true);
		pcall(function()
			if Y then
				Y.Icon = "rbxassetid://0";
			end;
			Q.MouseIconEnabled = true;
		end);
		return;
	end;
	pcall(function()
		Q.MouseIconEnabled = false;
		if Y then
			Y.Icon = "rbxassetid://0";
		end;
		Qy.Image = "rbxassetid://" .. tostring(b.Id);
		Qy.Visible = true;
		if Q.TouchEnabled and not Q.KeyboardEnabled then
			local E = S.ViewportSize;
			Qy.Position = UDim2.new(0, E.X / 2, 0, E.Y / 2);
		end;
	end);
end;
local zy = 70;
pcall(function()
	zy = S.FieldOfView;
end);
local function ey()
	if not p.CustomFOV then
		return;
	end;
	local E = math.clamp(tonumber(p.FOVValue) or 90, 40, 120);
	pcall(function()
		if math.abs(S.FieldOfView - E) > .5 then
			S.FieldOfView = E;
		end;
	end);
end;
local ly = false;
local function vy()
	if not K then
		return;
	end;
	if not p.ScreenStretch then
		return;
	end;
	if ly then
		return;
	end;
	if not S or not S.Parent then
		return;
	end;
	local E = math.clamp(tonumber(p.StretchAmount) or .53, .3, 1);
	if E >= .995 then
		return;
	end;
	pcall(function()
		local Q = S.CFrame;
		if Q then
			S.CFrame = Q * CFrame.new(0, 0, 0, 1, 0, 0, 0, E, 0, 0, 0, 1);
		end;
	end);
end;
local function ry(E)
	local Q = B.Character;
	if not Q then
		return;
	end;
	local b = Q:FindFirstChild("HumanoidRootPart");
	if not b or not E then
		return;
	end;
	pcall(function()
		local Q = b.Position;
		b.CFrame = CFrame.new(Q, Vector3.new(E.X, Q.Y, E.Z));
	end);
end;
local function Sy(E)
	if not E then
		return nil;
	end;
	local Q, b = pcall(function()
			return E.Character;
		end);
	return Q and b or nil;
end;
local function By(E)
	local Q = Sy(E);
	if not Q then
		return false;
	end;
	local b = Q:FindFirstChildOfClass("Humanoid");
	return b ~= nil and b.Health > 0;
end;
local function sy(E)
	if not E or E == B then
		return false;
	end;
	if not p.TeamCheck then
		return true;
	end;
	local Q, b = B.Team, E.Team;
	if Q and b then
		return Q ~= b;
	end;
	return true;
end;
local oy = {
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
local function xy(E, Q)
	for b = 1, #Q, 1 do
		if string.find(E, Q[b], 1, true) then
			return true;
		end;
	end;
	return false;
end;
local function Yy(E)
	if not E or not E:IsA("BasePart") then
		return true;
	end;
	local Q = string.lower(E.Name or "");
	local b = string.lower(E:GetFullName() or "");
	local c = string.lower(tostring(E.Material));
	if string.find(Q, "glass", 1, true) or string.find(c, "glass", 1, true) then
		return true;
	end;
	if E.Transparency >= .7 then
		return true;
	end;
	if string.find(Q, "door", 1, true) or string.find(b, "door", 1, true) then
		if string.find(Q, "wood", 1, true) or string.find(b, "wood", 1, true) then
			return false;
		end;
		return true;
	end;
	if string.find(Q, "window", 1, true) then
		return true;
	end;
	if E.CanCollide == false and E.Transparency >= .25 then
		return true;
	end;
	if xy(Q, oy) or xy(b, oy) then
		return false;
	end;
	return false;
end;
local function Fy(E)
	if not p.WallCheck then
		return true;
	end;
	local Q = Sy(E);
	local b = Q and Q:FindFirstChild("Head");
	if not b then
		return false;
	end;
	local c = Sy(B);
	local z = S.CFrame.Position + S.CFrame.LookVector * .8;
	local e = b.Position;
	local l = e - z;
	local v = l.Magnitude;
	if v < 1.5 then
		return true;
	end;
	local r = { S };
	if c then
		table.insert(r, c);
	end;
	if Q then
		table.insert(r, Q);
	end;
	local s = RaycastParams.new();
	s.FilterType = Enum.RaycastFilterType.Exclude;
	s.FilterDescendantsInstances = r;
	s.IgnoreWater = true;
	local o, x, Y = 0, z, l.Unit;
	for E = 1, 12, 1 do
		local b = v - o;
		if b <= .15 then
			return true;
		end;
		local c = workspace:Raycast(x, Y * b, s);
		if not c then
			return true;
		end;
		if c.Instance and (Q and c.Instance:IsDescendantOf(Q)) then
			return true;
		end;
		if Yy(c.Instance) then
			table.insert(r, c.Instance);
			s.FilterDescendantsInstances = r;
			local E = ((c.Position - x)).Magnitude;
			x = c.Position + Y * .15;
			o = (o + E) + .15;
		else
			return false;
		end;
	end;
	return false;
end;
local function Dy(E)
	if p.RGBESP then
		return Color3.fromHSV(((tick() * .4)) % 1, 1, 1);
	end;
	if Fy(E) then
		return C;
	end;
	return h;
end;
local function Ay(E, Q)
	if not p.Prediction or not E then
		return E.Position;
	end;
	local b = Q and ((Q:FindFirstChild("HumanoidRootPart") or Q:FindFirstChild("Torso")));
	local c = Vector3.zero;
	if b then
		pcall(function()
			c = b.AssemblyLinearVelocity;
		end);
	end;
	return E.Position + c * ((tonumber(p.PredictAmount) or .12));
end;
local function ky(Q, b)
	local c = tostring(p.TargetPriority or "Crosshair");
	local z, e = nil, nil;
	local l = math.huge;
	local v = S.ViewportSize / 2;
	local r = B.Character and ((B.Character:FindFirstChild("HumanoidRootPart") or B.Character:FindFirstChild("Torso")));
	for E, s in ipairs(E:GetPlayers()) do
		if s ~= B and (sy(s) and By(s)) then
			local E = Sy(s);
			local B = E and E:FindFirstChild("Head");
			if B then
				local o = Ay(B, E);
				local x, Y = S:WorldToViewportPoint(o);
				if Y and x.Z > 0 then
					local S = ((Vector2.new(x.X, x.Y) - v)).Magnitude;
					if S <= ((Q or 150)) and (((not b) or Fy(s))) then
						local Q;
						if c == "Lowest HP" then
							local b = E:FindFirstChildOfClass("Humanoid");
							Q = b and b.Health or 100;
						elseif c == "Closest" then
							if r then
								Q = ((B.Position - r.Position)).Magnitude;
							else
								Q = x.Z;
							end;
						else
							Q = S;
						end;
						if Q < l then
							l = Q;
							z = s;
							e = o;
						end;
					end;
				end;
			end;
		end;
	end;
	return z, e;
end;
local fy = {};
local function Wy(E)
	return E and ((E:FindFirstChild("Torso") or E:FindFirstChild("UpperTorso")));
end;
local function Uy(E)
	if not E then
		return;
	end;
	local Q = fy[E];
	if Q then
		pcall(function()
			E.Size = Q;
		end);
		fy[E] = nil;
	end;
end;
local function gy()
	for E, Q in pairs(fy) do
		Uy(E);
	end;
	fy = {};
end;
local function Oy(E, Q)
	if not E or not E:IsA("BasePart") then
		return;
	end;
	if fy[E] == nil then
		fy[E] = E.Size;
	end;
	local b = math.clamp(tonumber(Q) or 3, 1.2, 12);
	pcall(function()
		E.Size = Vector3.new(b, b, b);
		E.Massless = true;
		E.CanCollide = false;
	end);
end;
local function Jy()
	if not p.Hitbox then
		gy();
		return;
	end;
	local Q = p.HitboxPart;
	local b = tonumber(p.HitboxSize) or 3;
	for E, c in ipairs(E:GetPlayers()) do
		if c ~= B and (sy(c) and By(c)) then
			local E = Sy(c);
			if E then
				local c = E:FindFirstChild("Head");
				local z = Wy(E);
				if Q == "Head" then
					if c then
						Oy(c, b);
					end;
					if z then
						Uy(z);
					end;
				else
					if z then
						Oy(z, b);
					end;
					if c then
						Uy(c);
					end;
				end;
			end;
		end;
	end;
end;
local Ny = 0;
local function jy()
	local E = Sy(B);
	if not E then
		return nil;
	end;
	return E:FindFirstChildOfClass("Tool");
end;
local function ty()
	local E = jy();
	if not E then
		return;
	end;
	pcall(function()
		E:Activate();
	end);
	pcall(function()
		local E = S.ViewportSize;
		local Q = math.floor(E.X / 2);
		local b = math.floor(E.Y / 2);
		r:SendMouseButtonEvent(Q, b, 0, true, game, 1);
		task.wait(.02);
		r:SendMouseButtonEvent(Q, b, 0, false, game, 1);
	end);
end;
local function Hy()
	if not p.Triggerbot then
		return;
	end;
	if not By(B) then
		return;
	end;
	local E = jy();
	if not E then
		return;
	end;
	if not S or not S.Parent then
		return;
	end;
	local Q = math.max(tonumber(p.TriggerDelay) or .12, .08);
	if tick() - Ny < Q then
		return;
	end;
	local b = tonumber(p.TriggerFOV) or 55;
	local c = ky(b, p.WallCheck);
	if c and (By(c) and sy(c)) then
		Ny = tick();
		ty();
	end;
end;
local py = nil;
local function Ty(Q)
	local b = Sy(B);
	local c = b and b:FindFirstChild("HumanoidRootPart");
	if not c then
		return nil;
	end;
	local z = tonumber(p.KillAuraRange) or 90;
	local e, l = nil, z;
	for E, b in ipairs(E:GetPlayers()) do
		if b ~= B and (b ~= Q and (sy(b) and By(b))) then
			local E = Sy(b);
			local Q = E and E:FindFirstChild("HumanoidRootPart");
			local z = E and E:FindFirstChild("Head");
			if Q and z then
				local E = ((Q.Position - c.Position)).Magnitude;
				if E < l then
					l = E;
					e = b;
				end;
			end;
		end;
	end;
	return e;
end;
local function Ky(E)
	local Q = Sy(B);
	local b = Q and Q:FindFirstChild("HumanoidRootPart");
	local c = Sy(E);
	local z = c and c:FindFirstChild("HumanoidRootPart");
	local e = c and c:FindFirstChild("Head");
	if not b or not z or not e then
		return false;
	end;
	local l = tonumber(p.KillAuraBehind) or 3.2;
	local v = z.CFrame.LookVector;
	local r = (z.Position - v * l) + Vector3.new(0, 1.4, 0);
	pcall(function()
		b.CFrame = CFrame.new(r, e.Position);
	end);
	pcall(function()
		S.CFrame = CFrame.new(S.CFrame.Position, e.Position);
	end);
	return true;
end;
local function uy()
	if not p.KillAura then
		py = nil;
		return;
	end;
	local E = Sy(B);
	local Q = E and E:FindFirstChildOfClass("Humanoid");
	if not Q or Q.Health <= 0 then
		py = nil;
		return;
	end;
	if not py or not By(py) or not sy(py) then
		py = Ty(py);
	end;
	if not py then
		return;
	end;
	if Ky(py) then
		ty();
	else
		py = nil;
	end;
end;
local Vy = nil;
pcall(function()
	Vy = (v:WaitForChild("GameEvents", 8)):WaitForChild("DeviceUpdate", 8);
end);
local function Gy()
	if not Vy then
		pcall(function()
			Vy = v.GameEvents.DeviceUpdate;
		end);
	end;
	if not Vy then
		return;
	end;
	local E = p.DeviceMode or "Console";
	pcall(function()
		if E == "Console" then
			Vy:FireServer();
			pcall(function()
				Vy:FireServer("Console");
			end);
		elseif E == "Desktop" then
			Vy:FireServer("Desktop");
		else
			Vy:FireServer("Mobile");
		end;
	end);
end;
task.spawn(function()
	while true do
		local E = tonumber(p.DeviceSpoofDelay) or 1.5;
		if E < .3 then
			E = .3;
		end;
		task.wait(E);
		if p.DeviceSpoof then
			pcall(Gy);
		end;
	end;
end);
j(.78, "Building ESP...");
local qy = Instance.new("ScreenGui");
qy.Name = "MoonMobileESPGui";
qy.ResetOnSpawn = false;
qy.IgnoreGuiInset = true;
qy.DisplayOrder = 99999;
qy.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
qy.Parent = x;
local Ly = {};
local function my(E)
	if not E then
		return;
	end;
	pcall(function()
		if E.fullBox then
			E.fullBox:Destroy();
		end;
	end);
	pcall(function()
		if E.fullStroke then
			E.fullStroke:Destroy();
		end;
	end);
	pcall(function()
		if E.name then
			E.name:Destroy();
		end;
	end);
	pcall(function()
		if E.dist then
			E.dist:Destroy();
		end;
	end);
	pcall(function()
		if E.healthBg then
			E.healthBg:Destroy();
		end;
	end);
	pcall(function()
		if E.healthFill then
			E.healthFill:Destroy();
		end;
	end);
	pcall(function()
		if E.headDot then
			E.headDot:Destroy();
		end;
	end);
	if E.corners then
		for Q = 1, #E.corners, 1 do
			local b = E.corners[Q];
			pcall(function()
				if b then
					b:Destroy();
				end;
			end);
			E.corners[Q] = nil;
		end;
	end;
end;
local function My()
	for E, Q in pairs(Ly) do
		my(Q);
		Ly[E] = nil;
	end;
	pcall(function()
		for E, Q in ipairs(qy:GetChildren()) do
			pcall(function()
				if Q then
					Q:Destroy();
				end;
			end);
		end;
	end);
	Ly = {};
end;
local function Zy(E)
	local Q = Ly[E];
	if not Q then
		return;
	end;
	my(Q);
	Ly[E] = nil;
end;
local function Ry(E)
	if Ly[E] then
		return Ly[E];
	end;
	local Q = Instance.new("Frame");
	Q.BackgroundTransparency = 1;
	Q.BorderSizePixel = 0;
	Q.Visible = false;
	Q.ZIndex = 999;
	Q.Parent = qy;
	local b;
	pcall(function()
		b = Instance.new("UIStroke");
		b.Color = Color3.new(1, 1, 1);
		b.Thickness = 1.5;
		b.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
		b.Parent = Q;
	end);
	local c = {};
	for E = 1, 8, 1 do
		local Q = Instance.new("Frame");
		Q.BorderSizePixel = 0;
		Q.BackgroundColor3 = Color3.new(1, 1, 1);
		Q.Visible = false;
		Q.ZIndex = 999;
		Q.Parent = qy;
		c[E] = Q;
	end;
	local z = Instance.new("TextLabel");
	z.BackgroundTransparency = 1;
	z.AnchorPoint = Vector2.new(.5, .5);
	z.TextColor3 = Color3.new(1, 1, 1);
	z.TextSize = 12;
	z.Font = Enum.Font.SourceSansBold;
	z.TextStrokeTransparency = 0;
	z.Visible = false;
	z.ZIndex = 999;
	z.Parent = qy;
	local e = Instance.new("TextLabel");
	e.BackgroundTransparency = 1;
	e.AnchorPoint = Vector2.new(.5, .5);
	e.TextColor3 = Color3.new(1, 1, 1);
	e.TextSize = 10;
	e.Font = Enum.Font.SourceSans;
	e.TextStrokeTransparency = 0;
	e.Visible = false;
	e.ZIndex = 999;
	e.Parent = qy;
	local l = Instance.new("Frame");
	l.BorderSizePixel = 0;
	l.BackgroundColor3 = Color3.new(0, 0, 0);
	l.Visible = false;
	l.ZIndex = 999;
	l.Parent = qy;
	local v = Instance.new("Frame");
	v.BorderSizePixel = 0;
	v.BackgroundColor3 = Color3.new(1, 0, 0);
	v.Visible = false;
	v.ZIndex = 999;
	v.Parent = qy;
	local r = Instance.new("Frame");
	r.BorderSizePixel = 0;
	r.BackgroundColor3 = Color3.new(1, 1, 1);
	r.Visible = false;
	r.ZIndex = 999;
	r.Parent = qy;
	pcall(function()
		local E = Instance.new("UICorner");
		E.CornerRadius = UDim.new(1, 0);
		E.Parent = r;
	end);
	local S = {
			fullBox = Q,
			fullStroke = b,
			corners = c,
			name = z,
			dist = e,
			healthBg = l,
			healthFill = v,
			headDot = r,
		};
	Ly[E] = S;
	return S;
end;
local function wy()
	if not p.ESP then
		My();
		return;
	end;
	if not S or not S.Parent then
		return;
	end;
	local Q = S.ViewportSize;
	if Q.X < 1 or Q.Y < 1 then
		return;
	end;
	local b = {};
	for E, Q in ipairs(E:GetPlayers()) do
		b[Q] = true;
	end;
	for E in pairs(Ly) do
		if not b[E] then
			Zy(E);
		end;
	end;
	local c = Sy(B) and (Sy(B)):FindFirstChild("HumanoidRootPart");
	local z = {};
	for E, Q in ipairs(E:GetPlayers()) do
		if Q ~= B and (sy(Q) and By(Q)) then
			z[Q] = true;
			local E = Sy(Q);
			local b = E and ((E:FindFirstChild("HumanoidRootPart") or E:FindFirstChild("Torso")));
			local e = E and E:FindFirstChild("Head");
			local l = E and E:FindFirstChildOfClass("Humanoid");
			if not b or not e then
				Zy(Q);
				continue;
			end;
			local v = Ry(Q);
			local r = Dy(Q);
			local B, s = S:WorldToViewportPoint(b.Position);
			local o, x = S:WorldToViewportPoint(e.Position + Vector3.new(0, 1.1, 0));
			local Y = S:WorldToViewportPoint(b.Position - Vector3.new(0, 2.8, 0));
			if not ((B and (o and (s and (x and (B.Z > 0 and o.Z > 0)))))) then
				v.fullBox.Visible = false;
				v.name.Visible = false;
				v.dist.Visible = false;
				v.healthBg.Visible = false;
				v.healthFill.Visible = false;
				v.headDot.Visible = false;
				for E = 1, 8, 1 do
					if v.corners[E] then
						v.corners[E].Visible = false;
					end;
				end;
				continue;
			end;
			local F = Y and Y.Y or B.Y + 2.8;
			local D = math.max(math.abs(F - o.Y), 10);
			local A = math.clamp(D / 1.85, 8, 120);
			local k = B.X - A / 2;
			local f = o.Y;
			if p.ShowBoxes and ((p.BoxStyle == "Full" or p.BoxStyle == "Both")) then
				v.fullBox.Size = UDim2.new(0, A, 0, D);
				v.fullBox.Position = UDim2.new(0, k, 0, f);
				v.fullBox.Visible = true;
				if v.fullStroke then
					v.fullStroke.Color = r;
				end;
			else
				v.fullBox.Visible = false;
			end;
			if p.ShowBoxes and ((p.BoxStyle == "Corner" or p.BoxStyle == "Both")) then
				local E = math.clamp(A * .22, 4, 10);
				local Q = v.corners;
				Q[1].Size = UDim2.new(0, E, 0, 2);
				Q[1].Position = UDim2.new(0, k, 0, f);
				Q[2].Size = UDim2.new(0, 2, 0, E);
				Q[2].Position = UDim2.new(0, k, 0, f);
				Q[3].Size = UDim2.new(0, E, 0, 2);
				Q[3].Position = UDim2.new(0, (k + A) - E, 0, f);
				Q[4].Size = UDim2.new(0, 2, 0, E);
				Q[4].Position = UDim2.new(0, (k + A) - 2, 0, f);
				Q[5].Size = UDim2.new(0, E, 0, 2);
				Q[5].Position = UDim2.new(0, k, 0, (f + D) - 2);
				Q[6].Size = UDim2.new(0, 2, 0, E);
				Q[6].Position = UDim2.new(0, k, 0, (f + D) - E);
				Q[7].Size = UDim2.new(0, E, 0, 2);
				Q[7].Position = UDim2.new(0, (k + A) - E, 0, (f + D) - 2);
				Q[8].Size = UDim2.new(0, 2, 0, E);
				Q[8].Position = UDim2.new(0, (k + A) - 2, 0, (f + D) - E);
				for E = 1, 8, 1 do
					Q[E].BackgroundColor3 = r;
					Q[E].Visible = true;
				end;
			else
				for E = 1, 8, 1 do
					v.corners[E].Visible = false;
				end;
			end;
			if p.ShowNames then
				v.name.Text = Q.DisplayName;
				v.name.Position = UDim2.new(0, B.X, 0, o.Y - 16);
				v.name.TextColor3 = r;
				v.name.Visible = true;
			else
				v.name.Visible = false;
			end;
			if p.ShowDistance and c then
				v.dist.Text = math.floor(((b.Position - c.Position)).Magnitude) .. "m";
				v.dist.Position = UDim2.new(0, B.X, 0, (f + D) + 2);
				v.dist.TextColor3 = r;
				v.dist.Visible = true;
			else
				v.dist.Visible = false;
			end;
			if p.ShowHealth and l then
				local E = math.clamp(l.Health / math.max(l.MaxHealth, 1), 0, 1);
				v.healthBg.Size = UDim2.new(0, 3, 0, D);
				v.healthBg.Position = UDim2.new(0, k - 6, 0, f);
				v.healthBg.Visible = true;
				local Q = math.floor(D * E);
				v.healthFill.Size = UDim2.new(0, 2, 0, Q);
				v.healthFill.Position = UDim2.new(0, k - 5.5, 0, (f + D) - Q);
				v.healthFill.BackgroundColor3 = Color3.fromRGB(255 * ((1 - E)), 255 * E, 0);
				v.healthFill.Visible = true;
			else
				v.healthBg.Visible = false;
				v.healthFill.Visible = false;
			end;
			if p.ShowHeadDot then
				local E, Q = S:WorldToViewportPoint(e.Position);
				if E and (Q and E.Z > 0) then
					local Q = math.clamp(A * .18, 3, 9);
					v.headDot.Size = UDim2.new(0, Q, 0, Q);
					v.headDot.Position = UDim2.new(0, E.X - Q / 2, 0, E.Y - Q / 2);
					v.headDot.BackgroundColor3 = r;
					v.headDot.Visible = true;
				else
					v.headDot.Visible = false;
				end;
			else
				v.headDot.Visible = false;
			end;
		end;
	end;
	for E in pairs(Ly) do
		if not z[E] then
			Zy(E);
		end;
	end;
end;
local function Iy()
	My();
	wy();
end;
local ny = {};
local function dy()
	for E, Q in pairs(ny) do
		pcall(function()
			Q:Destroy();
		end);
		ny[E] = nil;
	end;
end;
local function yy()
	if not p.Chams then
		dy();
		return;
	end;
	local Q = {};
	for E, b in ipairs(E:GetPlayers()) do
		if b ~= B and (sy(b) and By(b)) then
			Q[b] = true;
			local E = Sy(b);
			if E then
				local Q = Dy(b);
				local c = ny[b];
				if not c or not c.Parent then
					c = Instance.new("Highlight");
					c.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop;
					c.FillTransparency = .45;
					c.OutlineTransparency = 0;
					c.Parent = E;
					ny[b] = c;
				end;
				c.FillColor = Q;
				c.OutlineColor = Q;
				c.Enabled = true;
			end;
		end;
	end;
	for E, b in pairs(ny) do
		if not Q[E] then
			pcall(function()
				b:Destroy();
			end);
			ny[E] = nil;
		end;
	end;
end;
local Xy = {
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
local Cy = {
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
local hy = {};
local iy = 0;
local function ay()
	for E, Q in pairs(hy) do
		pcall(function()
			Q:Destroy();
		end);
		hy[E] = nil;
	end;
end;
local function Py(E)
	local Q = E:lower();
	for E, b in pairs(Cy) do
		if Q:find(E, 1, true) then
			return b;
		end;
	end;
	return Color3.fromRGB(255, 255, 255);
end;
local function EU(E)
	if E:IsA("BasePart") then
		return E;
	end;
	if E:IsA("Tool") then
		return E:FindFirstChild("Handle") or E:FindFirstChildOfClass("BasePart") or E;
	end;
	if E:IsA("Model") then
		return E:FindFirstChildOfClass("BasePart") or E;
	end;
	return nil;
end;
local function QU()
	if not p.GadgetESP then
		ay();
		return;
	end;
	iy = iy + 1;
	if iy < 30 then
		return;
	end;
	iy = 0;
	local E = {};
	for Q, b in ipairs(workspace:GetDescendants()) do
		local c = b.Name:lower();
		local z = false;
		for E, Q in ipairs(Xy) do
			if c:find(Q, 1, true) then
				z = true;
				break;
			end;
		end;
		if z then
			local Q = EU(b);
			if Q then
				E[Q] = true;
				local b = hy[Q];
				if not b or not b.Parent then
					b = Instance.new("Highlight");
					b.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop;
					b.FillTransparency = .4;
					b.OutlineTransparency = 0;
					b.Parent = Q;
					hy[Q] = b;
				end;
				local z = Py(c);
				b.FillColor = z;
				b.OutlineColor = z;
				b.Enabled = true;
			end;
		end;
	end;
	for Q, b in pairs(hy) do
		if not E[Q] then
			pcall(function()
				b:Destroy();
			end);
			hy[Q] = nil;
		end;
	end;
end;
local bU = nil;
local cU = nil;
local zU = {};
local function eU(E)
	if not G or not q then
		return nil;
	end;
	local Q, b = pcall(function()
			return q.new(E);
		end);
	if Q and b then
		return b;
	end;
	return nil;
end;
local function lU()
	if not p.Radar then
		if bU then
			bU.Visible = false;
		end;
		if cU then
			cU.Visible = false;
		end;
		for E, Q in pairs(zU) do
			if Q then
				Q.Visible = false;
			end;
		end;
		return;
	end;
	if not G then
		return;
	end;
	if not bU then
		bU = eU("Circle");
		bU.Filled = true;
		bU.Color = Color3.fromRGB(0, 0, 0);
		bU.Transparency = .5;
		bU.NumSides = 40;
	end;
	if not cU then
		cU = eU("Circle");
		cU.Filled = false;
		cU.Color = Color3.fromRGB(255, 255, 255);
		cU.Thickness = 1.5;
		cU.NumSides = 40;
	end;
	local Q = tonumber(p.RadarSize) or 140;
	local b = tonumber(p.RadarRange) or 200;
	local c = Q / 2;
	local z = Vector2.new(20 + c, 20 + c);
	bU.Position = z;
	bU.Radius = c;
	bU.Visible = true;
	cU.Position = z;
	cU.Radius = c;
	cU.Visible = true;
	local e = Sy(B) and (Sy(B)):FindFirstChild("HumanoidRootPart");
	if not e then
		return;
	end;
	local l = math.atan2(S.CFrame.LookVector.X, S.CFrame.LookVector.Z);
	local v = {};
	for E, Q in ipairs(E:GetPlayers()) do
		if Q ~= B and (By(Q) and sy(Q)) then
			local E = Sy(Q);
			local r = E and E:FindFirstChild("HumanoidRootPart");
			if r then
				local E = r.Position - e.Position;
				if E.Magnitude <= b then
					local e = E.X * math.cos(l) - E.Z * math.sin(l);
					local r = E.X * math.sin(l) + E.Z * math.cos(l);
					local S = c / b;
					local B = e * S;
					local s = -r * S;
					local o = zU[Q];
					if not o then
						o = eU("Circle");
						o.Filled = true;
						o.NumSides = 8;
						o.Radius = 3;
						zU[Q] = o;
					end;
					o.Position = Vector2.new(z.X + B, z.Y + s);
					o.Color = Dy(Q);
					o.Visible = true;
					v[Q] = true;
				end;
			end;
		end;
	end;
	for E, Q in pairs(zU) do
		if not v[E] then
			Q.Visible = false;
		end;
	end;
end;
E.PlayerRemoving:Connect(function(E)
	Zy(E);
	pcall(function()
		if ny[E] then
			ny[E]:Destroy();
			ny[E] = nil;
		end;
	end);
	if py == E then
		py = nil;
	end;
	local Q = Sy(E);
	if Q then
		Uy(Q:FindFirstChild("Head"));
		Uy(Wy(Q));
	end;
end);
local function vU(E)
	E.CharacterRemoving:Connect(function()
		Zy(E);
		pcall(function()
			if ny[E] then
				ny[E]:Destroy();
				ny[E] = nil;
			end;
		end);
	end);
	E.CharacterAdded:Connect(function()
		task.wait(.3);
		Zy(E);
	end);
end;
E.PlayerAdded:Connect(vU);
for E, Q in ipairs(E:GetPlayers()) do
	vU(Q);
end;
local rU = false;
local function SU(Q)
	if Q == rU then
		return;
	end;
	rU = Q;
	pcall(function()
		c.GlobalShadows = not Q;
		if Q then
			c.FogEnd = 9000000000;
			if settings and (settings()).Rendering then
				(settings()).Rendering.QualityLevel = Enum.QualityLevel.Level01;
			end;
			for Q, b in ipairs(workspace:GetDescendants()) do
				if b:IsA("BasePart") then
					local Q = false;
					for E, c in ipairs(E:GetPlayers()) do
						if c.Character and b:IsDescendantOf(c.Character) then
							Q = true;
							break;
						end;
					end;
					if not Q then
						b.Material = Enum.Material.SmoothPlastic;
						b.CastShadow = false;
					end;
				elseif b:IsA("ParticleEmitter") or b:IsA("Trail") or b:IsA("Beam") then
					b.Enabled = false;
				end;
			end;
		end;
	end);
end;
local BU = "\226\156\147";
pcall(function()
	if utf8 and utf8.char then
		BU = utf8.char(57344);
	end;
end);
j(.9, "Building UI...");
local sU = Instance.new("ScreenGui");
sU.Name = "MoonHubUI";
sU.ResetOnSpawn = false;
sU.IgnoreGuiInset = true;
sU.DisplayOrder = 999;
sU.Parent = s;
local oU = Instance.new("Frame");
oU.Size = UDim2.new(0, 640, 0, 480);
oU.Position = UDim2.new(.5, -320, .5, -240);
oU.BackgroundColor3 = Z;
oU.BackgroundTransparency = .08;
oU.BorderSizePixel = 0;
oU.Visible = false;
oU.Parent = sU;
(Instance.new("UICorner", oU)).CornerRadius = UDim.new(0, 14);
local xU = Instance.new("UIStroke");
xU.Color = Color3.fromRGB(40, 38, 55);
xU.Thickness = 1;
xU.Transparency = .3;
xU.Parent = oU;
X("stroke", xU);
local YU = Instance.new("Frame");
YU.Size = UDim2.new(1, 0, 0, 44);
YU.BackgroundColor3 = R;
YU.BorderSizePixel = 0;
YU.Parent = oU;
(Instance.new("UICorner", YU)).CornerRadius = UDim.new(0, 14);
local FU = Instance.new("Frame");
FU.Size = UDim2.new(1, 0, 0, 14);
FU.Position = UDim2.new(0, 0, 1, -14);
FU.BackgroundColor3 = R;
FU.BorderSizePixel = 0;
FU.Parent = YU;
local DU = Instance.new("Frame");
DU.Size = UDim2.new(1, 0, 0, 2);
DU.Position = UDim2.new(0, 0, 1, -2);
DU.BackgroundColor3 = M;
DU.BorderSizePixel = 0;
DU.Parent = YU;
X("fill", DU);
local AU = Instance.new("TextLabel");
AU.Size = UDim2.new(1, -50, 1, 0);
AU.Position = UDim2.new(0, 16, 0, 0);
AU.BackgroundTransparency = 1;
AU.Text = "MOON HUB  \194\183  jailbird";
AU.TextColor3 = M;
AU.TextSize = 15;
AU.Font = Enum.Font.GothamBold;
AU.TextXAlignment = Enum.TextXAlignment.Left;
AU.Parent = YU;
X("text", AU);
local kU = Instance.new("TextButton");
kU.Size = UDim2.new(0, 30, 0, 30);
kU.Position = UDim2.new(1, -38, .5, -15);
kU.BackgroundColor3 = Color3.fromRGB(36, 32, 48);
kU.Text = "\195\151";
kU.TextColor3 = n;
kU.Font = d;
kU.TextSize = 18;
kU.Parent = YU;
(Instance.new("UICorner", kU)).CornerRadius = UDim.new(0, 6);
local fU = Instance.new("TextLabel");
fU.Size = UDim2.new(1, -16, 0, 16);
fU.Position = UDim2.new(0, 16, 0, 44);
fU.BackgroundTransparency = 1;
fU.Text = "Executor: " .. D;
fU.TextColor3 = n;
fU.TextSize = 11;
fU.Font = d;
fU.TextXAlignment = Enum.TextXAlignment.Left;
fU.Parent = oU;
local WU = Instance.new("ScrollingFrame");
WU.Size = UDim2.new(0, 118, 1, -70);
WU.Position = UDim2.new(0, 10, 0, 54);
WU.BackgroundColor3 = R;
WU.BorderSizePixel = 0;
WU.ScrollBarThickness = 2;
WU.AutomaticCanvasSize = Enum.AutomaticSize.Y;
WU.CanvasSize = UDim2.new(0, 0, 0, 0);
WU.Parent = oU;
(Instance.new("UICorner", WU)).CornerRadius = UDim.new(0, 8);
local UU = Instance.new("UIListLayout");
UU.Padding = UDim.new(0, 4);
UU.SortOrder = Enum.SortOrder.LayoutOrder;
UU.Parent = WU;
local gU = Instance.new("UIPadding");
gU.PaddingTop = UDim.new(0, 6);
gU.PaddingLeft = UDim.new(0, 6);
gU.PaddingRight = UDim.new(0, 6);
gU.Parent = WU;
local OU = Instance.new("Frame");
OU.Size = UDim2.new(1, -140, 1, -72);
OU.Position = UDim2.new(0, 132, 0, 54);
OU.BackgroundTransparency = 1;
OU.Parent = oU;
local JU, NU = {}, {};
local function jU(E)
	local Q = m();
	for Q, b in pairs(JU) do
		b.Visible = (Q == E);
	end;
	for b, c in pairs(NU) do
		c.BackgroundColor3 = (b == E) and Color3.fromRGB(40, 35, 60) or Color3.fromRGB(22, 22, 30);
		c.TextColor3 = (b == E) and Q or n;
	end;
	a();
end;
local function tU(E)
	local Q = Instance.new("ScrollingFrame");
	Q.Size = UDim2.new(1, 0, 1, 0);
	Q.BackgroundTransparency = 1;
	Q.BorderSizePixel = 0;
	Q.ScrollBarThickness = 3;
	Q.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	Q.CanvasSize = UDim2.new(0, 0, 0, 0);
	Q.Visible = false;
	Q.Parent = OU;
	local b = Instance.new("UIListLayout");
	b.Padding = UDim.new(0, 5);
	b.SortOrder = Enum.SortOrder.LayoutOrder;
	b.FillDirection = Enum.FillDirection.Vertical;
	b.HorizontalAlignment = Enum.HorizontalAlignment.Left;
	b.Parent = Q;
	local c = Instance.new("UIPadding");
	c.PaddingBottom = UDim.new(0, 10);
	c.PaddingTop = UDim.new(0, 4);
	c.PaddingLeft = UDim.new(0, 2);
	c.PaddingRight = UDim.new(0, 8);
	c.Parent = Q;
	JU[E] = Q;
	local z = Instance.new("TextButton");
	z.Size = UDim2.new(1, 0, 0, 30);
	z.BackgroundColor3 = Color3.fromRGB(22, 22, 30);
	z.Text = E;
	z.TextColor3 = n;
	z.TextSize = 12;
	z.Font = Enum.Font.GothamMedium;
	z.Parent = WU;
	(Instance.new("UICorner", z)).CornerRadius = UDim.new(0, 8);
	z.MouseButton1Click:Connect(function()
		jU(E);
	end);
	NU[E] = z;
	return Q;
end;
local function HU(E)
	local Q = ((E:GetAttribute("O") or 0)) + 1;
	E:SetAttribute("O", Q);
	return Q;
end;
local function pU(E, Q)
	local b = Instance.new("TextLabel");
	b.LayoutOrder = HU(E);
	b.Size = UDim2.new(1, -4, 0, 18);
	b.BackgroundTransparency = 1;
	b.Text = string.upper(Q);
	b.TextColor3 = M;
	b.TextSize = 11;
	b.Font = d;
	b.TextXAlignment = Enum.TextXAlignment.Left;
	b.TextYAlignment = Enum.TextYAlignment.Center;
	b.TextTruncate = Enum.TextTruncate.AtEnd;
	b.Parent = E;
	X("text", b);
end;
local function TU(E, Q, b)
	local c = Instance.new("Frame");
	c.LayoutOrder = HU(E);
	c.Size = UDim2.new(1, 0, 0, 32);
	c.BackgroundColor3 = w;
	c.BorderSizePixel = 0;
	c.Parent = E;
	(Instance.new("UICorner", c)).CornerRadius = UDim.new(0, 8);
	local z = Instance.new("TextLabel");
	z.Size = UDim2.new(1, -55, 1, 0);
	z.Position = UDim2.new(0, 10, 0, 0);
	z.BackgroundTransparency = 1;
	z.Text = Q;
	z.TextColor3 = I;
	z.TextSize = 11;
	z.Font = d;
	z.TextXAlignment = Enum.TextXAlignment.Left;
	z.Parent = c;
	local e = Instance.new("TextButton");
	e.Size = UDim2.new(0, 40, 0, 18);
	e.Position = UDim2.new(1, -48, .5, -9);
	e.BackgroundColor3 = p[b] and M or Color3.fromRGB(45, 45, 58);
	e.Text = "";
	e.Parent = c;
	X("toggle", e, b);
	(Instance.new("UICorner", e)).CornerRadius = UDim.new(1, 0);
	local l = Instance.new("Frame");
	l.Size = UDim2.new(0, 14, 0, 14);
	l.Position = p[b] and UDim2.new(1, -16, .5, -7) or UDim2.new(0, 2, .5, -7);
	l.BackgroundColor3 = Color3.new(1, 1, 1);
	l.BorderSizePixel = 0;
	l.Parent = e;
	(Instance.new("UICorner", l)).CornerRadius = UDim.new(1, 0);
	e.MouseButton1Click:Connect(function()
		p[b] = not p[b];
		local E = p[b];
		e.BackgroundColor3 = E and m() or Color3.fromRGB(45, 45, 58);
		l.Position = E and UDim2.new(1, -16, .5, -7) or UDim2.new(0, 2, .5, -7);
		if b == "ESP" then
			if E then
				Iy();
			else
				My();
			end;
		end;
		if b == "Chams" then
			if not E then
				dy();
			end;
		end;
		if b == "GadgetESP" then
			if not E then
				ay();
			end;
		end;
		if b == "Hitbox" and not E then
			gy();
		end;
		if b == "DeviceSpoof" and E then
			Gy();
		end;
		if b == "Potato" then
			SU(E);
		end;
		if b == "CustomFOV" then
			if E then
				ey();
			else
				pcall(function()
					S.FieldOfView = zy;
				end);
			end;
		end;
		if b == "MobileAim" and E then
			p.Aimbot = true;
		end;
		if b == "KillAura" and not E then
			py = nil;
		end;
		if b == "ScreenStretch" and (E and not K) then
			K = true;
		end;
		u();
		a();
	end);
end;
local function KU(E, b, c, z, e, l)
	local v = Instance.new("Frame");
	v.LayoutOrder = HU(E);
	v.Size = UDim2.new(1, 0, 0, 46);
	v.BackgroundColor3 = w;
	v.BorderSizePixel = 0;
	v.Parent = E;
	(Instance.new("UICorner", v)).CornerRadius = UDim.new(0, 8);
	local r = Instance.new("TextLabel");
	r.Size = UDim2.new(.65, 0, 0, 16);
	r.Position = UDim2.new(0, 10, 0, 4);
	r.BackgroundTransparency = 1;
	r.Text = b;
	r.TextColor3 = I;
	r.TextSize = 11;
	r.Font = d;
	r.TextXAlignment = Enum.TextXAlignment.Left;
	r.Parent = v;
	local S = Instance.new("TextLabel");
	S.Size = UDim2.new(.3, -8, 0, 16);
	S.Position = UDim2.new(.7, 0, 0, 4);
	S.BackgroundTransparency = 1;
	S.Text = tostring(p[c]);
	S.TextColor3 = M;
	S.TextSize = 11;
	S.Font = d;
	S.TextXAlignment = Enum.TextXAlignment.Right;
	S.Parent = v;
	local B = Instance.new("TextButton");
	B.Size = UDim2.new(1, -20, 0, 8);
	B.Position = UDim2.new(0, 10, 0, 26);
	B.BackgroundColor3 = Color3.fromRGB(40, 40, 55);
	B.Text = "";
	B.Parent = v;
	(Instance.new("UICorner", B)).CornerRadius = UDim.new(1, 0);
	local s = Instance.new("Frame");
	s.Size = UDim2.new(math.clamp(((p[c] - z)) / math.max(e - z, .001), 0, 1), 0, 1, 0);
	s.BackgroundColor3 = M;
	s.BorderSizePixel = 0;
	s.Parent = B;
	X("fill", s);
	(Instance.new("UICorner", s)).CornerRadius = UDim.new(1, 0);
	local function o(E)
		local Q = math.clamp(((E - B.AbsolutePosition.X)) / math.max(B.AbsoluteSize.X, 1), 0, 1);
		local b = z + Q * ((e - z));
		b = math.floor(b / l + .5) * l;
		b = math.clamp(b, z, e);
		p[c] = b;
		s.Size = UDim2.new(((b - z)) / math.max(e - z, .001), 0, 1, 0);
		S.Text = tostring(b);
		if c == "CursorSize" then
			Qy.Size = UDim2.new(0, b, 0, b);
		end;
		if c == "FOVValue" and p.CustomFOV then
			ey();
		end;
		if c == "DesignAccentR" or c == "DesignAccentG" or c == "DesignAccentB" then
			pcall(applyDesign);
		end;
		u();
	end;
	B.MouseButton1Down:Connect(function()
		local E, b;
		E = Q.InputChanged:Connect(function(E)
				if E.UserInputType == Enum.UserInputType.MouseMovement or E.UserInputType == Enum.UserInputType.Touch then
					o(E.Position.X);
				end;
			end);
		b = Q.InputEnded:Connect(function(Q)
				if Q.UserInputType == Enum.UserInputType.MouseButton1 or Q.UserInputType == Enum.UserInputType.Touch then
					if E then
						E:Disconnect();
					end;
					if b then
						b:Disconnect();
					end;
				end;
			end);
		pcall(function()
			o((Q:GetMouseLocation()).X);
		end);
	end);
end;
local function uU(E, Q, b, c)
	local z = Instance.new("Frame");
	z.LayoutOrder = HU(E);
	z.Size = UDim2.new(1, 0, 0, 54);
	z.BackgroundColor3 = w;
	z.BorderSizePixel = 0;
	z.Parent = E;
	(Instance.new("UICorner", z)).CornerRadius = UDim.new(0, 8);
	local e = Instance.new("TextLabel");
	e.Size = UDim2.new(1, -12, 0, 18);
	e.Position = UDim2.new(0, 10, 0, 4);
	e.BackgroundTransparency = 1;
	e.Text = Q;
	e.TextColor3 = I;
	e.TextSize = 11;
	e.Font = d;
	e.TextXAlignment = Enum.TextXAlignment.Left;
	e.Parent = z;
	local l = Instance.new("Frame");
	l.Size = UDim2.new(1, -16, 0, 24);
	l.Position = UDim2.new(0, 8, 0, 26);
	l.BackgroundTransparency = 1;
	l.Parent = z;
	local v = Instance.new("UIListLayout");
	v.FillDirection = Enum.FillDirection.Horizontal;
	v.Padding = UDim.new(0, 5);
	v.Parent = l;
	local r = {};
	local function S()
		local E = m();
		for Q, c in pairs(r) do
			local z = (p[b] == Q);
			c.BackgroundColor3 = z and E or Color3.fromRGB(35, 32, 48);
			c.TextColor3 = z and Color3.fromRGB(20, 20, 28) or n;
		end;
	end;
	local B = #c;
	local s = math.clamp(math.floor(300 / math.max(B, 1)), 48, 90);
	for E, Q in ipairs(c) do
		local c = Instance.new("TextButton");
		c.Size = UDim2.new(0, s, 1, 0);
		c.BackgroundColor3 = Color3.fromRGB(35, 32, 48);
		c.Text = Q;
		c.TextColor3 = n;
		c.TextSize = 10;
		c.Font = d;
		c.Parent = l;
		(Instance.new("UICorner", c)).CornerRadius = UDim.new(0, 6);
		r[Q] = c;
		X("choice", c, b);
		c.MouseButton1Click:Connect(function()
			p[b] = Q;
			S();
			if b == "CursorName" then
				cy(p.CursorName);
			end;
			if b == "DeviceMode" and p.DeviceSpoof then
				Gy();
			end;
			if b == "HitboxPart" then
				gy();
			end;
			u();
			a();
		end);
	end;
	S();
	X("choiceRefresh", { refresh = S });
end;
local function VU(E, Q, b, c)
	local z = Instance.new("Frame");
	z.LayoutOrder = HU(E);
	z.Size = UDim2.new(1, 0, 0, 32);
	z.BackgroundColor3 = w;
	z.BorderSizePixel = 0;
	z.Parent = E;
	(Instance.new("UICorner", z)).CornerRadius = UDim.new(0, 8);
	local e = Instance.new("TextLabel");
	e.Size = UDim2.new(.4, 0, 1, 0);
	e.Position = UDim2.new(0, 10, 0, 0);
	e.BackgroundTransparency = 1;
	e.Text = Q;
	e.TextColor3 = I;
	e.TextSize = 11;
	e.Font = d;
	e.TextXAlignment = Enum.TextXAlignment.Left;
	e.Parent = z;
	local l = 1;
	for E, Q in ipairs(c) do
		if Q == p[b] then
			l = E;
		end;
	end;
	local v = Instance.new("TextButton");
	v.Size = UDim2.new(.55, -12, 0, 22);
	v.Position = UDim2.new(.45, 0, .5, -11);
	v.BackgroundColor3 = Color3.fromRGB(35, 32, 48);
	v.Text = tostring(p[b]);
	v.TextColor3 = M;
	v.TextSize = 11;
	v.Font = d;
	v.Parent = z;
	X("text", v);
	(Instance.new("UICorner", v)).CornerRadius = UDim.new(0, 6);
	v.MouseButton1Click:Connect(function()
		l = l % #c + 1;
		p[b] = c[l];
		v.Text = c[l];
		if b == "CursorName" then
			cy(p.CursorName);
		end;
		if b == "DeviceMode" and p.DeviceSpoof then
			Gy();
		end;
		if b == "HitboxPart" then
			gy();
		end;
		u();
		a();
	end);
end;
local function GU(E, Q, b, c)
	local z = Instance.new("Frame");
	z.LayoutOrder = HU(E);
	z.Size = UDim2.new(1, 0, 0, 52);
	z.BackgroundColor3 = w;
	z.BorderSizePixel = 0;
	z.Parent = E;
	(Instance.new("UICorner", z)).CornerRadius = UDim.new(0, 8);
	local e = Instance.new("TextLabel");
	e.Size = UDim2.new(1, -16, 0, 14);
	e.Position = UDim2.new(0, 10, 0, 4);
	e.BackgroundTransparency = 1;
	e.Text = Q;
	e.TextColor3 = n;
	e.TextSize = 11;
	e.Font = d;
	e.TextXAlignment = Enum.TextXAlignment.Left;
	e.Parent = z;
	local l = Instance.new("TextBox");
	l.Size = UDim2.new(1, -20, 0, 22);
	l.Position = UDim2.new(0, 10, 0, 22);
	l.BackgroundColor3 = Color3.fromRGB(14, 14, 20);
	l.BorderSizePixel = 0;
	l.Text = tostring(p[b] or c or "");
	l.PlaceholderText = c or "";
	l.TextColor3 = I;
	l.TextSize = 12;
	l.Font = d;
	l.ClearTextOnFocus = false;
	l.Parent = z;
	(Instance.new("UICorner", l)).CornerRadius = UDim.new(0, 6);
	l.FocusLost:Connect(function()
		local E = l.Text;
		if not E or E == "" then
			E = c or "default";
			l.Text = E;
		end;
		p[b] = E;
		u();
	end);
end;
local function qU(E, Q, b)
	local c = Instance.new("TextButton");
	c.LayoutOrder = HU(E);
	c.Size = UDim2.new(1, 0, 0, 30);
	c.BackgroundColor3 = Color3.fromRGB(35, 30, 55);
	c.Text = Q;
	c.TextColor3 = M;
	c.TextSize = 12;
	c.Font = d;
	c.Parent = E;
	(Instance.new("UICorner", c)).CornerRadius = UDim.new(0, 8);
	c.MouseButton1Click:Connect(function()
		b();
		a();
	end);
end;
local LU = tU("Combat");
local mU = tU("Player");
local MU = tU("Stream");
local ZU = tU("Staff");
local RU = tU("Mobile");
local wU = tU("Visuals");
local IU = tU("Design");
local nU = tU("Config");
pU(LU, "Aimbot");
TU(LU, "Aimbot", "Aimbot");
uU(LU, "Key", "AimKey", {
	"MB1",
	"MB2",
	"E",
	"Q",
	"F",
});
uU(LU, "Mode", "AimMode", { "Hold", "Toggle", "Always" });
KU(LU, "FOV", "AimFOV", 40, 350, 1);
KU(LU, "Smooth", "AimSmooth", .1, 1, .05);
TU(LU, "Show FOV", "ShowFOV");
TU(LU, "Wall Check", "WallCheck");
TU(LU, "Team Check", "TeamCheck");
TU(LU, "Prediction", "Prediction");
KU(LU, "Predict", "PredictAmount", 0, .35, .01);
uU(LU, "Lock Priority", "TargetPriority", { "Crosshair", "Closest", "Lowest HP" });
pU(LU, "Triggerbot");
TU(LU, "Triggerbot", "Triggerbot");
KU(LU, "Trigger FOV", "TriggerFOV", 15, 150, 1);
KU(LU, "Trigger Delay", "TriggerDelay", .03, .25, .01);
pU(LU, "Kill Aura");
TU(LU, "Kill Aura", "KillAura");
KU(LU, "Range", "KillAuraRange", 20, 200, 5);
KU(LU, "Behind Dist", "KillAuraBehind", 1.5, 8, .1);
pU(LU, "Camera FOV");
TU(LU, "Custom FOV", "CustomFOV");
KU(LU, "FOV Value", "FOVValue", 40, 120, 1);
pU(LU, "Hitbox Expand");
TU(LU, "Hitbox Expand", "Hitbox");
uU(LU, "Part", "HitboxPart", { "Head", "Torso" });
KU(LU, "Size", "HitboxSize", 1.5, 10, .5);
pU(mU, "Move");
TU(mU, "Speed", "Speed");
KU(mU, "Speed Value", "SpeedValue", 16, 80, 1);
TU(mU, "Noclip", "Noclip");
TU(mU, "Anti-Bow", "AntiBow");
pU(mU, "Device Spoof");
TU(mU, "Device Spoof", "DeviceSpoof");
uU(mU, "Mode", "DeviceMode", { "Console", "Desktop", "Mobile" });
KU(mU, "Delay (sec)", "DeviceSpoofDelay", .3, 5, .1);
qU(mU, "Apply Device Now", Gy);
pU(mU, "Screen Stretch");
TU(mU, "Screen Stretch", "ScreenStretch");
KU(mU, "Stretch Amount", "StretchAmount", .3, 1, .01);
pU(MU, "Stream");
TU(MU, "Stream Proof", "StreamProof");
GU(MU, "Name", "SpoofName", "Player");
TU(MU, "Verified", "ShowVerified");
pU(ZU, "Staff");
TU(ZU, "Detect", "StaffDetect");
TU(ZU, "Leave", "StaffLeave");
pU(RU, "Mobile Aim");
TU(RU, "Mobile Aim ON", "MobileAim");
KU(RU, "Smooth", "MobileSmooth", .1, 1, .05);
KU(RU, "FOV", "MobileFOV", 40, 350, 1);
TU(RU, "Show FOV", "MobileShowFOV");
local dU = Instance.new("Frame");
dU.LayoutOrder = HU(wU);
dU.Size = UDim2.new(1, 0, 0, 168);
dU.BackgroundColor3 = Color3.fromRGB(14, 14, 20);
dU.BorderSizePixel = 0;
dU.Parent = wU;
(Instance.new("UICorner", dU)).CornerRadius = UDim.new(0, 10);
local yU = Instance.new("UIStroke");
yU.Color = Color3.fromRGB(40, 38, 55);
yU.Thickness = 1;
yU.Parent = dU;
local XU = Instance.new("TextLabel");
XU.Size = UDim2.new(1, -16, 0, 18);
XU.Position = UDim2.new(0, 10, 0, 6);
XU.BackgroundTransparency = 1;
XU.Text = "ESP PREVIEW";
XU.TextColor3 = n;
XU.TextSize = 10;
XU.Font = Enum.Font.GothamBold;
XU.TextXAlignment = Enum.TextXAlignment.Left;
XU.Parent = dU;
local CU = Instance.new("Frame");
CU.Size = UDim2.new(1, -20, 0, 130);
CU.Position = UDim2.new(0, 10, 0, 28);
CU.BackgroundColor3 = Color3.fromRGB(18, 18, 26);
CU.BorderSizePixel = 0;
CU.ClipsDescendants = true;
CU.Parent = dU;
(Instance.new("UICorner", CU)).CornerRadius = UDim.new(0, 8);
local hU = Instance.new("Frame");
hU.Name = "Figure";
hU.Size = UDim2.new(0, 70, 0, 110);
hU.Position = UDim2.new(.5, -35, .5, -48);
hU.BackgroundTransparency = 1;
hU.Parent = CU;
local function iU(E, Q, b, c, z)
	local e = Instance.new("Frame");
	e.Name = E;
	e.Size = Q;
	e.Position = b;
	e.BackgroundColor3 = Color3.fromRGB(55, 55, 70);
	e.BorderSizePixel = 0;
	e.Parent = z or hU;
	(Instance.new("UICorner", e)).CornerRadius = UDim.new(c or 0, 0);
	return e;
end;
local aU = iU("Head", UDim2.new(0, 20, 0, 20), UDim2.new(.5, -10, 0, 0), 1);
local PU = iU("Torso", UDim2.new(0, 32, 0, 38), UDim2.new(.5, -16, 0, 24), .15);
local Eu = iU("ArmL", UDim2.new(0, 10, 0, 30), UDim2.new(.5, -28, 0, 26), .2);
local Qu = iU("ArmR", UDim2.new(0, 10, 0, 30), UDim2.new(.5, 18, 0, 26), .2);
local bu = iU("LegL", UDim2.new(0, 12, 0, 28), UDim2.new(.5, -14, 0, 64), .2);
local cu = iU("LegR", UDim2.new(0, 12, 0, 28), UDim2.new(.5, 2, 0, 64), .2);
local zu = {
		aU,
		PU,
		Eu,
		Qu,
		bu,
		cu,
	};
local eu = Instance.new("Frame");
eu.Name = "BoxFull";
eu.Size = UDim2.new(0, 64, 0, 116);
eu.Position = UDim2.new(.5, -32, .5, -52);
eu.BackgroundTransparency = 1;
eu.BorderSizePixel = 0;
eu.Parent = CU;
local lu = Instance.new("UIStroke");
lu.Thickness = 1.5;
lu.Color = Color3.fromRGB(40, 255, 40);
lu.Parent = eu;
local function vu(E, Q, b, c, z)
	local e = Instance.new("Frame");
	e.Name = E;
	e.BackgroundColor3 = Color3.fromRGB(40, 255, 40);
	e.BorderSizePixel = 0;
	e.Size = UDim2.new(0, c, 0, z);
	e.Position = UDim2.new(0, Q, 0, b);
	e.Parent = eu;
	return e;
end;
local ru = {
		vu("TL1", 0, 0, 12, 2),
		vu("TL2", 0, 0, 2, 12),
		vu("TR1", 52, 0, 12, 2),
		vu("TR2", 62, 0, 2, 12),
		vu("BL1", 0, 114, 12, 2),
		vu("BL2", 0, 104, 2, 12),
		vu("BR1", 52, 114, 12, 2),
		vu("BR2", 62, 104, 2, 12),
	};
local Su = Instance.new("TextLabel");
Su.Size = UDim2.new(0, 120, 0, 16);
Su.Position = UDim2.new(.5, -60, .5, -70);
Su.BackgroundTransparency = 1;
Su.Text = "Enemy";
Su.TextColor3 = Color3.fromRGB(255, 255, 255);
Su.TextSize = 12;
Su.Font = Enum.Font.GothamBold;
Su.Parent = CU;
local Bu = Instance.new("TextLabel");
Bu.Size = UDim2.new(0, 80, 0, 14);
Bu.Position = UDim2.new(.5, -40, .5, 68);
Bu.BackgroundTransparency = 1;
Bu.Text = "45m";
Bu.TextColor3 = n;
Bu.TextSize = 11;
Bu.Font = d;
Bu.Parent = CU;
local su = Instance.new("Frame");
su.Size = UDim2.new(0, 4, 0, 116);
su.Position = UDim2.new(.5, -40, .5, -52);
su.BackgroundColor3 = Color3.fromRGB(30, 30, 40);
su.BorderSizePixel = 0;
su.Parent = CU;
(Instance.new("UICorner", su)).CornerRadius = UDim.new(1, 0);
local ou = Instance.new("Frame");
ou.Size = UDim2.new(1, 0, .7, 0);
ou.Position = UDim2.new(0, 0, .3, 0);
ou.BackgroundColor3 = Color3.fromRGB(40, 255, 40);
ou.BorderSizePixel = 0;
ou.Parent = su;
(Instance.new("UICorner", ou)).CornerRadius = UDim.new(1, 0);
local xu = Instance.new("Frame");
xu.Size = UDim2.new(0, 8, 0, 8);
xu.AnchorPoint = Vector2.new(.5, .5);
xu.Position = UDim2.new(.5, 0, .5, -42);
xu.BackgroundColor3 = Color3.fromRGB(40, 255, 40);
xu.BorderSizePixel = 0;
xu.ZIndex = 5;
xu.Parent = CU;
(Instance.new("UICorner", xu)).CornerRadius = UDim.new(1, 0);
local Yu = Instance.new("TextLabel");
Yu.Size = UDim2.new(0, 100, 0, 14);
Yu.Position = UDim2.new(1, -108, 0, 8);
Yu.BackgroundTransparency = 1;
Yu.Text = "VISIBLE";
Yu.TextColor3 = Color3.fromRGB(40, 255, 40);
Yu.TextSize = 10;
Yu.Font = Enum.Font.GothamBold;
Yu.TextXAlignment = Enum.TextXAlignment.Right;
Yu.Parent = CU;
local function Fu()
	local E;
	if p.RGBESP then
		E = Color3.fromHSV(((tick() * .4)) % 1, 1, 1);
	else
		E = Color3.fromRGB(math.clamp(tonumber(p.ESPColorR) or 170, 0, 255), math.clamp(tonumber(p.ESPColorG) or 0, 0, 255), math.clamp(tonumber(p.ESPColorB) or 255, 0, 255));
	end;
	local Q = tostring(p.BoxStyle or "Corner");
	local b = p.ShowBoxes ~= false and p.ESP ~= false;
	eu.Visible = b;
	lu.Enabled = ((Q == "Full" or Q == "Both")) and b;
	lu.Color = E;
	for c, z in ipairs(ru) do
		z.Visible = ((Q == "Corner" or Q == "Both")) and b;
		z.BackgroundColor3 = E;
	end;
	Su.Visible = p.ShowNames ~= false and p.ESP ~= false;
	Su.TextColor3 = E;
	Bu.Visible = p.ShowDistance ~= false and p.ESP ~= false;
	su.Visible = p.ShowHealth ~= false and p.ESP ~= false;
	ou.BackgroundColor3 = E;
	xu.Visible = p.ShowHeadDot ~= false and p.ESP ~= false;
	xu.BackgroundColor3 = E;
	Yu.TextColor3 = E;
	local c = Color3.fromRGB(55, 55, 70);
	local z = Color3.fromRGB(math.floor(E.R * 180 + 40), math.floor(E.G * 180 + 40), math.floor(E.B * 180 + 40));
	for E, Q in ipairs(zu) do
		Q.BackgroundColor3 = p.Chams and z or c;
	end;
	if p.Chams then
		aU.BackgroundColor3 = Color3.fromRGB(math.min(255, math.floor(E.R * 200 + 50)), math.min(255, math.floor(E.G * 200 + 50)), math.min(255, math.floor(E.B * 200 + 50)));
	end;
end;
task.spawn(function()
	while dU.Parent do
		Fu();
		task.wait(p.RGBESP and .08 or .25);
	end;
end);
pU(wU, "ESP");
TU(wU, "ESP Enabled", "ESP");
TU(wU, "Boxes", "ShowBoxes");
uU(wU, "Box Style", "BoxStyle", { "Corner", "Full", "Both" });
TU(wU, "Names", "ShowNames");
TU(wU, "Distance", "ShowDistance");
TU(wU, "Health", "ShowHealth");
TU(wU, "Head Dot", "ShowHeadDot");
TU(wU, "Chams ESP", "Chams");
TU(wU, "Gadget ESP", "GadgetESP");
TU(wU, "Radar ESP", "Radar");
KU(wU, "Radar Size", "RadarSize", 80, 220, 5);
KU(wU, "Radar Range", "RadarRange", 50, 400, 10);
qU(wU, "Force Refresh ESP", Iy);
pU(wU, "ESP Color");
TU(wU, "RGB ESP", "RGBESP");
KU(wU, "Red", "ESPColorR", 0, 255, 1);
KU(wU, "Green", "ESPColorG", 0, 255, 1);
KU(wU, "Blue", "ESPColorB", 0, 255, 1);
pU(wU, "Crosshair");
uU(wU, "Style", "CursorName", { "Off", "TC2", "Cinnamoroll" });
KU(wU, "Size", "CursorSize", 8, 128, 1);
local function Du()
	M = m();
	local E = M;
	for Q, b in ipairs(y) do
		pcall(function()
			local Q, c, z = b.kind, b.obj, b.extra;
			if Q == "choiceRefresh" and (type(c) == "table" and c.refresh) then
				c.refresh();
				return;
			end;
			if not c or (typeof(c) == "Instance" and not c.Parent) then
				return;
			end;
			if Q == "text" then
				c.TextColor3 = E;
			elseif Q == "fill" then
				c.BackgroundColor3 = E;
			elseif Q == "stroke" then
				c.Color = E;
			elseif Q == "toggle" then
				if p[z] then
					c.BackgroundColor3 = E;
				end;
			elseif Q == "choice" then
 
			end;
		end);
	end;
	for Q, b in pairs(NU) do
		if b.TextColor3 ~= n then
			b.TextColor3 = E;
		end;
	end;
	pcall(function()
		if FOVStroke then
			FOVStroke.Color = E;
		end;
		if FPSLabel then
			FPSLabel.TextColor3 = E;
		end;
		if AU then
			AU.TextColor3 = E;
		end;
	end);
end;
pU(IU, "Accent Color");
KU(IU, "Red", "DesignAccentR", 0, 255, 1);
KU(IU, "Green", "DesignAccentG", 0, 255, 1);
KU(IU, "Blue", "DesignAccentB", 0, 255, 1);
qU(IU, "Apply Accent", Du);
qU(IU, "Reset Default", function()
	p.DesignAccentR, p.DesignAccentG, p.DesignAccentB = 138, 99, 255;
	Du();
end);
pU(IU, "Presets");
qU(IU, "Purple", function()
	p.DesignAccentR, p.DesignAccentG, p.DesignAccentB = 138, 99, 255;
	Du();
end);
qU(IU, "Red", function()
	p.DesignAccentR, p.DesignAccentG, p.DesignAccentB = 255, 60, 60;
	Du();
end);
qU(IU, "Green", function()
	p.DesignAccentR, p.DesignAccentG, p.DesignAccentB = 60, 220, 100;
	Du();
end);
qU(IU, "Blue", function()
	p.DesignAccentR, p.DesignAccentG, p.DesignAccentB = 60, 140, 255;
	Du();
end);
qU(IU, "Orange", function()
	p.DesignAccentR, p.DesignAccentG, p.DesignAccentB = 255, 140, 40;
	Du();
end);
qU(IU, "White", function()
	p.DesignAccentR, p.DesignAccentG, p.DesignAccentB = 230, 230, 240;
	Du();
end);
pU(nU, "Config");
GU(nU, "Name", "ConfigName", "default");
qU(nU, "Save", u);
qU(nU, "Load", function()
	V();
end);
TU(nU, "FPS + MS", "ShowPerf");
TU(nU, "Potato", "Potato");
pU(nU, "Status");
local Au = Instance.new("TextLabel");
Au.LayoutOrder = HU(nU);
Au.Size = UDim2.new(1, 0, 0, 40);
Au.BackgroundColor3 = w;
Au.BorderSizePixel = 0;
Au.Text = "Executor: " .. (D .. " | Vis: Green/Red");
Au.TextColor3 = I;
Au.TextSize = 12;
Au.Font = d;
Au.Parent = nU;
(Instance.new("UICorner", Au)).CornerRadius = UDim.new(0, 8);
jU("Combat");
for E, Q in pairs(JU) do
	pcall(function()
		local E = Q:FindFirstChildOfClass("UIListLayout");
		if E then
			Q.CanvasSize = UDim2.new(0, 0, 0, E.AbsoluteContentSize.Y + 16);
		end;
	end);
end;
local ku = Instance.new("TextButton");
ku.Size = UDim2.new(0, 60, 0, 40);
ku.Position = UDim2.new(1, -70, 0, 10);
ku.BackgroundColor3 = Color3.fromRGB(30, 30, 40);
ku.Text = "OPEN";
ku.TextColor3 = M;
ku.TextSize = 14;
ku.Font = d;
ku.Visible = true;
ku.Parent = sU;
(Instance.new("UICorner", ku)).CornerRadius = UDim.new(0, 8);
ku.MouseButton1Click:Connect(function()
	oU.Visible = true;
	ku.Visible = false;
end);
local function fu()
	ku.Visible = not oU.Visible;
end;
local Wu, Uu, gu;
YU.InputBegan:Connect(function(E)
	if E.UserInputType == Enum.UserInputType.MouseButton1 or E.UserInputType == Enum.UserInputType.Touch then
		Wu = true;
		Uu = E.Position;
		gu = oU.Position;
	end;
end);
YU.InputEnded:Connect(function(E)
	if E.UserInputType == Enum.UserInputType.MouseButton1 or E.UserInputType == Enum.UserInputType.Touch then
		Wu = false;
	end;
end);
Q.InputChanged:Connect(function(E)
	if Wu and ((E.UserInputType == Enum.UserInputType.MouseMovement or E.UserInputType == Enum.UserInputType.Touch)) then
		local Q = E.Position - Uu;
		oU.Position = UDim2.new(gu.X.Scale, gu.X.Offset + Q.X, gu.Y.Scale, gu.Y.Offset + Q.Y);
	end;
end);
kU.MouseButton1Click:Connect(function()
	oU.Visible = false;
	fu();
end);
Q.InputBegan:Connect(function(E)
	if E.KeyCode == Enum.KeyCode.RightControl or E.KeyCode == Enum.KeyCode.LeftControl then
		oU.Visible = not oU.Visible;
		fu();
		a();
	end;
end);
local Ou = {
		MB1 = Enum.UserInputType.MouseButton1,
		MB2 = Enum.UserInputType.MouseButton2,
		E = Enum.KeyCode.E,
		Q = Enum.KeyCode.Q,
		F = Enum.KeyCode.F,
	};
local Ju = false;
local Nu;
local function ju(E)
	local Q = Ou[p.AimKey] or Enum.UserInputType.MouseButton2;
	local b = tostring(Q);
	if string.find(b, "MouseButton", 1, true) then
		return E.UserInputType == Q;
	end;
	if string.find(b, "KeyCode", 1, true) then
		return E.KeyCode == Q;
	end;
	return false;
end;
Q.InputBegan:Connect(function(E, Q)
	if not p.Aimbot or p.MobileAim then
		return;
	end;
	if not ju(E) then
		return;
	end;
	if p.AimMode == "Hold" then
		Ju = true;
	elseif p.AimMode == "Toggle" then
		Ju = not Ju;
	end;
end);
Q.InputEnded:Connect(function(E)
	if p.AimMode == "Hold" and ju(E) then
		Ju = false;
	end;
end);
local function tu(E)
	if Nu then
		Nu:Disconnect();
		Nu = nil;
	end;
	if not E then
		local E = Sy(B);
		if E then
			for E, Q in ipairs(E:GetDescendants()) do
				if Q:IsA("BasePart") then
					Q.CanCollide = true;
				end;
			end;
		end;
		return;
	end;
	Nu = b.Stepped:Connect(function()
			local E = Sy(B);
			if not E then
				return;
			end;
			for E, Q in ipairs(E:GetDescendants()) do
				if Q:IsA("BasePart") then
					Q.CanCollide = false;
				end;
			end;
		end);
end;
task.spawn(function()
	while true do
		task.wait(.2);
		if p.AntiBow then
			pcall(function()
				local E = Sy(B);
				if not E then
					return;
				end;
				local Q = E:FindFirstChild("HumanoidRootPart");
				local b = E:FindFirstChildOfClass("Humanoid");
				if not Q or not b or b.Health <= 0 then
					return;
				end;
				local c = b:GetState();
				if c == Enum.HumanoidStateType.Jumping or c == Enum.HumanoidStateType.Freefall then
					return;
				end;
				if Q.CFrame.UpVector:Dot(Vector3.yAxis) >= .92 then
					return;
				end;
				local z, e = Q.CFrame:ToOrientation();
				Q.CFrame = CFrame.new(Q.Position) * CFrame.Angles(0, e, 0);
			end);
		end;
	end;
end);
task.spawn(function()
	while true do
		task.wait(.5);
		if p.StreamProof then
			local E = tostring(p.SpoofName);
			if p.ShowVerified then
				E = E .. (" " .. BU);
			end;
			pcall(function()
				B.DisplayName = E;
			end);
		end;
	end;
end);
local Hu = 33054943;
local pu = {};
task.spawn(function()
	while true do
		task.wait(2);
		if p.StaffDetect then
			for E, Q in ipairs(E:GetPlayers()) do
				if Q ~= B then
					local E, b = pcall(function()
							return Q:GetRankInGroup(Hu);
						end);
					if E and (type(b) == "number" and b >= 51) then
						if not pu[Q.UserId] then
							pu[Q.UserId] = true;
							if p.StaffLeave then
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
local Tu = Instance.new("ScreenGui");
Tu.Name = "MoonFOVGui";
Tu.ResetOnSpawn = false;
Tu.IgnoreGuiInset = true;
Tu.DisplayOrder = 99999;
Tu.Parent = x;
local Ku = Instance.new("Frame");
Ku.AnchorPoint = Vector2.new(.5, .5);
Ku.Size = UDim2.new(0, 300, 0, 300);
Ku.Position = UDim2.new(.5, 0, .5, 0);
Ku.BackgroundTransparency = 1;
Ku.BorderSizePixel = 0;
Ku.Visible = false;
Ku.ZIndex = 999;
Ku.Parent = Tu;
pcall(function()
	(Instance.new("UICorner", Ku)).CornerRadius = UDim.new(1, 0);
end);
local uu;
pcall(function()
	uu = Instance.new("UIStroke");
	uu.Color = Color3.new(1, 1, 1);
	uu.Thickness = 1.5;
	uu.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	uu.Parent = Ku;
end);
local Vu, Gu, qu, Lu = 0, tick(), 0, 0;
b.Heartbeat:Connect(function()
	local E = Sy(B);
	if E then
		local Q = E:FindFirstChildOfClass("Humanoid");
		if p.Speed and (Q and Q.Health > 0) then
			Q.WalkSpeed = p.SpeedValue or 24;
		end;
		if p.Noclip then
			if not Nu then
				tu(true);
			end;
		elseif Nu then
			tu(false);
		end;
	end;
	SU(p.Potato == true);
	pcall(Hy);
	pcall(uy);
end);
b.RenderStepped:Connect(function()
	pcall(function()
		Vu = Vu + 1;
		if tick() - Gu >= 1 then
			qu = Vu;
			Vu = 0;
			Gu = tick();
		end;
		if Qy.Visible then
			if Q.TouchEnabled and not Q.KeyboardEnabled then
				local E = S.ViewportSize;
				Qy.Position = UDim2.new(0, E.X / 2, 0, E.Y / 2);
			else
				local E = Q:GetMouseLocation();
				Qy.Position = UDim2.new(0, E.X, 0, E.Y);
			end;
		end;
		if p.CustomFOV then
			ey();
		end;
		ly = false;
		local E, b, c = false, p.AimSmooth or .95, p.AimFOV or 150;
		if p.KillAura and (py and By(py)) then
			ly = true;
		elseif not p.KillAura then
			if p.MobileAim then
				E = true;
				b = p.MobileSmooth or .9;
				c = p.MobileFOV or 160;
			elseif p.Aimbot then
				E = Ju or p.AimMode == "Always";
				b = p.AimSmooth or .95;
				c = p.AimFOV or 150;
			end;
		end;
		if E then
			local E, Q = ky(c, true);
			if Q then
				ly = true;
				if b >= .98 then
					S.CFrame = CFrame.new(S.CFrame.Position, Q);
				else
					S.CFrame = S.CFrame:Lerp(CFrame.new(S.CFrame.Position, Q), math.clamp(b, .1, 1));
				end;
				ry(Q);
			end;
		end;
		vy();
		pcall(wy);
		pcall(yy);
		pcall(QU);
		pcall(lU);
		Lu = Lu + 1;
		if Lu >= 2 then
			Lu = 0;
			pcall(Jy);
		end;
		local z, e = false, p.AimFOV or 150;
		if p.MobileAim then
			z = p.MobileShowFOV;
			e = p.MobileFOV or 160;
		else
			z = p.ShowFOV;
			e = p.AimFOV or 150;
		end;
		Ku.Size = UDim2.new(0, e * 2, 0, e * 2);
		Ku.Position = UDim2.new(.5, 0, .5, 0);
		Ku.Visible = z;
		if uu then
			if p.RGBESP then
				uu.Color = i();
			end;
		end;
	end);
end);
local mu = Instance.new("TextLabel");
mu.Name = "MoonFPSLabel";
mu.BackgroundTransparency = 1;
mu.TextColor3 = M;
mu.TextSize = 14;
mu.Font = Enum.Font.GothamBold;
mu.TextStrokeTransparency = 0;
mu.Position = UDim2.new(0, 10, 0, 10);
mu.Size = UDim2.new(0, 200, 0, 20);
mu.Visible = false;
mu.Parent = x;
task.spawn(function()
	while true do
		task.wait(.5);
		if p.ShowPerf then
			local E = 0;
			pcall(function()
				E = math.floor(z.Network.ServerStatsItem["Data Ping"]:GetValue());
			end);
			mu.Text = "FPS: " .. (qu .. ("  MS: " .. E));
			mu.Visible = true;
		else
			mu.Visible = false;
		end;
	end;
end);
task.spawn(function()
	while true do
		task.wait(15);
		u();
	end;
end);
if p.CursorName and p.CursorName ~= "Off" then
	cy(p.CursorName);
end;
if p.CustomFOV then
	ey();
end;
j(1, "Done");
task.wait(.35);
pcall(function()
	A:Destroy();
end);
oU.Visible = true;
ku.Visible = false;
print("[Moon Hub] PUBLIC MOBILE | " .. (D .. " | Vis Green/Red"));
