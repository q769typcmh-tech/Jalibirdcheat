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
task.wait(.35);
local Q = game:FindService("Players") or game:GetService("Players");
local F = 0;
while not Q and F < 50 do
	F = F + (1);
	task.wait(.1);
	Q = game:FindService("Players") or game:GetService("Players");
end;
if not Q then
	warn("[Moon] Players service missing");
	return;
end;
local r = game:GetService("UserInputService");
local f = game:GetService("RunService");
local V = game:GetService("Lighting");
local m = game:GetService("Stats");
local b = game:GetService("HttpService");
local O = game:GetService("TweenService");
local x = game:GetService("ReplicatedStorage");
local u = game:GetService("VirtualInputManager");
local T = workspace.CurrentCamera;
local h = Q.LocalPlayer;
if not h then
	h = Q.PlayerAdded:Wait();
end;
F = 0;
while ((not h or not h.Parent)) and F < 100 do
	F = F + (1);
	task.wait(.05);
	h = Q.LocalPlayer;
end;
if not h then
	warn("[Moon] LocalPlayer missing");
	return;
end;
local J = h:FindFirstChild("PlayerGui") or h:WaitForChild("PlayerGui", 60);
if not J then
	warn("[Moon] PlayerGui timeout");
	return;
end;
local function S()
	if gethui then
		local Q, F = pcall(function()
				return gethui();
			end);
		if Q and F then
			return F;
		end;
	end;
	return game:GetService("CoreGui");
end;
local o = S();
pcall(function()
	for Q, F in ipairs({
		"MoonHubUI",
		"MoonCursorUI",
		"MoonLoadUI",
		"MoonFOVGui",
		"MoonESPGui",
		"MoonMobileESPGui",
	}) do
		local r = J:FindFirstChild(F);
		if r then
			r:Destroy();
		end;
		local f = o:FindFirstChild(F);
		if f then
			f:Destroy();
		end;
	end;
end);
task.wait(.05);
local H;
pcall(function()
	H = h:GetMouse();
end);
local function X()
	local Q = "Unknown";
	pcall(function()
		if identifyexecutor then
			local F, r = identifyexecutor();
			Q = tostring(F or "Unknown");
			if r then
				Q = Q .. (" " .. tostring(r));
			end;
		elseif getexecutorname then
			Q = tostring(getexecutorname());
		elseif syn and syn.request then
			Q = "Synapse";
		elseif fluxus then
			Q = "Fluxus";
		elseif KRNL_LOADED then
			Q = "Krnl";
		elseif is_sirhurt_closure then
			Q = "Sirhurt";
		elseif pebc_execute then
			Q = "Parallel";
		elseif SecureDelta then
			Q = "Delta";
		end;
	end);
	return Q;
end;
local c = X();
local g, e, L, j, w, a, k, z;
L = {};
local function Z()
	g = Instance.new("ScreenGui");
	g.Name = "MoonLoadUI";
	g.ResetOnSpawn = false;
	g.IgnoreGuiInset = true;
	g.DisplayOrder = 9999;
	g.Parent = J;
	task.spawn(function()
		task.wait(8);
		pcall(function()
			if g and g.Parent then
				g:Destroy();
			end;
		end);
	end);
	local Q = Instance.new("Frame");
	Q.Size = UDim2.new(1, 0, 1, 0);
	Q.BackgroundColor3 = Color3.fromRGB(8, 8, 12);
	Q.BorderSizePixel = 0;
	Q.Parent = g;
	local F = Instance.new("Frame");
	F.Size = UDim2.new(0, 320, 0, 160);
	F.Position = UDim2.new(.5, -160, .5, -80);
	F.BackgroundColor3 = Color3.fromRGB(16, 16, 22);
	F.BorderSizePixel = 0;
	F.Parent = Q;
	(Instance.new("UICorner", F)).CornerRadius = UDim.new(0, 14);
	local r = Instance.new("TextLabel");
	r.Size = UDim2.new(1, -20, 0, 28);
	r.Position = UDim2.new(0, 10, 0, 14);
	r.BackgroundTransparency = 1;
	r.Text = "MOON HUB";
	r.TextColor3 = Color3.fromRGB(138, 99, 255);
	r.TextSize = 20;
	r.Font = Enum.Font.GothamBold;
	r.Parent = F;
	local f = Instance.new("TextLabel");
	f.Size = UDim2.new(1, -20, 0, 18);
	f.Position = UDim2.new(0, 10, 0, 42);
	f.BackgroundTransparency = 1;
	f.Text = "jailbird";
	f.TextColor3 = Color3.fromRGB(160, 160, 180);
	f.TextSize = 12;
	f.Font = Enum.Font.Gotham;
	f.Parent = F;
	local V = Instance.new("TextLabel");
	V.Size = UDim2.new(1, -20, 0, 18);
	V.Position = UDim2.new(0, 10, 0, 70);
	V.BackgroundTransparency = 1;
	V.Text = "Starting...";
	V.TextColor3 = Color3.fromRGB(220, 220, 230);
	V.TextSize = 12;
	V.Font = Enum.Font.Gotham;
	V.TextXAlignment = Enum.TextXAlignment.Left;
	V.Parent = F;
	local m = Instance.new("Frame");
	m.Size = UDim2.new(1, -24, 0, 10);
	m.Position = UDim2.new(0, 12, 0, 100);
	m.BackgroundColor3 = Color3.fromRGB(30, 30, 40);
	m.BorderSizePixel = 0;
	m.Parent = F;
	(Instance.new("UICorner", m)).CornerRadius = UDim.new(1, 0);
	local x = Instance.new("Frame");
	x.Size = UDim2.new(0, 0, 1, 0);
	x.BackgroundColor3 = Color3.fromRGB(138, 99, 255);
	x.BorderSizePixel = 0;
	x.Parent = m;
	(Instance.new("UICorner", x)).CornerRadius = UDim.new(1, 0);
	local u = Instance.new("TextLabel");
	u.Size = UDim2.new(1, -20, 0, 32);
	u.Position = UDim2.new(0, 10, 0, 118);
	u.BackgroundTransparency = 1;
	u.Text = "Executor: " .. c;
	u.TextColor3 = Color3.fromRGB(140, 140, 160);
	u.TextSize = 11;
	u.Font = Enum.Font.Gotham;
	u.TextXAlignment = Enum.TextXAlignment.Left;
	u.TextYAlignment = Enum.TextYAlignment.Top;
	u.Parent = F;
	e = function(Q, F)
			Q = math.clamp(Q, 0, 1);
			pcall(function()
				V.Text = F or V.Text;
				(O:Create(x, TweenInfo.new(.25, Enum.EasingStyle.Quad), { Size = UDim2.new(Q, 0, 1, 0) })):Play();
			end);
		end;
	e(.08, "Detecting executor...");
	task.wait(.2);
	e(.2, "Executor: " .. c);
	task.wait(.15);
	e(.35, "Loading config...");
	task.wait(.1);
	k = function(Q, F)
			pcall(function()
				if writefile then
					writefile(Q, F);
				end;
			end);
		end;
	z = function(Q)
			local F, r = pcall(function()
					if isfile and (isfile(Q) and readfile) then
						return readfile(Q);
					end;
				end);
			return F and r or nil;
		end;
	pcall(function()
		if makefolder then
			makefolder("MoonHub");
			makefolder("MoonHub/Configs");
		end;
	end);
	L = {};
	j = {
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
			TriggerFOV = 22,
			TriggerDelay = .15,
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
	for Q, F in pairs(j) do
		L[Q] = F;
	end;
	local T = false;
	task.delay(2.5, function()
		T = true;
	end);
	w = function()
			local Q = (tostring(L.ConfigName or "default")):gsub("[^%w%-%_]", "");
			if Q == "" then
				Q = "default";
			end;
			L.ConfigName = Q;
			L.StretchAmount = math.clamp(tonumber(L.StretchAmount) or .53, .3, 1);
			k("MoonHub/Configs/" .. (Q .. ".json"), b:JSONEncode(L));
			k("MoonHub/Jailbird.json", b:JSONEncode(L));
		end;
	a = function()
			local Q = (tostring(L.ConfigName or "default")):gsub("[^%w%-%_]", "");
			local F = z("MoonHub/Configs/" .. (Q .. ".json")) or z("MoonHub/Jailbird.json");
			if F then
				pcall(function()
					local Q = b:JSONDecode(F);
					if type(Q) == "table" then
						for Q, F in pairs(Q) do
							if j[Q] ~= nil then
								L[Q] = F;
							end;
						end;
					end;
				end);
			end;
			if type(L.DeviceSpoofDelay) ~= "number" then
				L.DeviceSpoofDelay = 1.5;
			end;
			L.StretchAmount = math.clamp(tonumber(L.StretchAmount) or .53, .3, 1);
			if not T then
				local Q = L.ScreenStretch == true;
				L.ScreenStretch = false;
				task.delay(2.6, function()
					if Q then
						L.ScreenStretch = true;
					end;
					T = true;
				end);
			end;
			if L.HitboxPart ~= "Head" and L.HitboxPart ~= "Torso" then
				L.HitboxPart = "Head";
			end;
			local r = tostring(L.TargetPriority or "Crosshair");
			if r ~= "Crosshair" and (r ~= "Closest" and r ~= "Lowest HP") then
				L.TargetPriority = "Crosshair";
			end;
		end;
	pcall(a);
end;
Z();
local function G()
	local Q, F = pcall(function()
			return b:JSONEncode(L);
		end);
	if not Q or type(F) ~= "string" then
		if statusLabel then
			statusLabel.Text = "Export failed";
		end;
		return nil;
	end;
	pcall(function()
		if setclipboard then
			setclipboard(F);
		end;
	end);
	pcall(function()
		if toclipboard then
			toclipboard(F);
		end;
	end);
	if statusLabel then
		statusLabel.Text = "Config exported (clipboard if supported)";
	end;
	return F;
end;
local function W(Q)
	if type(Q) ~= "string" or #Q < 2 then
		if statusLabel then
			statusLabel.Text = "Import: empty config";
		end;
		return false;
	end;
	Q = (Q:gsub("^%s+", "")):gsub("%s+$", "");
	local F, r = pcall(function()
			return b:JSONDecode(Q);
		end);
	if not F or type(r) ~= "table" then
		if statusLabel then
			statusLabel.Text = "Import: invalid JSON";
		end;
		return false;
	end;
	local f = 0;
	for Q, F in pairs(r) do
		if j[Q] ~= nil then
			L[Q] = F;
			f = f + (1);
		end;
	end;
	pcall(w);
	if statusLabel then
		statusLabel.Text = "Imported " .. (tostring(f) .. " settings \226\128\148 re-open tabs if needed");
	end;
	pcall(function()
		if applyCursor then
			applyCursor(L.CursorName);
		end;
	end);
	pcall(function()
		if applyDesign then
			applyDesign();
		end;
	end);
	return true;
end;
local function i()
	local Q = nil;
	pcall(function()
		if getclipboard then
			Q = getclipboard();
		end;
	end);
	if not Q then
		pcall(function()
			if clipboard and clipboard.get then
				Q = clipboard.get();
			end;
		end);
	end;
	if type(Q) ~= "string" or #Q < 2 then
		if statusLabel then
			statusLabel.Text = "Clipboard empty \226\128\148 paste into box, then Import Paste";
		end;
		return false;
	end;
	return W(Q);
end;
e(.5, "Loading Drawing...");
local Y = false;
local A = nil;
local function v(Q)
	if not Q or type(Q.new) ~= "function" then
		return false;
	end;
	local F = pcall(function()
			local F = Q.new("Text");
			F.Visible = false;
			F:Remove();
		end);
	if F then
		Y = true;
		A = Q;
		return true;
	end;
	return false;
end;
v(Drawing);
pcall(function()
	if getrenv then
		v((getrenv()).Drawing);
	end;
end);
e(.65, Y and "Drawing OK" or "Drawing missing (radar unavailable)");
local function E()
	local Q, F, r = 138, 99, 255;
	if type(L) == "table" then
		Q = tonumber(L.DesignAccentR) or Q;
		F = tonumber(L.DesignAccentG) or F;
		r = tonumber(L.DesignAccentB) or r;
	end;
	return Color3.fromRGB(math.clamp(Q, 0, 255), math.clamp(F, 0, 255), math.clamp(r, 0, 255));
end;
local R = E();
local D = Color3.fromRGB(12, 12, 16);
local P = Color3.fromRGB(18, 18, 24);
local q = Color3.fromRGB(20, 20, 28);
local C = Color3.fromRGB(235, 235, 245);
local t = Color3.fromRGB(160, 160, 180);
local d = Enum.Font.Gotham;
local K = {};
local function B(Q, F, r)
	if F then
		table.insert(K, { kind = Q, obj = F, extra = r });
	end;
end;
local I = Color3.fromRGB(40, 255, 40);
local l = Color3.fromRGB(255, 40, 40);
local function M()
	if type(L) ~= "table" then
		return Color3.fromRGB(170, 0, 255);
	end;
	if L.RGBESP then
		return Color3.fromHSV(((tick() * .4)) % 1, 1, 1);
	end;
	return Color3.fromRGB(math.clamp(tonumber(L.ESPColorR) or 170, 0, 255), math.clamp(tonumber(L.ESPColorG) or 0, 0, 255), math.clamp(tonumber(L.ESPColorB) or 255, 0, 255));
end;
local function y()
	pcall(function()
		r.MouseBehavior = Enum.MouseBehavior.Default;
		r.MouseIconEnabled = true;
	end);
end;
local s = { { Name = "Off", Id = nil }, { Name = "TC2", Id = "8680062686" }, { Name = "Cinnamoroll", Id = "11719890577" } };
local p = Instance.new("ScreenGui");
p.Name = "MoonCursorUI";
p.ResetOnSpawn = false;
p.IgnoreGuiInset = true;
p.DisplayOrder = 10000;
p.Parent = J;
local U = Instance.new("ImageLabel");
U.BackgroundTransparency = 1;
U.AnchorPoint = Vector2.new(.5, .5);
U.Size = UDim2.new(0, 32, 0, 32);
U.Visible = false;
U.ZIndex = 100;
U.Parent = p;
local function n(Q)
	local F = J:FindFirstChild("Crosshair");
	if not F then
		return;
	end;
	pcall(function()
		if F:IsA("ScreenGui") then
			F.Enabled = Q;
		end;
		F.Visible = Q;
		for F, r in ipairs(F:GetDescendants()) do
			if r:IsA("GuiObject") then
				r.Visible = Q;
			end;
		end;
	end);
end;
local function N(Q)
	Q = Q or L.CursorName or "Off";
	L.CursorName = Q;
	local F = s[1];
	for r, f in ipairs(s) do
		if f.Name == Q then
			F = f;
			break;
		end;
	end;
	n(false);
	U.Visible = false;
	local f = math.clamp(tonumber(L.CursorSize) or 32, 8, 128);
	U.Size = UDim2.new(0, f, 0, f);
	if not F.Id or F.Name == "Off" then
		pcall(function()
			if H then
				H.Icon = "";
			end;
			r.MouseIconEnabled = true;
		end);
		return;
	end;
	if F.Id == "GAME" then
		n(true);
		pcall(function()
			if H then
				H.Icon = "rbxassetid://0";
			end;
			r.MouseIconEnabled = true;
		end);
		return;
	end;
	pcall(function()
		r.MouseIconEnabled = false;
		if H then
			H.Icon = "rbxassetid://0";
		end;
		U.Image = "rbxassetid://" .. tostring(F.Id);
		U.Visible = true;
		if r.TouchEnabled and not r.KeyboardEnabled then
			local Q = T.ViewportSize;
			U.Position = UDim2.new(0, Q.X / 2, 0, Q.Y / 2);
		end;
	end);
end;
local Qe = 70;
pcall(function()
	Qe = T.FieldOfView;
end);
local function Fe()
	if not L.CustomFOV then
		return;
	end;
	local Q = math.clamp(tonumber(L.FOVValue) or 90, 40, 120);
	pcall(function()
		if math.abs(T.FieldOfView - Q) > .5 then
			T.FieldOfView = Q;
		end;
	end);
end;
local re = false;
local function fe()
	if not stretchReady then
		return;
	end;
	if not L.ScreenStretch then
		return;
	end;
	if re then
		return;
	end;
	if not T or not T.Parent then
		return;
	end;
	local Q = math.clamp(tonumber(L.StretchAmount) or .53, .3, 1);
	if Q >= .995 then
		return;
	end;
	pcall(function()
		local F = T.CFrame;
		if F then
			T.CFrame = F * CFrame.new(0, 0, 0, 1, 0, 0, 0, Q, 0, 0, 0, 1);
		end;
	end);
end;
local function Ve(Q)
	local F = h.Character;
	if not F then
		return;
	end;
	local r = F:FindFirstChild("HumanoidRootPart");
	if not r or not Q then
		return;
	end;
	pcall(function()
		local F = r.Position;
		r.CFrame = CFrame.new(F, Vector3.new(Q.X, F.Y, Q.Z));
	end);
end;
local function me(Q)
	if not Q then
		return nil;
	end;
	local F, r = pcall(function()
			return Q.Character;
		end);
	return F and r or nil;
end;
local be, Oe, xe, ue, Te, he, Je, Se, oe, He, Xe, ce, ge;
local function ee()
	be = function(Q)
			local F = me(Q);
			if not F then
				return false;
			end;
			local r = F:FindFirstChildOfClass("Humanoid");
			return r ~= nil and r.Health > 0;
		end;
	Oe = function(Q)
			if not Q or Q == h then
				return false;
			end;
			if not L.TeamCheck then
				return true;
			end;
			local F, r = h.Team, Q.Team;
			if F and r then
				return F ~= r;
			end;
			return true;
		end;
	local F = {
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
	local function r(Q, F)
		for r = 1, #F, 1 do
			if string.find(Q, F[r], 1, true) then
				return true;
			end;
		end;
		return false;
	end;
	local function f(Q)
		if not Q or not Q:IsA("BasePart") then
			return true;
		end;
		local f = string.lower(Q.Name or "");
		local V = string.lower(Q:GetFullName() or "");
		local m = string.lower(tostring(Q.Material));
		if string.find(f, "glass", 1, true) or string.find(m, "glass", 1, true) then
			return true;
		end;
		if Q.Transparency >= .7 then
			return true;
		end;
		if string.find(f, "door", 1, true) or string.find(V, "door", 1, true) then
			if string.find(f, "wood", 1, true) or string.find(V, "wood", 1, true) then
				return false;
			end;
			return true;
		end;
		if string.find(f, "window", 1, true) then
			return true;
		end;
		if Q.CanCollide == false and Q.Transparency >= .25 then
			return true;
		end;
		if r(f, F) or r(V, F) then
			return false;
		end;
		return false;
	end;
	local function V(Q)
		if not L.WallCheck then
			return true;
		end;
		local F = me(Q);
		local r = F and F:FindFirstChild("Head");
		if not r then
			return false;
		end;
		local V = me(h);
		local m = T.CFrame.Position + T.CFrame.LookVector * .8;
		local b = r.Position;
		local O = b - m;
		local x = O.Magnitude;
		if x < 1.5 then
			return true;
		end;
		local u = { T };
		if V then
			table.insert(u, V);
		end;
		if F then
			table.insert(u, F);
		end;
		local J = RaycastParams.new();
		J.FilterType = Enum.RaycastFilterType.Exclude;
		J.FilterDescendantsInstances = u;
		J.IgnoreWater = true;
		local S, o, H = 0, m, O.Unit;
		for Q = 1, 12, 1 do
			local r = x - S;
			if r <= .15 then
				return true;
			end;
			local V = workspace:Raycast(o, H * r, J);
			if not V then
				return true;
			end;
			if V.Instance and (F and V.Instance:IsDescendantOf(F)) then
				return true;
			end;
			if f(V.Instance) then
				table.insert(u, V.Instance);
				J.FilterDescendantsInstances = u;
				local Q = ((V.Position - o)).Magnitude;
				o = V.Position + H * .15;
				S = (S + Q) + .15;
			else
				return false;
			end;
		end;
		return false;
	end;
	ce = function(Q)
			if L.RGBESP then
				return Color3.fromHSV(((tick() * .4)) % 1, 1, 1);
			end;
			if V(Q) then
				return I;
			end;
			return l;
		end;
	local function m(Q, F)
		if not L.Prediction or not Q then
			return Q.Position;
		end;
		local r = F and ((F:FindFirstChild("HumanoidRootPart") or F:FindFirstChild("Torso")));
		local f = Vector3.zero;
		if r then
			pcall(function()
				f = r.AssemblyLinearVelocity;
			end);
		end;
		return Q.Position + f * ((tonumber(L.PredictAmount) or .12));
	end;
	xe = function(F, r)
			local f = tostring(L.TargetPriority or "Crosshair");
			local b, O = nil, nil;
			local x = math.huge;
			local u = T.ViewportSize / 2;
			local J = h.Character and ((h.Character:FindFirstChild("HumanoidRootPart") or h.Character:FindFirstChild("Torso")));
			for Q, S in ipairs(Q:GetPlayers()) do
				if S ~= h and (Oe(S) and be(S)) then
					local Q = me(S);
					local h = Q and Q:FindFirstChild("Head");
					if h then
						local o = m(h, Q);
						local H, X = T:WorldToViewportPoint(o);
						if X and H.Z > 0 then
							local m = ((Vector2.new(H.X, H.Y) - u)).Magnitude;
							if m <= ((F or 150)) and (((not r) or V(S))) then
								local F;
								if f == "Lowest HP" then
									local r = Q:FindFirstChildOfClass("Humanoid");
									F = r and r.Health or 100;
								elseif f == "Closest" then
									if J then
										F = ((h.Position - J.Position)).Magnitude;
									else
										F = H.Z;
									end;
								else
									F = m;
								end;
								if F < x then
									x = F;
									b = S;
									O = o;
								end;
							end;
						end;
					end;
				end;
			end;
			return b, O;
		end;
	he = false;
	pcall(function()
		if not Drawing and not ge then
			return;
		end;
		local Q = ge or Drawing;
		Je = Q.new("Circle");
		Je.Thickness = 1;
		Je.Visible = false;
		Je.Filled = false;
		Je.NumSides = 64;
		Je.Radius = 90;
		Je.Color = Color3.fromRGB(138, 99, 255);
		Je.Transparency = .35;
		Se = Q.new("Line");
		Se.Thickness = 1;
		Se.Visible = false;
		Se.Color = Color3.fromRGB(138, 99, 255);
		Se.Transparency = .4;
	end);
	ue = function()
			if not L.SilentAim then
				return nil;
			end;
			local F, r = nil, math.huge;
			local f = T.ViewportSize / 2;
			local m = tonumber(L.SilentFOV) or 90;
			local b = tostring(L.SilentPart or "Head");
			local O = h.Character;
			local x = O and O:FindFirstChild("Head");
			if not x then
				return nil;
			end;
			for Q, O in ipairs(Q:GetPlayers()) do
				if O == h then
					continue;
				end;
				if L.SilentTeamCheck and (h.Team and O.Team) then
					if O.Team == h.Team or O.Team.Name == "Spectator" then
						continue;
					end;
				end;
				local u = me(O);
				if not u or not be(O) then
					continue;
				end;
				local J = u:FindFirstChild(b) or u:FindFirstChild("Head") or u:FindFirstChild("HumanoidRootPart") or u:FindFirstChild("Torso");
				if not J then
					continue;
				end;
				local S, o = T:WorldToViewportPoint(J.Position);
				if not o or S.Z <= 0 then
					continue;
				end;
				if ((Vector2.new(S.X, S.Y) - f)).Magnitude > m then
					continue;
				end;
				if L.SilentVisible and not V(O) then
					continue;
				end;
				local H = ((J.Position - x.Position)).Magnitude;
				if H < r then
					r = H;
					F = J;
				end;
			end;
			return F;
		end;
	Te = function()
			if he then
				return true;
			end;
			if not getgc or not hookfunction or not newcclosure then
				return false;
			end;
			local Q = 0;
			pcall(function()
				for F, r in next, getgc(true) do
					if typeof(r) == "function" and (not isexecutorclosure(r) and (not iscclosure(r) and islclosure(r))) then
						local F, f = pcall(debug.getinfo, r);
						if F and (f and f.name == "BulletRayCast") then
							local F;
							F = hookfunction(r, newcclosure(function(...)
									if not L.SilentAim then
										return F(...);
									end;
									local Q = select("#", ...);
									local r = { ... };
									local f = ue();
									if f and (Q >= 2 and typeof(r[1]) == "Vector3") then
										local Q = r[1];
										local F = f.Position - Q;
										if F.Magnitude > .05 then
											r[2] = F.Unit;
										end;
									end;
									return F(table.unpack(r, 1, Q));
								end));
							Q = Q + 1;
							he = true;
						end;
					end;
				end;
			end);
			if he then
				print("[Moon] Silent Aim hooked BulletRayCast x" .. tostring(Q));
			end;
			return he;
		end;
	Te();
	task.delay(2, Te);
	task.delay(5, Te);
	task.delay(10, Te);
	origSizes = {};
	local function b(Q)
		return Q and ((Q:FindFirstChild("Torso") or Q:FindFirstChild("UpperTorso")));
	end;
	local function O(Q)
		if not Q then
			return;
		end;
		local F = origSizes[Q];
		if F then
			pcall(function()
				Q.Size = F;
			end);
			origSizes[Q] = nil;
		end;
	end;
	He = function()
			for Q, F in pairs(origSizes) do
				O(Q);
			end;
			origSizes = {};
		end;
	local function J(Q, F)
		if not Q or not Q:IsA("BasePart") then
			return;
		end;
		if origSizes[Q] == nil then
			origSizes[Q] = Q.Size;
		end;
		local r = math.clamp(tonumber(F) or 3, 1.2, 12);
		pcall(function()
			Q.Size = Vector3.new(r, r, r);
			Q.Massless = true;
			Q.CanCollide = false;
		end);
	end;
	oe = function()
			if not L.Hitbox then
				He();
				return;
			end;
			local F = L.HitboxPart;
			local r = tonumber(L.HitboxSize) or 3;
			for Q, f in ipairs(Q:GetPlayers()) do
				if f ~= h and (Oe(f) and be(f)) then
					local Q = me(f);
					if Q then
						local f = Q:FindFirstChild("Head");
						local V = b(Q);
						if F == "Head" then
							if f then
								J(f, r);
							end;
							if V then
								O(V);
							end;
						else
							if V then
								J(V, r);
							end;
							if f then
								O(f);
							end;
						end;
					end;
				end;
			end;
		end;
	local S = 0;
	local function o()
		local Q = me(h);
		if not Q then
			return nil;
		end;
		return Q:FindFirstChildOfClass("Tool");
	end;
	local function H()
		local Q = o();
		if not Q then
			return;
		end;
		local F = T.ViewportSize;
		local r = math.floor(F.X / 2);
		local f = math.floor(F.Y / 2);
		local V = false;
		pcall(function()
			u:SendMouseButtonEvent(r, f, 0, true, game, 1);
			task.wait(.03);
			u:SendMouseButtonEvent(r, f, 0, false, game, 1);
			V = true;
		end);
		if not V then
			pcall(function()
				Q:Activate();
			end);
		end;
	end;
	local function X()
		local F = math.clamp(tonumber(L.TriggerFOV) or 25, 8, 80);
		local r = T.ViewportSize / 2;
		local f, m = nil, F;
		for Q, F in ipairs(Q:GetPlayers()) do
			if F == h or not Oe(F) or not be(F) then
				continue;
			end;
			local b = me(F);
			if not b then
				continue;
			end;
			if L.WallCheck and not V(F) then
				continue;
			end;
			local O = b:FindFirstChild("Head") or b:FindFirstChild("HumanoidRootPart") or b:FindFirstChild("Torso");
			if not O then
				continue;
			end;
			local x, u = T:WorldToViewportPoint(O.Position);
			if not u or x.Z <= 0 then
				continue;
			end;
			local J = ((Vector2.new(x.X, x.Y) - r)).Magnitude;
			if J <= m then
				m = J;
				f = F;
			end;
		end;
		return f;
	end;
	local function c()
		if not L.Triggerbot then
			return;
		end;
		if not be(h) then
			return;
		end;
		local Q = o();
		if not Q then
			return;
		end;
		if not T or not T.Parent then
			return;
		end;
		local F = math.max(tonumber(L.TriggerDelay) or .15, .12);
		if tick() - S < F then
			return;
		end;
		local r = X();
		if not r then
			return;
		end;
		S = tick();
		H();
	end;
	local g = nil;
	local function e(F)
		local r = me(h);
		local f = r and r:FindFirstChild("HumanoidRootPart");
		if not f then
			return nil;
		end;
		local V = tonumber(L.KillAuraRange) or 90;
		local m, b = nil, V;
		for Q, r in ipairs(Q:GetPlayers()) do
			if r ~= h and (r ~= F and (Oe(r) and be(r))) then
				local Q = me(r);
				local F = Q and Q:FindFirstChild("HumanoidRootPart");
				local V = Q and Q:FindFirstChild("Head");
				if F and V then
					local Q = ((F.Position - f.Position)).Magnitude;
					if Q < b then
						b = Q;
						m = r;
					end;
				end;
			end;
		end;
		return m;
	end;
	local function j(Q)
		local F = me(h);
		local r = F and F:FindFirstChild("HumanoidRootPart");
		local f = me(Q);
		local V = f and f:FindFirstChild("HumanoidRootPart");
		local m = f and f:FindFirstChild("Head");
		if not r or not V or not m then
			return false;
		end;
		local b = tonumber(L.KillAuraBehind) or 3.2;
		local O = V.CFrame.LookVector;
		local x = (V.Position - O * b) + Vector3.new(0, 1.4, 0);
		pcall(function()
			r.CFrame = CFrame.new(x, m.Position);
		end);
		pcall(function()
			T.CFrame = CFrame.new(T.CFrame.Position, m.Position);
		end);
		return true;
	end;
	local function w()
		if not L.KillAura then
			g = nil;
			return;
		end;
		local Q = me(h);
		local F = Q and Q:FindFirstChildOfClass("Humanoid");
		if not F or F.Health <= 0 then
			g = nil;
			return;
		end;
		if not g or not be(g) or not Oe(g) then
			g = e(g);
		end;
		if not g then
			return;
		end;
		if j(g) then
			H();
		else
			g = nil;
		end;
	end;
	local a = nil;
	pcall(function()
		a = (x:WaitForChild("GameEvents", 8)):WaitForChild("DeviceUpdate", 8);
	end);
	Xe = function()
			if not a then
				pcall(function()
					a = x.GameEvents.DeviceUpdate;
				end);
			end;
			if not a then
				return;
			end;
			local Q = L.DeviceMode or "Console";
			pcall(function()
				if Q == "Console" then
					a:FireServer();
					pcall(function()
						a:FireServer("Console");
					end);
				elseif Q == "Desktop" then
					a:FireServer("Desktop");
				else
					a:FireServer("Mobile");
				end;
			end);
		end;
	task.spawn(function()
		while true do
			local Q = tonumber(L.DeviceSpoofDelay) or 1.5;
			if Q < .3 then
				Q = .3;
			end;
			task.wait(Q);
			if L.DeviceSpoof then
				pcall(Xe);
			end;
		end;
	end);
end;
ee();
e(.78, "Building ESP...");
local Le, je, we, ae, ke, ze, Ze, Ge, We, ie;
local function Ye()
	local F = Instance.new("ScreenGui");
	F.Name = "MoonMobileESPGui";
	F.ResetOnSpawn = false;
	F.IgnoreGuiInset = true;
	F.DisplayOrder = 99999;
	F.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	F.Parent = o;
	local r = {};
	local function f(Q)
		if not Q then
			return;
		end;
		pcall(function()
			if Q.fullBox then
				Q.fullBox:Destroy();
			end;
		end);
		pcall(function()
			if Q.fullStroke then
				Q.fullStroke:Destroy();
			end;
		end);
		pcall(function()
			if Q.name then
				Q.name:Destroy();
			end;
		end);
		pcall(function()
			if Q.dist then
				Q.dist:Destroy();
			end;
		end);
		pcall(function()
			if Q.healthBg then
				Q.healthBg:Destroy();
			end;
		end);
		pcall(function()
			if Q.healthFill then
				Q.healthFill:Destroy();
			end;
		end);
		pcall(function()
			if Q.headDot then
				Q.headDot:Destroy();
			end;
		end);
		if Q.corners then
			for F = 1, #Q.corners, 1 do
				local r = Q.corners[F];
				pcall(function()
					if r then
						r:Destroy();
					end;
				end);
				Q.corners[F] = nil;
			end;
		end;
	end;
	je = function()
			for Q, F in pairs(r) do
				f(F);
				r[Q] = nil;
			end;
			pcall(function()
				for Q, F in ipairs(F:GetChildren()) do
					pcall(function()
						if F then
							F:Destroy();
						end;
					end);
				end;
			end);
			r = {};
		end;
	local function m(Q)
		local F = r[Q];
		if not F then
			return;
		end;
		f(F);
		r[Q] = nil;
	end;
	local function b(Q)
		if r[Q] then
			return r[Q];
		end;
		local f = Instance.new("Frame");
		f.BackgroundTransparency = 1;
		f.BorderSizePixel = 0;
		f.Visible = false;
		f.ZIndex = 999;
		f.Parent = F;
		local V;
		pcall(function()
			V = Instance.new("UIStroke");
			V.Color = Color3.new(1, 1, 1);
			V.Thickness = 1.5;
			V.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
			V.Parent = f;
		end);
		local m = {};
		for Q = 1, 8, 1 do
			local r = Instance.new("Frame");
			r.BorderSizePixel = 0;
			r.BackgroundColor3 = Color3.new(1, 1, 1);
			r.Visible = false;
			r.ZIndex = 999;
			r.Parent = F;
			m[Q] = r;
		end;
		local b = Instance.new("TextLabel");
		b.BackgroundTransparency = 1;
		b.AnchorPoint = Vector2.new(.5, .5);
		b.TextColor3 = Color3.new(1, 1, 1);
		b.TextSize = 12;
		b.Font = Enum.Font.SourceSansBold;
		b.TextStrokeTransparency = 0;
		b.Visible = false;
		b.ZIndex = 999;
		b.Parent = F;
		local O = Instance.new("TextLabel");
		O.BackgroundTransparency = 1;
		O.AnchorPoint = Vector2.new(.5, .5);
		O.TextColor3 = Color3.new(1, 1, 1);
		O.TextSize = 10;
		O.Font = Enum.Font.SourceSans;
		O.TextStrokeTransparency = 0;
		O.Visible = false;
		O.ZIndex = 999;
		O.Parent = F;
		local x = Instance.new("Frame");
		x.BorderSizePixel = 0;
		x.BackgroundColor3 = Color3.new(0, 0, 0);
		x.Visible = false;
		x.ZIndex = 999;
		x.Parent = F;
		local u = Instance.new("Frame");
		u.BorderSizePixel = 0;
		u.BackgroundColor3 = Color3.new(1, 0, 0);
		u.Visible = false;
		u.ZIndex = 999;
		u.Parent = F;
		local T = Instance.new("Frame");
		T.BorderSizePixel = 0;
		T.BackgroundColor3 = Color3.new(1, 1, 1);
		T.Visible = false;
		T.ZIndex = 999;
		T.Parent = F;
		pcall(function()
			local Q = Instance.new("UICorner");
			Q.CornerRadius = UDim.new(1, 0);
			Q.Parent = T;
		end);
		local h = {
				fullBox = f,
				fullStroke = V,
				corners = m,
				name = b,
				dist = O,
				healthBg = x,
				healthFill = u,
				headDot = T,
			};
		r[Q] = h;
		return h;
	end;
	Le = function()
			if not L.ESP then
				je();
				return;
			end;
			if not T or not T.Parent then
				return;
			end;
			local F = T.ViewportSize;
			if F.X < 1 or F.Y < 1 then
				return;
			end;
			local f = {};
			for Q, F in ipairs(Q:GetPlayers()) do
				f[F] = true;
			end;
			for Q in pairs(r) do
				if not f[Q] then
					m(Q);
				end;
			end;
			local V = me(h) and (me(h)):FindFirstChild("HumanoidRootPart");
			local O = {};
			for Q, F in ipairs(Q:GetPlayers()) do
				if F ~= h and (Oe(F) and be(F)) then
					O[F] = true;
					local Q = me(F);
					local r = Q and ((Q:FindFirstChild("HumanoidRootPart") or Q:FindFirstChild("Torso")));
					local f = Q and Q:FindFirstChild("Head");
					local x = Q and Q:FindFirstChildOfClass("Humanoid");
					if not r or not f then
						m(F);
						continue;
					end;
					local u = b(F);
					local h = ce(F);
					local J, S = T:WorldToViewportPoint(r.Position);
					local o, H = T:WorldToViewportPoint(f.Position + Vector3.new(0, 1.1, 0));
					local X = T:WorldToViewportPoint(r.Position - Vector3.new(0, 2.8, 0));
					if not ((J and (o and (S and (H and (J.Z > 0 and o.Z > 0)))))) then
						u.fullBox.Visible = false;
						u.name.Visible = false;
						u.dist.Visible = false;
						u.healthBg.Visible = false;
						u.healthFill.Visible = false;
						u.headDot.Visible = false;
						for Q = 1, 8, 1 do
							if u.corners[Q] then
								u.corners[Q].Visible = false;
							end;
						end;
						continue;
					end;
					local c = X and X.Y or J.Y + 2.8;
					local g = math.max(math.abs(c - o.Y), 10);
					local e = math.clamp(g / 1.85, 8, 120);
					local j = J.X - e / 2;
					local w = o.Y;
					if L.ShowBoxes and ((L.BoxStyle == "Full" or L.BoxStyle == "Both")) then
						u.fullBox.Size = UDim2.new(0, e, 0, g);
						u.fullBox.Position = UDim2.new(0, j, 0, w);
						u.fullBox.Visible = true;
						if u.fullStroke then
							u.fullStroke.Color = h;
						end;
					else
						u.fullBox.Visible = false;
					end;
					if L.ShowBoxes and ((L.BoxStyle == "Corner" or L.BoxStyle == "Both")) then
						local Q = math.clamp(e * .22, 4, 10);
						local F = u.corners;
						F[1].Size = UDim2.new(0, Q, 0, 2);
						F[1].Position = UDim2.new(0, j, 0, w);
						F[2].Size = UDim2.new(0, 2, 0, Q);
						F[2].Position = UDim2.new(0, j, 0, w);
						F[3].Size = UDim2.new(0, Q, 0, 2);
						F[3].Position = UDim2.new(0, (j + e) - Q, 0, w);
						F[4].Size = UDim2.new(0, 2, 0, Q);
						F[4].Position = UDim2.new(0, (j + e) - 2, 0, w);
						F[5].Size = UDim2.new(0, Q, 0, 2);
						F[5].Position = UDim2.new(0, j, 0, (w + g) - 2);
						F[6].Size = UDim2.new(0, 2, 0, Q);
						F[6].Position = UDim2.new(0, j, 0, (w + g) - Q);
						F[7].Size = UDim2.new(0, Q, 0, 2);
						F[7].Position = UDim2.new(0, (j + e) - Q, 0, (w + g) - 2);
						F[8].Size = UDim2.new(0, 2, 0, Q);
						F[8].Position = UDim2.new(0, (j + e) - 2, 0, (w + g) - Q);
						for Q = 1, 8, 1 do
							F[Q].BackgroundColor3 = h;
							F[Q].Visible = true;
						end;
					else
						for Q = 1, 8, 1 do
							u.corners[Q].Visible = false;
						end;
					end;
					if L.ShowNames then
						u.name.Text = F.DisplayName;
						u.name.Position = UDim2.new(0, J.X, 0, o.Y - 16);
						u.name.TextColor3 = h;
						u.name.Visible = true;
					else
						u.name.Visible = false;
					end;
					if L.ShowDistance and V then
						u.dist.Text = math.floor(((r.Position - V.Position)).Magnitude) .. "m";
						u.dist.Position = UDim2.new(0, J.X, 0, (w + g) + 2);
						u.dist.TextColor3 = h;
						u.dist.Visible = true;
					else
						u.dist.Visible = false;
					end;
					if L.ShowHealth and x then
						local F, r = x.Health, x.MaxHealth;
						pcall(function()
							local f = Q:GetAttribute("Health") or Q:GetAttribute("HP");
							local V = Q:GetAttribute("MaxHealth") or Q:GetAttribute("MaxHP");
							if type(f) == "number" then
								F = f;
							end;
							if type(V) == "number" and V > 0 then
								r = V;
							end;
						end);
						pcall(function()
							local f = Q:FindFirstChild("Health") or Q:FindFirstChild("HP");
							if f and f:IsA("NumberValue") then
								F = f.Value;
							end;
							local V = Q:FindFirstChild("MaxHealth") or Q:FindFirstChild("MaxHP");
							if V and ((V:IsA("NumberValue") or V:IsA("IntValue"))) then
								r = V.Value;
							end;
						end);
						if not r or r <= 0 then
							r = 100;
						end;
						if F > r then
							r = F;
						end;
						if F >= r * .99 then
							F = r;
						end;
						local f = math.clamp(F / r, 0, 1);
						u.healthBg.Size = UDim2.new(0, 3, 0, g);
						u.healthBg.Position = UDim2.new(0, j - 6, 0, w);
						u.healthBg.Visible = true;
						local V = math.max(1, math.floor(g * f + .5));
						u.healthFill.Size = UDim2.new(0, 2, 0, V);
						u.healthFill.Position = UDim2.new(0, j - 5.5, 0, (w + g) - V);
						u.healthFill.BackgroundColor3 = Color3.fromRGB(255 * ((1 - f)), 255 * f, 40);
						u.healthFill.Visible = true;
					else
						u.healthBg.Visible = false;
						u.healthFill.Visible = false;
					end;
					if L.ShowHeadDot then
						local Q, F = T:WorldToViewportPoint(f.Position);
						if Q and (F and Q.Z > 0) then
							local F = math.clamp(e * .18, 3, 9);
							u.headDot.Size = UDim2.new(0, F, 0, F);
							u.headDot.Position = UDim2.new(0, Q.X - F / 2, 0, Q.Y - F / 2);
							u.headDot.BackgroundColor3 = h;
							u.headDot.Visible = true;
						else
							u.headDot.Visible = false;
						end;
					else
						u.headDot.Visible = false;
					end;
				end;
			end;
			for Q in pairs(r) do
				if not O[Q] then
					m(Q);
				end;
			end;
		end;
	we = function()
			je();
			Le();
		end;
	local O = {};
	local function x()
		local Q = nil;
		pcall(function()
			if gethui then
				Q = gethui();
			end;
		end);
		if not Q then
			pcall(function()
				Q = game:GetService("CoreGui");
			end);
		end;
		if not Q then
			Q = J;
		end;
		return Q;
	end;
	ke = function()
			for Q, F in pairs(O) do
				pcall(function()
					F:Destroy();
				end);
				O[Q] = nil;
			end;
		end;
	ae = function()
			if not L.Chams then
				ke();
				return;
			end;
			local F = x();
			local r = {};
			for Q, f in ipairs(Q:GetPlayers()) do
				if f ~= h and (be(f) and Oe(f)) then
					r[f] = true;
					local Q = me(f);
					if not Q then
						continue;
					end;
					local V = Q:FindFirstChild("HumanoidRootPart") or Q:FindFirstChild("Head") or Q:FindFirstChildWhichIsA("BasePart");
					if not V then
						continue;
					end;
					local m = ce(f);
					local b = O[f];
					if not b or not b.Parent then
						b = Instance.new("Highlight");
						b.Name = "MoonChams";
						b.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop;
						b.FillTransparency = .4;
						b.OutlineTransparency = 0;
						b.FillColor = m;
						b.OutlineColor = m;
						b.Enabled = true;
						b.Adornee = Q;
						b.Parent = F;
						O[f] = b;
					else
						if b.Adornee ~= Q then
							b.Adornee = Q;
						end;
						b.FillColor = m;
						b.OutlineColor = m;
						b.Enabled = true;
						b.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop;
					end;
				end;
			end;
			for Q, F in pairs(O) do
				if not r[Q] then
					pcall(function()
						F:Destroy();
					end);
					O[Q] = nil;
				end;
			end;
		end;
	local u = {
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
	local S = {
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
	local H = {};
	local X = 0;
	Ze = function()
			for Q, F in pairs(H) do
				pcall(function()
					F:Destroy();
				end);
				H[Q] = nil;
			end;
		end;
	local function c(Q)
		local F = Q:lower();
		for Q, r in pairs(S) do
			if F:find(Q, 1, true) then
				return r;
			end;
		end;
		return Color3.fromRGB(255, 255, 255);
	end;
	local function g(Q)
		if Q:IsA("BasePart") then
			return Q;
		end;
		if Q:IsA("Tool") then
			return Q:FindFirstChild("Handle") or Q:FindFirstChildOfClass("BasePart") or Q;
		end;
		if Q:IsA("Model") then
			return Q:FindFirstChildOfClass("BasePart") or Q;
		end;
		return nil;
	end;
	ze = function()
			if not L.GadgetESP then
				Ze();
				return;
			end;
			X = X + 1;
			if X < 30 then
				return;
			end;
			X = 0;
			local Q = {};
			for F, r in ipairs(workspace:GetDescendants()) do
				local f = r.Name:lower();
				local V = false;
				for Q, F in ipairs(u) do
					if f:find(F, 1, true) then
						V = true;
						break;
					end;
				end;
				if V then
					local F = g(r);
					if F then
						Q[F] = true;
						local r = H[F];
						if not r or not r.Parent then
							r = Instance.new("Highlight");
							r.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop;
							r.FillTransparency = .4;
							r.OutlineTransparency = 0;
							r.Parent = F;
							H[F] = r;
						end;
						local V = c(f);
						r.FillColor = V;
						r.OutlineColor = V;
						r.Enabled = true;
					end;
				end;
			end;
			for F, r in pairs(H) do
				if not Q[F] then
					pcall(function()
						r:Destroy();
					end);
					H[F] = nil;
				end;
			end;
		end;
	local e = nil;
	local j = nil;
	local w = {};
	local function a(Q)
		if not Y or not ge then
			return nil;
		end;
		local F, r = pcall(function()
				return ge.new(Q);
			end);
		if F and r then
			return r;
		end;
		return nil;
	end;
	Ge = function()
			if not L.Radar then
				if e then
					e.Visible = false;
				end;
				if j then
					j.Visible = false;
				end;
				for Q, F in pairs(w) do
					if F then
						F.Visible = false;
					end;
				end;
				return;
			end;
			if not Y then
				return;
			end;
			if not e then
				e = a("Circle");
				e.Filled = true;
				e.Color = Color3.fromRGB(0, 0, 0);
				e.Transparency = .5;
				e.NumSides = 40;
			end;
			if not j then
				j = a("Circle");
				j.Filled = false;
				j.Color = Color3.fromRGB(255, 255, 255);
				j.Thickness = 1.5;
				j.NumSides = 40;
			end;
			local F = tonumber(L.RadarSize) or 140;
			local r = tonumber(L.RadarRange) or 200;
			local f = F / 2;
			local V = Vector2.new(20 + f, 20 + f);
			e.Position = V;
			e.Radius = f;
			e.Visible = true;
			j.Position = V;
			j.Radius = f;
			j.Visible = true;
			local m = me(h) and (me(h)):FindFirstChild("HumanoidRootPart");
			if not m then
				return;
			end;
			local b = math.atan2(T.CFrame.LookVector.X, T.CFrame.LookVector.Z);
			local O = {};
			for Q, F in ipairs(Q:GetPlayers()) do
				if F ~= h and (be(F) and Oe(F)) then
					local Q = me(F);
					local x = Q and Q:FindFirstChild("HumanoidRootPart");
					if x then
						local Q = x.Position - m.Position;
						if Q.Magnitude <= r then
							local m = Q.X * math.cos(b) - Q.Z * math.sin(b);
							local x = Q.X * math.sin(b) + Q.Z * math.cos(b);
							local u = f / r;
							local T = m * u;
							local h = -x * u;
							local J = w[F];
							if not J then
								J = a("Circle");
								J.Filled = true;
								J.NumSides = 8;
								J.Radius = 3;
								w[F] = J;
							end;
							J.Position = Vector2.new(V.X + T, V.Y + h);
							J.Color = ce(F);
							J.Visible = true;
							O[F] = true;
						end;
					end;
				end;
			end;
			for Q, F in pairs(w) do
				if not O[Q] then
					F.Visible = false;
				end;
			end;
		end;
	Q.PlayerRemoving:Connect(function(Q)
		m(Q);
		pcall(function()
			if O[Q] then
				O[Q]:Destroy();
				O[Q] = nil;
			end;
		end);
		if kaTarget == Q then
			kaTarget = nil;
		end;
		local F = me(Q);
		if F then
			restorePart(F:FindFirstChild("Head"));
			restorePart(getTorso(F));
		end;
	end);
	local function k(Q)
		Q.CharacterRemoving:Connect(function()
			m(Q);
			pcall(function()
				if O[Q] then
					O[Q]:Destroy();
					O[Q] = nil;
				end;
			end);
		end);
		Q.CharacterAdded:Connect(function()
			task.wait(.3);
			m(Q);
		end);
	end;
	Q.PlayerAdded:Connect(k);
	for Q, F in ipairs(Q:GetPlayers()) do
		k(F);
	end;
	ie = false;
	We = function(F)
			if F == ie then
				return;
			end;
			ie = F;
			pcall(function()
				V.GlobalShadows = not F;
				if F then
					V.FogEnd = 9000000000;
					if settings and (settings()).Rendering then
						(settings()).Rendering.QualityLevel = Enum.QualityLevel.Level01;
					end;
					for F, r in ipairs(workspace:GetDescendants()) do
						if r:IsA("BasePart") then
							local F = false;
							for Q, f in ipairs(Q:GetPlayers()) do
								if f.Character and r:IsDescendantOf(f.Character) then
									F = true;
									break;
								end;
							end;
							if not F then
								r.Material = Enum.Material.SmoothPlastic;
								r.CastShadow = false;
							end;
						elseif r:IsA("ParticleEmitter") or r:IsA("Trail") or r:IsA("Beam") then
							r.Enabled = false;
						end;
					end;
				end;
			end);
		end;
end;
Ye();
local Ae = "\226\156\147";
pcall(function()
	if utf8 and utf8.char then
		Ae = utf8.char(57344);
	end;
end);
local ve, Ee, Re, De, Pe, qe, Ce, te, de, Ke;
local Be, Ie, le, Me, ye;
local se, pe, Ue, ne;
e(.9, "Building UI...");
ve = Instance.new("ScreenGui");
ve.Name = "MoonHubUI";
ve.ResetOnSpawn = false;
ve.IgnoreGuiInset = true;
ve.DisplayOrder = 999;
ve.Parent = J;
Ee = Instance.new("Frame");
Ee.Size = UDim2.new(0, 640, 0, 480);
Ee.Position = UDim2.new(.5, -320, .5, -240);
Ee.BackgroundColor3 = D;
Ee.BackgroundTransparency = .08;
Ee.BorderSizePixel = 0;
Ee.Visible = false;
Ee.Parent = ve;
(Instance.new("UICorner", Ee)).CornerRadius = UDim.new(0, 14);
local Ne = Instance.new("UIScale");
Ne.Scale = 1;
Ne.Parent = Ee;
local function Q7()
	return r.TouchEnabled and ((not r.KeyboardEnabled or T.ViewportSize.X < 900));
end;
Ue = function()
		local Q = T.ViewportSize;
		local F = Q7();
		local r = F and math.min(Q.X - 24, 420) or math.min(Q.X - 40, 640);
		local f = F and math.min(Q.Y - 48, 360) or math.min(Q.Y - 60, 480);
		local V, m = 640, 480;
		local b = 1;
		if F then
			b = math.clamp(math.min(r / V, f / m), .55, .85);
			Ee.Size = UDim2.new(0, V, 0, m);
			Ne.Scale = b;
			local Q, F = V * b, m * b;
			Ee.Position = UDim2.new(.5, -Q / 2, .5, -F / 2);
		else
			Ne.Scale = 1;
			local Q = math.clamp(r, 480, 640);
			local F = math.clamp(f, 360, 480);
			Ee.Size = UDim2.new(0, Q, 0, F);
			Ee.Position = UDim2.new(.5, -Q / 2, .5, -F / 2);
		end;
	end;
Ue();
pcall(function()
	(T:GetPropertyChangedSignal("ViewportSize")):Connect(Ue);
end);
local F7 = Instance.new("UIStroke");
F7.Color = Color3.fromRGB(40, 38, 55);
F7.Thickness = 1;
F7.Transparency = .3;
F7.Parent = Ee;
B("stroke", F7);
local r7 = Instance.new("Frame");
r7.Size = UDim2.new(1, 0, 0, 44);
r7.BackgroundColor3 = P;
r7.BorderSizePixel = 0;
r7.Parent = Ee;
(Instance.new("UICorner", r7)).CornerRadius = UDim.new(0, 14);
local f7 = Instance.new("Frame");
f7.Size = UDim2.new(1, 0, 0, 14);
f7.Position = UDim2.new(0, 0, 1, -14);
f7.BackgroundColor3 = P;
f7.BorderSizePixel = 0;
f7.Parent = r7;
local V7 = Instance.new("Frame");
V7.Size = UDim2.new(1, 0, 0, 2);
V7.Position = UDim2.new(0, 0, 1, -2);
V7.BackgroundColor3 = R;
V7.BorderSizePixel = 0;
V7.Parent = r7;
B("fill", V7);
local m7 = Instance.new("TextLabel");
m7.Size = UDim2.new(1, -50, 1, 0);
m7.Position = UDim2.new(0, 16, 0, 0);
m7.BackgroundTransparency = 1;
m7.Text = "MOON HUB  \194\183  jailbird";
m7.TextColor3 = R;
m7.TextSize = 15;
m7.Font = Enum.Font.GothamBold;
m7.TextXAlignment = Enum.TextXAlignment.Left;
m7.Parent = r7;
B("text", m7);
local b7 = Instance.new("TextButton");
b7.Size = UDim2.new(0, 30, 0, 30);
b7.Position = UDim2.new(1, -38, .5, -15);
b7.BackgroundColor3 = Color3.fromRGB(36, 32, 48);
b7.Text = "\195\151";
b7.TextColor3 = t;
b7.Font = d;
b7.TextSize = 18;
b7.Parent = r7;
(Instance.new("UICorner", b7)).CornerRadius = UDim.new(0, 6);
local O7 = Instance.new("TextLabel");
O7.Size = UDim2.new(1, -16, 0, 16);
O7.Position = UDim2.new(0, 16, 0, 44);
O7.BackgroundTransparency = 1;
O7.Text = "Executor: " .. c;
O7.TextColor3 = t;
O7.TextSize = 11;
O7.Font = d;
O7.TextXAlignment = Enum.TextXAlignment.Left;
O7.Parent = Ee;
Ce = Instance.new("ScrollingFrame");
Ce.Size = UDim2.new(0, 118, 1, -70);
Ce.Position = UDim2.new(0, 10, 0, 54);
Ce.BackgroundColor3 = P;
Ce.BorderSizePixel = 0;
Ce.ScrollBarThickness = 2;
Ce.AutomaticCanvasSize = Enum.AutomaticSize.Y;
Ce.CanvasSize = UDim2.new(0, 0, 0, 0);
Ce.Parent = Ee;
(Instance.new("UICorner", Ce)).CornerRadius = UDim.new(0, 8);
local x7 = Instance.new("UIListLayout");
x7.Padding = UDim.new(0, 4);
x7.SortOrder = Enum.SortOrder.LayoutOrder;
x7.Parent = Ce;
local u7 = Instance.new("UIPadding");
u7.PaddingTop = UDim.new(0, 6);
u7.PaddingLeft = UDim.new(0, 6);
u7.PaddingRight = UDim.new(0, 6);
u7.Parent = Ce;
te = Instance.new("Frame");
te.Size = UDim2.new(1, -140, 1, -72);
te.Position = UDim2.new(0, 132, 0, 54);
te.BackgroundTransparency = 1;
te.Parent = Ee;
de, Ke = {}, {}, {};
se = function(Q)
		local F = E();
		for F, r in pairs(de) do
			r.Visible = (F == Q);
		end;
		for r, f in pairs(Ke) do
			f.BackgroundColor3 = (r == Q) and Color3.fromRGB(40, 35, 60) or Color3.fromRGB(22, 22, 30);
			f.TextColor3 = (r == Q) and F or t;
		end;
		y();
	end;
local function T7(Q)
	local F = Instance.new("ScrollingFrame");
	F.Size = UDim2.new(1, 0, 1, 0);
	F.BackgroundTransparency = 1;
	F.BorderSizePixel = 0;
	F.ScrollBarThickness = 3;
	F.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	F.CanvasSize = UDim2.new(0, 0, 0, 0);
	F.Visible = false;
	F.Parent = te;
	local r = Instance.new("UIListLayout");
	r.Padding = UDim.new(0, 5);
	r.SortOrder = Enum.SortOrder.LayoutOrder;
	r.FillDirection = Enum.FillDirection.Vertical;
	r.HorizontalAlignment = Enum.HorizontalAlignment.Left;
	r.Parent = F;
	local f = Instance.new("UIPadding");
	f.PaddingBottom = UDim.new(0, 10);
	f.PaddingTop = UDim.new(0, 4);
	f.PaddingLeft = UDim.new(0, 2);
	f.PaddingRight = UDim.new(0, 8);
	f.Parent = F;
	de[Q] = F;
	local V = Instance.new("TextButton");
	V.Size = UDim2.new(1, 0, 0, 30);
	V.BackgroundColor3 = Color3.fromRGB(22, 22, 30);
	V.Text = Q;
	V.TextColor3 = t;
	V.TextSize = 12;
	V.Font = Enum.Font.GothamMedium;
	V.Parent = Ce;
	(Instance.new("UICorner", V)).CornerRadius = UDim.new(0, 8);
	V.MouseButton1Click:Connect(function()
		se(Q);
	end);
	Ke[Q] = V;
	return F;
end;
local function h7(Q)
	local F = ((Q:GetAttribute("O") or 0)) + 1;
	Q:SetAttribute("O", F);
	return F;
end;
local function J7(Q, F)
	local r = Instance.new("TextLabel");
	r.LayoutOrder = h7(Q);
	r.Size = UDim2.new(1, -4, 0, 18);
	r.BackgroundTransparency = 1;
	r.Text = string.upper(F);
	r.TextColor3 = R;
	r.TextSize = 11;
	r.Font = d;
	r.TextXAlignment = Enum.TextXAlignment.Left;
	r.TextYAlignment = Enum.TextYAlignment.Center;
	r.TextTruncate = Enum.TextTruncate.AtEnd;
	r.Parent = Q;
	B("text", r);
end;
local function S7(Q, F, r)
	local f = Instance.new("Frame");
	f.LayoutOrder = h7(Q);
	f.Size = UDim2.new(1, 0, 0, 32);
	f.BackgroundColor3 = q;
	f.BorderSizePixel = 0;
	f.Parent = Q;
	(Instance.new("UICorner", f)).CornerRadius = UDim.new(0, 8);
	local V = Instance.new("TextLabel");
	V.Size = UDim2.new(1, -55, 1, 0);
	V.Position = UDim2.new(0, 10, 0, 0);
	V.BackgroundTransparency = 1;
	V.Text = F;
	V.TextColor3 = C;
	V.TextSize = 11;
	V.Font = d;
	V.TextXAlignment = Enum.TextXAlignment.Left;
	V.Parent = f;
	local m = Instance.new("TextButton");
	m.Size = UDim2.new(0, 40, 0, 18);
	m.Position = UDim2.new(1, -48, .5, -9);
	m.BackgroundColor3 = L[r] and R or Color3.fromRGB(45, 45, 58);
	m.Text = "";
	m.Parent = f;
	B("toggle", m, r);
	(Instance.new("UICorner", m)).CornerRadius = UDim.new(1, 0);
	local b = Instance.new("Frame");
	b.Size = UDim2.new(0, 14, 0, 14);
	b.Position = L[r] and UDim2.new(1, -16, .5, -7) or UDim2.new(0, 2, .5, -7);
	b.BackgroundColor3 = Color3.new(1, 1, 1);
	b.BorderSizePixel = 0;
	b.Parent = m;
	(Instance.new("UICorner", b)).CornerRadius = UDim.new(1, 0);
	m.MouseButton1Click:Connect(function()
		L[r] = not L[r];
		local Q = L[r];
		m.BackgroundColor3 = Q and E() or Color3.fromRGB(45, 45, 58);
		b.Position = Q and UDim2.new(1, -16, .5, -7) or UDim2.new(0, 2, .5, -7);
		if r == "ESP" then
			if Q then
				we();
			else
				je();
			end;
		end;
		if r == "Chams" then
			if not Q then
				ke();
			end;
		end;
		if r == "GadgetESP" then
			if not Q then
				Ze();
			end;
		end;
		if r == "Hitbox" and not Q then
			He();
		end;
		if r == "DeviceSpoof" and Q then
			Xe();
		end;
		if r == "Potato" then
			We(Q);
		end;
		if r == "CustomFOV" then
			if Q then
				Fe();
			else
				pcall(function()
					T.FieldOfView = Qe;
				end);
			end;
		end;
		if r == "MobileAim" and Q then
			L.Aimbot = true;
		end;
		if r == "KillAura" and not Q then
			kaTarget = nil;
		end;
		if r == "ScreenStretch" and (Q and not stretchReady) then
			stretchReady = true;
		end;
		w();
		y();
	end);
end;
local function o7(Q, F, f, V, m, b)
	local O = Instance.new("Frame");
	O.LayoutOrder = h7(Q);
	O.Size = UDim2.new(1, 0, 0, 46);
	O.BackgroundColor3 = q;
	O.BorderSizePixel = 0;
	O.Parent = Q;
	(Instance.new("UICorner", O)).CornerRadius = UDim.new(0, 8);
	local x = Instance.new("TextLabel");
	x.Size = UDim2.new(.65, 0, 0, 16);
	x.Position = UDim2.new(0, 10, 0, 4);
	x.BackgroundTransparency = 1;
	x.Text = F;
	x.TextColor3 = C;
	x.TextSize = 11;
	x.Font = d;
	x.TextXAlignment = Enum.TextXAlignment.Left;
	x.Parent = O;
	local u = Instance.new("TextLabel");
	u.Size = UDim2.new(.3, -8, 0, 16);
	u.Position = UDim2.new(.7, 0, 0, 4);
	u.BackgroundTransparency = 1;
	u.Text = tostring(L[f]);
	u.TextColor3 = R;
	u.TextSize = 11;
	u.Font = d;
	u.TextXAlignment = Enum.TextXAlignment.Right;
	u.Parent = O;
	local T = Instance.new("TextButton");
	T.Size = UDim2.new(1, -20, 0, 8);
	T.Position = UDim2.new(0, 10, 0, 26);
	T.BackgroundColor3 = Color3.fromRGB(40, 40, 55);
	T.Text = "";
	T.Parent = O;
	(Instance.new("UICorner", T)).CornerRadius = UDim.new(1, 0);
	local h = Instance.new("Frame");
	h.Size = UDim2.new(math.clamp(((L[f] - V)) / math.max(m - V, .001), 0, 1), 0, 1, 0);
	h.BackgroundColor3 = R;
	h.BorderSizePixel = 0;
	h.Parent = T;
	B("fill", h);
	(Instance.new("UICorner", h)).CornerRadius = UDim.new(1, 0);
	local function J(Q)
		local F = math.clamp(((Q - T.AbsolutePosition.X)) / math.max(T.AbsoluteSize.X, 1), 0, 1);
		local r = V + F * ((m - V));
		r = math.floor(r / b + .5) * b;
		r = math.clamp(r, V, m);
		L[f] = r;
		h.Size = UDim2.new(((r - V)) / math.max(m - V, .001), 0, 1, 0);
		u.Text = tostring(r);
		if f == "CursorSize" then
			U.Size = UDim2.new(0, r, 0, r);
		end;
		if f == "FOVValue" and L.CustomFOV then
			Fe();
		end;
		if f == "DesignAccentR" or f == "DesignAccentG" or f == "DesignAccentB" then
			pcall(pe);
		end;
		w();
	end;
	T.MouseButton1Down:Connect(function()
		local Q, F;
		Q = r.InputChanged:Connect(function(Q)
				if Q.UserInputType == Enum.UserInputType.MouseMovement or Q.UserInputType == Enum.UserInputType.Touch then
					J(Q.Position.X);
				end;
			end);
		F = r.InputEnded:Connect(function(r)
				if r.UserInputType == Enum.UserInputType.MouseButton1 or r.UserInputType == Enum.UserInputType.Touch then
					if Q then
						Q:Disconnect();
					end;
					if F then
						F:Disconnect();
					end;
				end;
			end);
		pcall(function()
			J((r:GetMouseLocation()).X);
		end);
	end);
end;
local function H7(Q, F, r, f)
	local V = Instance.new("Frame");
	V.LayoutOrder = h7(Q);
	V.Size = UDim2.new(1, 0, 0, 54);
	V.BackgroundColor3 = q;
	V.BorderSizePixel = 0;
	V.Parent = Q;
	(Instance.new("UICorner", V)).CornerRadius = UDim.new(0, 8);
	local m = Instance.new("TextLabel");
	m.Size = UDim2.new(1, -12, 0, 18);
	m.Position = UDim2.new(0, 10, 0, 4);
	m.BackgroundTransparency = 1;
	m.Text = F;
	m.TextColor3 = C;
	m.TextSize = 11;
	m.Font = d;
	m.TextXAlignment = Enum.TextXAlignment.Left;
	m.Parent = V;
	local b = Instance.new("Frame");
	b.Size = UDim2.new(1, -16, 0, 24);
	b.Position = UDim2.new(0, 8, 0, 26);
	b.BackgroundTransparency = 1;
	b.Parent = V;
	local O = Instance.new("UIListLayout");
	O.FillDirection = Enum.FillDirection.Horizontal;
	O.Padding = UDim.new(0, 5);
	O.Parent = b;
	local x = {};
	local function u()
		local Q = E();
		for F, f in pairs(x) do
			local V = (L[r] == F);
			f.BackgroundColor3 = V and Q or Color3.fromRGB(35, 32, 48);
			f.TextColor3 = V and Color3.fromRGB(20, 20, 28) or t;
		end;
	end;
	local T = #f;
	local h = math.clamp(math.floor(300 / math.max(T, 1)), 48, 90);
	for Q, F in ipairs(f) do
		local f = Instance.new("TextButton");
		f.Size = UDim2.new(0, h, 1, 0);
		f.BackgroundColor3 = Color3.fromRGB(35, 32, 48);
		f.Text = F;
		f.TextColor3 = t;
		f.TextSize = 10;
		f.Font = d;
		f.Parent = b;
		(Instance.new("UICorner", f)).CornerRadius = UDim.new(0, 6);
		x[F] = f;
		B("choice", f, r);
		f.MouseButton1Click:Connect(function()
			L[r] = F;
			u();
			if r == "CursorName" then
				N(L.CursorName);
			end;
			if r == "DeviceMode" and L.DeviceSpoof then
				Xe();
			end;
			if r == "HitboxPart" then
				He();
			end;
			w();
			y();
		end);
	end;
	u();
	B("choiceRefresh", { refresh = u });
end;
local function X7(Q, F, r, f)
	local V = Instance.new("Frame");
	V.LayoutOrder = h7(Q);
	V.Size = UDim2.new(1, 0, 0, 32);
	V.BackgroundColor3 = q;
	V.BorderSizePixel = 0;
	V.Parent = Q;
	(Instance.new("UICorner", V)).CornerRadius = UDim.new(0, 8);
	local m = Instance.new("TextLabel");
	m.Size = UDim2.new(.4, 0, 1, 0);
	m.Position = UDim2.new(0, 10, 0, 0);
	m.BackgroundTransparency = 1;
	m.Text = F;
	m.TextColor3 = C;
	m.TextSize = 11;
	m.Font = d;
	m.TextXAlignment = Enum.TextXAlignment.Left;
	m.Parent = V;
	local b = 1;
	for Q, F in ipairs(f) do
		if F == L[r] then
			b = Q;
		end;
	end;
	local O = Instance.new("TextButton");
	O.Size = UDim2.new(.55, -12, 0, 22);
	O.Position = UDim2.new(.45, 0, .5, -11);
	O.BackgroundColor3 = Color3.fromRGB(35, 32, 48);
	O.Text = tostring(L[r]);
	O.TextColor3 = R;
	O.TextSize = 11;
	O.Font = d;
	O.Parent = V;
	B("text", O);
	(Instance.new("UICorner", O)).CornerRadius = UDim.new(0, 6);
	O.MouseButton1Click:Connect(function()
		b = b % #f + 1;
		L[r] = f[b];
		O.Text = f[b];
		if r == "CursorName" then
			N(L.CursorName);
		end;
		if r == "DeviceMode" and L.DeviceSpoof then
			Xe();
		end;
		if r == "HitboxPart" then
			He();
		end;
		w();
		y();
	end);
end;
local function c7(Q, F, r, f)
	local V = Instance.new("Frame");
	V.LayoutOrder = h7(Q);
	V.Size = UDim2.new(1, 0, 0, 52);
	V.BackgroundColor3 = q;
	V.BorderSizePixel = 0;
	V.Parent = Q;
	(Instance.new("UICorner", V)).CornerRadius = UDim.new(0, 8);
	local m = Instance.new("TextLabel");
	m.Size = UDim2.new(1, -16, 0, 14);
	m.Position = UDim2.new(0, 10, 0, 4);
	m.BackgroundTransparency = 1;
	m.Text = F;
	m.TextColor3 = t;
	m.TextSize = 11;
	m.Font = d;
	m.TextXAlignment = Enum.TextXAlignment.Left;
	m.Parent = V;
	local b = Instance.new("TextBox");
	b.Size = UDim2.new(1, -20, 0, 22);
	b.Position = UDim2.new(0, 10, 0, 22);
	b.BackgroundColor3 = Color3.fromRGB(14, 14, 20);
	b.BorderSizePixel = 0;
	b.Text = tostring(L[r] or f or "");
	b.PlaceholderText = f or "";
	b.TextColor3 = C;
	b.TextSize = 12;
	b.Font = d;
	b.ClearTextOnFocus = false;
	b.Parent = V;
	(Instance.new("UICorner", b)).CornerRadius = UDim.new(0, 6);
	b.FocusLost:Connect(function()
		local Q = b.Text;
		if not Q or Q == "" then
			Q = f or "default";
			b.Text = Q;
		end;
		L[r] = Q;
		w();
	end);
end;
local function g7(Q, F, r)
	local f = Instance.new("TextButton");
	f.LayoutOrder = h7(Q);
	f.Size = UDim2.new(1, 0, 0, 30);
	f.BackgroundColor3 = Color3.fromRGB(35, 30, 55);
	f.Text = F;
	f.TextColor3 = R;
	f.TextSize = 12;
	f.Font = d;
	f.Parent = Q;
	(Instance.new("UICorner", f)).CornerRadius = UDim.new(0, 8);
	f.MouseButton1Click:Connect(function()
		r();
		y();
	end);
end;
local e7 = T7("Combat");
local L7 = T7("Player");
local j7 = T7("Stream");
local w7 = T7("Staff");
local a7 = T7("Mobile");
local k7 = T7("Visuals");
local z7 = T7("Design");
local Z7 = T7("Credits");
local G7 = T7("Config");
J7(e7, "Aimbot");
S7(e7, "Aimbot", "Aimbot");
H7(e7, "Key", "AimKey", {
	"MB1",
	"MB2",
	"E",
	"Q",
	"F",
});
H7(e7, "Mode", "AimMode", { "Hold", "Toggle", "Always" });
o7(e7, "FOV", "AimFOV", 40, 350, 1);
o7(e7, "Smooth", "AimSmooth", .1, 1, .05);
S7(e7, "Show FOV", "ShowFOV");
S7(e7, "Wall Check", "WallCheck");
S7(e7, "Team Check", "TeamCheck");
S7(e7, "Prediction", "Prediction");
o7(e7, "Predict", "PredictAmount", 0, .35, .01);
H7(e7, "Lock Priority", "TargetPriority", { "Crosshair", "Closest", "Lowest HP" });
J7(e7, "Silent Aim");
S7(e7, "Silent Aim", "SilentAim");
o7(e7, "Silent FOV", "SilentFOV", 20, 250, 1);
H7(e7, "Hit Part", "SilentPart", {
	"Head",
	"Torso",
	"HumanoidRootPart",
	"UpperTorso",
});
S7(e7, "SA Team Check", "SilentTeamCheck");
S7(e7, "SA Visible", "SilentVisible");
S7(e7, "SA Show FOV", "SilentShowFOV");
S7(e7, "SA Show Line", "SilentShowLine");
g7(e7, "Rehook Silent Aim", function()
	he = false;
	Te();
	pcall(function()
		if Ie then
			Ie.Text = he and "Silent Aim: hooked" or "Silent Aim: not found \226\128\148 equip gun";
		end;
	end);
end);
J7(e7, "Triggerbot");
S7(e7, "Triggerbot", "Triggerbot");
o7(e7, "Trigger FOV", "TriggerFOV", 8, 60, 1);
o7(e7, "Trigger Delay", "TriggerDelay", .12, .4, .01);
J7(e7, "Kill Aura");
S7(e7, "Kill Aura", "KillAura");
o7(e7, "Range", "KillAuraRange", 20, 200, 5);
o7(e7, "Behind Dist", "KillAuraBehind", 1.5, 8, .1);
J7(e7, "Camera FOV");
S7(e7, "Custom FOV", "CustomFOV");
o7(e7, "FOV Value", "FOVValue", 40, 120, 1);
J7(e7, "Hitbox Expand");
S7(e7, "Hitbox Expand", "Hitbox");
H7(e7, "Part", "HitboxPart", { "Head", "Torso" });
o7(e7, "Size", "HitboxSize", 1.5, 10, .5);
J7(L7, "Move");
S7(L7, "Speed", "Speed");
o7(L7, "Speed Value", "SpeedValue", 16, 80, 1);
S7(L7, "Noclip", "Noclip");
S7(L7, "Anti-Bow", "AntiBow");
J7(L7, "Device Spoof");
S7(L7, "Device Spoof", "DeviceSpoof");
H7(L7, "Mode", "DeviceMode", { "Console", "Desktop", "Mobile" });
o7(L7, "Delay (sec)", "DeviceSpoofDelay", .3, 5, .1);
g7(L7, "Apply Device Now", Xe);
J7(L7, "Screen Stretch");
S7(L7, "Screen Stretch", "ScreenStretch");
o7(L7, "Stretch Amount", "StretchAmount", .3, 1, .01);
J7(j7, "Stream");
S7(j7, "Stream Proof", "StreamProof");
c7(j7, "Name", "SpoofName", "Player");
S7(j7, "Verified", "ShowVerified");
J7(w7, "Staff");
S7(w7, "Detect", "StaffDetect");
S7(w7, "Leave", "StaffLeave");
J7(a7, "Mobile Aim");
S7(a7, "Mobile Aim ON", "MobileAim");
o7(a7, "Smooth", "MobileSmooth", .1, 1, .05);
o7(a7, "FOV", "MobileFOV", 40, 350, 1);
S7(a7, "Show FOV", "MobileShowFOV");
local W7 = Instance.new("Frame");
W7.LayoutOrder = h7(k7);
W7.Size = UDim2.new(1, 0, 0, 168);
W7.BackgroundColor3 = Color3.fromRGB(14, 14, 20);
W7.BorderSizePixel = 0;
W7.Parent = k7;
(Instance.new("UICorner", W7)).CornerRadius = UDim.new(0, 10);
local i7 = Instance.new("UIStroke");
i7.Color = Color3.fromRGB(40, 38, 55);
i7.Thickness = 1;
i7.Parent = W7;
local Y7 = Instance.new("TextLabel");
Y7.Size = UDim2.new(1, -16, 0, 18);
Y7.Position = UDim2.new(0, 10, 0, 6);
Y7.BackgroundTransparency = 1;
Y7.Text = "ESP PREVIEW";
Y7.TextColor3 = t;
Y7.TextSize = 10;
Y7.Font = Enum.Font.GothamBold;
Y7.TextXAlignment = Enum.TextXAlignment.Left;
Y7.Parent = W7;
local A7 = Instance.new("Frame");
A7.Size = UDim2.new(1, -20, 0, 130);
A7.Position = UDim2.new(0, 10, 0, 28);
A7.BackgroundColor3 = Color3.fromRGB(18, 18, 26);
A7.BorderSizePixel = 0;
A7.ClipsDescendants = true;
A7.Parent = W7;
(Instance.new("UICorner", A7)).CornerRadius = UDim.new(0, 8);
local v7 = Instance.new("Frame");
v7.Name = "Figure";
v7.Size = UDim2.new(0, 70, 0, 110);
v7.Position = UDim2.new(.5, -35, .5, -48);
v7.BackgroundTransparency = 1;
v7.Parent = A7;
local function E7(Q, F, r, f, V)
	local m = Instance.new("Frame");
	m.Name = Q;
	m.Size = F;
	m.Position = r;
	m.BackgroundColor3 = Color3.fromRGB(55, 55, 70);
	m.BorderSizePixel = 0;
	m.Parent = V or v7;
	(Instance.new("UICorner", m)).CornerRadius = UDim.new(f or 0, 0);
	return m;
end;
local R7 = E7("Head", UDim2.new(0, 20, 0, 20), UDim2.new(.5, -10, 0, 0), 1);
local D7 = E7("Torso", UDim2.new(0, 32, 0, 38), UDim2.new(.5, -16, 0, 24), .15);
local P7 = E7("ArmL", UDim2.new(0, 10, 0, 30), UDim2.new(.5, -28, 0, 26), .2);
local q7 = E7("ArmR", UDim2.new(0, 10, 0, 30), UDim2.new(.5, 18, 0, 26), .2);
local C7 = E7("LegL", UDim2.new(0, 12, 0, 28), UDim2.new(.5, -14, 0, 64), .2);
local t7 = E7("LegR", UDim2.new(0, 12, 0, 28), UDim2.new(.5, 2, 0, 64), .2);
local d7 = {
		R7,
		D7,
		P7,
		q7,
		C7,
		t7,
	};
local K7 = Instance.new("Frame");
K7.Name = "BoxFull";
K7.Size = UDim2.new(0, 64, 0, 116);
K7.Position = UDim2.new(.5, -32, .5, -52);
K7.BackgroundTransparency = 1;
K7.BorderSizePixel = 0;
K7.Parent = A7;
local B7 = Instance.new("UIStroke");
B7.Thickness = 1.5;
B7.Color = Color3.fromRGB(40, 255, 40);
B7.Parent = K7;
local function I7(Q, F, r, f, V)
	local m = Instance.new("Frame");
	m.Name = Q;
	m.BackgroundColor3 = Color3.fromRGB(40, 255, 40);
	m.BorderSizePixel = 0;
	m.Size = UDim2.new(0, f, 0, V);
	m.Position = UDim2.new(0, F, 0, r);
	m.Parent = K7;
	return m;
end;
local l7 = {
		I7("TL1", 0, 0, 12, 2),
		I7("TL2", 0, 0, 2, 12),
		I7("TR1", 52, 0, 12, 2),
		I7("TR2", 62, 0, 2, 12),
		I7("BL1", 0, 114, 12, 2),
		I7("BL2", 0, 104, 2, 12),
		I7("BR1", 52, 114, 12, 2),
		I7("BR2", 62, 104, 2, 12),
	};
local M7 = Instance.new("TextLabel");
M7.Size = UDim2.new(0, 120, 0, 16);
M7.Position = UDim2.new(.5, -60, .5, -70);
M7.BackgroundTransparency = 1;
M7.Text = "Enemy";
M7.TextColor3 = Color3.fromRGB(255, 255, 255);
M7.TextSize = 12;
M7.Font = Enum.Font.GothamBold;
M7.Parent = A7;
local y7 = Instance.new("TextLabel");
y7.Size = UDim2.new(0, 80, 0, 14);
y7.Position = UDim2.new(.5, -40, .5, 68);
y7.BackgroundTransparency = 1;
y7.Text = "45m";
y7.TextColor3 = t;
y7.TextSize = 11;
y7.Font = d;
y7.Parent = A7;
local s7 = Instance.new("Frame");
s7.Size = UDim2.new(0, 4, 0, 116);
s7.Position = UDim2.new(.5, -40, .5, -52);
s7.BackgroundColor3 = Color3.fromRGB(30, 30, 40);
s7.BorderSizePixel = 0;
s7.Parent = A7;
(Instance.new("UICorner", s7)).CornerRadius = UDim.new(1, 0);
local p7 = Instance.new("Frame");
p7.Size = UDim2.new(1, 0, .7, 0);
p7.Position = UDim2.new(0, 0, .3, 0);
p7.BackgroundColor3 = Color3.fromRGB(40, 255, 40);
p7.BorderSizePixel = 0;
p7.Parent = s7;
(Instance.new("UICorner", p7)).CornerRadius = UDim.new(1, 0);
local U7 = Instance.new("Frame");
U7.Size = UDim2.new(0, 8, 0, 8);
U7.AnchorPoint = Vector2.new(.5, .5);
U7.Position = UDim2.new(.5, 0, .5, -42);
U7.BackgroundColor3 = Color3.fromRGB(40, 255, 40);
U7.BorderSizePixel = 0;
U7.ZIndex = 5;
U7.Parent = A7;
(Instance.new("UICorner", U7)).CornerRadius = UDim.new(1, 0);
local n7 = Instance.new("TextLabel");
n7.Size = UDim2.new(0, 100, 0, 14);
n7.Position = UDim2.new(1, -108, 0, 8);
n7.BackgroundTransparency = 1;
n7.Text = "VISIBLE";
n7.TextColor3 = Color3.fromRGB(40, 255, 40);
n7.TextSize = 10;
n7.Font = Enum.Font.GothamBold;
n7.TextXAlignment = Enum.TextXAlignment.Right;
n7.Parent = A7;
local function N7()
	local Q;
	if L.RGBESP then
		Q = Color3.fromHSV(((tick() * .4)) % 1, 1, 1);
	else
		Q = Color3.fromRGB(math.clamp(tonumber(L.ESPColorR) or 170, 0, 255), math.clamp(tonumber(L.ESPColorG) or 0, 0, 255), math.clamp(tonumber(L.ESPColorB) or 255, 0, 255));
	end;
	local F = tostring(L.BoxStyle or "Corner");
	local r = L.ShowBoxes ~= false and L.ESP ~= false;
	K7.Visible = r;
	B7.Enabled = ((F == "Full" or F == "Both")) and r;
	B7.Color = Q;
	for f, V in ipairs(l7) do
		V.Visible = ((F == "Corner" or F == "Both")) and r;
		V.BackgroundColor3 = Q;
	end;
	M7.Visible = L.ShowNames ~= false and L.ESP ~= false;
	M7.TextColor3 = Q;
	y7.Visible = L.ShowDistance ~= false and L.ESP ~= false;
	s7.Visible = L.ShowHealth ~= false and L.ESP ~= false;
	p7.BackgroundColor3 = Q;
	U7.Visible = L.ShowHeadDot ~= false and L.ESP ~= false;
	U7.BackgroundColor3 = Q;
	n7.TextColor3 = Q;
	local f = Color3.fromRGB(55, 55, 70);
	local V = Color3.fromRGB(math.floor(Q.R * 180 + 40), math.floor(Q.G * 180 + 40), math.floor(Q.B * 180 + 40));
	for Q, F in ipairs(d7) do
		F.BackgroundColor3 = L.Chams and V or f;
	end;
	if L.Chams then
		R7.BackgroundColor3 = Color3.fromRGB(math.min(255, math.floor(Q.R * 200 + 50)), math.min(255, math.floor(Q.G * 200 + 50)), math.min(255, math.floor(Q.B * 200 + 50)));
	end;
end;
task.spawn(function()
	while W7.Parent do
		N7();
		task.wait(L.RGBESP and .08 or .25);
	end;
end);
J7(k7, "ESP");
S7(k7, "ESP Enabled", "ESP");
S7(k7, "Boxes", "ShowBoxes");
H7(k7, "Box Style", "BoxStyle", { "Corner", "Full", "Both" });
S7(k7, "Names", "ShowNames");
S7(k7, "Distance", "ShowDistance");
S7(k7, "Health", "ShowHealth");
S7(k7, "Head Dot", "ShowHeadDot");
S7(k7, "Chams ESP", "Chams");
S7(k7, "Gadget ESP", "GadgetESP");
S7(k7, "Radar ESP", "Radar");
o7(k7, "Radar Size", "RadarSize", 80, 220, 5);
o7(k7, "Radar Range", "RadarRange", 50, 400, 10);
g7(k7, "Force Refresh ESP", we);
J7(k7, "ESP Color");
S7(k7, "RGB ESP", "RGBESP");
o7(k7, "Red", "ESPColorR", 0, 255, 1);
o7(k7, "Green", "ESPColorG", 0, 255, 1);
o7(k7, "Blue", "ESPColorB", 0, 255, 1);
J7(k7, "Crosshair");
H7(k7, "Style", "CursorName", { "Off", "TC2", "Cinnamoroll" });
o7(k7, "Size", "CursorSize", 8, 128, 1);
pe = function()
		R = E();
		local Q = R;
		for F, r in ipairs(K) do
			pcall(function()
				local F, f, V = r.kind, r.obj, r.extra;
				if F == "choiceRefresh" and (type(f) == "table" and f.refresh) then
					f.refresh();
					return;
				end;
				if not f or (typeof(f) == "Instance" and not f.Parent) then
					return;
				end;
				if F == "text" then
					f.TextColor3 = Q;
				elseif F == "fill" then
					f.BackgroundColor3 = Q;
				elseif F == "stroke" then
					f.Color = Q;
				elseif F == "toggle" then
					if L[V] then
						f.BackgroundColor3 = Q;
					end;
				elseif F == "choice" then
 
				end;
			end);
		end;
		for F, r in pairs(Ke) do
			if r.TextColor3 ~= t then
				r.TextColor3 = Q;
			end;
		end;
		pcall(function()
			if Me then
				Me.Color = Q;
			end;
			if ye then
				ye.TextColor3 = Q;
			end;
			if m7 then
				m7.TextColor3 = Q;
			end;
		end);
	end;
J7(z7, "Accent Color");
o7(z7, "Red", "DesignAccentR", 0, 255, 1);
o7(z7, "Green", "DesignAccentG", 0, 255, 1);
o7(z7, "Blue", "DesignAccentB", 0, 255, 1);
g7(z7, "Apply Accent", pe);
g7(z7, "Reset Default", function()
	L.DesignAccentR, L.DesignAccentG, L.DesignAccentB = 138, 99, 255;
	pe();
end);
J7(z7, "Presets");
g7(z7, "Purple", function()
	L.DesignAccentR, L.DesignAccentG, L.DesignAccentB = 138, 99, 255;
	pe();
end);
g7(z7, "Red", function()
	L.DesignAccentR, L.DesignAccentG, L.DesignAccentB = 255, 60, 60;
	pe();
end);
g7(z7, "Green", function()
	L.DesignAccentR, L.DesignAccentG, L.DesignAccentB = 60, 220, 100;
	pe();
end);
g7(z7, "Blue", function()
	L.DesignAccentR, L.DesignAccentG, L.DesignAccentB = 60, 140, 255;
	pe();
end);
g7(z7, "Orange", function()
	L.DesignAccentR, L.DesignAccentG, L.DesignAccentB = 255, 140, 40;
	pe();
end);
g7(z7, "White", function()
	L.DesignAccentR, L.DesignAccentG, L.DesignAccentB = 230, 230, 240;
	pe();
end);
J7(Z7, "Credits");
local QP = Instance.new("Frame");
QP.LayoutOrder = h7(Z7);
QP.Size = UDim2.new(1, 0, 0, 120);
QP.BackgroundColor3 = q;
QP.BorderSizePixel = 0;
QP.Parent = Z7;
(Instance.new("UICorner", QP)).CornerRadius = UDim.new(0, 10);
local FP = Instance.new("TextLabel");
FP.Size = UDim2.new(1, -20, 0, 28);
FP.Position = UDim2.new(0, 12, 0, 12);
FP.BackgroundTransparency = 1;
FP.Text = "Thank you Darien";
FP.TextColor3 = R;
FP.TextSize = 16;
FP.Font = Enum.Font.GothamBold;
FP.TextXAlignment = Enum.TextXAlignment.Left;
FP.Parent = QP;
B("text", FP);
local rP = Instance.new("TextLabel");
rP.Size = UDim2.new(1, -20, 0, 60);
rP.Position = UDim2.new(0, 12, 0, 44);
rP.BackgroundTransparency = 1;
rP.Text = "Thank you Darien for helping us.\nMoon Hub \194\183 Jailbird";
rP.TextColor3 = C;
rP.TextSize = 12;
rP.Font = d;
rP.TextXAlignment = Enum.TextXAlignment.Left;
rP.TextYAlignment = Enum.TextYAlignment.Top;
rP.TextWrapped = true;
rP.Parent = QP;
J7(G7, "Config");
c7(G7, "Name", "ConfigName", "default");
g7(G7, "Save", w);
g7(G7, "Load", function()
	a();
end);
J7(G7, "Share Config");
local fP = Instance.new("TextBox");
fP.LayoutOrder = h7(G7);
fP.Size = UDim2.new(1, 0, 0, 72);
fP.BackgroundColor3 = q;
fP.BorderSizePixel = 0;
fP.ClearTextOnFocus = false;
fP.Text = "";
fP.PlaceholderText = "Paste shared config JSON here";
fP.PlaceholderColor3 = t;
fP.TextColor3 = C;
fP.TextSize = 11;
fP.Font = d;
fP.TextWrapped = true;
fP.TextXAlignment = Enum.TextXAlignment.Left;
fP.TextYAlignment = Enum.TextYAlignment.Top;
fP.MultiLine = true;
fP.Parent = G7;
(Instance.new("UICorner", fP)).CornerRadius = UDim.new(0, 8);
local VP = Instance.new("UIPadding");
VP.PaddingTop = UDim.new(0, 6);
VP.PaddingLeft = UDim.new(0, 8);
VP.PaddingRight = UDim.new(0, 8);
VP.Parent = fP;
g7(G7, "Export Config", function()
	local Q = G();
	if Q then
		fP.Text = Q;
		if Ie then
			Ie.Text = "Exported \226\128\148 copied + shown in box (share this)";
		end;
	end;
end);
g7(G7, "Import Paste", function()
	W(fP.Text);
end);
g7(G7, "Import Clipboard", function()
	i();
end);
g7(G7, "Clear Box", function()
	fP.Text = "";
	if Ie then
		Ie.Text = "Share box cleared";
	end;
end);
g7(G7, "Reset Defaults", function()
	for Q, F in pairs(j) do
		L[Q] = F;
	end;
	fP.Text = "";
	pcall(w);
	pcall(function()
		if N then
			N(L.CursorName);
		end;
	end);
	pcall(function()
		if pe then
			pe();
		end;
	end);
	pcall(function()
		if ke then
			ke();
		end;
	end);
	pcall(function()
		if je then
			je();
		end;
	end);
	if Ie then
		Ie.Text = "Config reset to defaults";
	end;
end);
S7(G7, "FPS + MS", "ShowPerf");
S7(G7, "Potato", "Potato");
J7(G7, "Status");
Ie = Instance.new("TextLabel");
Ie.LayoutOrder = h7(G7);
Ie.Size = UDim2.new(1, 0, 0, 40);
Ie.BackgroundColor3 = q;
Ie.BorderSizePixel = 0;
Ie.Text = "Executor: " .. (c .. " | Vis: Green/Red");
Ie.TextColor3 = C;
Ie.TextSize = 12;
Ie.Font = d;
Ie.Parent = G7;
(Instance.new("UICorner", Ie)).CornerRadius = UDim.new(0, 8);
se("Combat");
for Q, F in pairs(de) do
	pcall(function()
		local Q = F:FindFirstChildOfClass("UIListLayout");
		if Q then
			F.CanvasSize = UDim2.new(0, 0, 0, Q.AbsoluteContentSize.Y + 16);
		end;
	end);
end;
Be = Instance.new("TextButton");
Be.Size = UDim2.new(0, 56, 0, 36);
Be.Position = UDim2.new(1, -66, 0, 12);
Be.BackgroundColor3 = Color3.fromRGB(30, 30, 40);
Be.Text = "OPEN";
Be.TextColor3 = R;
Be.TextSize = 14;
Be.Font = d;
Be.Visible = true;
Be.Parent = ve;
(Instance.new("UICorner", Be)).CornerRadius = UDim.new(0, 8);
Be.MouseButton1Click:Connect(function()
	Ee.Visible = true;
	Be.Visible = false;
end);
ne = function()
		Be.Visible = not Ee.Visible;
	end;
local mP, bP, OP;
r7.InputBegan:Connect(function(Q)
	if Q.UserInputType == Enum.UserInputType.MouseButton1 or Q.UserInputType == Enum.UserInputType.Touch then
		mP = true;
		bP = Q.Position;
		OP = Ee.Position;
	end;
end);
r7.InputEnded:Connect(function(Q)
	if Q.UserInputType == Enum.UserInputType.MouseButton1 or Q.UserInputType == Enum.UserInputType.Touch then
		mP = false;
	end;
end);
r.InputChanged:Connect(function(Q)
	if mP and ((Q.UserInputType == Enum.UserInputType.MouseMovement or Q.UserInputType == Enum.UserInputType.Touch)) then
		local F = Q.Position - bP;
		Ee.Position = UDim2.new(OP.X.Scale, OP.X.Offset + F.X, OP.Y.Scale, OP.Y.Offset + F.Y);
	end;
end);
b7.MouseButton1Click:Connect(function()
	Ee.Visible = false;
	ne();
end);
r.InputBegan:Connect(function(Q)
	if Q.KeyCode == Enum.KeyCode.RightControl or Q.KeyCode == Enum.KeyCode.LeftControl then
		Ee.Visible = not Ee.Visible;
		ne();
		y();
	end;
end);
local xP = {
		MB1 = Enum.UserInputType.MouseButton1,
		MB2 = Enum.UserInputType.MouseButton2,
		E = Enum.KeyCode.E,
		Q = Enum.KeyCode.Q,
		F = Enum.KeyCode.F,
	};
local uP = false;
local TP;
local function hP(Q)
	local F = xP[L.AimKey] or Enum.UserInputType.MouseButton2;
	local r = tostring(F);
	if string.find(r, "MouseButton", 1, true) then
		return Q.UserInputType == F;
	end;
	if string.find(r, "KeyCode", 1, true) then
		return Q.KeyCode == F;
	end;
	return false;
end;
r.InputBegan:Connect(function(Q, F)
	if not L.Aimbot or L.MobileAim then
		return;
	end;
	if not hP(Q) then
		return;
	end;
	if L.AimMode == "Hold" then
		uP = true;
	elseif L.AimMode == "Toggle" then
		uP = not uP;
	end;
end);
r.InputEnded:Connect(function(Q)
	if L.AimMode == "Hold" and hP(Q) then
		uP = false;
	end;
end);
local function JP(Q)
	if TP then
		TP:Disconnect();
		TP = nil;
	end;
	if not Q then
		local Q = me(h);
		if Q then
			for Q, F in ipairs(Q:GetDescendants()) do
				if F:IsA("BasePart") then
					F.CanCollide = true;
				end;
			end;
		end;
		return;
	end;
	TP = f.Stepped:Connect(function()
			local Q = me(h);
			if not Q then
				return;
			end;
			for Q, F in ipairs(Q:GetDescendants()) do
				if F:IsA("BasePart") then
					F.CanCollide = false;
				end;
			end;
		end);
end;
task.spawn(function()
	while true do
		task.wait(.2);
		if L.AntiBow then
			pcall(function()
				local Q = me(h);
				if not Q then
					return;
				end;
				local F = Q:FindFirstChild("HumanoidRootPart");
				local r = Q:FindFirstChildOfClass("Humanoid");
				if not F or not r or r.Health <= 0 then
					return;
				end;
				local f = r:GetState();
				if f == Enum.HumanoidStateType.Jumping or f == Enum.HumanoidStateType.Freefall then
					return;
				end;
				if F.CFrame.UpVector:Dot(Vector3.yAxis) >= .92 then
					return;
				end;
				local V, m = F.CFrame:ToOrientation();
				F.CFrame = CFrame.new(F.Position) * CFrame.Angles(0, m, 0);
			end);
		end;
	end;
end);
task.spawn(function()
	while true do
		task.wait(.5);
		if L.StreamProof then
			local Q = tostring(L.SpoofName);
			if L.ShowVerified then
				Q = Q .. (" " .. Ae);
			end;
			pcall(function()
				h.DisplayName = Q;
			end);
		end;
	end;
end);
local SP = 33054943;
local oP = {};
task.spawn(function()
	while true do
		task.wait(2);
		if L.StaffDetect then
			for Q, F in ipairs(Q:GetPlayers()) do
				if F ~= h then
					local Q, r = pcall(function()
							return F:GetRankInGroup(SP);
						end);
					if Q and (type(r) == "number" and r >= 51) then
						if not oP[F.UserId] then
							oP[F.UserId] = true;
							if L.StaffLeave then
								pcall(function()
									h:Kick("Staff");
								end);
							end;
						end;
					end;
				end;
			end;
		end;
	end;
end);
local HP = Instance.new("ScreenGui");
HP.Name = "MoonFOVGui";
HP.ResetOnSpawn = false;
HP.IgnoreGuiInset = true;
HP.DisplayOrder = 99999;
HP.Parent = o;
le = Instance.new("Frame");
le.AnchorPoint = Vector2.new(.5, .5);
le.Size = UDim2.new(0, 300, 0, 300);
le.Position = UDim2.new(.5, 0, .5, 0);
le.BackgroundTransparency = 1;
le.BorderSizePixel = 0;
le.Visible = false;
le.ZIndex = 999;
le.Parent = HP;
pcall(function()
	(Instance.new("UICorner", le)).CornerRadius = UDim.new(1, 0);
end);
Me = nil;
pcall(function()
	Me = Instance.new("UIStroke");
	Me.Color = Color3.new(1, 1, 1);
	Me.Thickness = 1.5;
	Me.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	Me.Parent = le;
end);
local XP, cP, gP, eP = 0, tick(), 0, 0;
f.Heartbeat:Connect(function()
	local Q = me(h);
	if Q then
		local F = Q:FindFirstChildOfClass("Humanoid");
		if L.Speed and (F and F.Health > 0) then
			F.WalkSpeed = L.SpeedValue or 24;
		end;
		if L.Noclip then
			if not TP then
				JP(true);
			end;
		elseif TP then
			JP(false);
		end;
	end;
	We(L.Potato == true);
	pcall(runTriggerbot);
	pcall(runKillAura);
end);
f.RenderStepped:Connect(function()
	pcall(function()
		XP = XP + 1;
		if tick() - cP >= 1 then
			gP = XP;
			XP = 0;
			cP = tick();
		end;
		if U.Visible then
			if r.TouchEnabled and not r.KeyboardEnabled then
				local Q = T.ViewportSize;
				U.Position = UDim2.new(0, Q.X / 2, 0, Q.Y / 2);
			else
				local Q = r:GetMouseLocation();
				U.Position = UDim2.new(0, Q.X, 0, Q.Y);
			end;
		end;
		if L.CustomFOV then
			Fe();
		end;
		re = false;
		local Q, F, f = false, L.AimSmooth or .95, L.AimFOV or 150;
		if L.KillAura and (kaTarget and be(kaTarget)) then
			re = true;
		elseif not L.KillAura then
			if L.MobileAim then
				Q = true;
				F = L.MobileSmooth or .9;
				f = L.MobileFOV or 160;
			elseif L.Aimbot then
				Q = uP or L.AimMode == "Always";
				F = L.AimSmooth or .95;
				f = L.AimFOV or 150;
			end;
		end;
		if Q then
			local Q, r = xe(f, true);
			if r then
				re = true;
				if F >= .98 then
					T.CFrame = CFrame.new(T.CFrame.Position, r);
				else
					T.CFrame = T.CFrame:Lerp(CFrame.new(T.CFrame.Position, r), math.clamp(F, .1, 1));
				end;
				Ve(r);
			end;
		end;
		fe();
		pcall(Le);
		pcall(ae);
		pcall(ze);
		pcall(Ge);
		eP = eP + 1;
		if eP >= 2 then
			eP = 0;
			pcall(oe);
		end;
		pcall(function()
			local Q = T.ViewportSize / 2;
			if Je then
				Je.Position = Q;
				Je.Radius = tonumber(L.SilentFOV) or 90;
				Je.Visible = L.SilentAim and L.SilentShowFOV;
				if L.RGBESP then
					Je.Color = M();
				else
					Je.Color = E();
				end;
			end;
			if Se then
				local F = L.SilentAim and (L.SilentShowLine and ue()) or nil;
				if F then
					local r, f = T:WorldToViewportPoint(F.Position);
					if f then
						Se.From = Q;
						Se.To = Vector2.new(r.X, r.Y);
						Se.Visible = true;
						if L.RGBESP then
							Se.Color = M();
						else
							Se.Color = E();
						end;
					else
						Se.Visible = false;
					end;
				else
					Se.Visible = false;
				end;
			end;
		end);
		local V, m = false, L.AimFOV or 150;
		if L.MobileAim then
			V = L.MobileShowFOV;
			m = L.MobileFOV or 160;
		else
			V = L.ShowFOV;
			m = L.AimFOV or 150;
		end;
		le.Size = UDim2.new(0, m * 2, 0, m * 2);
		le.Position = UDim2.new(.5, 0, .5, 0);
		le.Visible = V;
		if Me then
			if L.RGBESP then
				Me.Color = M();
			end;
		end;
	end);
end);
ye = Instance.new("TextLabel");
ye.Name = "MoonFPSLabel";
ye.BackgroundTransparency = 1;
ye.TextColor3 = R;
ye.TextSize = 14;
ye.Font = Enum.Font.GothamBold;
ye.TextStrokeTransparency = 0;
ye.Position = UDim2.new(0, 10, 0, 10);
ye.Size = UDim2.new(0, 200, 0, 20);
ye.Visible = false;
ye.Parent = o;
task.spawn(function()
	while true do
		task.wait(.5);
		if L.ShowPerf then
			local Q = 0;
			pcall(function()
				Q = math.floor(m.Network.ServerStatsItem["Data Ping"]:GetValue());
			end);
			ye.Text = "FPS: " .. (gP .. ("  MS: " .. Q));
			ye.Visible = true;
		else
			ye.Visible = false;
		end;
	end;
end);
task.spawn(function()
	while true do
		task.wait(15);
		w();
	end;
end);
if L.CursorName and L.CursorName ~= "Off" then
	N(L.CursorName);
end;
if L.CustomFOV then
	Fe();
end;
e(1, "Done");
task.wait(.35);
pcall(function()
	g:Destroy();
end);
Ee.Visible = true;
Be.Visible = false;
print("[Moon Hub] PUBLIC MOBILE | " .. (c .. " | Vis Green/Red"));
