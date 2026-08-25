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
local R = game:GetService("Players");
local c = game:GetService("UserInputService");
local L = game:GetService("RunService");
local F = game:GetService("Lighting");
local Q = game:GetService("Stats");
local n = game:GetService("HttpService");
local y = game:GetService("TweenService");
local H = game:GetService("ReplicatedStorage");
local Z = game:GetService("VirtualInputManager");
local P = workspace.CurrentCamera;
local J = R.LocalPlayer or R.PlayerAdded:Wait();
local v = J:WaitForChild("PlayerGui", 60);
if not v then
	warn("[Moon] PlayerGui timeout");
	return;
end;
local function b()
	if gethui then
		local R, c = pcall(function()
				return gethui();
			end);
		if R and c then
			return c;
		end;
	end;
	return game:GetService("CoreGui");
end;
local q = b();
pcall(function()
	for R, c in ipairs({
		"MoonHubUI",
		"MoonCursorUI",
		"MoonLoadUI",
		"MoonFOVGui",
		"MoonESPGui",
		"MoonMobileESPGui",
	}) do
		local L = v:FindFirstChild(c);
		if L then
			L:Destroy();
		end;
		local F = q:FindFirstChild(c);
		if F then
			F:Destroy();
		end;
	end;
end);
task.wait(.05);
local S;
pcall(function()
	S = J:GetMouse();
end);
local function N()
	local R = "Unknown";
	pcall(function()
		if identifyexecutor then
			local c, L = identifyexecutor();
			R = tostring(c or "Unknown");
			if L then
				R = R .. (" " .. tostring(L));
			end;
		elseif getexecutorname then
			R = tostring(getexecutorname());
		elseif syn and syn.request then
			R = "Synapse";
		elseif fluxus then
			R = "Fluxus";
		elseif KRNL_LOADED then
			R = "Krnl";
		elseif is_sirhurt_closure then
			R = "Sirhurt";
		elseif pebc_execute then
			R = "Parallel";
		elseif SecureDelta then
			R = "Delta";
		end;
	end);
	return R;
end;
local p = N();
local s, l, B, d, X, g, D, m;
B = {};
local function w()
	s = Instance.new("ScreenGui");
	s.Name = "MoonLoadUI";
	s.ResetOnSpawn = false;
	s.IgnoreGuiInset = true;
	s.DisplayOrder = 9999;
	s.Parent = v;
	task.spawn(function()
		task.wait(8);
		pcall(function()
			if s and s.Parent then
				s:Destroy();
			end;
		end);
	end);
	local R = Instance.new("Frame");
	R.Size = UDim2.new(1, 0, 1, 0);
	R.BackgroundColor3 = Color3.fromRGB(8, 8, 12);
	R.BorderSizePixel = 0;
	R.Parent = s;
	local c = Instance.new("Frame");
	c.Size = UDim2.new(0, 320, 0, 160);
	c.Position = UDim2.new(.5, -160, .5, -80);
	c.BackgroundColor3 = Color3.fromRGB(16, 16, 22);
	c.BorderSizePixel = 0;
	c.Parent = R;
	(Instance.new("UICorner", c)).CornerRadius = UDim.new(0, 14);
	local L = Instance.new("TextLabel");
	L.Size = UDim2.new(1, -20, 0, 28);
	L.Position = UDim2.new(0, 10, 0, 14);
	L.BackgroundTransparency = 1;
	L.Text = "MOON HUB";
	L.TextColor3 = Color3.fromRGB(138, 99, 255);
	L.TextSize = 20;
	L.Font = Enum.Font.GothamBold;
	L.Parent = c;
	local F = Instance.new("TextLabel");
	F.Size = UDim2.new(1, -20, 0, 18);
	F.Position = UDim2.new(0, 10, 0, 42);
	F.BackgroundTransparency = 1;
	F.Text = "jailbird";
	F.TextColor3 = Color3.fromRGB(160, 160, 180);
	F.TextSize = 12;
	F.Font = Enum.Font.Gotham;
	F.Parent = c;
	local Q = Instance.new("TextLabel");
	Q.Size = UDim2.new(1, -20, 0, 18);
	Q.Position = UDim2.new(0, 10, 0, 70);
	Q.BackgroundTransparency = 1;
	Q.Text = "Starting...";
	Q.TextColor3 = Color3.fromRGB(220, 220, 230);
	Q.TextSize = 12;
	Q.Font = Enum.Font.Gotham;
	Q.TextXAlignment = Enum.TextXAlignment.Left;
	Q.Parent = c;
	local H = Instance.new("Frame");
	H.Size = UDim2.new(1, -24, 0, 10);
	H.Position = UDim2.new(0, 12, 0, 100);
	H.BackgroundColor3 = Color3.fromRGB(30, 30, 40);
	H.BorderSizePixel = 0;
	H.Parent = c;
	(Instance.new("UICorner", H)).CornerRadius = UDim.new(1, 0);
	local Z = Instance.new("Frame");
	Z.Size = UDim2.new(0, 0, 1, 0);
	Z.BackgroundColor3 = Color3.fromRGB(138, 99, 255);
	Z.BorderSizePixel = 0;
	Z.Parent = H;
	(Instance.new("UICorner", Z)).CornerRadius = UDim.new(1, 0);
	local P = Instance.new("TextLabel");
	P.Size = UDim2.new(1, -20, 0, 32);
	P.Position = UDim2.new(0, 10, 0, 118);
	P.BackgroundTransparency = 1;
	P.Text = "Executor: " .. p;
	P.TextColor3 = Color3.fromRGB(140, 140, 160);
	P.TextSize = 11;
	P.Font = Enum.Font.Gotham;
	P.TextXAlignment = Enum.TextXAlignment.Left;
	P.TextYAlignment = Enum.TextYAlignment.Top;
	P.Parent = c;
	l = function(R, c)
			R = math.clamp(R, 0, 1);
			pcall(function()
				Q.Text = c or Q.Text;
				(y:Create(Z, TweenInfo.new(.25, Enum.EasingStyle.Quad), { Size = UDim2.new(R, 0, 1, 0) })):Play();
			end);
		end;
	l(.08, "Detecting executor...");
	task.wait(.2);
	l(.2, "Executor: " .. p);
	task.wait(.15);
	l(.35, "Loading config...");
	task.wait(.1);
	D = function(R, c)
			pcall(function()
				if writefile then
					writefile(R, c);
				end;
			end);
		end;
	m = function(R)
			local c, L = pcall(function()
					if isfile and (isfile(R) and readfile) then
						return readfile(R);
					end;
				end);
			return c and L or nil;
		end;
	pcall(function()
		if makefolder then
			makefolder("MoonHub");
			makefolder("MoonHub/Configs");
		end;
	end);
	B = {};
	d = {
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
			SilentAim = false,
			SilentFOV = 90,
			SilentShowFOV = true,
			SilentShowLine = true,
			SilentPart = "Head",
			SilentTeamCheck = true,
			SilentVisible = false,
			DesignAccentR = 138,
			DesignAccentG = 99,
			DesignAccentB = 255,
			ConfigName = "default",
		};
	for R, c in pairs(d) do
		B[R] = c;
	end;
	local J = false;
	task.delay(2.5, function()
		J = true;
	end);
	X = function()
			local R = (tostring(B.ConfigName or "default")):gsub("[^%w%-%_]", "");
			if R == "" then
				R = "default";
			end;
			B.ConfigName = R;
			B.StretchAmount = math.clamp(tonumber(B.StretchAmount) or .53, .3, 1);
			D("MoonHub/Configs/" .. (R .. ".json"), n:JSONEncode(B));
			D("MoonHub/Jailbird.json", n:JSONEncode(B));
		end;
	g = function()
			local R = (tostring(B.ConfigName or "default")):gsub("[^%w%-%_]", "");
			local c = m("MoonHub/Configs/" .. (R .. ".json")) or m("MoonHub/Jailbird.json");
			if c then
				pcall(function()
					local R = n:JSONDecode(c);
					if type(R) == "table" then
						for R, c in pairs(R) do
							if d[R] ~= nil then
								B[R] = c;
							end;
						end;
					end;
				end);
			end;
			if type(B.DeviceSpoofDelay) ~= "number" then
				B.DeviceSpoofDelay = 1.5;
			end;
			B.StretchAmount = math.clamp(tonumber(B.StretchAmount) or .53, .3, 1);
			if not J then
				local R = B.ScreenStretch == true;
				B.ScreenStretch = false;
				task.delay(2.6, function()
					if R then
						B.ScreenStretch = true;
					end;
					J = true;
				end);
			end;
			if B.HitboxPart ~= "Head" and B.HitboxPart ~= "Torso" then
				B.HitboxPart = "Head";
			end;
			local L = tostring(B.TargetPriority or "Crosshair");
			if L ~= "Crosshair" and (L ~= "Closest" and L ~= "Lowest HP") then
				B.TargetPriority = "Crosshair";
			end;
		end;
	pcall(g);
end;
w();
l(.5, "Loading Drawing...");
local k = false;
local a = nil;
local function V(R)
	if not R or type(R.new) ~= "function" then
		return false;
	end;
	local c = pcall(function()
			local c = R.new("Text");
			c.Visible = false;
			c:Remove();
		end);
	if c then
		k = true;
		a = R;
		return true;
	end;
	return false;
end;
V(Drawing);
pcall(function()
	if getrenv then
		V((getrenv()).Drawing);
	end;
end);
l(.65, k and "Drawing OK" or "Drawing missing (radar unavailable)");
local function e()
	local R, c, L = 138, 99, 255;
	if type(B) == "table" then
		R = tonumber(B.DesignAccentR) or R;
		c = tonumber(B.DesignAccentG) or c;
		L = tonumber(B.DesignAccentB) or L;
	end;
	return Color3.fromRGB(math.clamp(R, 0, 255), math.clamp(c, 0, 255), math.clamp(L, 0, 255));
end;
local f = e();
local t = Color3.fromRGB(12, 12, 16);
local U = Color3.fromRGB(18, 18, 24);
local i = Color3.fromRGB(20, 20, 28);
local A = Color3.fromRGB(235, 235, 245);
local E = Color3.fromRGB(160, 160, 180);
local o = Enum.Font.Gotham;
local r = {};
local function K(R, c, L)
	if c then
		table.insert(r, { kind = R, obj = c, extra = L });
	end;
end;
local W = Color3.fromRGB(40, 255, 40);
local T = Color3.fromRGB(255, 40, 40);
local function h()
	if type(B) ~= "table" then
		return Color3.fromRGB(170, 0, 255);
	end;
	if B.RGBESP then
		return Color3.fromHSV(((tick() * .4)) % 1, 1, 1);
	end;
	return Color3.fromRGB(math.clamp(tonumber(B.ESPColorR) or 170, 0, 255), math.clamp(tonumber(B.ESPColorG) or 0, 0, 255), math.clamp(tonumber(B.ESPColorB) or 255, 0, 255));
end;
local function z()
	pcall(function()
		c.MouseBehavior = Enum.MouseBehavior.Default;
		c.MouseIconEnabled = true;
	end);
end;
local I = { { Name = "Off", Id = nil }, { Name = "TC2", Id = "8680062686" }, { Name = "Cinnamoroll", Id = "11719890577" } };
local u = Instance.new("ScreenGui");
u.Name = "MoonCursorUI";
u.ResetOnSpawn = false;
u.IgnoreGuiInset = true;
u.DisplayOrder = 10000;
u.Parent = v;
local C = Instance.new("ImageLabel");
C.BackgroundTransparency = 1;
C.AnchorPoint = Vector2.new(.5, .5);
C.Size = UDim2.new(0, 32, 0, 32);
C.Visible = false;
C.ZIndex = 100;
C.Parent = u;
local function G(R)
	local c = v:FindFirstChild("Crosshair");
	if not c then
		return;
	end;
	pcall(function()
		if c:IsA("ScreenGui") then
			c.Enabled = R;
		end;
		c.Visible = R;
		for c, L in ipairs(c:GetDescendants()) do
			if L:IsA("GuiObject") then
				L.Visible = R;
			end;
		end;
	end);
end;
local function O(R)
	R = R or B.CursorName or "Off";
	B.CursorName = R;
	local L = I[1];
	for c, F in ipairs(I) do
		if F.Name == R then
			L = F;
			break;
		end;
	end;
	G(false);
	C.Visible = false;
	local F = math.clamp(tonumber(B.CursorSize) or 32, 8, 128);
	C.Size = UDim2.new(0, F, 0, F);
	if not L.Id or L.Name == "Off" then
		pcall(function()
			if S then
				S.Icon = "";
			end;
			c.MouseIconEnabled = true;
		end);
		return;
	end;
	if L.Id == "GAME" then
		G(true);
		pcall(function()
			if S then
				S.Icon = "rbxassetid://0";
			end;
			c.MouseIconEnabled = true;
		end);
		return;
	end;
	pcall(function()
		c.MouseIconEnabled = false;
		if S then
			S.Icon = "rbxassetid://0";
		end;
		C.Image = "rbxassetid://" .. tostring(L.Id);
		C.Visible = true;
		if c.TouchEnabled and not c.KeyboardEnabled then
			local R = P.ViewportSize;
			C.Position = UDim2.new(0, R.X / 2, 0, R.Y / 2);
		end;
	end);
end;
local x = 70;
pcall(function()
	x = P.FieldOfView;
end);
local function j()
	if not B.CustomFOV then
		return;
	end;
	local R = math.clamp(tonumber(B.FOVValue) or 90, 40, 120);
	pcall(function()
		if math.abs(P.FieldOfView - R) > .5 then
			P.FieldOfView = R;
		end;
	end);
end;
local M = false;
local function Y()
	if not stretchReady then
		return;
	end;
	if not B.ScreenStretch then
		return;
	end;
	if M then
		return;
	end;
	if not P or not P.Parent then
		return;
	end;
	local R = math.clamp(tonumber(B.StretchAmount) or .53, .3, 1);
	if R >= .995 then
		return;
	end;
	pcall(function()
		local c = P.CFrame;
		if c then
			P.CFrame = c * CFrame.new(0, 0, 0, 1, 0, 0, 0, R, 0, 0, 0, 1);
		end;
	end);
end;
local function Rv(R)
	local c = J.Character;
	if not c then
		return;
	end;
	local L = c:FindFirstChild("HumanoidRootPart");
	if not L or not R then
		return;
	end;
	pcall(function()
		local c = L.Position;
		L.CFrame = CFrame.new(c, Vector3.new(R.X, c.Y, R.Z));
	end);
end;
local function cv(R)
	if not R then
		return nil;
	end;
	local c, L = pcall(function()
			return R.Character;
		end);
	return c and L or nil;
end;
local Lv, Fv, Qv, nv, yv, Hv, Zv, Pv, Jv, vv, bv, qv, Sv;
local function Nv()
	Lv = function(R)
			local c = cv(R);
			if not c then
				return false;
			end;
			local L = c:FindFirstChildOfClass("Humanoid");
			return L ~= nil and L.Health > 0;
		end;
	Fv = function(R)
			if not R or R == J then
				return false;
			end;
			if not B.TeamCheck then
				return true;
			end;
			local c, L = J.Team, R.Team;
			if c and L then
				return c ~= L;
			end;
			return true;
		end;
	local c = {
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
	local function L(R, c)
		for L = 1, #c, 1 do
			if string.find(R, c[L], 1, true) then
				return true;
			end;
		end;
		return false;
	end;
	local function F(R)
		if not R or not R:IsA("BasePart") then
			return true;
		end;
		local F = string.lower(R.Name or "");
		local Q = string.lower(R:GetFullName() or "");
		local n = string.lower(tostring(R.Material));
		if string.find(F, "glass", 1, true) or string.find(n, "glass", 1, true) then
			return true;
		end;
		if R.Transparency >= .7 then
			return true;
		end;
		if string.find(F, "door", 1, true) or string.find(Q, "door", 1, true) then
			if string.find(F, "wood", 1, true) or string.find(Q, "wood", 1, true) then
				return false;
			end;
			return true;
		end;
		if string.find(F, "window", 1, true) then
			return true;
		end;
		if R.CanCollide == false and R.Transparency >= .25 then
			return true;
		end;
		if L(F, c) or L(Q, c) then
			return false;
		end;
		return false;
	end;
	local function Q(R)
		if not B.WallCheck then
			return true;
		end;
		local c = cv(R);
		local L = c and c:FindFirstChild("Head");
		if not L then
			return false;
		end;
		local Q = cv(J);
		local n = P.CFrame.Position + P.CFrame.LookVector * .8;
		local y = L.Position;
		local H = y - n;
		local Z = H.Magnitude;
		if Z < 1.5 then
			return true;
		end;
		local v = { P };
		if Q then
			table.insert(v, Q);
		end;
		if c then
			table.insert(v, c);
		end;
		local b = RaycastParams.new();
		b.FilterType = Enum.RaycastFilterType.Exclude;
		b.FilterDescendantsInstances = v;
		b.IgnoreWater = true;
		local q, S, N = 0, n, H.Unit;
		for R = 1, 12, 1 do
			local L = Z - q;
			if L <= .15 then
				return true;
			end;
			local Q = workspace:Raycast(S, N * L, b);
			if not Q then
				return true;
			end;
			if Q.Instance and (c and Q.Instance:IsDescendantOf(c)) then
				return true;
			end;
			if F(Q.Instance) then
				table.insert(v, Q.Instance);
				b.FilterDescendantsInstances = v;
				local R = ((Q.Position - S)).Magnitude;
				S = Q.Position + N * .15;
				q = (q + R) + .15;
			else
				return false;
			end;
		end;
		return false;
	end;
	qv = function(R)
			if B.RGBESP then
				return Color3.fromHSV(((tick() * .4)) % 1, 1, 1);
			end;
			if Q(R) then
				return W;
			end;
			return T;
		end;
	local function n(R, c)
		if not B.Prediction or not R then
			return R.Position;
		end;
		local L = c and ((c:FindFirstChild("HumanoidRootPart") or c:FindFirstChild("Torso")));
		local F = Vector3.zero;
		if L then
			pcall(function()
				F = L.AssemblyLinearVelocity;
			end);
		end;
		return R.Position + F * ((tonumber(B.PredictAmount) or .12));
	end;
	Qv = function(c, L)
			local F = tostring(B.TargetPriority or "Crosshair");
			local y, H = nil, nil;
			local Z = math.huge;
			local v = P.ViewportSize / 2;
			local b = J.Character and ((J.Character:FindFirstChild("HumanoidRootPart") or J.Character:FindFirstChild("Torso")));
			for R, q in ipairs(R:GetPlayers()) do
				if q ~= J and (Fv(q) and Lv(q)) then
					local R = cv(q);
					local J = R and R:FindFirstChild("Head");
					if J then
						local S = n(J, R);
						local N, p = P:WorldToViewportPoint(S);
						if p and N.Z > 0 then
							local n = ((Vector2.new(N.X, N.Y) - v)).Magnitude;
							if n <= ((c or 150)) and (((not L) or Q(q))) then
								local c;
								if F == "Lowest HP" then
									local L = R:FindFirstChildOfClass("Humanoid");
									c = L and L.Health or 100;
								elseif F == "Closest" then
									if b then
										c = ((J.Position - b.Position)).Magnitude;
									else
										c = N.Z;
									end;
								else
									c = n;
								end;
								if c < Z then
									Z = c;
									y = q;
									H = S;
								end;
							end;
						end;
					end;
				end;
			end;
			return y, H;
		end;
	Hv = false;
	pcall(function()
		if not Drawing and not Sv then
			return;
		end;
		local R = Sv or Drawing;
		Zv = R.new("Circle");
		Zv.Thickness = 1;
		Zv.Visible = false;
		Zv.Filled = false;
		Zv.NumSides = 64;
		Zv.Radius = 90;
		Zv.Color = Color3.fromRGB(138, 99, 255);
		Zv.Transparency = .35;
		Pv = R.new("Line");
		Pv.Thickness = 1;
		Pv.Visible = false;
		Pv.Color = Color3.fromRGB(138, 99, 255);
		Pv.Transparency = .4;
	end);
	nv = function()
			if not B.SilentAim then
				return nil;
			end;
			local c, L = nil, math.huge;
			local F = P.ViewportSize / 2;
			local n = tonumber(B.SilentFOV) or 90;
			local y = tostring(B.SilentPart or "Head");
			local H = J.Character;
			local Z = H and H:FindFirstChild("Head");
			if not Z then
				return nil;
			end;
			for R, H in ipairs(R:GetPlayers()) do
				if H == J then
					continue;
				end;
				if B.SilentTeamCheck and (J.Team and H.Team) then
					if H.Team == J.Team or H.Team.Name == "Spectator" then
						continue;
					end;
				end;
				local v = cv(H);
				if not v or not Lv(H) then
					continue;
				end;
				local b = v:FindFirstChild(y) or v:FindFirstChild("Head") or v:FindFirstChild("HumanoidRootPart") or v:FindFirstChild("Torso");
				if not b then
					continue;
				end;
				local q, S = P:WorldToViewportPoint(b.Position);
				if not S or q.Z <= 0 then
					continue;
				end;
				if ((Vector2.new(q.X, q.Y) - F)).Magnitude > n then
					continue;
				end;
				if B.SilentVisible and not Q(H) then
					continue;
				end;
				local N = ((b.Position - Z.Position)).Magnitude;
				if N < L then
					L = N;
					c = b;
				end;
			end;
			return c;
		end;
	yv = function()
			if Hv then
				return true;
			end;
			if not getgc or not hookfunction or not newcclosure then
				return false;
			end;
			local R = 0;
			pcall(function()
				for c, L in next, getgc(true) do
					if typeof(L) == "function" and (not isexecutorclosure(L) and (not iscclosure(L) and islclosure(L))) then
						local c, F = pcall(debug.getinfo, L);
						if c and (F and F.name == "BulletRayCast") then
							local c;
							c = hookfunction(L, newcclosure(function(...)
									if not B.SilentAim then
										return c(...);
									end;
									local R = select("#", ...);
									local L = { ... };
									local F = nv();
									if F and (R >= 2 and typeof(L[1]) == "Vector3") then
										local R = L[1];
										local c = F.Position - R;
										if c.Magnitude > .05 then
											L[2] = c.Unit;
										end;
									end;
									return c(table.unpack(L, 1, R));
								end));
							R = R + 1;
							Hv = true;
						end;
					end;
				end;
			end);
			if Hv then
				print("[Moon] Silent Aim hooked BulletRayCast x" .. tostring(R));
			end;
			return Hv;
		end;
	yv();
	task.delay(2, yv);
	task.delay(5, yv);
	task.delay(10, yv);
	origSizes = {};
	local function y(R)
		return R and ((R:FindFirstChild("Torso") or R:FindFirstChild("UpperTorso")));
	end;
	local function v(R)
		if not R then
			return;
		end;
		local c = origSizes[R];
		if c then
			pcall(function()
				R.Size = c;
			end);
			origSizes[R] = nil;
		end;
	end;
	vv = function()
			for R, c in pairs(origSizes) do
				v(R);
			end;
			origSizes = {};
		end;
	local function b(R, c)
		if not R or not R:IsA("BasePart") then
			return;
		end;
		if origSizes[R] == nil then
			origSizes[R] = R.Size;
		end;
		local L = math.clamp(tonumber(c) or 3, 1.2, 12);
		pcall(function()
			R.Size = Vector3.new(L, L, L);
			R.Massless = true;
			R.CanCollide = false;
		end);
	end;
	Jv = function()
			if not B.Hitbox then
				vv();
				return;
			end;
			local c = B.HitboxPart;
			local L = tonumber(B.HitboxSize) or 3;
			for R, F in ipairs(R:GetPlayers()) do
				if F ~= J and (Fv(F) and Lv(F)) then
					local R = cv(F);
					if R then
						local F = R:FindFirstChild("Head");
						local Q = y(R);
						if c == "Head" then
							if F then
								b(F, L);
							end;
							if Q then
								v(Q);
							end;
						else
							if Q then
								b(Q, L);
							end;
							if F then
								v(F);
							end;
						end;
					end;
				end;
			end;
		end;
	local q = 0;
	local function S()
		local R = cv(J);
		if not R then
			return nil;
		end;
		return R:FindFirstChildOfClass("Tool");
	end;
	local function N()
		local R = S();
		if not R then
			return;
		end;
		pcall(function()
			R:Activate();
		end);
		pcall(function()
			local R = P.ViewportSize;
			local c = math.floor(R.X / 2);
			local L = math.floor(R.Y / 2);
			Z:SendMouseButtonEvent(c, L, 0, true, game, 1);
			task.wait(.02);
			Z:SendMouseButtonEvent(c, L, 0, false, game, 1);
		end);
	end;
	local function p()
		if not B.Triggerbot then
			return;
		end;
		if not Lv(J) then
			return;
		end;
		local R = S();
		if not R then
			return;
		end;
		if not P or not P.Parent then
			return;
		end;
		local c = math.max(tonumber(B.TriggerDelay) or .12, .08);
		if tick() - q < c then
			return;
		end;
		local L = tonumber(B.TriggerFOV) or 55;
		local F = Qv(L, B.WallCheck);
		if F and (Lv(F) and Fv(F)) then
			q = tick();
			N();
		end;
	end;
	local s = nil;
	local function l(c)
		local L = cv(J);
		local F = L and L:FindFirstChild("HumanoidRootPart");
		if not F then
			return nil;
		end;
		local Q = tonumber(B.KillAuraRange) or 90;
		local n, y = nil, Q;
		for R, L in ipairs(R:GetPlayers()) do
			if L ~= J and (L ~= c and (Fv(L) and Lv(L))) then
				local R = cv(L);
				local c = R and R:FindFirstChild("HumanoidRootPart");
				local Q = R and R:FindFirstChild("Head");
				if c and Q then
					local R = ((c.Position - F.Position)).Magnitude;
					if R < y then
						y = R;
						n = L;
					end;
				end;
			end;
		end;
		return n;
	end;
	local function d(R)
		local c = cv(J);
		local L = c and c:FindFirstChild("HumanoidRootPart");
		local F = cv(R);
		local Q = F and F:FindFirstChild("HumanoidRootPart");
		local n = F and F:FindFirstChild("Head");
		if not L or not Q or not n then
			return false;
		end;
		local y = tonumber(B.KillAuraBehind) or 3.2;
		local H = Q.CFrame.LookVector;
		local Z = (Q.Position - H * y) + Vector3.new(0, 1.4, 0);
		pcall(function()
			L.CFrame = CFrame.new(Z, n.Position);
		end);
		pcall(function()
			P.CFrame = CFrame.new(P.CFrame.Position, n.Position);
		end);
		return true;
	end;
	local function X()
		if not B.KillAura then
			s = nil;
			return;
		end;
		local R = cv(J);
		local c = R and R:FindFirstChildOfClass("Humanoid");
		if not c or c.Health <= 0 then
			s = nil;
			return;
		end;
		if not s or not Lv(s) or not Fv(s) then
			s = l(s);
		end;
		if not s then
			return;
		end;
		if d(s) then
			N();
		else
			s = nil;
		end;
	end;
	local g = nil;
	pcall(function()
		g = (H:WaitForChild("GameEvents", 8)):WaitForChild("DeviceUpdate", 8);
	end);
	bv = function()
			if not g then
				pcall(function()
					g = H.GameEvents.DeviceUpdate;
				end);
			end;
			if not g then
				return;
			end;
			local R = B.DeviceMode or "Console";
			pcall(function()
				if R == "Console" then
					g:FireServer();
					pcall(function()
						g:FireServer("Console");
					end);
				elseif R == "Desktop" then
					g:FireServer("Desktop");
				else
					g:FireServer("Mobile");
				end;
			end);
		end;
	task.spawn(function()
		while true do
			local R = tonumber(B.DeviceSpoofDelay) or 1.5;
			if R < .3 then
				R = .3;
			end;
			task.wait(R);
			if B.DeviceSpoof then
				pcall(bv);
			end;
		end;
	end);
end;
Nv();
l(.78, "Building ESP...");
local pv, sv, lv, Bv, dv, Xv, gv, Dv, mv, wv;
local function kv()
	local c = Instance.new("ScreenGui");
	c.Name = "MoonMobileESPGui";
	c.ResetOnSpawn = false;
	c.IgnoreGuiInset = true;
	c.DisplayOrder = 99999;
	c.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	c.Parent = q;
	local L = {};
	local function Q(R)
		if not R then
			return;
		end;
		pcall(function()
			if R.fullBox then
				R.fullBox:Destroy();
			end;
		end);
		pcall(function()
			if R.fullStroke then
				R.fullStroke:Destroy();
			end;
		end);
		pcall(function()
			if R.name then
				R.name:Destroy();
			end;
		end);
		pcall(function()
			if R.dist then
				R.dist:Destroy();
			end;
		end);
		pcall(function()
			if R.healthBg then
				R.healthBg:Destroy();
			end;
		end);
		pcall(function()
			if R.healthFill then
				R.healthFill:Destroy();
			end;
		end);
		pcall(function()
			if R.headDot then
				R.headDot:Destroy();
			end;
		end);
		if R.corners then
			for c = 1, #R.corners, 1 do
				local L = R.corners[c];
				pcall(function()
					if L then
						L:Destroy();
					end;
				end);
				R.corners[c] = nil;
			end;
		end;
	end;
	sv = function()
			for R, c in pairs(L) do
				Q(c);
				L[R] = nil;
			end;
			pcall(function()
				for R, c in ipairs(c:GetChildren()) do
					pcall(function()
						if c then
							c:Destroy();
						end;
					end);
				end;
			end);
			L = {};
		end;
	local function n(R)
		local c = L[R];
		if not c then
			return;
		end;
		Q(c);
		L[R] = nil;
	end;
	local function y(R)
		if L[R] then
			return L[R];
		end;
		local F = Instance.new("Frame");
		F.BackgroundTransparency = 1;
		F.BorderSizePixel = 0;
		F.Visible = false;
		F.ZIndex = 999;
		F.Parent = c;
		local Q;
		pcall(function()
			Q = Instance.new("UIStroke");
			Q.Color = Color3.new(1, 1, 1);
			Q.Thickness = 1.5;
			Q.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
			Q.Parent = F;
		end);
		local n = {};
		for R = 1, 8, 1 do
			local L = Instance.new("Frame");
			L.BorderSizePixel = 0;
			L.BackgroundColor3 = Color3.new(1, 1, 1);
			L.Visible = false;
			L.ZIndex = 999;
			L.Parent = c;
			n[R] = L;
		end;
		local y = Instance.new("TextLabel");
		y.BackgroundTransparency = 1;
		y.AnchorPoint = Vector2.new(.5, .5);
		y.TextColor3 = Color3.new(1, 1, 1);
		y.TextSize = 12;
		y.Font = Enum.Font.SourceSansBold;
		y.TextStrokeTransparency = 0;
		y.Visible = false;
		y.ZIndex = 999;
		y.Parent = c;
		local H = Instance.new("TextLabel");
		H.BackgroundTransparency = 1;
		H.AnchorPoint = Vector2.new(.5, .5);
		H.TextColor3 = Color3.new(1, 1, 1);
		H.TextSize = 10;
		H.Font = Enum.Font.SourceSans;
		H.TextStrokeTransparency = 0;
		H.Visible = false;
		H.ZIndex = 999;
		H.Parent = c;
		local Z = Instance.new("Frame");
		Z.BorderSizePixel = 0;
		Z.BackgroundColor3 = Color3.new(0, 0, 0);
		Z.Visible = false;
		Z.ZIndex = 999;
		Z.Parent = c;
		local P = Instance.new("Frame");
		P.BorderSizePixel = 0;
		P.BackgroundColor3 = Color3.new(1, 0, 0);
		P.Visible = false;
		P.ZIndex = 999;
		P.Parent = c;
		local J = Instance.new("Frame");
		J.BorderSizePixel = 0;
		J.BackgroundColor3 = Color3.new(1, 1, 1);
		J.Visible = false;
		J.ZIndex = 999;
		J.Parent = c;
		pcall(function()
			local R = Instance.new("UICorner");
			R.CornerRadius = UDim.new(1, 0);
			R.Parent = J;
		end);
		local v = {
				fullBox = F,
				fullStroke = Q,
				corners = n,
				name = y,
				dist = H,
				healthBg = Z,
				healthFill = P,
				headDot = J,
			};
		L[R] = v;
		return v;
	end;
	pv = function()
			if not B.ESP then
				sv();
				return;
			end;
			if not P or not P.Parent then
				return;
			end;
			local c = P.ViewportSize;
			if c.X < 1 or c.Y < 1 then
				return;
			end;
			local F = {};
			for R, c in ipairs(R:GetPlayers()) do
				F[c] = true;
			end;
			for R in pairs(L) do
				if not F[R] then
					n(R);
				end;
			end;
			local Q = cv(J) and (cv(J)):FindFirstChild("HumanoidRootPart");
			local H = {};
			for R, c in ipairs(R:GetPlayers()) do
				if c ~= J and (Fv(c) and Lv(c)) then
					H[c] = true;
					local R = cv(c);
					local L = R and ((R:FindFirstChild("HumanoidRootPart") or R:FindFirstChild("Torso")));
					local F = R and R:FindFirstChild("Head");
					local Z = R and R:FindFirstChildOfClass("Humanoid");
					if not L or not F then
						n(c);
						continue;
					end;
					local J = y(c);
					local v = qv(c);
					local b, q = P:WorldToViewportPoint(L.Position);
					local S, N = P:WorldToViewportPoint(F.Position + Vector3.new(0, 1.1, 0));
					local p = P:WorldToViewportPoint(L.Position - Vector3.new(0, 2.8, 0));
					if not ((b and (S and (q and (N and (b.Z > 0 and S.Z > 0)))))) then
						J.fullBox.Visible = false;
						J.name.Visible = false;
						J.dist.Visible = false;
						J.healthBg.Visible = false;
						J.healthFill.Visible = false;
						J.headDot.Visible = false;
						for R = 1, 8, 1 do
							if J.corners[R] then
								J.corners[R].Visible = false;
							end;
						end;
						continue;
					end;
					local s = p and p.Y or b.Y + 2.8;
					local l = math.max(math.abs(s - S.Y), 10);
					local d = math.clamp(l / 1.85, 8, 120);
					local X = b.X - d / 2;
					local g = S.Y;
					if B.ShowBoxes and ((B.BoxStyle == "Full" or B.BoxStyle == "Both")) then
						J.fullBox.Size = UDim2.new(0, d, 0, l);
						J.fullBox.Position = UDim2.new(0, X, 0, g);
						J.fullBox.Visible = true;
						if J.fullStroke then
							J.fullStroke.Color = v;
						end;
					else
						J.fullBox.Visible = false;
					end;
					if B.ShowBoxes and ((B.BoxStyle == "Corner" or B.BoxStyle == "Both")) then
						local R = math.clamp(d * .22, 4, 10);
						local c = J.corners;
						c[1].Size = UDim2.new(0, R, 0, 2);
						c[1].Position = UDim2.new(0, X, 0, g);
						c[2].Size = UDim2.new(0, 2, 0, R);
						c[2].Position = UDim2.new(0, X, 0, g);
						c[3].Size = UDim2.new(0, R, 0, 2);
						c[3].Position = UDim2.new(0, (X + d) - R, 0, g);
						c[4].Size = UDim2.new(0, 2, 0, R);
						c[4].Position = UDim2.new(0, (X + d) - 2, 0, g);
						c[5].Size = UDim2.new(0, R, 0, 2);
						c[5].Position = UDim2.new(0, X, 0, (g + l) - 2);
						c[6].Size = UDim2.new(0, 2, 0, R);
						c[6].Position = UDim2.new(0, X, 0, (g + l) - R);
						c[7].Size = UDim2.new(0, R, 0, 2);
						c[7].Position = UDim2.new(0, (X + d) - R, 0, (g + l) - 2);
						c[8].Size = UDim2.new(0, 2, 0, R);
						c[8].Position = UDim2.new(0, (X + d) - 2, 0, (g + l) - R);
						for R = 1, 8, 1 do
							c[R].BackgroundColor3 = v;
							c[R].Visible = true;
						end;
					else
						for R = 1, 8, 1 do
							J.corners[R].Visible = false;
						end;
					end;
					if B.ShowNames then
						J.name.Text = c.DisplayName;
						J.name.Position = UDim2.new(0, b.X, 0, S.Y - 16);
						J.name.TextColor3 = v;
						J.name.Visible = true;
					else
						J.name.Visible = false;
					end;
					if B.ShowDistance and Q then
						J.dist.Text = math.floor(((L.Position - Q.Position)).Magnitude) .. "m";
						J.dist.Position = UDim2.new(0, b.X, 0, (g + l) + 2);
						J.dist.TextColor3 = v;
						J.dist.Visible = true;
					else
						J.dist.Visible = false;
					end;
					if B.ShowHealth and Z then
						local R = math.clamp(Z.Health / math.max(Z.MaxHealth, 1), 0, 1);
						J.healthBg.Size = UDim2.new(0, 3, 0, l);
						J.healthBg.Position = UDim2.new(0, X - 6, 0, g);
						J.healthBg.Visible = true;
						local c = math.floor(l * R);
						J.healthFill.Size = UDim2.new(0, 2, 0, c);
						J.healthFill.Position = UDim2.new(0, X - 5.5, 0, (g + l) - c);
						J.healthFill.BackgroundColor3 = Color3.fromRGB(255 * ((1 - R)), 255 * R, 0);
						J.healthFill.Visible = true;
					else
						J.healthBg.Visible = false;
						J.healthFill.Visible = false;
					end;
					if B.ShowHeadDot then
						local R, c = P:WorldToViewportPoint(F.Position);
						if R and (c and R.Z > 0) then
							local c = math.clamp(d * .18, 3, 9);
							J.headDot.Size = UDim2.new(0, c, 0, c);
							J.headDot.Position = UDim2.new(0, R.X - c / 2, 0, R.Y - c / 2);
							J.headDot.BackgroundColor3 = v;
							J.headDot.Visible = true;
						else
							J.headDot.Visible = false;
						end;
					else
						J.headDot.Visible = false;
					end;
				end;
			end;
			for R in pairs(L) do
				if not H[R] then
					n(R);
				end;
			end;
		end;
	lv = function()
			sv();
			pv();
		end;
	local H = {};
	dv = function()
			for R, c in pairs(H) do
				pcall(function()
					c:Destroy();
				end);
				H[R] = nil;
			end;
		end;
	Bv = function()
			if not B.Chams then
				dv();
				return;
			end;
			local c = {};
			for R, L in ipairs(R:GetPlayers()) do
				if L ~= J and (Fv(L) and Lv(L)) then
					c[L] = true;
					local R = cv(L);
					if R then
						local c = qv(L);
						local F = H[L];
						if not F or not F.Parent then
							F = Instance.new("Highlight");
							F.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop;
							F.FillTransparency = .45;
							F.OutlineTransparency = 0;
							F.Parent = R;
							H[L] = F;
						end;
						F.FillColor = c;
						F.OutlineColor = c;
						F.Enabled = true;
					end;
				end;
			end;
			for R, L in pairs(H) do
				if not c[R] then
					pcall(function()
						L:Destroy();
					end);
					H[R] = nil;
				end;
			end;
		end;
	local Z = {
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
	local v = {
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
	local b = {};
	local S = 0;
	gv = function()
			for R, c in pairs(b) do
				pcall(function()
					c:Destroy();
				end);
				b[R] = nil;
			end;
		end;
	local function N(R)
		local c = R:lower();
		for R, L in pairs(v) do
			if c:find(R, 1, true) then
				return L;
			end;
		end;
		return Color3.fromRGB(255, 255, 255);
	end;
	local function p(R)
		if R:IsA("BasePart") then
			return R;
		end;
		if R:IsA("Tool") then
			return R:FindFirstChild("Handle") or R:FindFirstChildOfClass("BasePart") or R;
		end;
		if R:IsA("Model") then
			return R:FindFirstChildOfClass("BasePart") or R;
		end;
		return nil;
	end;
	Xv = function()
			if not B.GadgetESP then
				gv();
				return;
			end;
			S = S + 1;
			if S < 30 then
				return;
			end;
			S = 0;
			local R = {};
			for c, L in ipairs(workspace:GetDescendants()) do
				local F = L.Name:lower();
				local Q = false;
				for R, c in ipairs(Z) do
					if F:find(c, 1, true) then
						Q = true;
						break;
					end;
				end;
				if Q then
					local c = p(L);
					if c then
						R[c] = true;
						local L = b[c];
						if not L or not L.Parent then
							L = Instance.new("Highlight");
							L.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop;
							L.FillTransparency = .4;
							L.OutlineTransparency = 0;
							L.Parent = c;
							b[c] = L;
						end;
						local Q = N(F);
						L.FillColor = Q;
						L.OutlineColor = Q;
						L.Enabled = true;
					end;
				end;
			end;
			for c, L in pairs(b) do
				if not R[c] then
					pcall(function()
						L:Destroy();
					end);
					b[c] = nil;
				end;
			end;
		end;
	local s = nil;
	local l = nil;
	local d = {};
	local function X(R)
		if not k or not Sv then
			return nil;
		end;
		local c, L = pcall(function()
				return Sv.new(R);
			end);
		if c and L then
			return L;
		end;
		return nil;
	end;
	Dv = function()
			if not B.Radar then
				if s then
					s.Visible = false;
				end;
				if l then
					l.Visible = false;
				end;
				for R, c in pairs(d) do
					if c then
						c.Visible = false;
					end;
				end;
				return;
			end;
			if not k then
				return;
			end;
			if not s then
				s = X("Circle");
				s.Filled = true;
				s.Color = Color3.fromRGB(0, 0, 0);
				s.Transparency = .5;
				s.NumSides = 40;
			end;
			if not l then
				l = X("Circle");
				l.Filled = false;
				l.Color = Color3.fromRGB(255, 255, 255);
				l.Thickness = 1.5;
				l.NumSides = 40;
			end;
			local c = tonumber(B.RadarSize) or 140;
			local L = tonumber(B.RadarRange) or 200;
			local F = c / 2;
			local Q = Vector2.new(20 + F, 20 + F);
			s.Position = Q;
			s.Radius = F;
			s.Visible = true;
			l.Position = Q;
			l.Radius = F;
			l.Visible = true;
			local n = cv(J) and (cv(J)):FindFirstChild("HumanoidRootPart");
			if not n then
				return;
			end;
			local y = math.atan2(P.CFrame.LookVector.X, P.CFrame.LookVector.Z);
			local H = {};
			for R, c in ipairs(R:GetPlayers()) do
				if c ~= J and (Lv(c) and Fv(c)) then
					local R = cv(c);
					local Z = R and R:FindFirstChild("HumanoidRootPart");
					if Z then
						local R = Z.Position - n.Position;
						if R.Magnitude <= L then
							local n = R.X * math.cos(y) - R.Z * math.sin(y);
							local Z = R.X * math.sin(y) + R.Z * math.cos(y);
							local P = F / L;
							local J = n * P;
							local v = -Z * P;
							local b = d[c];
							if not b then
								b = X("Circle");
								b.Filled = true;
								b.NumSides = 8;
								b.Radius = 3;
								d[c] = b;
							end;
							b.Position = Vector2.new(Q.X + J, Q.Y + v);
							b.Color = qv(c);
							b.Visible = true;
							H[c] = true;
						end;
					end;
				end;
			end;
			for R, c in pairs(d) do
				if not H[R] then
					c.Visible = false;
				end;
			end;
		end;
	R.PlayerRemoving:Connect(function(R)
		n(R);
		pcall(function()
			if H[R] then
				H[R]:Destroy();
				H[R] = nil;
			end;
		end);
		if kaTarget == R then
			kaTarget = nil;
		end;
		local c = cv(R);
		if c then
			restorePart(c:FindFirstChild("Head"));
			restorePart(getTorso(c));
		end;
	end);
	local function g(R)
		R.CharacterRemoving:Connect(function()
			n(R);
			pcall(function()
				if H[R] then
					H[R]:Destroy();
					H[R] = nil;
				end;
			end);
		end);
		R.CharacterAdded:Connect(function()
			task.wait(.3);
			n(R);
		end);
	end;
	R.PlayerAdded:Connect(g);
	for R, c in ipairs(R:GetPlayers()) do
		g(c);
	end;
	wv = false;
	mv = function(c)
			if c == wv then
				return;
			end;
			wv = c;
			pcall(function()
				F.GlobalShadows = not c;
				if c then
					F.FogEnd = 9000000000;
					if settings and (settings()).Rendering then
						(settings()).Rendering.QualityLevel = Enum.QualityLevel.Level01;
					end;
					for c, L in ipairs(workspace:GetDescendants()) do
						if L:IsA("BasePart") then
							local c = false;
							for R, F in ipairs(R:GetPlayers()) do
								if F.Character and L:IsDescendantOf(F.Character) then
									c = true;
									break;
								end;
							end;
							if not c then
								L.Material = Enum.Material.SmoothPlastic;
								L.CastShadow = false;
							end;
						elseif L:IsA("ParticleEmitter") or L:IsA("Trail") or L:IsA("Beam") then
							L.Enabled = false;
						end;
					end;
				end;
			end);
		end;
end;
kv();
local av = "\226\156\147";
pcall(function()
	if utf8 and utf8.char then
		av = utf8.char(57344);
	end;
end);
local Vv, ev, fv, tv, Uv, iv, Av, Ev, ov, rv;
local Kv, Wv, Tv, hv, zv;
local Iv, uv, Cv, Gv;
l(.9, "Building UI...");
Vv = Instance.new("ScreenGui");
Vv.Name = "MoonHubUI";
Vv.ResetOnSpawn = false;
Vv.IgnoreGuiInset = true;
Vv.DisplayOrder = 999;
Vv.Parent = v;
ev = Instance.new("Frame");
ev.Size = UDim2.new(0, 640, 0, 480);
ev.Position = UDim2.new(.5, -320, .5, -240);
ev.BackgroundColor3 = t;
ev.BackgroundTransparency = .08;
ev.BorderSizePixel = 0;
ev.Visible = false;
ev.Parent = Vv;
(Instance.new("UICorner", ev)).CornerRadius = UDim.new(0, 14);
local Ov = Instance.new("UIScale");
Ov.Scale = 1;
Ov.Parent = ev;
local function xv()
	return c.TouchEnabled and ((not c.KeyboardEnabled or P.ViewportSize.X < 900));
end;
Cv = function()
		local R = P.ViewportSize;
		local c = xv();
		local L = c and math.min(R.X - 24, 420) or math.min(R.X - 40, 640);
		local F = c and math.min(R.Y - 48, 360) or math.min(R.Y - 60, 480);
		local Q, n = 640, 480;
		local y = 1;
		if c then
			y = math.clamp(math.min(L / Q, F / n), .55, .85);
			ev.Size = UDim2.new(0, Q, 0, n);
			Ov.Scale = y;
			local R, c = Q * y, n * y;
			ev.Position = UDim2.new(.5, -R / 2, .5, -c / 2);
		else
			Ov.Scale = 1;
			local R = math.clamp(L, 480, 640);
			local c = math.clamp(F, 360, 480);
			ev.Size = UDim2.new(0, R, 0, c);
			ev.Position = UDim2.new(.5, -R / 2, .5, -c / 2);
		end;
	end;
Cv();
pcall(function()
	(P:GetPropertyChangedSignal("ViewportSize")):Connect(Cv);
end);
local jv = Instance.new("UIStroke");
jv.Color = Color3.fromRGB(40, 38, 55);
jv.Thickness = 1;
jv.Transparency = .3;
jv.Parent = ev;
K("stroke", jv);
local Mv = Instance.new("Frame");
Mv.Size = UDim2.new(1, 0, 0, 44);
Mv.BackgroundColor3 = U;
Mv.BorderSizePixel = 0;
Mv.Parent = ev;
(Instance.new("UICorner", Mv)).CornerRadius = UDim.new(0, 14);
local Yv = Instance.new("Frame");
Yv.Size = UDim2.new(1, 0, 0, 14);
Yv.Position = UDim2.new(0, 0, 1, -14);
Yv.BackgroundColor3 = U;
Yv.BorderSizePixel = 0;
Yv.Parent = Mv;
local R3 = Instance.new("Frame");
R3.Size = UDim2.new(1, 0, 0, 2);
R3.Position = UDim2.new(0, 0, 1, -2);
R3.BackgroundColor3 = f;
R3.BorderSizePixel = 0;
R3.Parent = Mv;
K("fill", R3);
local c3 = Instance.new("TextLabel");
c3.Size = UDim2.new(1, -50, 1, 0);
c3.Position = UDim2.new(0, 16, 0, 0);
c3.BackgroundTransparency = 1;
c3.Text = "MOON HUB  \194\183  jailbird";
c3.TextColor3 = f;
c3.TextSize = 15;
c3.Font = Enum.Font.GothamBold;
c3.TextXAlignment = Enum.TextXAlignment.Left;
c3.Parent = Mv;
K("text", c3);
local L3 = Instance.new("TextButton");
L3.Size = UDim2.new(0, 30, 0, 30);
L3.Position = UDim2.new(1, -38, .5, -15);
L3.BackgroundColor3 = Color3.fromRGB(36, 32, 48);
L3.Text = "\195\151";
L3.TextColor3 = E;
L3.Font = o;
L3.TextSize = 18;
L3.Parent = Mv;
(Instance.new("UICorner", L3)).CornerRadius = UDim.new(0, 6);
local F3 = Instance.new("TextLabel");
F3.Size = UDim2.new(1, -16, 0, 16);
F3.Position = UDim2.new(0, 16, 0, 44);
F3.BackgroundTransparency = 1;
F3.Text = "Executor: " .. p;
F3.TextColor3 = E;
F3.TextSize = 11;
F3.Font = o;
F3.TextXAlignment = Enum.TextXAlignment.Left;
F3.Parent = ev;
Av = Instance.new("ScrollingFrame");
Av.Size = UDim2.new(0, 118, 1, -70);
Av.Position = UDim2.new(0, 10, 0, 54);
Av.BackgroundColor3 = U;
Av.BorderSizePixel = 0;
Av.ScrollBarThickness = 2;
Av.AutomaticCanvasSize = Enum.AutomaticSize.Y;
Av.CanvasSize = UDim2.new(0, 0, 0, 0);
Av.Parent = ev;
(Instance.new("UICorner", Av)).CornerRadius = UDim.new(0, 8);
local Q3 = Instance.new("UIListLayout");
Q3.Padding = UDim.new(0, 4);
Q3.SortOrder = Enum.SortOrder.LayoutOrder;
Q3.Parent = Av;
local n3 = Instance.new("UIPadding");
n3.PaddingTop = UDim.new(0, 6);
n3.PaddingLeft = UDim.new(0, 6);
n3.PaddingRight = UDim.new(0, 6);
n3.Parent = Av;
Ev = Instance.new("Frame");
Ev.Size = UDim2.new(1, -140, 1, -72);
Ev.Position = UDim2.new(0, 132, 0, 54);
Ev.BackgroundTransparency = 1;
Ev.Parent = ev;
ov, rv = {}, {}, {};
Iv = function(R)
		local c = e();
		for c, L in pairs(ov) do
			L.Visible = (c == R);
		end;
		for L, F in pairs(rv) do
			F.BackgroundColor3 = (L == R) and Color3.fromRGB(40, 35, 60) or Color3.fromRGB(22, 22, 30);
			F.TextColor3 = (L == R) and c or E;
		end;
		z();
	end;
local function y3(R)
	local c = Instance.new("ScrollingFrame");
	c.Size = UDim2.new(1, 0, 1, 0);
	c.BackgroundTransparency = 1;
	c.BorderSizePixel = 0;
	c.ScrollBarThickness = 3;
	c.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	c.CanvasSize = UDim2.new(0, 0, 0, 0);
	c.Visible = false;
	c.Parent = Ev;
	local L = Instance.new("UIListLayout");
	L.Padding = UDim.new(0, 5);
	L.SortOrder = Enum.SortOrder.LayoutOrder;
	L.FillDirection = Enum.FillDirection.Vertical;
	L.HorizontalAlignment = Enum.HorizontalAlignment.Left;
	L.Parent = c;
	local F = Instance.new("UIPadding");
	F.PaddingBottom = UDim.new(0, 10);
	F.PaddingTop = UDim.new(0, 4);
	F.PaddingLeft = UDim.new(0, 2);
	F.PaddingRight = UDim.new(0, 8);
	F.Parent = c;
	ov[R] = c;
	local Q = Instance.new("TextButton");
	Q.Size = UDim2.new(1, 0, 0, 30);
	Q.BackgroundColor3 = Color3.fromRGB(22, 22, 30);
	Q.Text = R;
	Q.TextColor3 = E;
	Q.TextSize = 12;
	Q.Font = Enum.Font.GothamMedium;
	Q.Parent = Av;
	(Instance.new("UICorner", Q)).CornerRadius = UDim.new(0, 8);
	Q.MouseButton1Click:Connect(function()
		Iv(R);
	end);
	rv[R] = Q;
	return c;
end;
local function H3(R)
	local c = ((R:GetAttribute("O") or 0)) + 1;
	R:SetAttribute("O", c);
	return c;
end;
local function Z3(R, c)
	local L = Instance.new("TextLabel");
	L.LayoutOrder = H3(R);
	L.Size = UDim2.new(1, -4, 0, 18);
	L.BackgroundTransparency = 1;
	L.Text = string.upper(c);
	L.TextColor3 = f;
	L.TextSize = 11;
	L.Font = o;
	L.TextXAlignment = Enum.TextXAlignment.Left;
	L.TextYAlignment = Enum.TextYAlignment.Center;
	L.TextTruncate = Enum.TextTruncate.AtEnd;
	L.Parent = R;
	K("text", L);
end;
local function P3(R, c, L)
	local F = Instance.new("Frame");
	F.LayoutOrder = H3(R);
	F.Size = UDim2.new(1, 0, 0, 32);
	F.BackgroundColor3 = i;
	F.BorderSizePixel = 0;
	F.Parent = R;
	(Instance.new("UICorner", F)).CornerRadius = UDim.new(0, 8);
	local Q = Instance.new("TextLabel");
	Q.Size = UDim2.new(1, -55, 1, 0);
	Q.Position = UDim2.new(0, 10, 0, 0);
	Q.BackgroundTransparency = 1;
	Q.Text = c;
	Q.TextColor3 = A;
	Q.TextSize = 11;
	Q.Font = o;
	Q.TextXAlignment = Enum.TextXAlignment.Left;
	Q.Parent = F;
	local n = Instance.new("TextButton");
	n.Size = UDim2.new(0, 40, 0, 18);
	n.Position = UDim2.new(1, -48, .5, -9);
	n.BackgroundColor3 = B[L] and f or Color3.fromRGB(45, 45, 58);
	n.Text = "";
	n.Parent = F;
	K("toggle", n, L);
	(Instance.new("UICorner", n)).CornerRadius = UDim.new(1, 0);
	local y = Instance.new("Frame");
	y.Size = UDim2.new(0, 14, 0, 14);
	y.Position = B[L] and UDim2.new(1, -16, .5, -7) or UDim2.new(0, 2, .5, -7);
	y.BackgroundColor3 = Color3.new(1, 1, 1);
	y.BorderSizePixel = 0;
	y.Parent = n;
	(Instance.new("UICorner", y)).CornerRadius = UDim.new(1, 0);
	n.MouseButton1Click:Connect(function()
		B[L] = not B[L];
		local R = B[L];
		n.BackgroundColor3 = R and e() or Color3.fromRGB(45, 45, 58);
		y.Position = R and UDim2.new(1, -16, .5, -7) or UDim2.new(0, 2, .5, -7);
		if L == "ESP" then
			if R then
				lv();
			else
				sv();
			end;
		end;
		if L == "Chams" then
			if not R then
				dv();
			end;
		end;
		if L == "GadgetESP" then
			if not R then
				gv();
			end;
		end;
		if L == "Hitbox" and not R then
			vv();
		end;
		if L == "DeviceSpoof" and R then
			bv();
		end;
		if L == "Potato" then
			mv(R);
		end;
		if L == "CustomFOV" then
			if R then
				j();
			else
				pcall(function()
					P.FieldOfView = x;
				end);
			end;
		end;
		if L == "MobileAim" and R then
			B.Aimbot = true;
		end;
		if L == "KillAura" and not R then
			kaTarget = nil;
		end;
		if L == "ScreenStretch" and (R and not stretchReady) then
			stretchReady = true;
		end;
		X();
		z();
	end);
end;
local function J3(R, L, F, Q, n, y)
	local H = Instance.new("Frame");
	H.LayoutOrder = H3(R);
	H.Size = UDim2.new(1, 0, 0, 46);
	H.BackgroundColor3 = i;
	H.BorderSizePixel = 0;
	H.Parent = R;
	(Instance.new("UICorner", H)).CornerRadius = UDim.new(0, 8);
	local Z = Instance.new("TextLabel");
	Z.Size = UDim2.new(.65, 0, 0, 16);
	Z.Position = UDim2.new(0, 10, 0, 4);
	Z.BackgroundTransparency = 1;
	Z.Text = L;
	Z.TextColor3 = A;
	Z.TextSize = 11;
	Z.Font = o;
	Z.TextXAlignment = Enum.TextXAlignment.Left;
	Z.Parent = H;
	local P = Instance.new("TextLabel");
	P.Size = UDim2.new(.3, -8, 0, 16);
	P.Position = UDim2.new(.7, 0, 0, 4);
	P.BackgroundTransparency = 1;
	P.Text = tostring(B[F]);
	P.TextColor3 = f;
	P.TextSize = 11;
	P.Font = o;
	P.TextXAlignment = Enum.TextXAlignment.Right;
	P.Parent = H;
	local J = Instance.new("TextButton");
	J.Size = UDim2.new(1, -20, 0, 8);
	J.Position = UDim2.new(0, 10, 0, 26);
	J.BackgroundColor3 = Color3.fromRGB(40, 40, 55);
	J.Text = "";
	J.Parent = H;
	(Instance.new("UICorner", J)).CornerRadius = UDim.new(1, 0);
	local v = Instance.new("Frame");
	v.Size = UDim2.new(math.clamp(((B[F] - Q)) / math.max(n - Q, .001), 0, 1), 0, 1, 0);
	v.BackgroundColor3 = f;
	v.BorderSizePixel = 0;
	v.Parent = J;
	K("fill", v);
	(Instance.new("UICorner", v)).CornerRadius = UDim.new(1, 0);
	local function b(R)
		local c = math.clamp(((R - J.AbsolutePosition.X)) / math.max(J.AbsoluteSize.X, 1), 0, 1);
		local L = Q + c * ((n - Q));
		L = math.floor(L / y + .5) * y;
		L = math.clamp(L, Q, n);
		B[F] = L;
		v.Size = UDim2.new(((L - Q)) / math.max(n - Q, .001), 0, 1, 0);
		P.Text = tostring(L);
		if F == "CursorSize" then
			C.Size = UDim2.new(0, L, 0, L);
		end;
		if F == "FOVValue" and B.CustomFOV then
			j();
		end;
		if F == "DesignAccentR" or F == "DesignAccentG" or F == "DesignAccentB" then
			pcall(uv);
		end;
		X();
	end;
	J.MouseButton1Down:Connect(function()
		local R, L;
		R = c.InputChanged:Connect(function(R)
				if R.UserInputType == Enum.UserInputType.MouseMovement or R.UserInputType == Enum.UserInputType.Touch then
					b(R.Position.X);
				end;
			end);
		L = c.InputEnded:Connect(function(c)
				if c.UserInputType == Enum.UserInputType.MouseButton1 or c.UserInputType == Enum.UserInputType.Touch then
					if R then
						R:Disconnect();
					end;
					if L then
						L:Disconnect();
					end;
				end;
			end);
		pcall(function()
			b((c:GetMouseLocation()).X);
		end);
	end);
end;
local function v3(R, c, L, F)
	local Q = Instance.new("Frame");
	Q.LayoutOrder = H3(R);
	Q.Size = UDim2.new(1, 0, 0, 54);
	Q.BackgroundColor3 = i;
	Q.BorderSizePixel = 0;
	Q.Parent = R;
	(Instance.new("UICorner", Q)).CornerRadius = UDim.new(0, 8);
	local n = Instance.new("TextLabel");
	n.Size = UDim2.new(1, -12, 0, 18);
	n.Position = UDim2.new(0, 10, 0, 4);
	n.BackgroundTransparency = 1;
	n.Text = c;
	n.TextColor3 = A;
	n.TextSize = 11;
	n.Font = o;
	n.TextXAlignment = Enum.TextXAlignment.Left;
	n.Parent = Q;
	local y = Instance.new("Frame");
	y.Size = UDim2.new(1, -16, 0, 24);
	y.Position = UDim2.new(0, 8, 0, 26);
	y.BackgroundTransparency = 1;
	y.Parent = Q;
	local H = Instance.new("UIListLayout");
	H.FillDirection = Enum.FillDirection.Horizontal;
	H.Padding = UDim.new(0, 5);
	H.Parent = y;
	local Z = {};
	local function P()
		local R = e();
		for c, F in pairs(Z) do
			local Q = (B[L] == c);
			F.BackgroundColor3 = Q and R or Color3.fromRGB(35, 32, 48);
			F.TextColor3 = Q and Color3.fromRGB(20, 20, 28) or E;
		end;
	end;
	local J = #F;
	local v = math.clamp(math.floor(300 / math.max(J, 1)), 48, 90);
	for R, c in ipairs(F) do
		local F = Instance.new("TextButton");
		F.Size = UDim2.new(0, v, 1, 0);
		F.BackgroundColor3 = Color3.fromRGB(35, 32, 48);
		F.Text = c;
		F.TextColor3 = E;
		F.TextSize = 10;
		F.Font = o;
		F.Parent = y;
		(Instance.new("UICorner", F)).CornerRadius = UDim.new(0, 6);
		Z[c] = F;
		K("choice", F, L);
		F.MouseButton1Click:Connect(function()
			B[L] = c;
			P();
			if L == "CursorName" then
				O(B.CursorName);
			end;
			if L == "DeviceMode" and B.DeviceSpoof then
				bv();
			end;
			if L == "HitboxPart" then
				vv();
			end;
			X();
			z();
		end);
	end;
	P();
	K("choiceRefresh", { refresh = P });
end;
local function b3(R, c, L, F)
	local Q = Instance.new("Frame");
	Q.LayoutOrder = H3(R);
	Q.Size = UDim2.new(1, 0, 0, 32);
	Q.BackgroundColor3 = i;
	Q.BorderSizePixel = 0;
	Q.Parent = R;
	(Instance.new("UICorner", Q)).CornerRadius = UDim.new(0, 8);
	local n = Instance.new("TextLabel");
	n.Size = UDim2.new(.4, 0, 1, 0);
	n.Position = UDim2.new(0, 10, 0, 0);
	n.BackgroundTransparency = 1;
	n.Text = c;
	n.TextColor3 = A;
	n.TextSize = 11;
	n.Font = o;
	n.TextXAlignment = Enum.TextXAlignment.Left;
	n.Parent = Q;
	local y = 1;
	for R, c in ipairs(F) do
		if c == B[L] then
			y = R;
		end;
	end;
	local H = Instance.new("TextButton");
	H.Size = UDim2.new(.55, -12, 0, 22);
	H.Position = UDim2.new(.45, 0, .5, -11);
	H.BackgroundColor3 = Color3.fromRGB(35, 32, 48);
	H.Text = tostring(B[L]);
	H.TextColor3 = f;
	H.TextSize = 11;
	H.Font = o;
	H.Parent = Q;
	K("text", H);
	(Instance.new("UICorner", H)).CornerRadius = UDim.new(0, 6);
	H.MouseButton1Click:Connect(function()
		y = y % #F + 1;
		B[L] = F[y];
		H.Text = F[y];
		if L == "CursorName" then
			O(B.CursorName);
		end;
		if L == "DeviceMode" and B.DeviceSpoof then
			bv();
		end;
		if L == "HitboxPart" then
			vv();
		end;
		X();
		z();
	end);
end;
local function q3(R, c, L, F)
	local Q = Instance.new("Frame");
	Q.LayoutOrder = H3(R);
	Q.Size = UDim2.new(1, 0, 0, 52);
	Q.BackgroundColor3 = i;
	Q.BorderSizePixel = 0;
	Q.Parent = R;
	(Instance.new("UICorner", Q)).CornerRadius = UDim.new(0, 8);
	local n = Instance.new("TextLabel");
	n.Size = UDim2.new(1, -16, 0, 14);
	n.Position = UDim2.new(0, 10, 0, 4);
	n.BackgroundTransparency = 1;
	n.Text = c;
	n.TextColor3 = E;
	n.TextSize = 11;
	n.Font = o;
	n.TextXAlignment = Enum.TextXAlignment.Left;
	n.Parent = Q;
	local y = Instance.new("TextBox");
	y.Size = UDim2.new(1, -20, 0, 22);
	y.Position = UDim2.new(0, 10, 0, 22);
	y.BackgroundColor3 = Color3.fromRGB(14, 14, 20);
	y.BorderSizePixel = 0;
	y.Text = tostring(B[L] or F or "");
	y.PlaceholderText = F or "";
	y.TextColor3 = A;
	y.TextSize = 12;
	y.Font = o;
	y.ClearTextOnFocus = false;
	y.Parent = Q;
	(Instance.new("UICorner", y)).CornerRadius = UDim.new(0, 6);
	y.FocusLost:Connect(function()
		local R = y.Text;
		if not R or R == "" then
			R = F or "default";
			y.Text = R;
		end;
		B[L] = R;
		X();
	end);
end;
local function S3(R, c, L)
	local F = Instance.new("TextButton");
	F.LayoutOrder = H3(R);
	F.Size = UDim2.new(1, 0, 0, 30);
	F.BackgroundColor3 = Color3.fromRGB(35, 30, 55);
	F.Text = c;
	F.TextColor3 = f;
	F.TextSize = 12;
	F.Font = o;
	F.Parent = R;
	(Instance.new("UICorner", F)).CornerRadius = UDim.new(0, 8);
	F.MouseButton1Click:Connect(function()
		L();
		z();
	end);
end;
local N3 = y3("Combat");
local p3 = y3("Player");
local s3 = y3("Stream");
local l3 = y3("Staff");
local B3 = y3("Mobile");
local d3 = y3("Visuals");
local X3 = y3("Design");
local g3 = y3("Credits");
local D3 = y3("Config");
Z3(N3, "Aimbot");
P3(N3, "Aimbot", "Aimbot");
v3(N3, "Key", "AimKey", {
	"MB1",
	"MB2",
	"E",
	"Q",
	"F",
});
v3(N3, "Mode", "AimMode", { "Hold", "Toggle", "Always" });
J3(N3, "FOV", "AimFOV", 40, 350, 1);
J3(N3, "Smooth", "AimSmooth", .1, 1, .05);
P3(N3, "Show FOV", "ShowFOV");
P3(N3, "Wall Check", "WallCheck");
P3(N3, "Team Check", "TeamCheck");
P3(N3, "Prediction", "Prediction");
J3(N3, "Predict", "PredictAmount", 0, .35, .01);
v3(N3, "Lock Priority", "TargetPriority", { "Crosshair", "Closest", "Lowest HP" });
Z3(N3, "Silent Aim");
P3(N3, "Silent Aim", "SilentAim");
J3(N3, "Silent FOV", "SilentFOV", 20, 250, 1);
v3(N3, "Hit Part", "SilentPart", {
	"Head",
	"Torso",
	"HumanoidRootPart",
	"UpperTorso",
});
P3(N3, "SA Team Check", "SilentTeamCheck");
P3(N3, "SA Visible", "SilentVisible");
P3(N3, "SA Show FOV", "SilentShowFOV");
P3(N3, "SA Show Line", "SilentShowLine");
S3(N3, "Rehook Silent Aim", function()
	Hv = false;
	yv();
	pcall(function()
		if Wv then
			Wv.Text = Hv and "Silent Aim: hooked" or "Silent Aim: not found \226\128\148 equip gun";
		end;
	end);
end);
Z3(N3, "Triggerbot");
P3(N3, "Triggerbot", "Triggerbot");
J3(N3, "Trigger FOV", "TriggerFOV", 15, 150, 1);
J3(N3, "Trigger Delay", "TriggerDelay", .03, .25, .01);
Z3(N3, "Kill Aura");
P3(N3, "Kill Aura", "KillAura");
J3(N3, "Range", "KillAuraRange", 20, 200, 5);
J3(N3, "Behind Dist", "KillAuraBehind", 1.5, 8, .1);
Z3(N3, "Camera FOV");
P3(N3, "Custom FOV", "CustomFOV");
J3(N3, "FOV Value", "FOVValue", 40, 120, 1);
Z3(N3, "Hitbox Expand");
P3(N3, "Hitbox Expand", "Hitbox");
v3(N3, "Part", "HitboxPart", { "Head", "Torso" });
J3(N3, "Size", "HitboxSize", 1.5, 10, .5);
Z3(p3, "Move");
P3(p3, "Speed", "Speed");
J3(p3, "Speed Value", "SpeedValue", 16, 80, 1);
P3(p3, "Noclip", "Noclip");
P3(p3, "Anti-Bow", "AntiBow");
Z3(p3, "Device Spoof");
P3(p3, "Device Spoof", "DeviceSpoof");
v3(p3, "Mode", "DeviceMode", { "Console", "Desktop", "Mobile" });
J3(p3, "Delay (sec)", "DeviceSpoofDelay", .3, 5, .1);
S3(p3, "Apply Device Now", bv);
Z3(p3, "Screen Stretch");
P3(p3, "Screen Stretch", "ScreenStretch");
J3(p3, "Stretch Amount", "StretchAmount", .3, 1, .01);
Z3(s3, "Stream");
P3(s3, "Stream Proof", "StreamProof");
q3(s3, "Name", "SpoofName", "Player");
P3(s3, "Verified", "ShowVerified");
Z3(l3, "Staff");
P3(l3, "Detect", "StaffDetect");
P3(l3, "Leave", "StaffLeave");
Z3(B3, "Mobile Aim");
P3(B3, "Mobile Aim ON", "MobileAim");
J3(B3, "Smooth", "MobileSmooth", .1, 1, .05);
J3(B3, "FOV", "MobileFOV", 40, 350, 1);
P3(B3, "Show FOV", "MobileShowFOV");
local m3 = Instance.new("Frame");
m3.LayoutOrder = H3(d3);
m3.Size = UDim2.new(1, 0, 0, 168);
m3.BackgroundColor3 = Color3.fromRGB(14, 14, 20);
m3.BorderSizePixel = 0;
m3.Parent = d3;
(Instance.new("UICorner", m3)).CornerRadius = UDim.new(0, 10);
local w3 = Instance.new("UIStroke");
w3.Color = Color3.fromRGB(40, 38, 55);
w3.Thickness = 1;
w3.Parent = m3;
local k3 = Instance.new("TextLabel");
k3.Size = UDim2.new(1, -16, 0, 18);
k3.Position = UDim2.new(0, 10, 0, 6);
k3.BackgroundTransparency = 1;
k3.Text = "ESP PREVIEW";
k3.TextColor3 = E;
k3.TextSize = 10;
k3.Font = Enum.Font.GothamBold;
k3.TextXAlignment = Enum.TextXAlignment.Left;
k3.Parent = m3;
local a3 = Instance.new("Frame");
a3.Size = UDim2.new(1, -20, 0, 130);
a3.Position = UDim2.new(0, 10, 0, 28);
a3.BackgroundColor3 = Color3.fromRGB(18, 18, 26);
a3.BorderSizePixel = 0;
a3.ClipsDescendants = true;
a3.Parent = m3;
(Instance.new("UICorner", a3)).CornerRadius = UDim.new(0, 8);
local V3 = Instance.new("Frame");
V3.Name = "Figure";
V3.Size = UDim2.new(0, 70, 0, 110);
V3.Position = UDim2.new(.5, -35, .5, -48);
V3.BackgroundTransparency = 1;
V3.Parent = a3;
local function e3(R, c, L, F, Q)
	local n = Instance.new("Frame");
	n.Name = R;
	n.Size = c;
	n.Position = L;
	n.BackgroundColor3 = Color3.fromRGB(55, 55, 70);
	n.BorderSizePixel = 0;
	n.Parent = Q or V3;
	(Instance.new("UICorner", n)).CornerRadius = UDim.new(F or 0, 0);
	return n;
end;
local f3 = e3("Head", UDim2.new(0, 20, 0, 20), UDim2.new(.5, -10, 0, 0), 1);
local t3 = e3("Torso", UDim2.new(0, 32, 0, 38), UDim2.new(.5, -16, 0, 24), .15);
local U3 = e3("ArmL", UDim2.new(0, 10, 0, 30), UDim2.new(.5, -28, 0, 26), .2);
local i3 = e3("ArmR", UDim2.new(0, 10, 0, 30), UDim2.new(.5, 18, 0, 26), .2);
local A3 = e3("LegL", UDim2.new(0, 12, 0, 28), UDim2.new(.5, -14, 0, 64), .2);
local E3 = e3("LegR", UDim2.new(0, 12, 0, 28), UDim2.new(.5, 2, 0, 64), .2);
local o3 = {
		f3,
		t3,
		U3,
		i3,
		A3,
		E3,
	};
local r3 = Instance.new("Frame");
r3.Name = "BoxFull";
r3.Size = UDim2.new(0, 64, 0, 116);
r3.Position = UDim2.new(.5, -32, .5, -52);
r3.BackgroundTransparency = 1;
r3.BorderSizePixel = 0;
r3.Parent = a3;
local K3 = Instance.new("UIStroke");
K3.Thickness = 1.5;
K3.Color = Color3.fromRGB(40, 255, 40);
K3.Parent = r3;
local function W3(R, c, L, F, Q)
	local n = Instance.new("Frame");
	n.Name = R;
	n.BackgroundColor3 = Color3.fromRGB(40, 255, 40);
	n.BorderSizePixel = 0;
	n.Size = UDim2.new(0, F, 0, Q);
	n.Position = UDim2.new(0, c, 0, L);
	n.Parent = r3;
	return n;
end;
local T3 = {
		W3("TL1", 0, 0, 12, 2),
		W3("TL2", 0, 0, 2, 12),
		W3("TR1", 52, 0, 12, 2),
		W3("TR2", 62, 0, 2, 12),
		W3("BL1", 0, 114, 12, 2),
		W3("BL2", 0, 104, 2, 12),
		W3("BR1", 52, 114, 12, 2),
		W3("BR2", 62, 104, 2, 12),
	};
local h3 = Instance.new("TextLabel");
h3.Size = UDim2.new(0, 120, 0, 16);
h3.Position = UDim2.new(.5, -60, .5, -70);
h3.BackgroundTransparency = 1;
h3.Text = "Enemy";
h3.TextColor3 = Color3.fromRGB(255, 255, 255);
h3.TextSize = 12;
h3.Font = Enum.Font.GothamBold;
h3.Parent = a3;
local z3 = Instance.new("TextLabel");
z3.Size = UDim2.new(0, 80, 0, 14);
z3.Position = UDim2.new(.5, -40, .5, 68);
z3.BackgroundTransparency = 1;
z3.Text = "45m";
z3.TextColor3 = E;
z3.TextSize = 11;
z3.Font = o;
z3.Parent = a3;
local I3 = Instance.new("Frame");
I3.Size = UDim2.new(0, 4, 0, 116);
I3.Position = UDim2.new(.5, -40, .5, -52);
I3.BackgroundColor3 = Color3.fromRGB(30, 30, 40);
I3.BorderSizePixel = 0;
I3.Parent = a3;
(Instance.new("UICorner", I3)).CornerRadius = UDim.new(1, 0);
local u3 = Instance.new("Frame");
u3.Size = UDim2.new(1, 0, .7, 0);
u3.Position = UDim2.new(0, 0, .3, 0);
u3.BackgroundColor3 = Color3.fromRGB(40, 255, 40);
u3.BorderSizePixel = 0;
u3.Parent = I3;
(Instance.new("UICorner", u3)).CornerRadius = UDim.new(1, 0);
local C3 = Instance.new("Frame");
C3.Size = UDim2.new(0, 8, 0, 8);
C3.AnchorPoint = Vector2.new(.5, .5);
C3.Position = UDim2.new(.5, 0, .5, -42);
C3.BackgroundColor3 = Color3.fromRGB(40, 255, 40);
C3.BorderSizePixel = 0;
C3.ZIndex = 5;
C3.Parent = a3;
(Instance.new("UICorner", C3)).CornerRadius = UDim.new(1, 0);
local G3 = Instance.new("TextLabel");
G3.Size = UDim2.new(0, 100, 0, 14);
G3.Position = UDim2.new(1, -108, 0, 8);
G3.BackgroundTransparency = 1;
G3.Text = "VISIBLE";
G3.TextColor3 = Color3.fromRGB(40, 255, 40);
G3.TextSize = 10;
G3.Font = Enum.Font.GothamBold;
G3.TextXAlignment = Enum.TextXAlignment.Right;
G3.Parent = a3;
local function O3()
	local R;
	if B.RGBESP then
		R = Color3.fromHSV(((tick() * .4)) % 1, 1, 1);
	else
		R = Color3.fromRGB(math.clamp(tonumber(B.ESPColorR) or 170, 0, 255), math.clamp(tonumber(B.ESPColorG) or 0, 0, 255), math.clamp(tonumber(B.ESPColorB) or 255, 0, 255));
	end;
	local c = tostring(B.BoxStyle or "Corner");
	local L = B.ShowBoxes ~= false and B.ESP ~= false;
	r3.Visible = L;
	K3.Enabled = ((c == "Full" or c == "Both")) and L;
	K3.Color = R;
	for F, Q in ipairs(T3) do
		Q.Visible = ((c == "Corner" or c == "Both")) and L;
		Q.BackgroundColor3 = R;
	end;
	h3.Visible = B.ShowNames ~= false and B.ESP ~= false;
	h3.TextColor3 = R;
	z3.Visible = B.ShowDistance ~= false and B.ESP ~= false;
	I3.Visible = B.ShowHealth ~= false and B.ESP ~= false;
	u3.BackgroundColor3 = R;
	C3.Visible = B.ShowHeadDot ~= false and B.ESP ~= false;
	C3.BackgroundColor3 = R;
	G3.TextColor3 = R;
	local F = Color3.fromRGB(55, 55, 70);
	local Q = Color3.fromRGB(math.floor(R.R * 180 + 40), math.floor(R.G * 180 + 40), math.floor(R.B * 180 + 40));
	for R, c in ipairs(o3) do
		c.BackgroundColor3 = B.Chams and Q or F;
	end;
	if B.Chams then
		f3.BackgroundColor3 = Color3.fromRGB(math.min(255, math.floor(R.R * 200 + 50)), math.min(255, math.floor(R.G * 200 + 50)), math.min(255, math.floor(R.B * 200 + 50)));
	end;
end;
task.spawn(function()
	while m3.Parent do
		O3();
		task.wait(B.RGBESP and .08 or .25);
	end;
end);
Z3(d3, "ESP");
P3(d3, "ESP Enabled", "ESP");
P3(d3, "Boxes", "ShowBoxes");
v3(d3, "Box Style", "BoxStyle", { "Corner", "Full", "Both" });
P3(d3, "Names", "ShowNames");
P3(d3, "Distance", "ShowDistance");
P3(d3, "Health", "ShowHealth");
P3(d3, "Head Dot", "ShowHeadDot");
P3(d3, "Chams ESP", "Chams");
P3(d3, "Gadget ESP", "GadgetESP");
P3(d3, "Radar ESP", "Radar");
J3(d3, "Radar Size", "RadarSize", 80, 220, 5);
J3(d3, "Radar Range", "RadarRange", 50, 400, 10);
S3(d3, "Force Refresh ESP", lv);
Z3(d3, "ESP Color");
P3(d3, "RGB ESP", "RGBESP");
J3(d3, "Red", "ESPColorR", 0, 255, 1);
J3(d3, "Green", "ESPColorG", 0, 255, 1);
J3(d3, "Blue", "ESPColorB", 0, 255, 1);
Z3(d3, "Crosshair");
v3(d3, "Style", "CursorName", { "Off", "TC2", "Cinnamoroll" });
J3(d3, "Size", "CursorSize", 8, 128, 1);
uv = function()
		f = e();
		local R = f;
		for c, L in ipairs(r) do
			pcall(function()
				local c, F, Q = L.kind, L.obj, L.extra;
				if c == "choiceRefresh" and (type(F) == "table" and F.refresh) then
					F.refresh();
					return;
				end;
				if not F or (typeof(F) == "Instance" and not F.Parent) then
					return;
				end;
				if c == "text" then
					F.TextColor3 = R;
				elseif c == "fill" then
					F.BackgroundColor3 = R;
				elseif c == "stroke" then
					F.Color = R;
				elseif c == "toggle" then
					if B[Q] then
						F.BackgroundColor3 = R;
					end;
				elseif c == "choice" then
 
				end;
			end);
		end;
		for c, L in pairs(rv) do
			if L.TextColor3 ~= E then
				L.TextColor3 = R;
			end;
		end;
		pcall(function()
			if hv then
				hv.Color = R;
			end;
			if zv then
				zv.TextColor3 = R;
			end;
			if c3 then
				c3.TextColor3 = R;
			end;
		end);
	end;
Z3(X3, "Accent Color");
J3(X3, "Red", "DesignAccentR", 0, 255, 1);
J3(X3, "Green", "DesignAccentG", 0, 255, 1);
J3(X3, "Blue", "DesignAccentB", 0, 255, 1);
S3(X3, "Apply Accent", uv);
S3(X3, "Reset Default", function()
	B.DesignAccentR, B.DesignAccentG, B.DesignAccentB = 138, 99, 255;
	uv();
end);
Z3(X3, "Presets");
S3(X3, "Purple", function()
	B.DesignAccentR, B.DesignAccentG, B.DesignAccentB = 138, 99, 255;
	uv();
end);
S3(X3, "Red", function()
	B.DesignAccentR, B.DesignAccentG, B.DesignAccentB = 255, 60, 60;
	uv();
end);
S3(X3, "Green", function()
	B.DesignAccentR, B.DesignAccentG, B.DesignAccentB = 60, 220, 100;
	uv();
end);
S3(X3, "Blue", function()
	B.DesignAccentR, B.DesignAccentG, B.DesignAccentB = 60, 140, 255;
	uv();
end);
S3(X3, "Orange", function()
	B.DesignAccentR, B.DesignAccentG, B.DesignAccentB = 255, 140, 40;
	uv();
end);
S3(X3, "White", function()
	B.DesignAccentR, B.DesignAccentG, B.DesignAccentB = 230, 230, 240;
	uv();
end);
Z3(g3, "Credits");
local x3 = Instance.new("Frame");
x3.LayoutOrder = H3(g3);
x3.Size = UDim2.new(1, 0, 0, 120);
x3.BackgroundColor3 = i;
x3.BorderSizePixel = 0;
x3.Parent = g3;
(Instance.new("UICorner", x3)).CornerRadius = UDim.new(0, 10);
local j3 = Instance.new("TextLabel");
j3.Size = UDim2.new(1, -20, 0, 28);
j3.Position = UDim2.new(0, 12, 0, 12);
j3.BackgroundTransparency = 1;
j3.Text = "Thank you Darien";
j3.TextColor3 = f;
j3.TextSize = 16;
j3.Font = Enum.Font.GothamBold;
j3.TextXAlignment = Enum.TextXAlignment.Left;
j3.Parent = x3;
K("text", j3);
local M3 = Instance.new("TextLabel");
M3.Size = UDim2.new(1, -20, 0, 60);
M3.Position = UDim2.new(0, 12, 0, 44);
M3.BackgroundTransparency = 1;
M3.Text = "Thank you Darien for helping us.\nMoon Hub \194\183 Jailbird";
M3.TextColor3 = A;
M3.TextSize = 12;
M3.Font = o;
M3.TextXAlignment = Enum.TextXAlignment.Left;
M3.TextYAlignment = Enum.TextYAlignment.Top;
M3.TextWrapped = true;
M3.Parent = x3;
Z3(D3, "Config");
q3(D3, "Name", "ConfigName", "default");
S3(D3, "Save", X);
S3(D3, "Load", function()
	g();
end);
P3(D3, "FPS + MS", "ShowPerf");
P3(D3, "Potato", "Potato");
Z3(D3, "Status");
Wv = Instance.new("TextLabel");
Wv.LayoutOrder = H3(D3);
Wv.Size = UDim2.new(1, 0, 0, 40);
Wv.BackgroundColor3 = i;
Wv.BorderSizePixel = 0;
Wv.Text = "Executor: " .. (p .. " | Vis: Green/Red");
Wv.TextColor3 = A;
Wv.TextSize = 12;
Wv.Font = o;
Wv.Parent = D3;
(Instance.new("UICorner", Wv)).CornerRadius = UDim.new(0, 8);
Iv("Combat");
for R, c in pairs(ov) do
	pcall(function()
		local R = c:FindFirstChildOfClass("UIListLayout");
		if R then
			c.CanvasSize = UDim2.new(0, 0, 0, R.AbsoluteContentSize.Y + 16);
		end;
	end);
end;
Kv = Instance.new("TextButton");
Kv.Size = UDim2.new(0, 56, 0, 36);
Kv.Position = UDim2.new(1, -66, 0, 12);
Kv.BackgroundColor3 = Color3.fromRGB(30, 30, 40);
Kv.Text = "OPEN";
Kv.TextColor3 = f;
Kv.TextSize = 14;
Kv.Font = o;
Kv.Visible = true;
Kv.Parent = Vv;
(Instance.new("UICorner", Kv)).CornerRadius = UDim.new(0, 8);
Kv.MouseButton1Click:Connect(function()
	ev.Visible = true;
	Kv.Visible = false;
end);
Gv = function()
		Kv.Visible = not ev.Visible;
	end;
local Y3, R6, c6;
Mv.InputBegan:Connect(function(R)
	if R.UserInputType == Enum.UserInputType.MouseButton1 or R.UserInputType == Enum.UserInputType.Touch then
		Y3 = true;
		R6 = R.Position;
		c6 = ev.Position;
	end;
end);
Mv.InputEnded:Connect(function(R)
	if R.UserInputType == Enum.UserInputType.MouseButton1 or R.UserInputType == Enum.UserInputType.Touch then
		Y3 = false;
	end;
end);
c.InputChanged:Connect(function(R)
	if Y3 and ((R.UserInputType == Enum.UserInputType.MouseMovement or R.UserInputType == Enum.UserInputType.Touch)) then
		local c = R.Position - R6;
		ev.Position = UDim2.new(c6.X.Scale, c6.X.Offset + c.X, c6.Y.Scale, c6.Y.Offset + c.Y);
	end;
end);
L3.MouseButton1Click:Connect(function()
	ev.Visible = false;
	Gv();
end);
c.InputBegan:Connect(function(R)
	if R.KeyCode == Enum.KeyCode.RightControl or R.KeyCode == Enum.KeyCode.LeftControl then
		ev.Visible = not ev.Visible;
		Gv();
		z();
	end;
end);
local L6 = {
		MB1 = Enum.UserInputType.MouseButton1,
		MB2 = Enum.UserInputType.MouseButton2,
		E = Enum.KeyCode.E,
		Q = Enum.KeyCode.Q,
		F = Enum.KeyCode.F,
	};
local F6 = false;
local Q6;
local function n6(R)
	local c = L6[B.AimKey] or Enum.UserInputType.MouseButton2;
	local L = tostring(c);
	if string.find(L, "MouseButton", 1, true) then
		return R.UserInputType == c;
	end;
	if string.find(L, "KeyCode", 1, true) then
		return R.KeyCode == c;
	end;
	return false;
end;
c.InputBegan:Connect(function(R, c)
	if not B.Aimbot or B.MobileAim then
		return;
	end;
	if not n6(R) then
		return;
	end;
	if B.AimMode == "Hold" then
		F6 = true;
	elseif B.AimMode == "Toggle" then
		F6 = not F6;
	end;
end);
c.InputEnded:Connect(function(R)
	if B.AimMode == "Hold" and n6(R) then
		F6 = false;
	end;
end);
local function y6(R)
	if Q6 then
		Q6:Disconnect();
		Q6 = nil;
	end;
	if not R then
		local R = cv(J);
		if R then
			for R, c in ipairs(R:GetDescendants()) do
				if c:IsA("BasePart") then
					c.CanCollide = true;
				end;
			end;
		end;
		return;
	end;
	Q6 = L.Stepped:Connect(function()
			local R = cv(J);
			if not R then
				return;
			end;
			for R, c in ipairs(R:GetDescendants()) do
				if c:IsA("BasePart") then
					c.CanCollide = false;
				end;
			end;
		end);
end;
task.spawn(function()
	while true do
		task.wait(.2);
		if B.AntiBow then
			pcall(function()
				local R = cv(J);
				if not R then
					return;
				end;
				local c = R:FindFirstChild("HumanoidRootPart");
				local L = R:FindFirstChildOfClass("Humanoid");
				if not c or not L or L.Health <= 0 then
					return;
				end;
				local F = L:GetState();
				if F == Enum.HumanoidStateType.Jumping or F == Enum.HumanoidStateType.Freefall then
					return;
				end;
				if c.CFrame.UpVector:Dot(Vector3.yAxis) >= .92 then
					return;
				end;
				local Q, n = c.CFrame:ToOrientation();
				c.CFrame = CFrame.new(c.Position) * CFrame.Angles(0, n, 0);
			end);
		end;
	end;
end);
task.spawn(function()
	while true do
		task.wait(.5);
		if B.StreamProof then
			local R = tostring(B.SpoofName);
			if B.ShowVerified then
				R = R .. (" " .. av);
			end;
			pcall(function()
				J.DisplayName = R;
			end);
		end;
	end;
end);
local H6 = 33054943;
local Z6 = {};
task.spawn(function()
	while true do
		task.wait(2);
		if B.StaffDetect then
			for R, c in ipairs(R:GetPlayers()) do
				if c ~= J then
					local R, L = pcall(function()
							return c:GetRankInGroup(H6);
						end);
					if R and (type(L) == "number" and L >= 51) then
						if not Z6[c.UserId] then
							Z6[c.UserId] = true;
							if B.StaffLeave then
								pcall(function()
									J:Kick("Staff");
								end);
							end;
						end;
					end;
				end;
			end;
		end;
	end;
end);
local P6 = Instance.new("ScreenGui");
P6.Name = "MoonFOVGui";
P6.ResetOnSpawn = false;
P6.IgnoreGuiInset = true;
P6.DisplayOrder = 99999;
P6.Parent = q;
Tv = Instance.new("Frame");
Tv.AnchorPoint = Vector2.new(.5, .5);
Tv.Size = UDim2.new(0, 300, 0, 300);
Tv.Position = UDim2.new(.5, 0, .5, 0);
Tv.BackgroundTransparency = 1;
Tv.BorderSizePixel = 0;
Tv.Visible = false;
Tv.ZIndex = 999;
Tv.Parent = P6;
pcall(function()
	(Instance.new("UICorner", Tv)).CornerRadius = UDim.new(1, 0);
end);
hv = nil;
pcall(function()
	hv = Instance.new("UIStroke");
	hv.Color = Color3.new(1, 1, 1);
	hv.Thickness = 1.5;
	hv.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	hv.Parent = Tv;
end);
local J6, v6, b6, q6 = 0, tick(), 0, 0;
L.Heartbeat:Connect(function()
	local R = cv(J);
	if R then
		local c = R:FindFirstChildOfClass("Humanoid");
		if B.Speed and (c and c.Health > 0) then
			c.WalkSpeed = B.SpeedValue or 24;
		end;
		if B.Noclip then
			if not Q6 then
				y6(true);
			end;
		elseif Q6 then
			y6(false);
		end;
	end;
	mv(B.Potato == true);
	pcall(runTriggerbot);
	pcall(runKillAura);
end);
L.RenderStepped:Connect(function()
	pcall(function()
		J6 = J6 + 1;
		if tick() - v6 >= 1 then
			b6 = J6;
			J6 = 0;
			v6 = tick();
		end;
		if C.Visible then
			if c.TouchEnabled and not c.KeyboardEnabled then
				local R = P.ViewportSize;
				C.Position = UDim2.new(0, R.X / 2, 0, R.Y / 2);
			else
				local R = c:GetMouseLocation();
				C.Position = UDim2.new(0, R.X, 0, R.Y);
			end;
		end;
		if B.CustomFOV then
			j();
		end;
		M = false;
		local R, L, F = false, B.AimSmooth or .95, B.AimFOV or 150;
		if B.KillAura and (kaTarget and Lv(kaTarget)) then
			M = true;
		elseif not B.KillAura then
			if B.MobileAim then
				R = true;
				L = B.MobileSmooth or .9;
				F = B.MobileFOV or 160;
			elseif B.Aimbot then
				R = F6 or B.AimMode == "Always";
				L = B.AimSmooth or .95;
				F = B.AimFOV or 150;
			end;
		end;
		if R then
			local R, c = Qv(F, true);
			if c then
				M = true;
				if L >= .98 then
					P.CFrame = CFrame.new(P.CFrame.Position, c);
				else
					P.CFrame = P.CFrame:Lerp(CFrame.new(P.CFrame.Position, c), math.clamp(L, .1, 1));
				end;
				Rv(c);
			end;
		end;
		Y();
		pcall(pv);
		pcall(Bv);
		pcall(Xv);
		pcall(Dv);
		q6 = q6 + 1;
		if q6 >= 2 then
			q6 = 0;
			pcall(Jv);
		end;
		pcall(function()
			local R = P.ViewportSize / 2;
			if Zv then
				Zv.Position = R;
				Zv.Radius = tonumber(B.SilentFOV) or 90;
				Zv.Visible = B.SilentAim and B.SilentShowFOV;
				if B.RGBESP then
					Zv.Color = h();
				else
					Zv.Color = e();
				end;
			end;
			if Pv then
				local c = B.SilentAim and (B.SilentShowLine and nv()) or nil;
				if c then
					local L, F = P:WorldToViewportPoint(c.Position);
					if F then
						Pv.From = R;
						Pv.To = Vector2.new(L.X, L.Y);
						Pv.Visible = true;
						if B.RGBESP then
							Pv.Color = h();
						else
							Pv.Color = e();
						end;
					else
						Pv.Visible = false;
					end;
				else
					Pv.Visible = false;
				end;
			end;
		end);
		local Q, n = false, B.AimFOV or 150;
		if B.MobileAim then
			Q = B.MobileShowFOV;
			n = B.MobileFOV or 160;
		else
			Q = B.ShowFOV;
			n = B.AimFOV or 150;
		end;
		Tv.Size = UDim2.new(0, n * 2, 0, n * 2);
		Tv.Position = UDim2.new(.5, 0, .5, 0);
		Tv.Visible = Q;
		if hv then
			if B.RGBESP then
				hv.Color = h();
			end;
		end;
	end);
end);
zv = Instance.new("TextLabel");
zv.Name = "MoonFPSLabel";
zv.BackgroundTransparency = 1;
zv.TextColor3 = f;
zv.TextSize = 14;
zv.Font = Enum.Font.GothamBold;
zv.TextStrokeTransparency = 0;
zv.Position = UDim2.new(0, 10, 0, 10);
zv.Size = UDim2.new(0, 200, 0, 20);
zv.Visible = false;
zv.Parent = q;
task.spawn(function()
	while true do
		task.wait(.5);
		if B.ShowPerf then
			local R = 0;
			pcall(function()
				R = math.floor(Q.Network.ServerStatsItem["Data Ping"]:GetValue());
			end);
			zv.Text = "FPS: " .. (b6  .. ("  MS: " .. R));
			zv.Visible = true;
		else
			zv.Visible = false;
		end;
	end;
end);
task.spawn(function()
	while true do
		task.wait(15);
		X();
	end;
end);
if B.CursorName and B.CursorName ~= "Off" then
	O(B.CursorName);
end;
if B.CustomFOV then
	j();
end;
l(1, "Done");
task.wait(.35);
pcall(function()
	s:Destroy();
end);
ev.Visible = true;
Kv.Visible = false;
print("[Moon Hub] PUBLIC MOBILE | " .. (p .. " | Vis Green/Red"));
