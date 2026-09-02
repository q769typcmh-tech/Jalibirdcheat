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
local Y = game:FindService("Players") or game:GetService("Players");
local G = 0;
while not Y and G < 50 do
	G = G + (1);
	task.wait(.1);
	Y = game:FindService("Players") or game:GetService("Players");
end;
if not Y then
	warn("[Moon] Players service missing");
	return;
end;
local F = game:GetService("UserInputService");
local l = game:GetService("RunService");
local U = game:GetService("Lighting");
local M = game:GetService("Stats");
local Q = game:GetService("HttpService");
local p = game:GetService("TweenService");
local v = game:GetService("ReplicatedStorage");
local P = game:GetService("VirtualInputManager");
local J = workspace.CurrentCamera;
local j = Y.LocalPlayer;
if not j then
	j = Y.PlayerAdded:Wait();
end;
G = 0;
while ((not j or not j.Parent)) and G < 100 do
	G = G + (1);
	task.wait(.05);
	j = Y.LocalPlayer;
end;
if not j then
	warn("[Moon] LocalPlayer missing");
	return;
end;
local K = j:FindFirstChild("PlayerGui") or j:WaitForChild("PlayerGui", 60);
if not K then
	warn("[Moon] PlayerGui timeout");
	return;
end;
local function V()
	if gethui then
		local Y, G = pcall(function()
				return gethui();
			end);
		if Y and G then
			return G;
		end;
	end;
	return game:GetService("CoreGui");
end;
local C = V();
pcall(function()
	for Y, G in ipairs({
		"MoonHubUI",
		"MoonCursorUI",
		"MoonLoadUI",
		"MoonFOVGui",
		"MoonESPGui",
		"MoonMobileESPGui",
	}) do
		local F = K:FindFirstChild(G);
		if F then
			F:Destroy();
		end;
		local l = C:FindFirstChild(G);
		if l then
			l:Destroy();
		end;
	end;
end);
task.wait(.05);
local b;
pcall(function()
	b = j:GetMouse();
end);
local function E()
	local Y = "Unknown";
	pcall(function()
		if identifyexecutor then
			local G, F = identifyexecutor();
			Y = tostring(G or "Unknown");
			if F then
				Y = Y .. (" " .. tostring(F));
			end;
		elseif getexecutorname then
			Y = tostring(getexecutorname());
		elseif syn and syn.request then
			Y = "Synapse";
		elseif fluxus then
			Y = "Fluxus";
		elseif KRNL_LOADED then
			Y = "Krnl";
		elseif is_sirhurt_closure then
			Y = "Sirhurt";
		elseif pebc_execute then
			Y = "Parallel";
		elseif SecureDelta then
			Y = "Delta";
		end;
	end);
	return Y;
end;
local q = E();
local a, y, W, D, A, Z, R, k;
W = {};
local function n()
	a = Instance.new("ScreenGui");
	a.Name = "MoonLoadUI";
	a.ResetOnSpawn = false;
	a.IgnoreGuiInset = true;
	a.DisplayOrder = 9999;
	a.Parent = K;
	task.spawn(function()
		task.wait(8);
		pcall(function()
			if a and a.Parent then
				a:Destroy();
			end;
		end);
	end);
	local Y = Instance.new("Frame");
	Y.Size = UDim2.new(1, 0, 1, 0);
	Y.BackgroundColor3 = Color3.fromRGB(8, 8, 12);
	Y.BorderSizePixel = 0;
	Y.Parent = a;
	local G = Instance.new("Frame");
	G.Size = UDim2.new(0, 320, 0, 160);
	G.Position = UDim2.new(.5, -160, .5, -80);
	G.BackgroundColor3 = Color3.fromRGB(16, 16, 22);
	G.BorderSizePixel = 0;
	G.Parent = Y;
	(Instance.new("UICorner", G)).CornerRadius = UDim.new(0, 14);
	local F = Instance.new("TextLabel");
	F.Size = UDim2.new(1, -20, 0, 28);
	F.Position = UDim2.new(0, 10, 0, 14);
	F.BackgroundTransparency = 1;
	F.Text = "MOON HUB";
	F.TextColor3 = Color3.fromRGB(138, 99, 255);
	F.TextSize = 20;
	F.Font = Enum.Font.GothamBold;
	F.Parent = G;
	local l = Instance.new("TextLabel");
	l.Size = UDim2.new(1, -20, 0, 18);
	l.Position = UDim2.new(0, 10, 0, 42);
	l.BackgroundTransparency = 1;
	l.Text = "jailbird";
	l.TextColor3 = Color3.fromRGB(160, 160, 180);
	l.TextSize = 12;
	l.Font = Enum.Font.Gotham;
	l.Parent = G;
	local U = Instance.new("TextLabel");
	U.Size = UDim2.new(1, -20, 0, 18);
	U.Position = UDim2.new(0, 10, 0, 70);
	U.BackgroundTransparency = 1;
	U.Text = "Starting...";
	U.TextColor3 = Color3.fromRGB(220, 220, 230);
	U.TextSize = 12;
	U.Font = Enum.Font.Gotham;
	U.TextXAlignment = Enum.TextXAlignment.Left;
	U.Parent = G;
	local M = Instance.new("Frame");
	M.Size = UDim2.new(1, -24, 0, 10);
	M.Position = UDim2.new(0, 12, 0, 100);
	M.BackgroundColor3 = Color3.fromRGB(30, 30, 40);
	M.BorderSizePixel = 0;
	M.Parent = G;
	(Instance.new("UICorner", M)).CornerRadius = UDim.new(1, 0);
	local v = Instance.new("Frame");
	v.Size = UDim2.new(0, 0, 1, 0);
	v.BackgroundColor3 = Color3.fromRGB(138, 99, 255);
	v.BorderSizePixel = 0;
	v.Parent = M;
	(Instance.new("UICorner", v)).CornerRadius = UDim.new(1, 0);
	local P = Instance.new("TextLabel");
	P.Size = UDim2.new(1, -20, 0, 32);
	P.Position = UDim2.new(0, 10, 0, 118);
	P.BackgroundTransparency = 1;
	P.Text = "Executor: " .. q;
	P.TextColor3 = Color3.fromRGB(140, 140, 160);
	P.TextSize = 11;
	P.Font = Enum.Font.Gotham;
	P.TextXAlignment = Enum.TextXAlignment.Left;
	P.TextYAlignment = Enum.TextYAlignment.Top;
	P.Parent = G;
	y = function(Y, G)
			Y = math.clamp(Y, 0, 1);
			pcall(function()
				U.Text = G or U.Text;
				(p:Create(v, TweenInfo.new(.25, Enum.EasingStyle.Quad), { Size = UDim2.new(Y, 0, 1, 0) })):Play();
			end);
		end;
	y(.08, "Detecting executor...");
	task.wait(.2);
	y(.2, "Executor: " .. q);
	task.wait(.15);
	y(.35, "Loading config...");
	task.wait(.1);
	R = function(Y, G)
			pcall(function()
				if writefile then
					writefile(Y, G);
				end;
			end);
		end;
	k = function(Y)
			local G, F = pcall(function()
					if isfile and (isfile(Y) and readfile) then
						return readfile(Y);
					end;
				end);
			return G and F or nil;
		end;
	pcall(function()
		if makefolder then
			makefolder("MoonHub");
			makefolder("MoonHub/Configs");
		end;
	end);
	W = {};
	D = {
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
	for Y, G in pairs(D) do
		W[Y] = G;
	end;
	local J = false;
	task.delay(2.5, function()
		J = true;
	end);
	A = function()
			local Y = (tostring(W.ConfigName or "default")):gsub("[^%w%-%_]", "");
			if Y == "" then
				Y = "default";
			end;
			W.ConfigName = Y;
			W.StretchAmount = math.clamp(tonumber(W.StretchAmount) or .53, .3, 1);
			R("MoonHub/Configs/" .. (Y .. ".json"), Q:JSONEncode(W));
			R("MoonHub/Jailbird.json", Q:JSONEncode(W));
		end;
	Z = function()
			local Y = (tostring(W.ConfigName or "default")):gsub("[^%w%-%_]", "");
			local G = k("MoonHub/Configs/" .. (Y .. ".json")) or k("MoonHub/Jailbird.json");
			if G then
				pcall(function()
					local Y = Q:JSONDecode(G);
					if type(Y) == "table" then
						for Y, G in pairs(Y) do
							if D[Y] ~= nil then
								W[Y] = G;
							end;
						end;
					end;
				end);
			end;
			if type(W.DeviceSpoofDelay) ~= "number" then
				W.DeviceSpoofDelay = 1.5;
			end;
			W.StretchAmount = math.clamp(tonumber(W.StretchAmount) or .53, .3, 1);
			if not J then
				local Y = W.ScreenStretch == true;
				W.ScreenStretch = false;
				task.delay(2.6, function()
					if Y then
						W.ScreenStretch = true;
					end;
					J = true;
				end);
			end;
			if W.HitboxPart ~= "Head" and W.HitboxPart ~= "Torso" then
				W.HitboxPart = "Head";
			end;
			local F = tostring(W.TargetPriority or "Crosshair");
			if F ~= "Crosshair" and (F ~= "Closest" and F ~= "Lowest HP") then
				W.TargetPriority = "Crosshair";
			end;
		end;
	pcall(Z);
	W.SilentAim = false;
	W.DeviceSpoof = false;
	W.KillAura = false;
	W.StaffDetect = false;
	W.StaffLeave = false;
	W.StreamProof = false;
	W.Hitbox = false;
	local function j()
		W.SilentAim = false;
		W.DeviceSpoof = false;
		W.KillAura = false;
		W.StaffDetect = false;
		W.StaffLeave = false;
		W.StreamProof = false;
		W.Hitbox = false;
	end;
	task.spawn(function()
		while true do
			task.wait(1);
			j();
		end;
	end);
end;
n();
local function H()
	local Y, G = pcall(function()
			return Q:JSONEncode(W);
		end);
	if not Y or type(G) ~= "string" then
		if statusLabel then
			statusLabel.Text = "Export failed";
		end;
		return nil;
	end;
	pcall(function()
		if setclipboard then
			setclipboard(G);
		end;
	end);
	pcall(function()
		if toclipboard then
			toclipboard(G);
		end;
	end);
	if statusLabel then
		statusLabel.Text = "Config exported (clipboard if supported)";
	end;
	return G;
end;
local function T(Y)
	if type(Y) ~= "string" or #Y < 2 then
		if statusLabel then
			statusLabel.Text = "Import: empty config";
		end;
		return false;
	end;
	Y = (Y:gsub("^%s+", "")):gsub("%s+$", "");
	local G, F = pcall(function()
			return Q:JSONDecode(Y);
		end);
	if not G or type(F) ~= "table" then
		if statusLabel then
			statusLabel.Text = "Import: invalid JSON";
		end;
		return false;
	end;
	local l = 0;
	for Y, G in pairs(F) do
		if D[Y] ~= nil then
			W[Y] = G;
			l = l + (1);
		end;
	end;
	pcall(A);
	if statusLabel then
		statusLabel.Text = "Imported " .. (tostring(l) .. " settings \226\128\148 re-open tabs if needed");
	end;
	pcall(function()
		if applyCursor then
			applyCursor(W.CursorName);
		end;
	end);
	pcall(function()
		if applyDesign then
			applyDesign();
		end;
	end);
	return true;
end;
local function S()
	local Y = nil;
	pcall(function()
		if getclipboard then
			Y = getclipboard();
		end;
	end);
	if not Y then
		pcall(function()
			if clipboard and clipboard.get then
				Y = clipboard.get();
			end;
		end);
	end;
	if type(Y) ~= "string" or #Y < 2 then
		if statusLabel then
			statusLabel.Text = "Clipboard empty \226\128\148 paste into box, then Import Paste";
		end;
		return false;
	end;
	return T(Y);
end;
y(.5, "Loading Drawing...");
local X = false;
local N = nil;
local function x(Y)
	if not Y or type(Y.new) ~= "function" then
		return false;
	end;
	local G = pcall(function()
			local G = Y.new("Text");
			G.Visible = false;
			G:Remove();
		end);
	if G then
		X = true;
		N = Y;
		return true;
	end;
	return false;
end;
x(Drawing);
pcall(function()
	if getrenv then
		x((getrenv()).Drawing);
	end;
end);
y(.65, X and "Drawing OK" or "Drawing missing (radar unavailable)");
local function h()
	local Y, G, F = 138, 99, 255;
	if type(W) == "table" then
		Y = tonumber(W.DesignAccentR) or Y;
		G = tonumber(W.DesignAccentG) or G;
		F = tonumber(W.DesignAccentB) or F;
	end;
	return Color3.fromRGB(math.clamp(Y, 0, 255), math.clamp(G, 0, 255), math.clamp(F, 0, 255));
end;
local L = h();
local s = Color3.fromRGB(12, 12, 16);
local I = Color3.fromRGB(18, 18, 24);
local O = Color3.fromRGB(20, 20, 28);
local g = Color3.fromRGB(235, 235, 245);
local c = Color3.fromRGB(160, 160, 180);
local f = Enum.Font.Gotham;
local m = {};
local function t(Y, G, F)
	if G then
		table.insert(m, { kind = Y, obj = G, extra = F });
	end;
end;
local o = Color3.fromRGB(40, 255, 40);
local u = Color3.fromRGB(255, 40, 40);
local function r()
	if type(W) ~= "table" then
		return Color3.fromRGB(170, 0, 255);
	end;
	if W.RGBESP then
		return Color3.fromHSV(((tick() * .4)) % 1, 1, 1);
	end;
	return Color3.fromRGB(math.clamp(tonumber(W.ESPColorR) or 170, 0, 255), math.clamp(tonumber(W.ESPColorG) or 0, 0, 255), math.clamp(tonumber(W.ESPColorB) or 255, 0, 255));
end;
local function d()
	pcall(function()
		F.MouseBehavior = Enum.MouseBehavior.Default;
		F.MouseIconEnabled = true;
	end);
end;
local z = { { Name = "Off", Id = nil }, { Name = "TC2", Id = "8680062686" }, { Name = "Cinnamoroll", Id = "11719890577" } };
local B = Instance.new("ScreenGui");
B.Name = "MoonCursorUI";
B.ResetOnSpawn = false;
B.IgnoreGuiInset = true;
B.DisplayOrder = 10000;
B.Parent = K;
local e = Instance.new("ImageLabel");
e.BackgroundTransparency = 1;
e.AnchorPoint = Vector2.new(.5, .5);
e.Size = UDim2.new(0, 32, 0, 32);
e.Visible = false;
e.ZIndex = 100;
e.Parent = B;
local function i(Y)
	local G = K:FindFirstChild("Crosshair");
	if not G then
		return;
	end;
	pcall(function()
		if G:IsA("ScreenGui") then
			G.Enabled = Y;
		end;
		G.Visible = Y;
		for G, F in ipairs(G:GetDescendants()) do
			if F:IsA("GuiObject") then
				F.Visible = Y;
			end;
		end;
	end);
end;
local function w(Y)
	Y = Y or W.CursorName or "Off";
	W.CursorName = Y;
	local G = z[1];
	for F, l in ipairs(z) do
		if l.Name == Y then
			G = l;
			break;
		end;
	end;
	i(false);
	e.Visible = false;
	local l = math.clamp(tonumber(W.CursorSize) or 32, 8, 128);
	e.Size = UDim2.new(0, l, 0, l);
	if not G.Id or G.Name == "Off" then
		pcall(function()
			if b then
				b.Icon = "";
			end;
			F.MouseIconEnabled = true;
		end);
		return;
	end;
	if G.Id == "GAME" then
		i(true);
		pcall(function()
			if b then
				b.Icon = "rbxassetid://0";
			end;
			F.MouseIconEnabled = true;
		end);
		return;
	end;
	pcall(function()
		F.MouseIconEnabled = false;
		if b then
			b.Icon = "rbxassetid://0";
		end;
		e.Image = "rbxassetid://" .. tostring(G.Id);
		e.Visible = true;
		if F.TouchEnabled and not F.KeyboardEnabled then
			local Y = J.ViewportSize;
			e.Position = UDim2.new(0, Y.X / 2, 0, Y.Y / 2);
		end;
	end);
end;
local Yt = 70;
pcall(function()
	Yt = J.FieldOfView;
end);
local function Gt()
	if not W.CustomFOV then
		return;
	end;
	local Y = math.clamp(tonumber(W.FOVValue) or 90, 40, 120);
	pcall(function()
		if math.abs(J.FieldOfView - Y) > .5 then
			J.FieldOfView = Y;
		end;
	end);
end;
local Ft = false;
local function lt()
	if not stretchReady then
		return;
	end;
	if not W.ScreenStretch then
		return;
	end;
	if Ft then
		return;
	end;
	if not J or not J.Parent then
		return;
	end;
	local Y = math.clamp(tonumber(W.StretchAmount) or .53, .3, 1);
	if Y >= .995 then
		return;
	end;
	pcall(function()
		local G = J.CFrame;
		if G then
			J.CFrame = G * CFrame.new(0, 0, 0, 1, 0, 0, 0, Y, 0, 0, 0, 1);
		end;
	end);
end;
local function Ut(Y)
	local G = j.Character;
	if not G then
		return;
	end;
	local F = G:FindFirstChild("HumanoidRootPart");
	if not F or not Y then
		return;
	end;
	pcall(function()
		local G = F.Position;
		F.CFrame = CFrame.new(G, Vector3.new(Y.X, G.Y, Y.Z));
	end);
end;
local function Mt(Y)
	if not Y then
		return nil;
	end;
	local G, F = pcall(function()
			return Y.Character;
		end);
	return G and F or nil;
end;
local Qt, pt, vt, Pt, Jt, jt, Kt, Vt, Ct, bt, Et, qt, at;
local function yt()
	Qt = function(Y)
			local G = Mt(Y);
			if not G then
				return false;
			end;
			local F = G:FindFirstChildOfClass("Humanoid");
			return F ~= nil and F.Health > 0;
		end;
	pt = function(Y)
			if not Y or Y == j then
				return false;
			end;
			if not W.TeamCheck then
				return true;
			end;
			local G, F = j.Team, Y.Team;
			if G and F then
				return G ~= F;
			end;
			return true;
		end;
	local G = {
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
	local function F(Y, G)
		for F = 1, #G, 1 do
			if string.find(Y, G[F], 1, true) then
				return true;
			end;
		end;
		return false;
	end;
	local function l(Y)
		if not Y or not Y:IsA("BasePart") then
			return true;
		end;
		local l = string.lower(Y.Name or "");
		local U = string.lower(Y:GetFullName() or "");
		local M = string.lower(tostring(Y.Material));
		if string.find(l, "glass", 1, true) or string.find(M, "glass", 1, true) then
			return true;
		end;
		if Y.Transparency >= .7 then
			return true;
		end;
		if string.find(l, "door", 1, true) or string.find(U, "door", 1, true) then
			if string.find(l, "wood", 1, true) or string.find(U, "wood", 1, true) then
				return false;
			end;
			return true;
		end;
		if string.find(l, "window", 1, true) then
			return true;
		end;
		if Y.CanCollide == false and Y.Transparency >= .25 then
			return true;
		end;
		if F(l, G) or F(U, G) then
			return false;
		end;
		return false;
	end;
	local function U(Y)
		if not W.WallCheck then
			return true;
		end;
		local G = Mt(Y);
		local F = G and G:FindFirstChild("Head");
		if not F then
			return false;
		end;
		local U = Mt(j);
		local M = J.CFrame.Position + J.CFrame.LookVector * .8;
		local Q = F.Position;
		local p = Q - M;
		local v = p.Magnitude;
		if v < 1.5 then
			return true;
		end;
		local P = { J };
		if U then
			table.insert(P, U);
		end;
		if G then
			table.insert(P, G);
		end;
		local K = RaycastParams.new();
		K.FilterType = Enum.RaycastFilterType.Exclude;
		K.FilterDescendantsInstances = P;
		K.IgnoreWater = true;
		local V, C, b = 0, M, p.Unit;
		for Y = 1, 12, 1 do
			local F = v - V;
			if F <= .15 then
				return true;
			end;
			local U = workspace:Raycast(C, b * F, K);
			if not U then
				return true;
			end;
			if U.Instance and (G and U.Instance:IsDescendantOf(G)) then
				return true;
			end;
			if l(U.Instance) then
				table.insert(P, U.Instance);
				K.FilterDescendantsInstances = P;
				local Y = ((U.Position - C)).Magnitude;
				C = U.Position + b * .15;
				V = (V + Y) + .15;
			else
				return false;
			end;
		end;
		return false;
	end;
	qt = function(Y)
			if W.RGBESP then
				return Color3.fromHSV(((tick() * .4)) % 1, 1, 1);
			end;
			if U(Y) then
				return o;
			end;
			return u;
		end;
	local function M(Y, G)
		if not W.Prediction or not Y then
			return Y.Position;
		end;
		local F = G and ((G:FindFirstChild("HumanoidRootPart") or G:FindFirstChild("Torso")));
		local l = Vector3.zero;
		if F then
			pcall(function()
				l = F.AssemblyLinearVelocity;
			end);
		end;
		return Y.Position + l * ((tonumber(W.PredictAmount) or .12));
	end;
	vt = function(G, F)
			local l = tostring(W.TargetPriority or "Crosshair");
			local Q, p = nil, nil;
			local v = math.huge;
			local P = J.ViewportSize / 2;
			local K = j.Character and ((j.Character:FindFirstChild("HumanoidRootPart") or j.Character:FindFirstChild("Torso")));
			for Y, V in ipairs(Y:GetPlayers()) do
				if V ~= j and (pt(V) and Qt(V)) then
					local Y = Mt(V);
					local j = Y and Y:FindFirstChild("Head");
					if j then
						local C = M(j, Y);
						local b, E = J:WorldToViewportPoint(C);
						if E and b.Z > 0 then
							local M = ((Vector2.new(b.X, b.Y) - P)).Magnitude;
							if M <= ((G or 150)) and (((not F) or U(V))) then
								local G;
								if l == "Lowest HP" then
									local F = Y:FindFirstChildOfClass("Humanoid");
									G = F and F.Health or 100;
								elseif l == "Closest" then
									if K then
										G = ((j.Position - K.Position)).Magnitude;
									else
										G = b.Z;
									end;
								else
									G = M;
								end;
								if G < v then
									v = G;
									Q = V;
									p = C;
								end;
							end;
						end;
					end;
				end;
			end;
			return Q, p;
		end;
	jt = false;
	pcall(function()
		if not Drawing and not at then
			return;
		end;
		local Y = at or Drawing;
		Kt = Y.new("Circle");
		Kt.Thickness = 1;
		Kt.Visible = false;
		Kt.Filled = false;
		Kt.NumSides = 64;
		Kt.Radius = 90;
		Kt.Color = Color3.fromRGB(138, 99, 255);
		Kt.Transparency = .35;
		Vt = Y.new("Line");
		Vt.Thickness = 1;
		Vt.Visible = false;
		Vt.Color = Color3.fromRGB(138, 99, 255);
		Vt.Transparency = .4;
	end);
	Pt = function()
			return nil;
		end;
	Jt = function()
			if jt then
				return true;
			end;
			if not getgc or not hookfunction or not newcclosure then
				return false;
			end;
			local Y = 0;
			pcall(function()
				for G, F in next, getgc(true) do
					if typeof(F) == "function" and (not isexecutorclosure(F) and (not iscclosure(F) and islclosure(F))) then
						local G, l = pcall(debug.getinfo, F);
						if G and (l and l.name == "BulletRayCast") then
							local G;
							G = hookfunction(F, newcclosure(function(...)
									if not W.SilentAim then
										return G(...);
									end;
									local Y = select("#", ...);
									local F = { ... };
									local l = Pt();
									if l and (Y >= 2 and typeof(F[1]) == "Vector3") then
										local Y = F[1];
										local G = l.Position - Y;
										if G.Magnitude > .05 then
											F[2] = G.Unit;
										end;
									end;
									return G(table.unpack(F, 1, Y));
								end));
							Y = Y + 1;
							jt = true;
						end;
					end;
				end;
			end);
			if jt then
				print("[Moon] Silent Aim hooked BulletRayCast x" .. tostring(Y));
			end;
			return jt;
		end;
	Jt = function()
 
		end;
	origSizes = {};
	local function Q(Y)
		return Y and ((Y:FindFirstChild("Torso") or Y:FindFirstChild("UpperTorso")));
	end;
	local function p(Y)
		if not Y then
			return;
		end;
		local G = origSizes[Y];
		if G then
			pcall(function()
				Y.Size = G;
			end);
			origSizes[Y] = nil;
		end;
	end;
	bt = function()
			for Y, G in pairs(origSizes) do
				p(Y);
			end;
			origSizes = {};
		end;
	local function K(Y, G)
		if not Y or not Y:IsA("BasePart") then
			return;
		end;
		if origSizes[Y] == nil then
			origSizes[Y] = Y.Size;
		end;
		local F = math.clamp(tonumber(G) or 3, 1.2, 12);
		pcall(function()
			Y.Size = Vector3.new(F, F, F);
			Y.Massless = true;
			Y.CanCollide = false;
		end);
	end;
	Ct = function()
			if not W.Hitbox then
				bt();
				return;
			end;
			local G = W.HitboxPart;
			local F = tonumber(W.HitboxSize) or 3;
			for Y, l in ipairs(Y:GetPlayers()) do
				if l ~= j and (pt(l) and Qt(l)) then
					local Y = Mt(l);
					if Y then
						local l = Y:FindFirstChild("Head");
						local U = Q(Y);
						if G == "Head" then
							if l then
								K(l, F);
							end;
							if U then
								p(U);
							end;
						else
							if U then
								K(U, F);
							end;
							if l then
								p(l);
							end;
						end;
					end;
				end;
			end;
		end;
	local V = 0;
	local function C()
		local Y = Mt(j);
		if not Y then
			return nil;
		end;
		return Y:FindFirstChildOfClass("Tool");
	end;
	local function b()
		local Y = C();
		if not Y then
			return;
		end;
		local G = J.ViewportSize;
		local F = math.floor(G.X / 2);
		local l = math.floor(G.Y / 2);
		local U = false;
		pcall(function()
			P:SendMouseButtonEvent(F, l, 0, true, game, 1);
			task.wait(.03);
			P:SendMouseButtonEvent(F, l, 0, false, game, 1);
			U = true;
		end);
		if not U then
			pcall(function()
				Y:Activate();
			end);
		end;
	end;
	local function E()
		local G = math.clamp(tonumber(W.TriggerFOV) or 25, 8, 80);
		if not J then
			return nil;
		end;
		local F = J.ViewportSize / 2;
		local l, M = nil, G;
		for Y, G in ipairs(Y:GetPlayers()) do
			if G ~= j and (pt(G) and Qt(G)) then
				local Y = Mt(G);
				if Y then
					local Q = false;
					if W.WallCheck then
						local Y = true;
						pcall(function()
							Y = U(G);
						end);
						if not Y then
							Q = true;
						end;
					end;
					if not Q then
						local U = Y:FindFirstChild("Head") or Y:FindFirstChild("HumanoidRootPart") or Y:FindFirstChild("Torso");
						if U then
							local Y, Q = J:WorldToViewportPoint(U.Position);
							if Q and Y.Z > 0 then
								local U = ((Vector2.new(Y.X, Y.Y) - F)).Magnitude;
								if U <= M then
									M = U;
									l = G;
								end;
							end;
						end;
					end;
				end;
			end;
		end;
		return l;
	end;
	local function q()
		if not W.Triggerbot then
			return;
		end;
		if not Qt(j) then
			return;
		end;
		local Y = C();
		if not Y then
			return;
		end;
		if not J or not J.Parent then
			return;
		end;
		local G = math.max(tonumber(W.TriggerDelay) or .15, .12);
		if tick() - V < G then
			return;
		end;
		local F = E();
		if not F then
			return;
		end;
		V = tick();
		b();
	end;
	local a = nil;
	local function y(G)
		local F = Mt(j);
		local l = F and F:FindFirstChild("HumanoidRootPart");
		if not l then
			return nil;
		end;
		local U = tonumber(W.KillAuraRange) or 90;
		local M, Q = nil, U;
		for Y, F in ipairs(Y:GetPlayers()) do
			if F ~= j and (F ~= G and (pt(F) and Qt(F))) then
				local Y = Mt(F);
				local G = Y and Y:FindFirstChild("HumanoidRootPart");
				local U = Y and Y:FindFirstChild("Head");
				if G and U then
					local Y = ((G.Position - l.Position)).Magnitude;
					if Y < Q then
						Q = Y;
						M = F;
					end;
				end;
			end;
		end;
		return M;
	end;
	local function D(Y)
		local G = Mt(j);
		local F = G and G:FindFirstChild("HumanoidRootPart");
		local l = Mt(Y);
		local U = l and l:FindFirstChild("HumanoidRootPart");
		local M = l and l:FindFirstChild("Head");
		if not F or not U or not M then
			return false;
		end;
		local Q = tonumber(W.KillAuraBehind) or 3.2;
		local p = U.CFrame.LookVector;
		local v = (U.Position - p * Q) + Vector3.new(0, 1.4, 0);
		pcall(function()
			F.CFrame = CFrame.new(v, M.Position);
		end);
		pcall(function()
			J.CFrame = CFrame.new(J.CFrame.Position, M.Position);
		end);
		return true;
	end;
	local function A()
		if not W.KillAura then
			a = nil;
			return;
		end;
		local Y = Mt(j);
		local G = Y and Y:FindFirstChildOfClass("Humanoid");
		if not G or G.Health <= 0 then
			a = nil;
			return;
		end;
		if not a or not Qt(a) or not pt(a) then
			a = y(a);
		end;
		if not a then
			return;
		end;
		if D(a) then
			b();
		else
			a = nil;
		end;
	end;
	local Z = nil;
	pcall(function()
		Z = (v:WaitForChild("GameEvents", 8)):WaitForChild("DeviceUpdate", 8);
	end);
	Et = function()
			if not Z then
				pcall(function()
					Z = v.GameEvents.DeviceUpdate;
				end);
			end;
			if not Z then
				return;
			end;
			local Y = W.DeviceMode or "Console";
			pcall(function()
				if Y == "Console" then
					Z:FireServer();
					pcall(function()
						Z:FireServer("Console");
					end);
				elseif Y == "Desktop" then
					Z:FireServer("Desktop");
				else
					Z:FireServer("Mobile");
				end;
			end);
		end;
	task.spawn(function()
		while true do
			local Y = tonumber(W.DeviceSpoofDelay) or 1.5;
			if Y < .3 then
				Y = .3;
			end;
			task.wait(Y);
			if W.DeviceSpoof then
				pcall(Et);
			end;
		end;
	end);
end;
yt();
y(.78, "Building ESP...");
local Wt, Dt, At, Zt, Rt, kt, nt, Ht, Tt, St;
local function Xt()
	local G = Instance.new("ScreenGui");
	G.Name = "MoonMobileESPGui";
	G.ResetOnSpawn = false;
	G.IgnoreGuiInset = true;
	G.DisplayOrder = 99999;
	G.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	G.Parent = C;
	local F = {};
	local function l(Y)
		if not Y then
			return;
		end;
		pcall(function()
			if Y.fullBox then
				Y.fullBox:Destroy();
			end;
		end);
		pcall(function()
			if Y.fullStroke then
				Y.fullStroke:Destroy();
			end;
		end);
		pcall(function()
			if Y.name then
				Y.name:Destroy();
			end;
		end);
		pcall(function()
			if Y.dist then
				Y.dist:Destroy();
			end;
		end);
		pcall(function()
			if Y.healthBg then
				Y.healthBg:Destroy();
			end;
		end);
		pcall(function()
			if Y.healthFill then
				Y.healthFill:Destroy();
			end;
		end);
		pcall(function()
			if Y.headDot then
				Y.headDot:Destroy();
			end;
		end);
		if Y.corners then
			for G = 1, #Y.corners, 1 do
				local F = Y.corners[G];
				pcall(function()
					if F then
						F:Destroy();
					end;
				end);
				Y.corners[G] = nil;
			end;
		end;
	end;
	Dt = function()
			for Y, G in pairs(F) do
				l(G);
				F[Y] = nil;
			end;
			pcall(function()
				for Y, G in ipairs(G:GetChildren()) do
					pcall(function()
						if G then
							G:Destroy();
						end;
					end);
				end;
			end);
			F = {};
		end;
	local function M(Y)
		local G = F[Y];
		if not G then
			return;
		end;
		l(G);
		F[Y] = nil;
	end;
	local function Q(Y)
		if F[Y] then
			return F[Y];
		end;
		local l = Instance.new("Frame");
		l.BackgroundTransparency = 1;
		l.BorderSizePixel = 0;
		l.Visible = false;
		l.ZIndex = 999;
		l.Parent = G;
		local U;
		pcall(function()
			U = Instance.new("UIStroke");
			U.Color = Color3.new(1, 1, 1);
			U.Thickness = 1.5;
			U.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
			U.Parent = l;
		end);
		local M = {};
		for Y = 1, 8, 1 do
			local F = Instance.new("Frame");
			F.BorderSizePixel = 0;
			F.BackgroundColor3 = Color3.new(1, 1, 1);
			F.Visible = false;
			F.ZIndex = 999;
			F.Parent = G;
			M[Y] = F;
		end;
		local Q = Instance.new("TextLabel");
		Q.BackgroundTransparency = 1;
		Q.AnchorPoint = Vector2.new(.5, .5);
		Q.TextColor3 = Color3.new(1, 1, 1);
		Q.TextSize = 12;
		Q.Font = Enum.Font.SourceSansBold;
		Q.TextStrokeTransparency = 0;
		Q.Visible = false;
		Q.ZIndex = 999;
		Q.Parent = G;
		local p = Instance.new("TextLabel");
		p.BackgroundTransparency = 1;
		p.AnchorPoint = Vector2.new(.5, .5);
		p.TextColor3 = Color3.new(1, 1, 1);
		p.TextSize = 10;
		p.Font = Enum.Font.SourceSans;
		p.TextStrokeTransparency = 0;
		p.Visible = false;
		p.ZIndex = 999;
		p.Parent = G;
		local v = Instance.new("Frame");
		v.BorderSizePixel = 0;
		v.BackgroundColor3 = Color3.new(0, 0, 0);
		v.Visible = false;
		v.ZIndex = 999;
		v.Parent = G;
		local P = Instance.new("Frame");
		P.BorderSizePixel = 0;
		P.BackgroundColor3 = Color3.new(1, 0, 0);
		P.Visible = false;
		P.ZIndex = 999;
		P.Parent = G;
		local J = Instance.new("Frame");
		J.BorderSizePixel = 0;
		J.BackgroundColor3 = Color3.new(1, 1, 1);
		J.Visible = false;
		J.ZIndex = 999;
		J.Parent = G;
		pcall(function()
			local Y = Instance.new("UICorner");
			Y.CornerRadius = UDim.new(1, 0);
			Y.Parent = J;
		end);
		local j = {
				fullBox = l,
				fullStroke = U,
				corners = M,
				name = Q,
				dist = p,
				healthBg = v,
				healthFill = P,
				headDot = J,
			};
		F[Y] = j;
		return j;
	end;
	Wt = function()
			if not W.ESP then
				Dt();
				return;
			end;
			if not J or not J.Parent then
				return;
			end;
			local G = J.ViewportSize;
			if G.X < 1 or G.Y < 1 then
				return;
			end;
			local l = {};
			for Y, G in ipairs(Y:GetPlayers()) do
				l[G] = true;
			end;
			for Y in pairs(F) do
				if not l[Y] then
					M(Y);
				end;
			end;
			local U = Mt(j) and (Mt(j)):FindFirstChild("HumanoidRootPart");
			local p = {};
			for Y, G in ipairs(Y:GetPlayers()) do
				if G ~= j and (pt(G) and Qt(G)) then
					p[G] = true;
					local Y = Mt(G);
					local F = Y and ((Y:FindFirstChild("HumanoidRootPart") or Y:FindFirstChild("Torso")));
					local l = Y and Y:FindFirstChild("Head");
					local v = Y and Y:FindFirstChildOfClass("Humanoid");
					if not F or not l then
						M(G);
					else
						local Y = Q(G);
						local M = qt(G);
						local p, P = J:WorldToViewportPoint(F.Position);
						local j, K = J:WorldToViewportPoint(l.Position + Vector3.new(0, 1.1, 0));
						local V = J:WorldToViewportPoint(F.Position - Vector3.new(0, 2.8, 0));
						if not ((p and (j and (P and (K and (p.Z > 0 and j.Z > 0)))))) then
							Y.fullBox.Visible = false;
							Y.name.Visible = false;
							Y.dist.Visible = false;
							Y.healthBg.Visible = false;
							Y.healthFill.Visible = false;
							Y.headDot.Visible = false;
							for G = 1, 8, 1 do
								if Y.corners[G] then
									Y.corners[G].Visible = false;
								end;
							end;
						else
							local Q = V and V.Y or (p.Y + 28);
							local P = math.max(math.abs(Q - j.Y), 10);
							local K = math.clamp(P / 1.85, 8, 120);
							local C = p.X - K / 2;
							local b = j.Y;
							local E = p.X;
							if W.ShowBoxes and ((W.BoxStyle == "Full" or W.BoxStyle == "Both")) then
								Y.fullBox.Size = UDim2.new(0, K, 0, P);
								Y.fullBox.Position = UDim2.new(0, C, 0, b);
								Y.fullBox.BackgroundTransparency = 1;
								Y.fullBox.Visible = true;
								if Y.fullStroke then
									Y.fullStroke.Color = M;
									Y.fullStroke.Thickness = 2;
								end;
							else
								Y.fullBox.Visible = false;
							end;
							if W.ShowBoxes and ((W.BoxStyle == "Corner" or W.BoxStyle == "Both")) then
								local G = math.clamp(math.min(K, P) * .2, 5, 14);
								local F = 2;
								local l = Y.corners;
								l[1].Size = UDim2.new(0, G, 0, F);
								l[1].Position = UDim2.new(0, C, 0, b);
								l[2].Size = UDim2.new(0, F, 0, G);
								l[2].Position = UDim2.new(0, C, 0, b);
								l[3].Size = UDim2.new(0, G, 0, F);
								l[3].Position = UDim2.new(0, (C + K) - G, 0, b);
								l[4].Size = UDim2.new(0, F, 0, G);
								l[4].Position = UDim2.new(0, (C + K) - F, 0, b);
								l[5].Size = UDim2.new(0, G, 0, F);
								l[5].Position = UDim2.new(0, C, 0, (b + P) - F);
								l[6].Size = UDim2.new(0, F, 0, G);
								l[6].Position = UDim2.new(0, C, 0, (b + P) - G);
								l[7].Size = UDim2.new(0, G, 0, F);
								l[7].Position = UDim2.new(0, (C + K) - G, 0, (b + P) - F);
								l[8].Size = UDim2.new(0, F, 0, G);
								l[8].Position = UDim2.new(0, (C + K) - F, 0, (b + P) - G);
								for Y = 1, 8, 1 do
									l[Y].BackgroundColor3 = M;
									l[Y].Visible = true;
								end;
							else
								for G = 1, 8, 1 do
									if Y.corners[G] then
										Y.corners[G].Visible = false;
									end;
								end;
							end;
							if W.ShowNames then
								Y.name.Text = G.DisplayName;
								Y.name.Position = UDim2.new(0, E, 0, b - 16);
								Y.name.TextColor3 = M;
								Y.name.Visible = true;
							else
								Y.name.Visible = false;
							end;
							if W.ShowDistance and U then
								Y.dist.Text = math.floor(((F.Position - U.Position)).Magnitude) .. "m";
								Y.dist.Position = UDim2.new(0, E, 0, (b + P) + 2);
								Y.dist.TextColor3 = M;
								Y.dist.Visible = true;
							else
								Y.dist.Visible = false;
							end;
							if W.ShowHealth and v then
								local G = v.Health;
								local F = v.MaxHealth;
								if F <= 0 then
									F = 100;
								end;
								if F <= 1.001 and G <= 1.001 then
									G, F = G * 100, 100;
								end;
								local l = math.clamp(G / F, 0, 1);
								if l > .98 then
									l = 1;
								end;
								local U = P;
								local M = C - 5;
								Y.healthBg.Size = UDim2.new(0, 3, 0, U);
								Y.healthBg.Position = UDim2.new(0, M, 0, b);
								Y.healthBg.Visible = true;
								local Q = math.max(2, math.floor(U * l + .5));
								Y.healthFill.Size = UDim2.new(0, 3, 0, Q);
								Y.healthFill.Position = UDim2.new(0, M, 0, (b + U) - Q);
								Y.healthFill.BackgroundColor3 = Color3.fromRGB(math.floor(255 * math.clamp(2 * ((1 - l)), 0, 1)), math.floor(255 * math.clamp(2 * l, 0, 1)), 40);
								Y.healthFill.Visible = true;
							else
								Y.healthBg.Visible = false;
								Y.healthFill.Visible = false;
							end;
							if W.ShowHeadDot then
								local G, F = J:WorldToViewportPoint(l.Position);
								if G and (F and G.Z > 0) then
									local F = math.clamp(K * .12, 3, 7);
									Y.headDot.Size = UDim2.new(0, F, 0, F);
									Y.headDot.Position = UDim2.new(0, G.X - F / 2, 0, G.Y - F / 2);
									Y.headDot.BackgroundColor3 = M;
									Y.headDot.Visible = true;
								else
									Y.headDot.Visible = false;
								end;
							else
								Y.headDot.Visible = false;
							end;
						end;
					end;
				end;
			end;
			for Y in pairs(F) do
				if not p[Y] then
					M(Y);
				end;
			end;
		end;
	At = function()
			Dt();
			Wt();
		end;
	local p = {};
	local function v()
		local Y = nil;
		pcall(function()
			if gethui then
				Y = gethui();
			end;
		end);
		if not Y then
			pcall(function()
				Y = game:GetService("CoreGui");
			end);
		end;
		if not Y then
			Y = K;
		end;
		return Y;
	end;
	Rt = function()
			for Y, G in pairs(p) do
				pcall(function()
					G:Destroy();
				end);
				p[Y] = nil;
			end;
		end;
	Zt = function()
			if not W.Chams then
				Rt();
				return;
			end;
			local G = v();
			local F = {};
			for Y, l in ipairs(Y:GetPlayers()) do
				if l ~= j and (Qt(l) and pt(l)) then
					F[l] = true;
					local Y = Mt(l);
					if Y then
						local F = Y:FindFirstChild("HumanoidRootPart") or Y:FindFirstChild("Head") or Y:FindFirstChildWhichIsA("BasePart");
						if F then
							local F = qt(l);
							local U = p[l];
							if not U or not U.Parent then
								U = Instance.new("Highlight");
								U.Name = "MoonChams";
								U.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop;
								U.FillTransparency = .4;
								U.OutlineTransparency = 0;
								U.FillColor = F;
								U.OutlineColor = F;
								U.Enabled = true;
								U.Adornee = Y;
								U.Parent = G;
								p[l] = U;
							else
								if U.Adornee ~= Y then
									U.Adornee = Y;
								end;
								U.FillColor = F;
								U.OutlineColor = F;
								U.Enabled = true;
							end;
						end;
					end;
				end;
			end;
			for Y, G in pairs(p) do
				if not F[Y] then
					pcall(function()
						G:Destroy();
					end);
					p[Y] = nil;
				end;
			end;
		end;
	local P = {
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
	local V = {
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
	local E = 0;
	nt = function()
			for Y, G in pairs(b) do
				pcall(function()
					G:Destroy();
				end);
				b[Y] = nil;
			end;
		end;
	local function q(Y)
		local G = Y:lower();
		for Y, F in pairs(V) do
			if G:find(Y, 1, true) then
				return F;
			end;
		end;
		return Color3.fromRGB(255, 255, 255);
	end;
	local function a(Y)
		if Y:IsA("BasePart") then
			return Y;
		end;
		if Y:IsA("Tool") then
			return Y:FindFirstChild("Handle") or Y:FindFirstChildOfClass("BasePart") or Y;
		end;
		if Y:IsA("Model") then
			return Y:FindFirstChildOfClass("BasePart") or Y;
		end;
		return nil;
	end;
	kt = function()
			if not W.GadgetESP then
				nt();
				return;
			end;
			E = E + 1;
			if E < 30 then
				return;
			end;
			E = 0;
			local Y = {};
			for G, F in ipairs(workspace:GetDescendants()) do
				local l = F.Name:lower();
				local U = false;
				for Y, G in ipairs(P) do
					if l:find(G, 1, true) then
						U = true;
						break;
					end;
				end;
				if U then
					local G = a(F);
					if G then
						Y[G] = true;
						local F = b[G];
						if not F or not F.Parent then
							F = Instance.new("Highlight");
							F.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop;
							F.FillTransparency = .4;
							F.OutlineTransparency = 0;
							F.Parent = G;
							b[G] = F;
						end;
						local U = q(l);
						F.FillColor = U;
						F.OutlineColor = U;
						F.Enabled = true;
					end;
				end;
			end;
			for G, F in pairs(b) do
				if not Y[G] then
					pcall(function()
						F:Destroy();
					end);
					b[G] = nil;
				end;
			end;
		end;
	local y = nil;
	local D = nil;
	local A = {};
	local function Z(Y)
		if not X or not at then
			return nil;
		end;
		local G, F = pcall(function()
				return at.new(Y);
			end);
		if G and F then
			return F;
		end;
		return nil;
	end;
	Ht = function()
			if not W.Radar then
				if y then
					y.Visible = false;
				end;
				if D then
					D.Visible = false;
				end;
				for Y, G in pairs(A) do
					if G then
						G.Visible = false;
					end;
				end;
				return;
			end;
			if not X then
				return;
			end;
			if not y then
				y = Z("Circle");
				y.Filled = true;
				y.Color = Color3.fromRGB(0, 0, 0);
				y.Transparency = .5;
				y.NumSides = 40;
			end;
			if not D then
				D = Z("Circle");
				D.Filled = false;
				D.Color = Color3.fromRGB(255, 255, 255);
				D.Thickness = 1.5;
				D.NumSides = 40;
			end;
			local G = tonumber(W.RadarSize) or 140;
			local F = tonumber(W.RadarRange) or 200;
			local l = G / 2;
			local U = Vector2.new(20 + l, 20 + l);
			y.Position = U;
			y.Radius = l;
			y.Visible = true;
			D.Position = U;
			D.Radius = l;
			D.Visible = true;
			local M = Mt(j) and (Mt(j)):FindFirstChild("HumanoidRootPart");
			if not M then
				return;
			end;
			local Q = math.atan2(J.CFrame.LookVector.X, J.CFrame.LookVector.Z);
			local p = {};
			for Y, G in ipairs(Y:GetPlayers()) do
				if G ~= j and (Qt(G) and pt(G)) then
					local Y = Mt(G);
					local v = Y and Y:FindFirstChild("HumanoidRootPart");
					if v then
						local Y = v.Position - M.Position;
						if Y.Magnitude <= F then
							local M = Y.X * math.cos(Q) - Y.Z * math.sin(Q);
							local v = Y.X * math.sin(Q) + Y.Z * math.cos(Q);
							local P = l / F;
							local J = M * P;
							local j = -v * P;
							local K = A[G];
							if not K then
								K = Z("Circle");
								K.Filled = true;
								K.NumSides = 8;
								K.Radius = 3;
								A[G] = K;
							end;
							K.Position = Vector2.new(U.X + J, U.Y + j);
							K.Color = qt(G);
							K.Visible = true;
							p[G] = true;
						end;
					end;
				end;
			end;
			for Y, G in pairs(A) do
				if not p[Y] then
					G.Visible = false;
				end;
			end;
		end;
	Y.PlayerRemoving:Connect(function(Y)
		M(Y);
		pcall(function()
			if p[Y] then
				p[Y]:Destroy();
				p[Y] = nil;
			end;
		end);
		if kaTarget == Y then
			kaTarget = nil;
		end;
		local G = Mt(Y);
		if G then
			restorePart(G:FindFirstChild("Head"));
			restorePart(getTorso(G));
		end;
	end);
	local function R(Y)
		Y.CharacterRemoving:Connect(function()
			M(Y);
			pcall(function()
				if p[Y] then
					p[Y]:Destroy();
					p[Y] = nil;
				end;
			end);
		end);
		Y.CharacterAdded:Connect(function()
			task.wait(.3);
			M(Y);
		end);
	end;
	Y.PlayerAdded:Connect(R);
	for Y, G in ipairs(Y:GetPlayers()) do
		R(G);
	end;
	St = false;
	Tt = function(G)
			if G == St then
				return;
			end;
			St = G;
			pcall(function()
				U.GlobalShadows = not G;
				if G then
					U.FogEnd = 9000000000;
					if settings and (settings()).Rendering then
						(settings()).Rendering.QualityLevel = Enum.QualityLevel.Level01;
					end;
					for G, F in ipairs(workspace:GetDescendants()) do
						if F:IsA("BasePart") then
							local G = false;
							for Y, l in ipairs(Y:GetPlayers()) do
								if l.Character and F:IsDescendantOf(l.Character) then
									G = true;
									break;
								end;
							end;
							if not G then
								F.Material = Enum.Material.SmoothPlastic;
								F.CastShadow = false;
							end;
						elseif F:IsA("ParticleEmitter") or F:IsA("Trail") or F:IsA("Beam") then
							F.Enabled = false;
						end;
					end;
				end;
			end);
		end;
end;
Xt();
local Nt = "\226\156\147";
pcall(function()
	if utf8 and utf8.char then
		Nt = utf8.char(57344);
	end;
end);
local xt, ht, Lt, st, It, Ot, gt, ct, ft, mt;
local tt, ot, ut, rt, dt;
local zt, Bt, et, it;
y(.9, "Building UI...");
xt = Instance.new("ScreenGui");
xt.Name = "MoonHubUI";
xt.ResetOnSpawn = false;
xt.IgnoreGuiInset = true;
xt.DisplayOrder = 999;
xt.Parent = K;
ht = Instance.new("Frame");
ht.Size = UDim2.new(0, 640, 0, 480);
ht.Position = UDim2.new(.5, -320, .5, -240);
ht.BackgroundColor3 = s;
ht.BackgroundTransparency = .08;
ht.BorderSizePixel = 0;
ht.Visible = false;
ht.Parent = xt;
(Instance.new("UICorner", ht)).CornerRadius = UDim.new(0, 14);
local wt = Instance.new("UIScale");
wt.Scale = 1;
wt.Parent = ht;
local function Yz()
	return F.TouchEnabled and ((not F.KeyboardEnabled or J.ViewportSize.X < 900));
end;
et = function()
		local Y = J.ViewportSize;
		local G = Yz();
		local F = G and math.min(Y.X - 24, 420) or math.min(Y.X - 40, 640);
		local l = G and math.min(Y.Y - 48, 360) or math.min(Y.Y - 60, 480);
		local U, M = 640, 480;
		local Q = 1;
		if G then
			Q = math.clamp(math.min(F / U, l / M), .55, .85);
			ht.Size = UDim2.new(0, U, 0, M);
			wt.Scale = Q;
			local Y, G = U * Q, M * Q;
			ht.Position = UDim2.new(.5, -Y / 2, .5, -G / 2);
		else
			wt.Scale = 1;
			local Y = math.clamp(F, 480, 640);
			local G = math.clamp(l, 360, 480);
			ht.Size = UDim2.new(0, Y, 0, G);
			ht.Position = UDim2.new(.5, -Y / 2, .5, -G / 2);
		end;
	end;
et();
pcall(function()
	(J:GetPropertyChangedSignal("ViewportSize")):Connect(et);
end);
local Gz = Instance.new("UIStroke");
Gz.Color = Color3.fromRGB(40, 38, 55);
Gz.Thickness = 1;
Gz.Transparency = .3;
Gz.Parent = ht;
t("stroke", Gz);
local Fz = Instance.new("Frame");
Fz.Size = UDim2.new(1, 0, 0, 44);
Fz.BackgroundColor3 = I;
Fz.BorderSizePixel = 0;
Fz.Parent = ht;
(Instance.new("UICorner", Fz)).CornerRadius = UDim.new(0, 14);
local lz = Instance.new("Frame");
lz.Size = UDim2.new(1, 0, 0, 14);
lz.Position = UDim2.new(0, 0, 1, -14);
lz.BackgroundColor3 = I;
lz.BorderSizePixel = 0;
lz.Parent = Fz;
local Uz = Instance.new("Frame");
Uz.Size = UDim2.new(1, 0, 0, 2);
Uz.Position = UDim2.new(0, 0, 1, -2);
Uz.BackgroundColor3 = L;
Uz.BorderSizePixel = 0;
Uz.Parent = Fz;
t("fill", Uz);
local Mz = Instance.new("TextLabel");
Mz.Size = UDim2.new(1, -50, 1, 0);
Mz.Position = UDim2.new(0, 16, 0, 0);
Mz.BackgroundTransparency = 1;
Mz.Text = "MOON HUB  \194\183  jailbird";
Mz.TextColor3 = L;
Mz.TextSize = 15;
Mz.Font = Enum.Font.GothamBold;
Mz.TextXAlignment = Enum.TextXAlignment.Left;
Mz.Parent = Fz;
t("text", Mz);
local Qz = Instance.new("TextButton");
Qz.Size = UDim2.new(0, 30, 0, 30);
Qz.Position = UDim2.new(1, -38, .5, -15);
Qz.BackgroundColor3 = Color3.fromRGB(36, 32, 48);
Qz.Text = "\195\151";
Qz.TextColor3 = c;
Qz.Font = f;
Qz.TextSize = 18;
Qz.Parent = Fz;
(Instance.new("UICorner", Qz)).CornerRadius = UDim.new(0, 6);
local pz = Instance.new("TextLabel");
pz.Size = UDim2.new(1, -16, 0, 16);
pz.Position = UDim2.new(0, 16, 0, 44);
pz.BackgroundTransparency = 1;
pz.Text = "Executor: " .. q;
pz.TextColor3 = c;
pz.TextSize = 11;
pz.Font = f;
pz.TextXAlignment = Enum.TextXAlignment.Left;
pz.Parent = ht;
gt = Instance.new("ScrollingFrame");
gt.Size = UDim2.new(0, 118, 1, -70);
gt.Position = UDim2.new(0, 10, 0, 54);
gt.BackgroundColor3 = I;
gt.BorderSizePixel = 0;
gt.ScrollBarThickness = 2;
gt.AutomaticCanvasSize = Enum.AutomaticSize.Y;
gt.CanvasSize = UDim2.new(0, 0, 0, 0);
gt.Parent = ht;
(Instance.new("UICorner", gt)).CornerRadius = UDim.new(0, 8);
local vz = Instance.new("UIListLayout");
vz.Padding = UDim.new(0, 4);
vz.SortOrder = Enum.SortOrder.LayoutOrder;
vz.Parent = gt;
local Pz = Instance.new("UIPadding");
Pz.PaddingTop = UDim.new(0, 6);
Pz.PaddingLeft = UDim.new(0, 6);
Pz.PaddingRight = UDim.new(0, 6);
Pz.Parent = gt;
ct = Instance.new("Frame");
ct.Size = UDim2.new(1, -140, 1, -72);
ct.Position = UDim2.new(0, 132, 0, 54);
ct.BackgroundTransparency = 1;
ct.Parent = ht;
ft, mt = {}, {}, {};
zt = function(Y)
		local G = h();
		for G, F in pairs(ft) do
			F.Visible = (G == Y);
		end;
		for F, l in pairs(mt) do
			l.BackgroundColor3 = (F == Y) and Color3.fromRGB(40, 35, 60) or Color3.fromRGB(22, 22, 30);
			l.TextColor3 = (F == Y) and G or c;
		end;
		d();
	end;
local function Jz(Y)
	local G = Instance.new("ScrollingFrame");
	G.Size = UDim2.new(1, 0, 1, 0);
	G.BackgroundTransparency = 1;
	G.BorderSizePixel = 0;
	G.ScrollBarThickness = 3;
	G.AutomaticCanvasSize = Enum.AutomaticSize.Y;
	G.CanvasSize = UDim2.new(0, 0, 0, 0);
	G.Visible = false;
	G.Parent = ct;
	local F = Instance.new("UIListLayout");
	F.Padding = UDim.new(0, 5);
	F.SortOrder = Enum.SortOrder.LayoutOrder;
	F.FillDirection = Enum.FillDirection.Vertical;
	F.HorizontalAlignment = Enum.HorizontalAlignment.Left;
	F.Parent = G;
	local l = Instance.new("UIPadding");
	l.PaddingBottom = UDim.new(0, 10);
	l.PaddingTop = UDim.new(0, 4);
	l.PaddingLeft = UDim.new(0, 2);
	l.PaddingRight = UDim.new(0, 8);
	l.Parent = G;
	ft[Y] = G;
	local U = Instance.new("TextButton");
	U.Size = UDim2.new(1, 0, 0, 30);
	U.BackgroundColor3 = Color3.fromRGB(22, 22, 30);
	U.Text = Y;
	U.TextColor3 = c;
	U.TextSize = 12;
	U.Font = Enum.Font.GothamMedium;
	U.Parent = gt;
	(Instance.new("UICorner", U)).CornerRadius = UDim.new(0, 8);
	U.MouseButton1Click:Connect(function()
		zt(Y);
	end);
	mt[Y] = U;
	return G;
end;
local function jz(Y)
	local G = ((Y:GetAttribute("O") or 0)) + 1;
	Y:SetAttribute("O", G);
	return G;
end;
local function Kz(Y, G)
	local F = Instance.new("TextLabel");
	F.LayoutOrder = jz(Y);
	F.Size = UDim2.new(1, -4, 0, 18);
	F.BackgroundTransparency = 1;
	F.Text = string.upper(G);
	F.TextColor3 = L;
	F.TextSize = 11;
	F.Font = f;
	F.TextXAlignment = Enum.TextXAlignment.Left;
	F.TextYAlignment = Enum.TextYAlignment.Center;
	F.TextTruncate = Enum.TextTruncate.AtEnd;
	F.Parent = Y;
	t("text", F);
end;
local function Vz(Y, G, F)
	local l = Instance.new("Frame");
	l.LayoutOrder = jz(Y);
	l.Size = UDim2.new(1, 0, 0, 32);
	l.BackgroundColor3 = O;
	l.BorderSizePixel = 0;
	l.Parent = Y;
	(Instance.new("UICorner", l)).CornerRadius = UDim.new(0, 8);
	local U = Instance.new("TextLabel");
	U.Size = UDim2.new(1, -55, 1, 0);
	U.Position = UDim2.new(0, 10, 0, 0);
	U.BackgroundTransparency = 1;
	U.Text = G;
	U.TextColor3 = g;
	U.TextSize = 11;
	U.Font = f;
	U.TextXAlignment = Enum.TextXAlignment.Left;
	U.Parent = l;
	local M = Instance.new("TextButton");
	M.Size = UDim2.new(0, 40, 0, 18);
	M.Position = UDim2.new(1, -48, .5, -9);
	M.BackgroundColor3 = W[F] and L or Color3.fromRGB(45, 45, 58);
	M.Text = "";
	M.Parent = l;
	t("toggle", M, F);
	(Instance.new("UICorner", M)).CornerRadius = UDim.new(1, 0);
	local Q = Instance.new("Frame");
	Q.Size = UDim2.new(0, 14, 0, 14);
	Q.Position = W[F] and UDim2.new(1, -16, .5, -7) or UDim2.new(0, 2, .5, -7);
	Q.BackgroundColor3 = Color3.new(1, 1, 1);
	Q.BorderSizePixel = 0;
	Q.Parent = M;
	(Instance.new("UICorner", Q)).CornerRadius = UDim.new(1, 0);
	M.MouseButton1Click:Connect(function()
		W[F] = not W[F];
		local Y = W[F];
		M.BackgroundColor3 = Y and h() or Color3.fromRGB(45, 45, 58);
		Q.Position = Y and UDim2.new(1, -16, .5, -7) or UDim2.new(0, 2, .5, -7);
		if F == "ESP" then
			if Y then
				At();
			else
				Dt();
			end;
		end;
		if F == "Chams" then
			if not Y then
				Rt();
			end;
		end;
		if F == "GadgetESP" then
			if not Y then
				nt();
			end;
		end;
		if F == "Hitbox" and not Y then
			bt();
		end;
		if F == "DeviceSpoof" and Y then
			Et();
		end;
		if F == "Potato" then
			Tt(Y);
		end;
		if F == "CustomFOV" then
			if Y then
				Gt();
			else
				pcall(function()
					J.FieldOfView = Yt;
				end);
			end;
		end;
		if F == "MobileAim" and Y then
			W.Aimbot = true;
		end;
		if F == "KillAura" and not Y then
			kaTarget = nil;
		end;
		if F == "ScreenStretch" and (Y and not stretchReady) then
			stretchReady = true;
		end;
		A();
		d();
	end);
end;
local function Cz(Y, G, l, U, M, Q)
	local p = Instance.new("Frame");
	p.LayoutOrder = jz(Y);
	p.Size = UDim2.new(1, 0, 0, 46);
	p.BackgroundColor3 = O;
	p.BorderSizePixel = 0;
	p.Parent = Y;
	(Instance.new("UICorner", p)).CornerRadius = UDim.new(0, 8);
	local v = Instance.new("TextLabel");
	v.Size = UDim2.new(.65, 0, 0, 16);
	v.Position = UDim2.new(0, 10, 0, 4);
	v.BackgroundTransparency = 1;
	v.Text = G;
	v.TextColor3 = g;
	v.TextSize = 11;
	v.Font = f;
	v.TextXAlignment = Enum.TextXAlignment.Left;
	v.Parent = p;
	local P = Instance.new("TextLabel");
	P.Size = UDim2.new(.3, -8, 0, 16);
	P.Position = UDim2.new(.7, 0, 0, 4);
	P.BackgroundTransparency = 1;
	P.Text = tostring(W[l]);
	P.TextColor3 = L;
	P.TextSize = 11;
	P.Font = f;
	P.TextXAlignment = Enum.TextXAlignment.Right;
	P.Parent = p;
	local J = Instance.new("TextButton");
	J.Size = UDim2.new(1, -20, 0, 8);
	J.Position = UDim2.new(0, 10, 0, 26);
	J.BackgroundColor3 = Color3.fromRGB(40, 40, 55);
	J.Text = "";
	J.Parent = p;
	(Instance.new("UICorner", J)).CornerRadius = UDim.new(1, 0);
	local j = Instance.new("Frame");
	j.Size = UDim2.new(math.clamp(((W[l] - U)) / math.max(M - U, .001), 0, 1), 0, 1, 0);
	j.BackgroundColor3 = L;
	j.BorderSizePixel = 0;
	j.Parent = J;
	t("fill", j);
	(Instance.new("UICorner", j)).CornerRadius = UDim.new(1, 0);
	local function K(Y)
		local G = math.clamp(((Y - J.AbsolutePosition.X)) / math.max(J.AbsoluteSize.X, 1), 0, 1);
		local F = U + G * ((M - U));
		F = math.floor(F / Q + .5) * Q;
		F = math.clamp(F, U, M);
		W[l] = F;
		j.Size = UDim2.new(((F - U)) / math.max(M - U, .001), 0, 1, 0);
		P.Text = tostring(F);
		if l == "CursorSize" then
			e.Size = UDim2.new(0, F, 0, F);
		end;
		if l == "FOVValue" and W.CustomFOV then
			Gt();
		end;
		if l == "DesignAccentR" or l == "DesignAccentG" or l == "DesignAccentB" then
			pcall(Bt);
		end;
		A();
	end;
	J.MouseButton1Down:Connect(function()
		local Y, G;
		Y = F.InputChanged:Connect(function(Y)
				if Y.UserInputType == Enum.UserInputType.MouseMovement or Y.UserInputType == Enum.UserInputType.Touch then
					K(Y.Position.X);
				end;
			end);
		G = F.InputEnded:Connect(function(F)
				if F.UserInputType == Enum.UserInputType.MouseButton1 or F.UserInputType == Enum.UserInputType.Touch then
					if Y then
						Y:Disconnect();
					end;
					if G then
						G:Disconnect();
					end;
				end;
			end);
		pcall(function()
			K((F:GetMouseLocation()).X);
		end);
	end);
end;
local function bz(Y, G, F, l)
	local U = Instance.new("Frame");
	U.LayoutOrder = jz(Y);
	U.Size = UDim2.new(1, 0, 0, 54);
	U.BackgroundColor3 = O;
	U.BorderSizePixel = 0;
	U.Parent = Y;
	(Instance.new("UICorner", U)).CornerRadius = UDim.new(0, 8);
	local M = Instance.new("TextLabel");
	M.Size = UDim2.new(1, -12, 0, 18);
	M.Position = UDim2.new(0, 10, 0, 4);
	M.BackgroundTransparency = 1;
	M.Text = G;
	M.TextColor3 = g;
	M.TextSize = 11;
	M.Font = f;
	M.TextXAlignment = Enum.TextXAlignment.Left;
	M.Parent = U;
	local Q = Instance.new("Frame");
	Q.Size = UDim2.new(1, -16, 0, 24);
	Q.Position = UDim2.new(0, 8, 0, 26);
	Q.BackgroundTransparency = 1;
	Q.Parent = U;
	local p = Instance.new("UIListLayout");
	p.FillDirection = Enum.FillDirection.Horizontal;
	p.Padding = UDim.new(0, 5);
	p.Parent = Q;
	local v = {};
	local function P()
		local Y = h();
		for G, l in pairs(v) do
			local U = (W[F] == G);
			l.BackgroundColor3 = U and Y or Color3.fromRGB(35, 32, 48);
			l.TextColor3 = U and Color3.fromRGB(20, 20, 28) or c;
		end;
	end;
	local J = #l;
	local j = math.clamp(math.floor(300 / math.max(J, 1)), 48, 90);
	for Y, G in ipairs(l) do
		local l = Instance.new("TextButton");
		l.Size = UDim2.new(0, j, 1, 0);
		l.BackgroundColor3 = Color3.fromRGB(35, 32, 48);
		l.Text = G;
		l.TextColor3 = c;
		l.TextSize = 10;
		l.Font = f;
		l.Parent = Q;
		(Instance.new("UICorner", l)).CornerRadius = UDim.new(0, 6);
		v[G] = l;
		t("choice", l, F);
		l.MouseButton1Click:Connect(function()
			W[F] = G;
			P();
			if F == "CursorName" then
				w(W.CursorName);
			end;
			if F == "DeviceMode" and W.DeviceSpoof then
				Et();
			end;
			if F == "HitboxPart" then
				bt();
			end;
			A();
			d();
		end);
	end;
	P();
	t("choiceRefresh", { refresh = P });
end;
local function Ez(Y, G, F, l)
	local U = Instance.new("Frame");
	U.LayoutOrder = jz(Y);
	U.Size = UDim2.new(1, 0, 0, 32);
	U.BackgroundColor3 = O;
	U.BorderSizePixel = 0;
	U.Parent = Y;
	(Instance.new("UICorner", U)).CornerRadius = UDim.new(0, 8);
	local M = Instance.new("TextLabel");
	M.Size = UDim2.new(.4, 0, 1, 0);
	M.Position = UDim2.new(0, 10, 0, 0);
	M.BackgroundTransparency = 1;
	M.Text = G;
	M.TextColor3 = g;
	M.TextSize = 11;
	M.Font = f;
	M.TextXAlignment = Enum.TextXAlignment.Left;
	M.Parent = U;
	local Q = 1;
	for Y, G in ipairs(l) do
		if G == W[F] then
			Q = Y;
		end;
	end;
	local p = Instance.new("TextButton");
	p.Size = UDim2.new(.55, -12, 0, 22);
	p.Position = UDim2.new(.45, 0, .5, -11);
	p.BackgroundColor3 = Color3.fromRGB(35, 32, 48);
	p.Text = tostring(W[F]);
	p.TextColor3 = L;
	p.TextSize = 11;
	p.Font = f;
	p.Parent = U;
	t("text", p);
	(Instance.new("UICorner", p)).CornerRadius = UDim.new(0, 6);
	p.MouseButton1Click:Connect(function()
		Q = Q % #l + 1;
		W[F] = l[Q];
		p.Text = l[Q];
		if F == "CursorName" then
			w(W.CursorName);
		end;
		if F == "DeviceMode" and W.DeviceSpoof then
			Et();
		end;
		if F == "HitboxPart" then
			bt();
		end;
		A();
		d();
	end);
end;
local function qz(Y, G, F, l)
	local U = Instance.new("Frame");
	U.LayoutOrder = jz(Y);
	U.Size = UDim2.new(1, 0, 0, 52);
	U.BackgroundColor3 = O;
	U.BorderSizePixel = 0;
	U.Parent = Y;
	(Instance.new("UICorner", U)).CornerRadius = UDim.new(0, 8);
	local M = Instance.new("TextLabel");
	M.Size = UDim2.new(1, -16, 0, 14);
	M.Position = UDim2.new(0, 10, 0, 4);
	M.BackgroundTransparency = 1;
	M.Text = G;
	M.TextColor3 = c;
	M.TextSize = 11;
	M.Font = f;
	M.TextXAlignment = Enum.TextXAlignment.Left;
	M.Parent = U;
	local Q = Instance.new("TextBox");
	Q.Size = UDim2.new(1, -20, 0, 22);
	Q.Position = UDim2.new(0, 10, 0, 22);
	Q.BackgroundColor3 = Color3.fromRGB(14, 14, 20);
	Q.BorderSizePixel = 0;
	Q.Text = tostring(W[F] or l or "");
	Q.PlaceholderText = l or "";
	Q.TextColor3 = g;
	Q.TextSize = 12;
	Q.Font = f;
	Q.ClearTextOnFocus = false;
	Q.Parent = U;
	(Instance.new("UICorner", Q)).CornerRadius = UDim.new(0, 6);
	Q.FocusLost:Connect(function()
		local Y = Q.Text;
		if not Y or Y == "" then
			Y = l or "default";
			Q.Text = Y;
		end;
		W[F] = Y;
		A();
	end);
end;
local function az(Y, G, F)
	local l = Instance.new("TextButton");
	l.LayoutOrder = jz(Y);
	l.Size = UDim2.new(1, 0, 0, 30);
	l.BackgroundColor3 = Color3.fromRGB(35, 30, 55);
	l.Text = G;
	l.TextColor3 = L;
	l.TextSize = 12;
	l.Font = f;
	l.Parent = Y;
	(Instance.new("UICorner", l)).CornerRadius = UDim.new(0, 8);
	l.MouseButton1Click:Connect(function()
		F();
		d();
	end);
end;
local yz = Jz("Combat");
local Wz = Jz("Player");
local Dz = Jz("Stream");
local Az = Jz("Staff");
local Zz = Jz("Mobile");
local Rz = Jz("Visuals");
local kz = Jz("Design");
local nz = Jz("Credits");
local Hz = Jz("Config");
local function Tz(Y, G)
	local F = Instance.new("Frame");
	F.LayoutOrder = jz(Y);
	F.Size = UDim2.new(1, 0, 0, 32);
	F.BackgroundColor3 = Color3.fromRGB(28, 24, 36);
	F.BorderSizePixel = 0;
	F.Parent = Y;
	(Instance.new("UICorner", F)).CornerRadius = UDim.new(0, 8);
	local l = Instance.new("TextLabel");
	l.Size = UDim2.new(1, -16, 1, 0);
	l.Position = UDim2.new(0, 10, 0, 0);
	l.BackgroundTransparency = 1;
	l.Text = "\240\159\148\146 Locked \194\183 " .. tostring(G);
	l.TextColor3 = Color3.fromRGB(180, 150, 255);
	l.TextSize = 12;
	l.Font = f;
	l.TextXAlignment = Enum.TextXAlignment.Left;
	l.Parent = F;
	local U = Instance.new("TextLabel");
	U.Size = UDim2.new(0, 78, 0, 20);
	U.Position = UDim2.new(1, -86, .5, -10);
	U.BackgroundColor3 = Color3.fromRGB(50, 40, 70);
	U.Text = "PREMIUM";
	U.TextColor3 = Color3.fromRGB(200, 180, 255);
	U.TextSize = 10;
	U.Font = Enum.Font.GothamBold;
	U.Parent = F;
	(Instance.new("UICorner", U)).CornerRadius = UDim.new(0, 6);
end;
Kz(yz, "Aimbot");
Vz(yz, "Aimbot", "Aimbot");
bz(yz, "Key", "AimKey", {
	"MB1",
	"MB2",
	"E",
	"Q",
	"F",
});
bz(yz, "Mode", "AimMode", { "Hold", "Toggle", "Always" });
Cz(yz, "FOV", "AimFOV", 40, 350, 1);
Cz(yz, "Smooth", "AimSmooth", .1, 1, .05);
Vz(yz, "Show FOV", "ShowFOV");
Vz(yz, "Wall Check", "WallCheck");
Vz(yz, "Team Check", "TeamCheck");
Vz(yz, "Prediction", "Prediction");
Cz(yz, "Predict", "PredictAmount", 0, .35, .01);
bz(yz, "Lock Priority", "TargetPriority", { "Crosshair", "Closest", "Lowest HP" });
Kz(yz, "Premium \226\128\148 Locked");
Tz(yz, "Silent Aim");
Tz(yz, "Kill Aura");
Tz(yz, "Hitbox Expander");
Kz(yz, "Triggerbot");
Vz(yz, "Triggerbot", "Triggerbot");
Cz(yz, "Trigger FOV", "TriggerFOV", 8, 60, 1);
Cz(yz, "Trigger Delay", "TriggerDelay", .12, .4, .01);
Kz(yz, "Camera FOV");
Vz(yz, "Custom FOV", "CustomFOV");
Cz(yz, "FOV Value", "FOVValue", 40, 120, 1);
Kz(Wz, "Move");
Vz(Wz, "Speed", "Speed");
Cz(Wz, "Speed Value", "SpeedValue", 16, 80, 1);
Vz(Wz, "Noclip", "Noclip");
Vz(Wz, "Anti-Bow", "AntiBow");
Kz(Wz, "Premium only");
Tz(Wz, "Device Spoof");
Kz(Wz, "Screen Stretch");
Vz(Wz, "Screen Stretch", "ScreenStretch");
Cz(Wz, "Stretch Amount", "StretchAmount", .3, 1, .01);
Kz(Dz, "Premium only");
Tz(Dz, "Stream Proof");
Tz(Dz, "Name Spoof");
Kz(Dz, "Free");
Vz(Dz, "Verified", "ShowVerified");
Kz(Az, "Premium only");
Tz(Az, "Staff Detect");
Tz(Az, "Auto Leave on Staff");
Tz(Az, "Staff Alerts");
Kz(Zz, "Mobile Aim");
Vz(Zz, "Mobile Aim ON", "MobileAim");
Cz(Zz, "Smooth", "MobileSmooth", .1, 1, .05);
Cz(Zz, "FOV", "MobileFOV", 40, 350, 1);
Vz(Zz, "Show FOV", "MobileShowFOV");
local Sz = Instance.new("Frame");
Sz.LayoutOrder = jz(Rz);
Sz.Size = UDim2.new(1, 0, 0, 168);
Sz.BackgroundColor3 = Color3.fromRGB(14, 14, 20);
Sz.BorderSizePixel = 0;
Sz.Parent = Rz;
(Instance.new("UICorner", Sz)).CornerRadius = UDim.new(0, 10);
local Xz = Instance.new("UIStroke");
Xz.Color = Color3.fromRGB(40, 38, 55);
Xz.Thickness = 1;
Xz.Parent = Sz;
local Nz = Instance.new("TextLabel");
Nz.Size = UDim2.new(1, -16, 0, 18);
Nz.Position = UDim2.new(0, 10, 0, 6);
Nz.BackgroundTransparency = 1;
Nz.Text = "ESP PREVIEW";
Nz.TextColor3 = c;
Nz.TextSize = 10;
Nz.Font = Enum.Font.GothamBold;
Nz.TextXAlignment = Enum.TextXAlignment.Left;
Nz.Parent = Sz;
local xz = Instance.new("Frame");
xz.Size = UDim2.new(1, -20, 0, 130);
xz.Position = UDim2.new(0, 10, 0, 28);
xz.BackgroundColor3 = Color3.fromRGB(18, 18, 26);
xz.BorderSizePixel = 0;
xz.ClipsDescendants = true;
xz.Parent = Sz;
(Instance.new("UICorner", xz)).CornerRadius = UDim.new(0, 8);
local hz = Instance.new("Frame");
hz.Name = "Figure";
hz.Size = UDim2.new(0, 70, 0, 110);
hz.Position = UDim2.new(.5, -35, .5, -48);
hz.BackgroundTransparency = 1;
hz.Parent = xz;
local function Lz(Y, G, F, l, U)
	local M = Instance.new("Frame");
	M.Name = Y;
	M.Size = G;
	M.Position = F;
	M.BackgroundColor3 = Color3.fromRGB(55, 55, 70);
	M.BorderSizePixel = 0;
	M.Parent = U or hz;
	(Instance.new("UICorner", M)).CornerRadius = UDim.new(l or 0, 0);
	return M;
end;
local sz = Lz("Head", UDim2.new(0, 20, 0, 20), UDim2.new(.5, -10, 0, 0), 1);
local Iz = Lz("Torso", UDim2.new(0, 32, 0, 38), UDim2.new(.5, -16, 0, 24), .15);
local Oz = Lz("ArmL", UDim2.new(0, 10, 0, 30), UDim2.new(.5, -28, 0, 26), .2);
local gz = Lz("ArmR", UDim2.new(0, 10, 0, 30), UDim2.new(.5, 18, 0, 26), .2);
local cz = Lz("LegL", UDim2.new(0, 12, 0, 28), UDim2.new(.5, -14, 0, 64), .2);
local fz = Lz("LegR", UDim2.new(0, 12, 0, 28), UDim2.new(.5, 2, 0, 64), .2);
local mz = {
		sz,
		Iz,
		Oz,
		gz,
		cz,
		fz,
	};
local tz = Instance.new("Frame");
tz.Name = "BoxFull";
tz.Size = UDim2.new(0, 64, 0, 116);
tz.Position = UDim2.new(.5, -32, .5, -52);
tz.BackgroundTransparency = 1;
tz.BorderSizePixel = 0;
tz.Parent = xz;
local oz = Instance.new("UIStroke");
oz.Thickness = 1.5;
oz.Color = Color3.fromRGB(40, 255, 40);
oz.Parent = tz;
local function uz(Y, G, F, l, U)
	local M = Instance.new("Frame");
	M.Name = Y;
	M.BackgroundColor3 = Color3.fromRGB(40, 255, 40);
	M.BorderSizePixel = 0;
	M.Size = UDim2.new(0, l, 0, U);
	M.Position = UDim2.new(0, G, 0, F);
	M.Parent = tz;
	return M;
end;
local rz = {
		uz("TL1", 0, 0, 12, 2),
		uz("TL2", 0, 0, 2, 12),
		uz("TR1", 52, 0, 12, 2),
		uz("TR2", 62, 0, 2, 12),
		uz("BL1", 0, 114, 12, 2),
		uz("BL2", 0, 104, 2, 12),
		uz("BR1", 52, 114, 12, 2),
		uz("BR2", 62, 104, 2, 12),
	};
local dz = Instance.new("TextLabel");
dz.Size = UDim2.new(0, 120, 0, 16);
dz.Position = UDim2.new(.5, -60, .5, -70);
dz.BackgroundTransparency = 1;
dz.Text = "Enemy";
dz.TextColor3 = Color3.fromRGB(255, 255, 255);
dz.TextSize = 12;
dz.Font = Enum.Font.GothamBold;
dz.Parent = xz;
local zz = Instance.new("TextLabel");
zz.Size = UDim2.new(0, 80, 0, 14);
zz.Position = UDim2.new(.5, -40, .5, 68);
zz.BackgroundTransparency = 1;
zz.Text = "45m";
zz.TextColor3 = c;
zz.TextSize = 11;
zz.Font = f;
zz.Parent = xz;
local Bz = Instance.new("Frame");
Bz.Size = UDim2.new(0, 4, 0, 116);
Bz.Position = UDim2.new(.5, -40, .5, -52);
Bz.BackgroundColor3 = Color3.fromRGB(30, 30, 40);
Bz.BorderSizePixel = 0;
Bz.Parent = xz;
(Instance.new("UICorner", Bz)).CornerRadius = UDim.new(1, 0);
local ez = Instance.new("Frame");
ez.Size = UDim2.new(1, 0, .7, 0);
ez.Position = UDim2.new(0, 0, .3, 0);
ez.BackgroundColor3 = Color3.fromRGB(40, 255, 40);
ez.BorderSizePixel = 0;
ez.Parent = Bz;
(Instance.new("UICorner", ez)).CornerRadius = UDim.new(1, 0);
local iz = Instance.new("Frame");
iz.Size = UDim2.new(0, 8, 0, 8);
iz.AnchorPoint = Vector2.new(.5, .5);
iz.Position = UDim2.new(.5, 0, .5, -42);
iz.BackgroundColor3 = Color3.fromRGB(40, 255, 40);
iz.BorderSizePixel = 0;
iz.ZIndex = 5;
iz.Parent = xz;
(Instance.new("UICorner", iz)).CornerRadius = UDim.new(1, 0);
local wz = Instance.new("TextLabel");
wz.Size = UDim2.new(0, 100, 0, 14);
wz.Position = UDim2.new(1, -108, 0, 8);
wz.BackgroundTransparency = 1;
wz.Text = "VISIBLE";
wz.TextColor3 = Color3.fromRGB(40, 255, 40);
wz.TextSize = 10;
wz.Font = Enum.Font.GothamBold;
wz.TextXAlignment = Enum.TextXAlignment.Right;
wz.Parent = xz;
local function Yy()
	local Y;
	if W.RGBESP then
		Y = Color3.fromHSV(((tick() * .4)) % 1, 1, 1);
	else
		Y = Color3.fromRGB(math.clamp(tonumber(W.ESPColorR) or 170, 0, 255), math.clamp(tonumber(W.ESPColorG) or 0, 0, 255), math.clamp(tonumber(W.ESPColorB) or 255, 0, 255));
	end;
	local G = tostring(W.BoxStyle or "Corner");
	local F = W.ShowBoxes ~= false and W.ESP ~= false;
	tz.Visible = F;
	oz.Enabled = ((G == "Full" or G == "Both")) and F;
	oz.Color = Y;
	for l, U in ipairs(rz) do
		U.Visible = ((G == "Corner" or G == "Both")) and F;
		U.BackgroundColor3 = Y;
	end;
	dz.Visible = W.ShowNames ~= false and W.ESP ~= false;
	dz.TextColor3 = Y;
	zz.Visible = W.ShowDistance ~= false and W.ESP ~= false;
	Bz.Visible = W.ShowHealth ~= false and W.ESP ~= false;
	ez.BackgroundColor3 = Y;
	iz.Visible = W.ShowHeadDot ~= false and W.ESP ~= false;
	iz.BackgroundColor3 = Y;
	wz.TextColor3 = Y;
	local l = Color3.fromRGB(55, 55, 70);
	local U = Color3.fromRGB(math.floor(Y.R * 180 + 40), math.floor(Y.G * 180 + 40), math.floor(Y.B * 180 + 40));
	for Y, G in ipairs(mz) do
		G.BackgroundColor3 = W.Chams and U or l;
	end;
	if W.Chams then
		sz.BackgroundColor3 = Color3.fromRGB(math.min(255, math.floor(Y.R * 200 + 50)), math.min(255, math.floor(Y.G * 200 + 50)), math.min(255, math.floor(Y.B * 200 + 50)));
	end;
end;
task.spawn(function()
	while Sz.Parent do
		Yy();
		task.wait(W.RGBESP and .08 or .25);
	end;
end);
Kz(Rz, "ESP");
Vz(Rz, "ESP Enabled", "ESP");
Vz(Rz, "Boxes", "ShowBoxes");
bz(Rz, "Box Style", "BoxStyle", { "Corner", "Full", "Both" });
Vz(Rz, "Names", "ShowNames");
Vz(Rz, "Distance", "ShowDistance");
Vz(Rz, "Health", "ShowHealth");
Vz(Rz, "Head Dot", "ShowHeadDot");
Vz(Rz, "Chams ESP", "Chams");
Vz(Rz, "Gadget ESP", "GadgetESP");
Vz(Rz, "Radar ESP", "Radar");
Cz(Rz, "Radar Size", "RadarSize", 80, 220, 5);
Cz(Rz, "Radar Range", "RadarRange", 50, 400, 10);
az(Rz, "Force Refresh ESP", At);
Kz(Rz, "ESP Color");
Vz(Rz, "RGB ESP", "RGBESP");
Cz(Rz, "Red", "ESPColorR", 0, 255, 1);
Cz(Rz, "Green", "ESPColorG", 0, 255, 1);
Cz(Rz, "Blue", "ESPColorB", 0, 255, 1);
Kz(Rz, "Crosshair");
bz(Rz, "Style", "CursorName", { "Off", "TC2", "Cinnamoroll" });
Cz(Rz, "Size", "CursorSize", 8, 128, 1);
Bt = function()
		L = h();
		local Y = L;
		for G, F in ipairs(m) do
			pcall(function()
				local G, l, U = F.kind, F.obj, F.extra;
				if G == "choiceRefresh" and (type(l) == "table" and l.refresh) then
					l.refresh();
					return;
				end;
				if not l or (typeof(l) == "Instance" and not l.Parent) then
					return;
				end;
				if G == "text" then
					l.TextColor3 = Y;
				elseif G == "fill" then
					l.BackgroundColor3 = Y;
				elseif G == "stroke" then
					l.Color = Y;
				elseif G == "toggle" then
					if W[U] then
						l.BackgroundColor3 = Y;
					end;
				elseif G == "choice" then
 
				end;
			end);
		end;
		for G, F in pairs(mt) do
			if F.TextColor3 ~= c then
				F.TextColor3 = Y;
			end;
		end;
		pcall(function()
			if rt then
				rt.Color = Y;
			end;
			if dt then
				dt.TextColor3 = Y;
			end;
			if Mz then
				Mz.TextColor3 = Y;
			end;
		end);
	end;
Kz(kz, "Accent Color");
Cz(kz, "Red", "DesignAccentR", 0, 255, 1);
Cz(kz, "Green", "DesignAccentG", 0, 255, 1);
Cz(kz, "Blue", "DesignAccentB", 0, 255, 1);
az(kz, "Apply Accent", Bt);
az(kz, "Reset Default", function()
	W.DesignAccentR, W.DesignAccentG, W.DesignAccentB = 138, 99, 255;
	Bt();
end);
Kz(kz, "Presets");
az(kz, "Purple", function()
	W.DesignAccentR, W.DesignAccentG, W.DesignAccentB = 138, 99, 255;
	Bt();
end);
az(kz, "Red", function()
	W.DesignAccentR, W.DesignAccentG, W.DesignAccentB = 255, 60, 60;
	Bt();
end);
az(kz, "Green", function()
	W.DesignAccentR, W.DesignAccentG, W.DesignAccentB = 60, 220, 100;
	Bt();
end);
az(kz, "Blue", function()
	W.DesignAccentR, W.DesignAccentG, W.DesignAccentB = 60, 140, 255;
	Bt();
end);
az(kz, "Orange", function()
	W.DesignAccentR, W.DesignAccentG, W.DesignAccentB = 255, 140, 40;
	Bt();
end);
az(kz, "White", function()
	W.DesignAccentR, W.DesignAccentG, W.DesignAccentB = 230, 230, 240;
	Bt();
end);
Kz(nz, "Credits");
local Gy = Instance.new("Frame");
Gy.LayoutOrder = jz(nz);
Gy.Size = UDim2.new(1, 0, 0, 120);
Gy.BackgroundColor3 = O;
Gy.BorderSizePixel = 0;
Gy.Parent = nz;
(Instance.new("UICorner", Gy)).CornerRadius = UDim.new(0, 10);
local Fy = Instance.new("TextLabel");
Fy.Size = UDim2.new(1, -20, 0, 28);
Fy.Position = UDim2.new(0, 12, 0, 12);
Fy.BackgroundTransparency = 1;
Fy.Text = "Thank you Darien";
Fy.TextColor3 = L;
Fy.TextSize = 16;
Fy.Font = Enum.Font.GothamBold;
Fy.TextXAlignment = Enum.TextXAlignment.Left;
Fy.Parent = Gy;
t("text", Fy);
local ly = Instance.new("TextLabel");
ly.Size = UDim2.new(1, -20, 0, 60);
ly.Position = UDim2.new(0, 12, 0, 44);
ly.BackgroundTransparency = 1;
ly.Text = "Thank you Darien for helping us.\nMoon Hub \194\183 Jailbird";
ly.TextColor3 = g;
ly.TextSize = 12;
ly.Font = f;
ly.TextXAlignment = Enum.TextXAlignment.Left;
ly.TextYAlignment = Enum.TextYAlignment.Top;
ly.TextWrapped = true;
ly.Parent = Gy;
Kz(Hz, "Config");
qz(Hz, "Name", "ConfigName", "default");
az(Hz, "Save", A);
az(Hz, "Load", function()
	Z();
end);
Kz(Hz, "Share Config");
local Uy = Instance.new("TextBox");
Uy.LayoutOrder = jz(Hz);
Uy.Size = UDim2.new(1, 0, 0, 72);
Uy.BackgroundColor3 = O;
Uy.BorderSizePixel = 0;
Uy.ClearTextOnFocus = false;
Uy.Text = "";
Uy.PlaceholderText = "Paste shared config JSON here";
Uy.PlaceholderColor3 = c;
Uy.TextColor3 = g;
Uy.TextSize = 11;
Uy.Font = f;
Uy.TextWrapped = true;
Uy.TextXAlignment = Enum.TextXAlignment.Left;
Uy.TextYAlignment = Enum.TextYAlignment.Top;
Uy.MultiLine = true;
Uy.Parent = Hz;
(Instance.new("UICorner", Uy)).CornerRadius = UDim.new(0, 8);
local My = Instance.new("UIPadding");
My.PaddingTop = UDim.new(0, 6);
My.PaddingLeft = UDim.new(0, 8);
My.PaddingRight = UDim.new(0, 8);
My.Parent = Uy;
az(Hz, "Export Config", function()
	local Y = H();
	if Y then
		Uy.Text = Y;
		if ot then
			ot.Text = "Exported \226\128\148 copied + shown in box (share this)";
		end;
	end;
end);
az(Hz, "Import Paste", function()
	T(Uy.Text);
end);
az(Hz, "Import Clipboard", function()
	S();
end);
az(Hz, "Clear Box", function()
	Uy.Text = "";
	if ot then
		ot.Text = "Share box cleared";
	end;
end);
az(Hz, "Reset Defaults", function()
	for Y, G in pairs(D) do
		W[Y] = G;
	end;
	Uy.Text = "";
	pcall(A);
	pcall(function()
		if w then
			w(W.CursorName);
		end;
	end);
	pcall(function()
		if Bt then
			Bt();
		end;
	end);
	pcall(function()
		if Rt then
			Rt();
		end;
	end);
	pcall(function()
		if Dt then
			Dt();
		end;
	end);
	if ot then
		ot.Text = "Config reset to defaults";
	end;
end);
Vz(Hz, "FPS + MS", "ShowPerf");
Vz(Hz, "Potato", "Potato");
Kz(Hz, "Status");
ot = Instance.new("TextLabel");
ot.LayoutOrder = jz(Hz);
ot.Size = UDim2.new(1, 0, 0, 40);
ot.BackgroundColor3 = O;
ot.BorderSizePixel = 0;
ot.Text = "Executor: " .. (q .. " | Vis: Green/Red");
ot.TextColor3 = g;
ot.TextSize = 12;
ot.Font = f;
ot.Parent = Hz;
(Instance.new("UICorner", ot)).CornerRadius = UDim.new(0, 8);
zt("Combat");
for Y, G in pairs(ft) do
	pcall(function()
		local Y = G:FindFirstChildOfClass("UIListLayout");
		if Y then
			G.CanvasSize = UDim2.new(0, 0, 0, Y.AbsoluteContentSize.Y + 16);
		end;
	end);
end;
tt = Instance.new("TextButton");
tt.Size = UDim2.new(0, 56, 0, 36);
tt.Position = UDim2.new(1, -66, 0, 12);
tt.BackgroundColor3 = Color3.fromRGB(30, 30, 40);
tt.Text = "OPEN";
tt.TextColor3 = L;
tt.TextSize = 14;
tt.Font = f;
tt.Visible = true;
tt.Parent = xt;
(Instance.new("UICorner", tt)).CornerRadius = UDim.new(0, 8);
local Qy = false;
tt.Active = true;
do
	local Y, G, l = false, nil, nil;
	tt.InputBegan:Connect(function(F)
		if F.UserInputType == Enum.UserInputType.MouseButton1 or F.UserInputType == Enum.UserInputType.Touch then
			Y = true;
			Qy = false;
			G = F.Position;
			l = tt.Position;
		end;
	end);
	F.InputEnded:Connect(function(G)
		if G.UserInputType == Enum.UserInputType.MouseButton1 or G.UserInputType == Enum.UserInputType.Touch then
			Y = false;
		end;
	end);
	F.InputChanged:Connect(function(F)
		if not Y or not G or not l then
			return;
		end;
		if F.UserInputType == Enum.UserInputType.MouseMovement or F.UserInputType == Enum.UserInputType.Touch then
			local Y = F.Position - G;
			if math.abs(Y.X) > 5 or math.abs(Y.Y) > 5 then
				Qy = true;
			end;
			tt.Position = UDim2.new(l.X.Scale, l.X.Offset + Y.X, l.Y.Scale, l.Y.Offset + Y.Y);
		end;
	end);
end;
tt.MouseButton1Click:Connect(function()
	if Qy then
		Qy = false;
		return;
	end;
	ht.Visible = true;
	tt.Visible = false;
end);
it = function()
		tt.Visible = not ht.Visible;
	end;
local py, vy, Py;
Fz.InputBegan:Connect(function(Y)
	if Y.UserInputType == Enum.UserInputType.MouseButton1 or Y.UserInputType == Enum.UserInputType.Touch then
		py = true;
		vy = Y.Position;
		Py = ht.Position;
	end;
end);
Fz.InputEnded:Connect(function(Y)
	if Y.UserInputType == Enum.UserInputType.MouseButton1 or Y.UserInputType == Enum.UserInputType.Touch then
		py = false;
	end;
end);
F.InputChanged:Connect(function(Y)
	if py and ((Y.UserInputType == Enum.UserInputType.MouseMovement or Y.UserInputType == Enum.UserInputType.Touch)) then
		local G = Y.Position - vy;
		ht.Position = UDim2.new(Py.X.Scale, Py.X.Offset + G.X, Py.Y.Scale, Py.Y.Offset + G.Y);
	end;
end);
Qz.MouseButton1Click:Connect(function()
	ht.Visible = false;
	it();
end);
F.InputBegan:Connect(function(Y)
	if Y.KeyCode == Enum.KeyCode.RightControl or Y.KeyCode == Enum.KeyCode.LeftControl then
		ht.Visible = not ht.Visible;
		it();
		d();
	end;
end);
local Jy = {
		MB1 = Enum.UserInputType.MouseButton1,
		MB2 = Enum.UserInputType.MouseButton2,
		E = Enum.KeyCode.E,
		Q = Enum.KeyCode.Q,
		F = Enum.KeyCode.F,
	};
local jy = false;
local Ky;
local function Vy(Y)
	local G = Jy[W.AimKey] or Enum.UserInputType.MouseButton2;
	local F = tostring(G);
	if string.find(F, "MouseButton", 1, true) then
		return Y.UserInputType == G;
	end;
	if string.find(F, "KeyCode", 1, true) then
		return Y.KeyCode == G;
	end;
	return false;
end;
F.InputBegan:Connect(function(Y, G)
	if not W.Aimbot or W.MobileAim then
		return;
	end;
	if not Vy(Y) then
		return;
	end;
	if W.AimMode == "Hold" then
		jy = true;
	elseif W.AimMode == "Toggle" then
		jy = not jy;
	end;
end);
F.InputEnded:Connect(function(Y)
	if W.AimMode == "Hold" and Vy(Y) then
		jy = false;
	end;
end);
local function Cy(Y)
	if Ky then
		Ky:Disconnect();
		Ky = nil;
	end;
	if not Y then
		local Y = Mt(j);
		if Y then
			for Y, G in ipairs(Y:GetDescendants()) do
				if G:IsA("BasePart") then
					G.CanCollide = true;
				end;
			end;
		end;
		return;
	end;
	Ky = l.Stepped:Connect(function()
			local Y = Mt(j);
			if not Y then
				return;
			end;
			for Y, G in ipairs(Y:GetDescendants()) do
				if G:IsA("BasePart") then
					G.CanCollide = false;
				end;
			end;
		end);
end;
task.spawn(function()
	while true do
		task.wait(.2);
		if W.AntiBow then
			pcall(function()
				local Y = Mt(j);
				if not Y then
					return;
				end;
				local G = Y:FindFirstChild("HumanoidRootPart");
				local F = Y:FindFirstChildOfClass("Humanoid");
				if not G or not F or F.Health <= 0 then
					return;
				end;
				local l = F:GetState();
				if l == Enum.HumanoidStateType.Jumping or l == Enum.HumanoidStateType.Freefall then
					return;
				end;
				if G.CFrame.UpVector:Dot(Vector3.yAxis) >= .92 then
					return;
				end;
				local U, M = G.CFrame:ToOrientation();
				G.CFrame = CFrame.new(G.Position) * CFrame.Angles(0, M, 0);
			end);
		end;
	end;
end);
task.spawn(function()
	while true do
		task.wait(.5);
		if W.StreamProof then
			local Y = tostring(W.SpoofName);
			if W.ShowVerified then
				Y = Y .. (" " .. Nt);
			end;
			pcall(function()
				j.DisplayName = Y;
			end);
		end;
	end;
end);
local by = 33054943;
local Ey = {};
task.spawn(function()
	while true do
		task.wait(2);
		if false and W.StaffDetect then
			for Y, G in ipairs(Y:GetPlayers()) do
				if G ~= j then
					local Y, F = pcall(function()
							return G:GetRankInGroup(by);
						end);
					if Y and (type(F) == "number" and F >= 51) then
						if not Ey[G.UserId] then
							Ey[G.UserId] = true;
							if W.StaffLeave then
								pcall(function()
									j:Kick("Staff");
								end);
							end;
						end;
					end;
				end;
			end;
		end;
	end;
end);
local qy = Instance.new("ScreenGui");
qy.Name = "MoonFOVGui";
qy.ResetOnSpawn = false;
qy.IgnoreGuiInset = true;
qy.DisplayOrder = 99999;
qy.Parent = C;
ut = Instance.new("Frame");
ut.AnchorPoint = Vector2.new(.5, .5);
ut.Size = UDim2.new(0, 300, 0, 300);
ut.Position = UDim2.new(.5, 0, .5, 0);
ut.BackgroundTransparency = 1;
ut.BorderSizePixel = 0;
ut.Visible = false;
ut.ZIndex = 999;
ut.Parent = qy;
pcall(function()
	(Instance.new("UICorner", ut)).CornerRadius = UDim.new(1, 0);
end);
rt = nil;
pcall(function()
	rt = Instance.new("UIStroke");
	rt.Color = Color3.new(1, 1, 1);
	rt.Thickness = 1.5;
	rt.ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	rt.Parent = ut;
end);
local ay, yy, Wy, Dy = 0, tick(), 0, 0;
l.Heartbeat:Connect(function()
	local Y = Mt(j);
	if Y then
		local G = Y:FindFirstChildOfClass("Humanoid");
		if W.Speed and (G and G.Health > 0) then
			G.WalkSpeed = W.SpeedValue or 24;
		end;
		if W.Noclip then
			if not Ky then
				Cy(true);
			end;
		elseif Ky then
			Cy(false);
		end;
	end;
	Tt(W.Potato == true);
	pcall(runTriggerbot);
	pcall(runKillAura);
end);
l.RenderStepped:Connect(function()
	pcall(function()
		ay = ay + 1;
		if tick() - yy >= 1 then
			Wy = ay;
			ay = 0;
			yy = tick();
		end;
		if e.Visible then
			if F.TouchEnabled and not F.KeyboardEnabled then
				local Y = J.ViewportSize;
				e.Position = UDim2.new(0, Y.X / 2, 0, Y.Y / 2);
			else
				local Y = F:GetMouseLocation();
				e.Position = UDim2.new(0, Y.X, 0, Y.Y);
			end;
		end;
		if W.CustomFOV then
			Gt();
		end;
		Ft = false;
		local Y, G, l = false, W.AimSmooth or .95, W.AimFOV or 150;
		if W.KillAura and (kaTarget and Qt(kaTarget)) then
			Ft = true;
		elseif not W.KillAura then
			if W.MobileAim then
				Y = true;
				G = W.MobileSmooth or .9;
				l = W.MobileFOV or 160;
			elseif W.Aimbot then
				Y = jy or W.AimMode == "Always";
				G = W.AimSmooth or .95;
				l = W.AimFOV or 150;
			end;
		end;
		if Y then
			local Y, F = vt(l, true);
			if F then
				Ft = true;
				if G >= .98 then
					J.CFrame = CFrame.new(J.CFrame.Position, F);
				else
					J.CFrame = J.CFrame:Lerp(CFrame.new(J.CFrame.Position, F), math.clamp(G, .1, 1));
				end;
				Ut(F);
			end;
		end;
		lt();
		pcall(Wt);
		pcall(Zt);
		pcall(kt);
		pcall(Ht);
		Dy = Dy + 1;
		if Dy >= 2 then
			Dy = 0;
			pcall(Ct);
		end;
		pcall(function()
			local Y = J.ViewportSize / 2;
			if Kt then
				Kt.Position = Y;
				Kt.Radius = tonumber(W.SilentFOV) or 90;
				Kt.Visible = W.SilentAim and W.SilentShowFOV;
				if W.RGBESP then
					Kt.Color = r();
				else
					Kt.Color = h();
				end;
			end;
			if Vt then
				local G = W.SilentAim and (W.SilentShowLine and Pt()) or nil;
				if G then
					local F, l = J:WorldToViewportPoint(G.Position);
					if l then
						Vt.From = Y;
						Vt.To = Vector2.new(F.X, F.Y);
						Vt.Visible = true;
						if W.RGBESP then
							Vt.Color = r();
						else
							Vt.Color = h();
						end;
					else
						Vt.Visible = false;
					end;
				else
					Vt.Visible = false;
				end;
			end;
		end);
		local U, M = false, W.AimFOV or 150;
		if W.MobileAim then
			U = W.MobileShowFOV;
			M = W.MobileFOV or 160;
		else
			U = W.ShowFOV;
			M = W.AimFOV or 150;
		end;
		ut.Size = UDim2.new(0, M * 2, 0, M * 2);
		ut.Position = UDim2.new(.5, 0, .5, 0);
		ut.Visible = U;
		if rt then
			if W.RGBESP then
				rt.Color = r();
			end;
		end;
	end);
end);
dt = Instance.new("TextLabel");
dt.Name = "MoonFPSLabel";
dt.BackgroundTransparency = 1;
dt.TextColor3 = L;
dt.TextSize = 14;
dt.Font = Enum.Font.GothamBold;
dt.TextStrokeTransparency = 0;
dt.Position = UDim2.new(0, 10, 0, 10);
dt.Size = UDim2.new(0, 200, 0, 20);
dt.Visible = false;
dt.Parent = C;
task.spawn(function()
	while true do
		task.wait(.5);
		if W.ShowPerf then
			local Y = 0;
			pcall(function()
				Y = math.floor(M.Network.ServerStatsItem["Data Ping"]:GetValue());
			end);
			dt.Text = "FPS: " .. (Wy .. ("  MS: " .. Y));
			dt.Visible = true;
		else
			dt.Visible = false;
		end;
	end;
end);
task.spawn(function()
	while true do
		task.wait(15);
		A();
	end;
end);
if W.CursorName and W.CursorName ~= "Off" then
	w(W.CursorName);
end;
if W.CustomFOV then
	Gt();
end;
y(1, "Done");
task.wait(.35);
pcall(function()
	a:Destroy();
end);
ht.Visible = true;
tt.Visible = false;
print("[Moon Hub] PUBLIC MOBILE | " .. (q .. " | Vis Green/Red"));
