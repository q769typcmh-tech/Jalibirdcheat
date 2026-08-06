return(function(WRE4R, ...)
local BxHRZs = {"RzzNzD";"BQ1kDcpOFxNSwzj9S";"vuLf6pxDNQUyqQz0z";"TqGwV0x0fNXUREjS";"tr7B";"WJA5zFkRZwQ"}
local oqGZS42d = function(...)
-- Moon Hub | Jailbird | Clean (obfuscation-safe)
-- Cursor picker + SIZE · Potato · Radar · Device spoof
-- Made by mr larper

local getgenv = getgenv or function() return _G end
local Players = game:GetService(loadstring(base64decode("UGxheWVycw=="))())
local UIS = game:GetService(loadstring(base64decode("VXNlcklucHV0U2VydmljZQ=="))())
local RunService = game:GetService(loadstring(base64decode("UnVuU2VydmljZQ=="))())
local Lighting = game:GetService(loadstring(base64decode("TGlnaHRpbmc="))())
local Stats = game:GetService(loadstring(base64decode("U3RhdHM="))())
local HttpService = game:GetService(loadstring(base64decode("SHR0cFNlcnZpY2U="))())
local ReplicatedStorage = game:GetService(loadstring(base64decode("UmVwbGljYXRlZFN0b3JhZ2U="))())
local Camera = workspace.CurrentCamera
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild(loadstring(base64decode("UGxheWVyR3Vp"))())
local Mouse = LocalPlayer:GetMouse()

local function safeWrite(path, data)
    pcall(function()
        if writefile then writefile(path, data) end
    end)
end
local function safeRead(path)
    local ok, data = pcall(function()
        if isfile and isfile(path) and readfile then
            return readfile(path)
        end
    end)
    if ok then return data end
    return nil
end
local function safeFolder(name)
    pcall(function()
        if makefolder then makefolder(name) end
    end)
end
safeFolder(loadstring(base64decode("TW9vbkh1Yg=="))())
safeFolder(loadstring(base64decode("TW9vbkh1Yi9Db25maWdz"))())

getgenv().MoonHubState = getgenv().MoonHubState or {}
local S = getgenv().MoonHubState
local DEF = {
    Aimbot = false, AimKey = loadstring(base64decode("TUIy"))(), AimMode = loadstring(base64decode("SG9sZA=="))(),
    AimFOV = 150, AimSmooth = 0.95, ShowFOV = false,
    WallCheck = true, TeamCheck = true, Prediction = true, PredictAmount = 0.12,
    Triggerbot = false, TriggerFOV = 45,
    NoRecoil = false, RecoilAmount = 0,
    Speed = false, SpeedValue = 24, Noclip = false, AntiBow = true, Anticolisao = false,
    StreamProof = false, SpoofName = loadstring(base64decode("UGxheWVy"))(), ShowVerified = true,
    StaffDetect = false, StaffNotify = true, StaffLeave = false,
    ESP = false, ShowBoxes = true, BoxStyle = loadstring(base64decode("Q29ybmVy"))(),
    ShowNames = true, ShowDistance = true, ShowHealth = true, ShowHeadDot = true,
    Radar = false, RadarSize = 140, RadarRange = 200,
    CursorName = loadstring(base64decode("T2Zm"))(), CursorSize = 32,
    DeviceSpoof = false, DeviceMode = loadstring(base64decode("Q29uc29sZQ=="))(), DeviceSpoofDelay = 1.5,
    ShowPerf = true, Potato = false,
    MobileAim = false, MobileSmooth = 0.9, MobileFOV = 160, MobileShowFOV = true,
    ConfigName = loadstring(base64decode("ZGVmYXVsdA=="))(),
}
for 492aH8cR, v in pairs(DEF) do
    if S[492aH8cR] == nil then S[492aH8cR] = v end
end
if type(S.AimSmooth) ~= loadstring(base64decode("bnVtYmVy"))() then S.AimSmooth = 0.95 end
if type(S.DeviceSpoofDelay) ~= loadstring(base64decode("bnVtYmVy"))() then S.DeviceSpoofDelay = 1.5 end
if type(S.CursorSize) ~= loadstring(base64decode("bnVtYmVy"))() then S.CursorSize = 32 end
S.AutoMatch = nil
S.GunCursor = nil

local function saveNamedConfig(name)
    name = tostring(name or S.ConfigName or loadstring(base64decode("ZGVmYXVsdA=="))()):gsub(loadstring(base64decode("W14ldyUtJV9d"))(), loadstring(base64decode(""))())
    if name == loadstring(base64decode(""))() then name = loadstring(base64decode("ZGVmYXVsdA=="))() end
    S.ConfigName = name
    S.AutoMatch = nil
    safeWrite(loadstring(base64decode("TW9vbkh1Yi9Db25maWdzLw=="))() .. name .. loadstring(base64decode("Lmpzb24="))(), HttpService:JSONEncode(S))
    safeWrite(loadstring(base64decode("TW9vbkh1Yi9KYWlsYmlyZC5qc29u"))(), HttpService:JSONEncode(S))
end
local function loadNamedConfig(name)
    name = tostring(name or S.ConfigName or loadstring(base64decode("ZGVmYXVsdA=="))()):gsub(loadstring(base64decode("W14ldyUtJV9d"))(), loadstring(base64decode(""))())
    local raw = safeRead(loadstring(base64decode("TW9vbkh1Yi9Db25maWdzLw=="))() .. name .. loadstring(base64decode("Lmpzb24="))()) or safeRead(loadstring(base64decode("TW9vbkh1Yi9KYWlsYmlyZC5qc29u"))())
    if raw then
        pcall(function()
            local data = HttpService:JSONDecode(raw)
            if type(data) == loadstring(base64decode("dGFibGU="))() then
                for 492aH8cR, v in pairs(data) do S[492aH8cR] = v end
            end
        end)
    end
    S.ConfigName = name
    S.AutoMatch = nil
end
loadNamedConfig(S.ConfigName or loadstring(base64decode("ZGVmYXVsdA=="))())

pcall(function()
    local o = PlayerGui:FindFirstChild(loadstring(base64decode("TW9vbkh1YlVJ"))())
    if o then o:Destroy() end
    local c = PlayerGui:FindFirstChild(loadstring(base64decode("TW9vbkN1cnNvclVJ"))())
    if c then c:Destroy() end
end)

local HasDrawing = false
pcall(function()
    if Drawing and Drawing.new then
        local t = Drawing.new(loadstring(base64decode("VGV4dA=="))())
        t.Visible = false
        t:Remove()
        HasDrawing = true
    end
end)

local ACCENT = Color3.fromRGB(138, 99, 255)
local BG = Color3.fromRGB(12, 12, 16)
local PANEL = Color3.fromRGB(18, 18, 24)
local CARD = Color3.fromRGB(20, 20, 28)
local TEXT = Color3.fromRGB(235, 235, 245)
local MUTED = Color3.fromRGB(160, 160, 180)
local FONT = Enum.Font.Gotham
pcall(function() FONT = Enum.Font.GothamMedium end)
local T_MAIN, T_PANEL, T_CARD, T_DIM, T_IMG = 0.55, 0.55, 0.5, 0.7, 0.08

local function unlockMouse()
    pcall(function()
        UIS.MouseBehavior = Enum.MouseBehavior.Default
        UIS.MouseIconEnabled = true
    end)
end

------------------------------------------------
-- CURSOR + SIZE (custom ImageLabel — Mouse.Icon cannot resize)
------------------------------------------------
local CURSORS = {
    { Name = loadstring(base64decode("T2Zm"))(),            Id = nil },
    { Name = loadstring(base64decode("R2FtZSBDcm9zc2hhaXI="))(), Id = loadstring(base64decode("R0FNRQ=="))() },
    { Name = loadstring(base64decode("U3RhciBXYXJz"))(),      Id = loadstring(base64decode("NTQ2MjgzMQ=="))() },
    { Name = loadstring(base64decode("U25vd2ZsYWtl"))(),      Id = loadstring(base64decode("MTE3ODA5NjgyMzk="))() },
    { Name = loadstring(base64decode("UmVkIERvdA=="))(),        Id = loadstring(base64decode("NDEyMjg0ODYy"))() },
    { Name = loadstring(base64decode("RGlhbW9uZA=="))(),        Id = loadstring(base64decode("NjEyMTA5OTQ="))() },
    { Name = loadstring(base64decode("SGVsbG8gS2l0dHk="))(),    Id = loadstring(base64decode("MTA5NzMyMzczMjc="))() },
    { Name = loadstring(base64decode("RXll"))(),            Id = loadstring(base64decode("MTI1MzQxMDE0MzM="))() },
}
local CURSOR_NAMES = {}
for kCXQgvu1, c in ipairs(CURSORS) do CURSOR_NAMES[kCXQgvu1] = c.Name end

local CursorGui = Instance.new(loadstring(base64decode("U2NyZWVuR3Vp"))())
CursorGui.Name = loadstring(base64decode("TW9vbkN1cnNvclVJ"))()
CursorGui.ResetOnSpawn = false
CursorGui.IgnoreGuiInset = true
CursorGui.DisplayOrder = 10000
CursorGui.Parent = PlayerGui

local CursorImg = Instance.new(loadstring(base64decode("SW1hZ2VMYWJlbA=="))())
CursorImg.Name = loadstring(base64decode("Q3Vyc29y"))()
CursorImg.BackgroundTransparency = 1
CursorImg.AnchorPoint = Vector2.new(0.5, 0.5)
CursorImg.Size = UDim2.new(0, 32, 0, 32)
CursorImg.Visible = false
CursorImg.ZIndex = 100
CursorImg.Image = loadstring(base64decode(""))()
CursorImg.Parent = CursorGui

local function getCrosshair()
    local ok, ch = pcall(function()
        return PlayerGui:FindFirstChild(loadstring(base64decode("Q3Jvc3NoYWly"))())
    end)
    if ok then return ch end
    return nil
end

local function setGameCrosshair(on)
    local ch = getCrosshair()
    if not ch then return end
    pcall(function()
        if ch:IsA(loadstring(base64decode("U2NyZWVuR3Vp"))()) then ch.Enabled = on end
        ch.Visible = on
        for _, d in ipairs(ch:GetDescendants()) do
            if d:IsA(loadstring(base64decode("R3VpT2JqZWN0"))()) then d.Visible = on end
            if (d:IsA(loadstring(base64decode("SW1hZ2VMYWJlbA=="))()) or d:IsA(loadstring(base64decode("SW1hZ2VCdXR0b24="))())) and on then
                d.ImageTransparency = 0
            end
        end
    end)
end

local function applyCursorByName(name)
    name = name or S.CursorName or loadstring(base64decode("T2Zm"))()
    S.CursorName = name
    local entry
    for _, c in ipairs(CURSORS) do
        if c.Name == name then entry = c break end
    end
    if not entry then entry = CURSORS[1] end

    setGameCrosshair(false)
    CursorImg.Visible = false

    local sz = math.clamp(tonumber(S.CursorSize) or 32, 8, 128)
    CursorImg.Size = UDim2.new(0, sz, 0, sz)

    if entry.Id == nil or entry.Name == loadstring(base64decode("T2Zm"))() then
        pcall(function()
            Mouse.Icon = loadstring(base64decode(""))()
            UIS.MouseIconEnabled = true
        end)
        return
    end

    if entry.Id == loadstring(base64decode("R0FNRQ=="))() then
        setGameCrosshair(true)
        pcall(function()
            Mouse.Icon = loadstring(base64decode("cmJ4YXNzZXRpZDovLzA="))()
            UIS.MouseIconEnabled = true
        end)
        return
    end

    -- custom sized cursor
    pcall(function()
        UIS.MouseIconEnabled = false
        Mouse.Icon = loadstring(base64decode("cmJ4YXNzZXRpZDovLzA="))()
        CursorImg.Image = loadstring(base64decode("cmJ4YXNzZXRpZDovLw=="))() .. tostring(entry.Id)
        CursorImg.Visible = true
    end)
end

RunService.RenderStepped:Connect(function()
    if CursorImg.Visible then
        local pos = UIS:GetMouseLocation()
        CursorImg.Position = UDim2.new(0, pos.X, 0, pos.Y)
        local sz = math.clamp(tonumber(S.CursorSize) or 32, 8, 128)
        CursorImg.Size = UDim2.new(0, sz, 0, sz)
    end
end)

task.spawn(function()
    while true do
        task.wait(0.5)
        if S.CursorName and S.CursorName ~= loadstring(base64decode("T2Zm"))() then
            applyCursorByName(S.CursorName)
        end
    end
end)

PlayerGui.ChildAdded:Connect(function(child)
    if child.Name == loadstring(base64decode("Q3Jvc3NoYWly"))() and S.CursorName == loadstring(base64decode("R2FtZSBDcm9zc2hhaXI="))() then
        task.wait(0.1)
        applyCursorByName(loadstring(base64decode("R2FtZSBDcm9zc2hhaXI="))())
    end
end)

local SOLID_KEYS = {
    loadstring(base64decode("Ym94"))(),loadstring(base64decode("Y3JhdGU="))(),loadstring(base64decode("YmFycmVs"))(),loadstring(base64decode("ZHVtcHN0ZXI="))(),loadstring(base64decode("dHJhc2g="))(),loadstring(base64decode("Y29udGFpbmVy"))(),loadstring(base64decode("c2hpcHBpbmc="))(),
    loadstring(base64decode("c2FuZGJhZw=="))(),loadstring(base64decode("cGFsbGV0"))(),loadstring(base64decode("Zm9ya2xpZnQ="))(),loadstring(base64decode("dHJ1Y2s="))(),loadstring(base64decode("Y2Fy"))(),loadstring(base64decode("dmFu"))(),loadstring(base64decode("Z2VuZXJhdG9y"))(),
    loadstring(base64decode("ZWxlY3RyaWNhbA=="))(),loadstring(base64decode("ZnVzZQ=="))(),loadstring(base64decode("Y2FiaW5ldA=="))(),loadstring(base64decode("c2hlbGY="))(),loadstring(base64decode("bG9ja2Vy"))(),loadstring(base64decode("ZGVzaw=="))(),loadstring(base64decode("dGFibGU="))(),
    loadstring(base64decode("Y291Y2g="))(),loadstring(base64decode("YmVuY2g="))(),loadstring(base64decode("c3RhaXJz"))(),loadstring(base64decode("bGFkZGVy"))(),loadstring(base64decode("cmFtcA=="))(),loadstring(base64decode("cGlwZQ=="))(),loadstring(base64decode("dmVudA=="))(),
    loadstring(base64decode("ZG9vcg=="))(),loadstring(base64decode("d2luZG93"))(),loadstring(base64decode("Z2F0ZQ=="))(),loadstring(base64decode("ZmVuY2U="))(),loadstring(base64decode("cGlsbGFy"))(),
}
local function isSolidMapProp(part)
    if not part then return false end
    local n = string.lower(part.Name or loadstring(base64decode(""))())
    local full = string.lower(part:GetFullName() or loadstring(base64decode(""))())
    for kCXQgvu1 = 1, #SOLID_KEYS do
        if string.find(n, SOLID_KEYS[kCXQgvu1], 1, true) or string.find(full, SOLID_KEYS[kCXQgvu1], 1, true) then
            return true
        end
    end
    return false
end

local DeviceRemote = nil
pcall(function()
    DeviceRemote = ReplicatedStorage:WaitForChild(loadstring(base64decode("R2FtZUV2ZW50cw=="))(), 8):WaitForChild(loadstring(base64decode("RGV2aWNlVXBkYXRl"))(), 8)
end)
local function fireDeviceUpdate()
    if not DeviceRemote then
        pcall(function() DeviceRemote = ReplicatedStorage.GameEvents.DeviceUpdate end)
    end
    if not DeviceRemote then return end
    local mode = S.DeviceMode or loadstring(base64decode("Q29uc29sZQ=="))()
    pcall(function()
        if mode == loadstring(base64decode("Q29uc29sZQ=="))() then
            DeviceRemote:FireServer()
            pcall(function() DeviceRemote:FireServer(loadstring(base64decode("Q29uc29sZQ=="))()) end)
            pcall(function() DeviceRemote:FireServer(loadstring(base64decode("R2FtZXBhZA=="))()) end)
        elseif mode == loadstring(base64decode("RGVza3RvcA=="))() then
            DeviceRemote:FireServer(loadstring(base64decode("RGVza3RvcA=="))())
            pcall(function() DeviceRemote:FireServer(loadstring(base64decode("UEM="))()) end)
            pcall(function() DeviceRemote:FireServer(loadstring(base64decode("TW91c2VLZXlib2FyZA=="))()) end)
        elseif mode == loadstring(base64decode("TW9iaWxl"))() then
            DeviceRemote:FireServer(loadstring(base64decode("TW9iaWxl"))())
            pcall(function() DeviceRemote:FireServer(loadstring(base64decode("VG91Y2g="))()) end)
        end
    end)
end

local potatoOn, originalMaterials, originalLighting, disabledFX, potatoConn = false, {}, {}, {}, nil
local function isInAnyCharacter(obj)
    for _, plr in ipairs(Players:GetPlayers()) do
        if plr.Character and obj:IsDescendantOf(plr.Character) then return true end
    end
    return false
end
local function stripEffects(root)
    for _, obj in ipairs(root:GetDescendants()) do
        pcall(function()
            if obj:IsA(loadstring(base64decode("UGFydGljbGVFbWl0dGVy"))()) or obj:IsA(loadstring(base64decode("VHJhaWw="))()) or obj:IsA(loadstring(base64decode("QmVhbQ=="))())
            or obj:IsA(loadstring(base64decode("U21va2U="))()) or obj:IsA(loadstring(base64decode("RmlyZQ=="))()) or obj:IsA(loadstring(base64decode("U3BhcmtsZXM="))()) then
                if disabledFX[obj] == nil then disabledFX[obj] = obj.Enabled end
                obj.Enabled = false
            elseif obj:IsA(loadstring(base64decode("UG9pbnRMaWdodA=="))()) or obj:IsA(loadstring(base64decode("U3BvdExpZ2h0"))()) or obj:IsA(loadstring(base64decode("U3VyZmFjZUxpZ2h0"))()) then
                if disabledFX[obj] == nil then disabledFX[obj] = obj.Enabled end
                obj.Enabled = false
            end
        end)
    end
end
local function applyPotato(on)
    if on then
        if potatoOn then return end
        potatoOn = true
        pcall(function()
            originalLighting.GlobalShadows = Lighting.GlobalShadows
            originalLighting.FogEnd = Lighting.FogEnd
            originalLighting.Brightness = Lighting.Brightness
            originalLighting.EnvironmentDiffuseScale = Lighting.EnvironmentDiffuseScale
            originalLighting.EnvironmentSpecularScale = Lighting.EnvironmentSpecularScale
        end)
        pcall(function()
            Lighting.GlobalShadows = false
            Lighting.FogEnd = 9e9
            Lighting.Brightness = 2
            Lighting.EnvironmentDiffuseScale = 0
            Lighting.EnvironmentSpecularScale = 0
            if settings and settings().Rendering then
                settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
            end
        end)
        pcall(function()
            for _, fx in ipairs(Lighting:GetChildren()) do
                if fx:IsA(loadstring(base64decode("Qmxvb21FZmZlY3Q="))()) or fx:IsA(loadstring(base64decode("Qmx1ckVmZmVjdA=="))()) or fx:IsA(loadstring(base64decode("U3VuUmF5c0VmZmVjdA=="))())
                or fx:IsA(loadstring(base64decode("Q29sb3JDb3JyZWN0aW9uRWZmZWN0"))()) or fx:IsA(loadstring(base64decode("RGVwdGhPZkZpZWxkRWZmZWN0"))()) or fx:IsA(loadstring(base64decode("QXRtb3NwaGVyZQ=="))()) then
                    if disabledFX[fx] == nil then disabledFX[fx] = fx.Enabled end
                    fx.Enabled = false
                end
            end
        end)
        pcall(function()
            for _, obj in ipairs(workspace:GetDescendants()) do
                if obj:IsA(loadstring(base64decode("QmFzZVBhcnQ="))()) and not isInAnyCharacter(obj) then
                    if originalMaterials[obj] == nil then
                        originalMaterials[obj] = {Material=obj.Material, Reflectance=obj.Reflectance, CastShadow=obj.CastShadow}
                    end
                    obj.Material = Enum.Material.SmoothPlastic
                    obj.Reflectance = 0
                    obj.CastShadow = false
                end
            end
        end)
        stripEffects(workspace)
        if potatoConn then potatoConn:Disconnect() end
        potatoConn = workspace.DescendantAdded:Connect(function(obj)
            if not S.Potato then return end
            task.defer(function()
                pcall(function()
                    if obj:IsA(loadstring(base64decode("QmFzZVBhcnQ="))()) and not isInAnyCharacter(obj) then
                        originalMaterials[obj] = originalMaterials[obj] or {Material=obj.Material, Reflectance=obj.Reflectance, CastShadow=obj.CastShadow}
                        obj.Material = Enum.Material.SmoothPlastic
                        obj.Reflectance = 0
                        obj.CastShadow = false
                    elseif obj:IsA(loadstring(base64decode("UGFydGljbGVFbWl0dGVy"))()) or obj:IsA(loadstring(base64decode("VHJhaWw="))()) or obj:IsA(loadstring(base64decode("QmVhbQ=="))())
                        or obj:IsA(loadstring(base64decode("U21va2U="))()) or obj:IsA(loadstring(base64decode("RmlyZQ=="))()) or obj:IsA(loadstring(base64decode("U3BhcmtsZXM="))())
                        or obj:IsA(loadstring(base64decode("UG9pbnRMaWdodA=="))()) or obj:IsA(loadstring(base64decode("U3BvdExpZ2h0"))()) or obj:IsA(loadstring(base64decode("U3VyZmFjZUxpZ2h0"))()) then
                        obj.Enabled = false
                    end
                end)
            end)
        end)
    else
        if not potatoOn then return end
        potatoOn = false
        if potatoConn then potatoConn:Disconnect(); potatoConn = nil end
        pcall(function()
            if originalLighting.GlobalShadows ~= nil then Lighting.GlobalShadows = originalLighting.GlobalShadows end
            if originalLighting.FogEnd then Lighting.FogEnd = originalLighting.FogEnd end
            if originalLighting.Brightness then Lighting.Brightness = originalLighting.Brightness end
            if originalLighting.EnvironmentDiffuseScale then Lighting.EnvironmentDiffuseScale = originalLighting.EnvironmentDiffuseScale end
            if originalLighting.EnvironmentSpecularScale then Lighting.EnvironmentSpecularScale = originalLighting.EnvironmentSpecularScale end
            if settings and settings().Rendering then settings().Rendering.QualityLevel = Enum.QualityLevel.Automatic end
        end)
        for fx, was in pairs(disabledFX) do
            pcall(function() if fx and fx.Parent then fx.Enabled = was end end)
        end
        disabledFX = {}
        for part, data in pairs(originalMaterials) do
            pcall(function()
                if part and part.Parent then
                    part.Material = data.Material
                    part.Reflectance = data.Reflectance
                    part.CastShadow = data.CastShadow
                end
            end)
        end
        originalMaterials, originalLighting = {}, {}
    end
end

-- UI builders
local Gui = Instance.new(loadstring(base64decode("U2NyZWVuR3Vp"))())
Gui.Name = loadstring(base64decode("TW9vbkh1YlVJ"))()
Gui.ResetOnSpawn = false
Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Gui.IgnoreGuiInset = true
Gui.DisplayOrder = 999
Gui.Parent = PlayerGui

local vw = Camera.ViewportSize
local Main = Instance.new(loadstring(base64decode("RnJhbWU="))())
Main.Size = UDim2.new(0, math.min(560, vw.X - 30), 0, math.min(400, vw.Y - 60))
Main.Position = UDim2.new(0.5, -Main.Size.X.Offset / 2, 0.5, -Main.Size.Y.Offset / 2)
Main.BackgroundColor3 = BG
Main.BackgroundTransparency = T_MAIN
Main.BorderSizePixel = 0
Main.Parent = Gui
Instance.new(loadstring(base64decode("VUlDb3JuZXI="))(), Main).CornerRadius = UDim.new(0, 12)

local BgImg = Instance.new(loadstring(base64decode("SW1hZ2VMYWJlbA=="))())
BgImg.Size = UDim2.new(1, 0, 1, 0)
BgImg.BackgroundTransparency = 1
BgImg.Image = loadstring(base64decode("cmJ4YXNzZXRpZDovLzEzMjk0NDc0NTE4NDM3Mg=="))()
BgImg.ScaleType = Enum.ScaleType.Crop
BgImg.ImageTransparency = T_IMG
BgImg.ZIndex = 0
BgImg.Parent = Main
Instance.new(loadstring(base64decode("VUlDb3JuZXI="))(), BgImg).CornerRadius = UDim.new(0, 12)

local Dim = Instance.new(loadstring(base64decode("RnJhbWU="))())
Dim.Size = UDim2.new(1, 0, 1, 0)
Dim.BackgroundColor3 = Color3.fromRGB(5, 5, 10)
Dim.BackgroundTransparency = T_DIM
Dim.BorderSizePixel = 0
Dim.ZIndex = 1
Dim.Parent = Main
Instance.new(loadstring(base64decode("VUlDb3JuZXI="))(), Dim).CornerRadius = UDim.new(0, 12)

local Top = Instance.new(loadstring(base64decode("RnJhbWU="))())
Top.Size = UDim2.new(1, 0, 0, 42)
Top.BackgroundColor3 = PANEL
Top.BackgroundTransparency = T_PANEL
Top.BorderSizePixel = 0
Top.ZIndex = 3
Top.Parent = Main
Instance.new(loadstring(base64decode("VUlDb3JuZXI="))(), Top).CornerRadius = UDim.new(0, 12)
local TopFix = Instance.new(loadstring(base64decode("RnJhbWU="))())
TopFix.Size = UDim2.new(1, 0, 0, 12)
TopFix.Position = UDim2.new(0, 0, 1, -12)
TopFix.BackgroundColor3 = PANEL
TopFix.BackgroundTransparency = T_PANEL
TopFix.BorderSizePixel = 0
TopFix.ZIndex = 3
TopFix.Parent = Top
local line = Instance.new(loadstring(base64decode("RnJhbWU="))())
line.Size = UDim2.new(1, 0, 0, 2)
line.Position = UDim2.new(0, 0, 1, -2)
line.BackgroundColor3 = ACCENT
line.BorderSizePixel = 0
line.ZIndex = 4
line.Parent = Top

local Title = Instance.new(loadstring(base64decode("VGV4dExhYmVs"))())
Title.Size = UDim2.new(1, -40, 1, 0)
Title.Position = UDim2.new(0, 14, 0, 0)
Title.BackgroundTransparency = 1
Title.Text = loadstring(base64decode("TU9PTiBIVUIgIMK3ICBqYWlsYmlyZA=="))()
Title.TextColor3 = TEXT
Title.TextSize = 14
Title.Font = FONT
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.ZIndex = 4
Title.Parent = Top

local Close = Instance.new(loadstring(base64decode("VGV4dEJ1dHRvbg=="))())
Close.Size = UDim2.new(0, 28, 0, 28)
Close.Position = UDim2.new(1, -34, 0.5, -14)
Close.BackgroundColor3 = Color3.fromRGB(32, 28, 40)
Close.BackgroundTransparency = 0.3
Close.Text = loadstring(base64decode("WA=="))()
Close.TextColor3 = MUTED
Close.TextSize = 14
Close.Font = FONT
Close.ZIndex = 4
Close.Parent = Top
Instance.new(loadstring(base64decode("VUlDb3JuZXI="))(), Close).CornerRadius = UDim.new(0, 6)

local Side = Instance.new(loadstring(base64decode("U2Nyb2xsaW5nRnJhbWU="))())
Side.Size = UDim2.new(0, 110, 1, -52)
Side.Position = UDim2.new(0, 8, 0, 48)
Side.BackgroundColor3 = PANEL
Side.BackgroundTransparency = T_PANEL
Side.BorderSizePixel = 0
Side.ScrollBarThickness = 2
Side.AutomaticCanvasSize = Enum.AutomaticSize.Y
Side.CanvasSize = UDim2.new(0, 0, 0, 0)
Side.ZIndex = 3
Side.Parent = Main
Instance.new(loadstring(base64decode("VUlDb3JuZXI="))(), Side).CornerRadius = UDim.new(0, 8)
local SL = Instance.new(loadstring(base64decode("VUlMaXN0TGF5b3V0"))())
SL.Padding = UDim.new(0, 4)
SL.Parent = Side
local SPad = Instance.new(loadstring(base64decode("VUlQYWRkaW5n"))())
SPad.PaddingTop = UDim.new(0, 6)
SPad.PaddingLeft = UDim.new(0, 6)
SPad.PaddingRight = UDim.new(0, 6)
SPad.PaddingBottom = UDim.new(0, 6)
SPad.Parent = Side

local Content = Instance.new(loadstring(base64decode("RnJhbWU="))())
Content.Size = UDim2.new(1, -132, 1, -56)
Content.Position = UDim2.new(0, 124, 0, 50)
Content.BackgroundTransparency = 1
Content.ZIndex = 3
Content.Parent = Main

local Pages, TabBtns = {}, {}
local function showPage(name)
    for n, p in pairs(Pages) do p.Visible = (n == name) end
    for n, b in pairs(TabBtns) do
        b.BackgroundColor3 = (n == name) and Color3.fromRGB(35, 30, 55) or Color3.fromRGB(22, 22, 30)
        b.BackgroundTransparency = 0.35
        b.TextColor3 = (n == name) and ACCENT or MUTED
    end
    unlockMouse()
end

local function addTab(name)
    local page = Instance.new(loadstring(base64decode("U2Nyb2xsaW5nRnJhbWU="))())
    page.Size = UDim2.new(1, 0, 1, 0)
    page.BackgroundTransparency = 1
    page.BorderSizePixel = 0
    page.ScrollBarThickness = 3
    page.ScrollBarImageColor3 = ACCENT
    page.AutomaticCanvasSize = Enum.AutomaticSize.Y
    page.CanvasSize = UDim2.new(0, 0, 0, 0)
    page.Visible = false
    page.ZIndex = 3
    page.Parent = Content
    local lay = Instance.new(loadstring(base64decode("VUlMaXN0TGF5b3V0"))())
    lay.Padding = UDim.new(0, 6)
    lay.SortOrder = Enum.SortOrder.LayoutOrder
    lay.Parent = page
    local pad = Instance.new(loadstring(base64decode("VUlQYWRkaW5n"))())
    pad.PaddingTop = UDim.new(0, 2)
    pad.PaddingBottom = UDim.new(0, 10)
    pad.PaddingRight = UDim.new(0, 4)
    pad.Parent = page
    page:SetAttribute(loadstring(base64decode("Tw=="))(), 0)
    Pages[name] = page
    local btn = Instance.new(loadstring(base64decode("VGV4dEJ1dHRvbg=="))())
    btn.Size = UDim2.new(1, 0, 0, 30)
    btn.BackgroundColor3 = Color3.fromRGB(22, 22, 30)
    btn.BackgroundTransparency = 0.35
    btn.Text = name
    btn.TextColor3 = MUTED
    btn.TextSize = 12
    btn.Font = FONT
    btn.ZIndex = 4
    btn.Parent = Side
    Instance.new(loadstring(base64decode("VUlDb3JuZXI="))(), btn).CornerRadius = UDim.new(0, 6)
    btn.MouseButton1Click:Connect(function() showPage(name) end)
    TabBtns[name] = btn
    return page
end

local function nextO(page)
    local o = (page:GetAttribute(loadstring(base64decode("Tw=="))()) or 0) + 1
    page:SetAttribute(loadstring(base64decode("Tw=="))(), o)
    return o
end
local function addSection(page, title)
    local l = Instance.new(loadstring(base64decode("VGV4dExhYmVs"))())
    l.LayoutOrder = nextO(page)
    l.Size = UDim2.new(1, 0, 0, 16)
    l.BackgroundTransparency = 1
    l.Text = string.upper(title)
    l.TextColor3 = ACCENT
    l.TextSize = 11
    l.Font = FONT
    l.TextXAlignment = Enum.TextXAlignment.Left
    l.ZIndex = 4
    l.Parent = page
end

local ESPDraw, ESPHL = {}, {}
local function clearESP()
    for p, d in pairs(ESPDraw) do
        pcall(function()
            for _, x in pairs(d) do
                if type(x) == loadstring(base64decode("dGFibGU="))() then
                    for _, l in pairs(x) do if l then pcall(function() l:Remove() end) end end
                elseif x then
                    pcall(function() x:Remove() end)
                end
            end
        end)
        ESPDraw[p] = nil
    end
    for p, h in pairs(ESPHL) do
        pcall(function() if h then h:Destroy() end end)
        ESPHL[p] = nil
    end
end

local function addToggle(page, label, key)
    local row = Instance.new(loadstring(base64decode("RnJhbWU="))())
    row.LayoutOrder = nextO(page)
    row.Size = UDim2.new(1, 0, 0, 34)
    row.BackgroundColor3 = CARD
    row.BackgroundTransparency = T_CARD
    row.BorderSizePixel = 0
    row.ZIndex = 4
    row.Parent = page
    Instance.new(loadstring(base64decode("VUlDb3JuZXI="))(), row).CornerRadius = UDim.new(0, 8)
    local t = Instance.new(loadstring(base64decode("VGV4dExhYmVs"))())
    t.Size = UDim2.new(1, -60, 1, 0)
    t.Position = UDim2.new(0, 10, 0, 0)
    t.BackgroundTransparency = 1
    t.Text = label
    t.TextColor3 = TEXT
    t.TextSize = 12
    t.Font = FONT
    t.TextXAlignment = Enum.TextXAlignment.Left
    t.ZIndex = 5
    t.Parent = row
    local pill = Instance.new(loadstring(base64decode("VGV4dEJ1dHRvbg=="))())
    pill.Size = UDim2.new(0, 40, 0, 20)
    pill.Position = UDim2.new(1, -48, 0.5, -10)
    pill.BackgroundColor3 = S[key] and ACCENT or Color3.fromRGB(45, 45, 58)
    pill.BackgroundTransparency = 0.15
    pill.Text = loadstring(base64decode(""))()
    pill.ZIndex = 5
    pill.Parent = row
    Instance.new(loadstring(base64decode("VUlDb3JuZXI="))(), pill).CornerRadius = UDim.new(1, 0)
    local knob = Instance.new(loadstring(base64decode("RnJhbWU="))())
    knob.Size = UDim2.new(0, 14, 0, 14)
    knob.Position = S[key] and UDim2.new(1, -17, 0.5, -7) or UDim2.new(0, 3, 0.5, -7)
    knob.BackgroundColor3 = Color3.new(1, 1, 1)
    knob.BorderSizePixel = 0
    knob.ZIndex = 6
    knob.Parent = pill
    Instance.new(loadstring(base64decode("VUlDb3JuZXI="))(), knob).CornerRadius = UDim.new(1, 0)
    pill.MouseButton1Click:Connect(function()
        S[key] = not S[key]
        local on = S[key]
        pill.BackgroundColor3 = on and ACCENT or Color3.fromRGB(45, 45, 58)
        knob.Position = on and UDim2.new(1, -17, 0.5, -7) or UDim2.new(0, 3, 0.5, -7)
        if key == loadstring(base64decode("RVNQ"))() then clearESP() end
        if key == loadstring(base64decode("TW9iaWxlQWlt"))() and on then S.Aimbot = true end
        if key == loadstring(base64decode("RGV2aWNlU3Bvb2Y="))() and on then fireDeviceUpdate() end
        if key == loadstring(base64decode("UG90YXRv"))() then applyPotato(on) end
        saveNamedConfig(S.ConfigName)
        unlockMouse()
    end)
end

local function addSlider(page, label, key, min, max, step)
    local row = Instance.new(loadstring(base64decode("RnJhbWU="))())
    row.LayoutOrder = nextO(page)
    row.Size = UDim2.new(1, 0, 0, 48)
    row.BackgroundColor3 = CARD
    row.BackgroundTransparency = T_CARD
    row.BorderSizePixel = 0
    row.ZIndex = 4
    row.Parent = page
    Instance.new(loadstring(base64decode("VUlDb3JuZXI="))(), row).CornerRadius = UDim.new(0, 8)
    local t = Instance.new(loadstring(base64decode("VGV4dExhYmVs"))())
    t.Size = UDim2.new(0.65, 0, 0, 16)
    t.Position = UDim2.new(0, 10, 0, 4)
    t.BackgroundTransparency = 1
    t.Text = label
    t.TextColor3 = TEXT
    t.TextSize = 11
    t.Font = FONT
    t.TextXAlignment = Enum.TextXAlignment.Left
    t.ZIndex = 5
    t.Parent = row
    local val = Instance.new(loadstring(base64decode("VGV4dExhYmVs"))())
    val.Size = UDim2.new(0.3, -8, 0, 16)
    val.Position = UDim2.new(0.7, 0, 0, 4)
    val.BackgroundTransparency = 1
    val.Text = tostring(S[key])
    val.TextColor3 = ACCENT
    val.TextSize = 11
    val.Font = FONT
    val.TextXAlignment = Enum.TextXAlignment.Right
    val.ZIndex = 5
    val.Parent = row
    local bar = Instance.new(loadstring(base64decode("VGV4dEJ1dHRvbg=="))())
    bar.Size = UDim2.new(1, -20, 0, 8)
    bar.Position = UDim2.new(0, 10, 0, 28)
    bar.BackgroundColor3 = Color3.fromRGB(40, 40, 55)
    bar.BackgroundTransparency = 0.25
    bar.Text = loadstring(base64decode(""))()
    bar.ZIndex = 5
    bar.Parent = row
    Instance.new(loadstring(base64decode("VUlDb3JuZXI="))(), bar).CornerRadius = UDim.new(1, 0)
    local fill = Instance.new(loadstring(base64decode("RnJhbWU="))())
    fill.Size = UDim2.new(math.clamp((S[key] - min) / math.max(max - min, 0.001), 0, 1), 0, 1, 0)
    fill.BackgroundColor3 = ACCENT
    fill.BorderSizePixel = 0
    fill.ZIndex = 6
    fill.Parent = bar
    Instance.new(loadstring(base64decode("VUlDb3JuZXI="))(), fill).CornerRadius = UDim.new(1, 0)
    local function setX(x)
        local rel = math.clamp((x - bar.AbsolutePosition.X) / math.max(bar.AbsoluteSize.X, 1), 0, 1)
        local v = min + rel * (max - min)
        v = math.floor(v / step + 0.5) * step
        v = math.clamp(v, min, max)
        S[key] = v
        fill.Size = UDim2.new((v - min) / math.max(max - min, 0.001), 0, 1, 0)
        val.Text = tostring(v)
        if key == loadstring(base64decode("Q3Vyc29yU2l6ZQ=="))() then
            local sz = math.clamp(v, 8, 128)
            CursorImg.Size = UDim2.new(0, sz, 0, sz)
        end
        saveNamedConfig(S.ConfigName)
    end
    bar.MouseButton1Down:Connect(function()
        local c1, c2
        c1 = UIS.InputChanged:Connect(function(kCXQgvu1)
            if kCXQgvu1.UserInputType == Enum.UserInputType.MouseMovement or kCXQgvu1.UserInputType == Enum.UserInputType.Touch then
                setX(kCXQgvu1.Position.X)
            end
        end)
        c2 = UIS.InputEnded:Connect(function(kCXQgvu1)
            if kCXQgvu1.UserInputType == Enum.UserInputType.MouseButton1 or kCXQgvu1.UserInputType == Enum.UserInputType.Touch then
                if c1 then c1:Disconnect() end
                if c2 then c2:Disconnect() end
            end
        end)
        setX(UIS:GetMouseLocation().X)
    end)
end

local function addDropdown(page, label, key, options)
    local row = Instance.new(loadstring(base64decode("RnJhbWU="))())
    row.LayoutOrder = nextO(page)
    row.Size = UDim2.new(1, 0, 0, 34)
    row.BackgroundColor3 = CARD
    row.BackgroundTransparency = T_CARD
    row.BorderSizePixel = 0
    row.ZIndex = 4
    row.Parent = page
    Instance.new(loadstring(base64decode("VUlDb3JuZXI="))(), row).CornerRadius = UDim.new(0, 8)
    local t = Instance.new(loadstring(base64decode("VGV4dExhYmVs"))())
    t.Size = UDim2.new(0.4, 0, 1, 0)
    t.Position = UDim2.new(0, 10, 0, 0)
    t.BackgroundTransparency = 1
    t.Text = label
    t.TextColor3 = TEXT
    t.TextSize = 12
    t.Font = FONT
    t.TextXAlignment = Enum.TextXAlignment.Left
    t.ZIndex = 5
    t.Parent = row
    local idx = 1
    for kCXQgvu1, o in ipairs(options) do
        if o == S[key] then idx = kCXQgvu1 end
    end
    local btn = Instance.new(loadstring(base64decode("VGV4dEJ1dHRvbg=="))())
    btn.Size = UDim2.new(0.55, -12, 0, 22)
    btn.Position = UDim2.new(0.45, 0, 0.5, -11)
    btn.BackgroundColor3 = Color3.fromRGB(35, 32, 48)
    btn.BackgroundTransparency = 0.25
    btn.Text = tostring(S[key])
    btn.TextColor3 = ACCENT
    btn.TextSize = 11
    btn.Font = FONT
    btn.ZIndex = 5
    btn.Parent = row
    Instance.new(loadstring(base64decode("VUlDb3JuZXI="))(), btn).CornerRadius = UDim.new(0, 6)
    btn.MouseButton1Click:Connect(function()
        idx = idx % #options + 1
        S[key] = options[idx]
        btn.Text = options[idx]
        if key == loadstring(base64decode("RGV2aWNlTW9kZQ=="))() and S.DeviceSpoof then fireDeviceUpdate() end
        if key == loadstring(base64decode("Q3Vyc29yTmFtZQ=="))() then applyCursorByName(S.CursorName) end
        saveNamedConfig(S.ConfigName)
        unlockMouse()
    end)
end

local function addInput(page, label, key, ph)
    local row = Instance.new(loadstring(base64decode("RnJhbWU="))())
    row.LayoutOrder = nextO(page)
    row.Size = UDim2.new(1, 0, 0, 56)
    row.BackgroundColor3 = CARD
    row.BackgroundTransparency = T_CARD
    row.BorderSizePixel = 0
    row.ZIndex = 4
    row.Parent = page
    Instance.new(loadstring(base64decode("VUlDb3JuZXI="))(), row).CornerRadius = UDim.new(0, 8)
    local t = Instance.new(loadstring(base64decode("VGV4dExhYmVs"))())
    t.Size = UDim2.new(1, -16, 0, 16)
    t.Position = UDim2.new(0, 10, 0, 4)
    t.BackgroundTransparency = 1
    t.Text = label
    t.TextColor3 = MUTED
    t.TextSize = 11
    t.Font = FONT
    t.TextXAlignment = Enum.TextXAlignment.Left
    t.ZIndex = 5
    t.Parent = row
    local box = Instance.new(loadstring(base64decode("VGV4dEJveA=="))())
    box.Size = UDim2.new(1, -20, 0, 24)
    box.Position = UDim2.new(0, 10, 0, 24)
    box.BackgroundColor3 = Color3.fromRGB(14, 14, 20)
    box.BackgroundTransparency = 0.3
    box.BorderSizePixel = 0
    box.Text = tostring(S[key] or ph or loadstring(base64decode(""))())
    box.PlaceholderText = ph or loadstring(base64decode(""))()
    box.TextColor3 = TEXT
    box.TextSize = 12
    box.Font = FONT
    box.ClearTextOnFocus = false
    box.ZIndex = 5
    box.Parent = row
    Instance.new(loadstring(base64decode("VUlDb3JuZXI="))(), box).CornerRadius = UDim.new(0, 6)
    box.FocusLost:Connect(function()
        local v = box.Text
        if not v or v == loadstring(base64decode(""))() then v = ph or loadstring(base64decode("ZGVmYXVsdA=="))(); box.Text = v end
        S[key] = v
        saveNamedConfig(S.ConfigName)
        unlockMouse()
    end)
end

local function addButton(page, label, fn)
    local btn = Instance.new(loadstring(base64decode("VGV4dEJ1dHRvbg=="))())
    btn.LayoutOrder = nextO(page)
    btn.Size = UDim2.new(1, 0, 0, 32)
    btn.BackgroundColor3 = Color3.fromRGB(35, 30, 55)
    btn.BackgroundTransparency = 0.3
    btn.Text = label
    btn.TextColor3 = ACCENT
    btn.TextSize = 12
    btn.Font = FONT
    btn.ZIndex = 4
    btn.Parent = page
    Instance.new(loadstring(base64decode("VUlDb3JuZXI="))(), btn).CornerRadius = UDim.new(0, 8)
    btn.MouseButton1Click:Connect(function()
        fn()
        unlockMouse()
    end)
end

local Combat = addTab(loadstring(base64decode("Q29tYmF0"))())
local PlayerT = addTab(loadstring(base64decode("UGxheWVy"))())
local Stream = addTab(loadstring(base64decode("U3RyZWFt"))())
local Staff = addTab(loadstring(base64decode("U3RhZmY="))())
local Mobile = addTab(loadstring(base64decode("TW9iaWxl"))())
local Visuals = addTab(loadstring(base64decode("VmlzdWFscw=="))())
local Sett = addTab(loadstring(base64decode("Q29uZmln"))())

addSection(Combat, loadstring(base64decode("QWltYm90"))())
addToggle(Combat, loadstring(base64decode("QWltYm90"))(), loadstring(base64decode("QWltYm90"))())
addDropdown(Combat, loadstring(base64decode("S2V5"))(), loadstring(base64decode("QWltS2V5"))(), {loadstring(base64decode("TUIx"))(), loadstring(base64decode("TUIy"))(), loadstring(base64decode("RQ=="))(), loadstring(base64decode("UQ=="))(), loadstring(base64decode("Rg=="))()})
addDropdown(Combat, loadstring(base64decode("TW9kZQ=="))(), loadstring(base64decode("QWltTW9kZQ=="))(), {loadstring(base64decode("SG9sZA=="))(), loadstring(base64decode("VG9nZ2xl"))(), loadstring(base64decode("QWx3YXlz"))()})
addSlider(Combat, loadstring(base64decode("Rk9W"))(), loadstring(base64decode("QWltRk9W"))(), 40, 350, 1)
addSlider(Combat, loadstring(base64decode("U21vb3RoIDE9aW5zdGFudA=="))(), loadstring(base64decode("QWltU21vb3Ro"))(), 0.1, 1, 0.05)
addToggle(Combat, loadstring(base64decode("U2hvdyBGT1Y="))(), loadstring(base64decode("U2hvd0ZPVg=="))())
addToggle(Combat, loadstring(base64decode("V2FsbCBDaGVjaw=="))(), loadstring(base64decode("V2FsbENoZWNr"))())
addToggle(Combat, loadstring(base64decode("VGVhbSBDaGVjaw=="))(), loadstring(base64decode("VGVhbUNoZWNr"))())
addToggle(Combat, loadstring(base64decode("UHJlZGljdGlvbg=="))(), loadstring(base64decode("UHJlZGljdGlvbg=="))())
addSlider(Combat, loadstring(base64decode("UHJlZGljdCBBbW91bnQ="))(), loadstring(base64decode("UHJlZGljdEFtb3VudA=="))(), 0, 0.35, 0.01)
addSection(Combat, loadstring(base64decode("T3RoZXI="))())
addToggle(Combat, loadstring(base64decode("VHJpZ2dlcmJvdA=="))(), loadstring(base64decode("VHJpZ2dlcmJvdA=="))())
addSlider(Combat, loadstring(base64decode("VHJpZ2dlciBGT1Y="))(), loadstring(base64decode("VHJpZ2dlckZPVg=="))(), 10, 120, 1)
addToggle(Combat, loadstring(base64decode("Tm8gUmVjb2ls"))(), loadstring(base64decode("Tm9SZWNvaWw="))())
addSlider(Combat, loadstring(base64decode("UmVjb2lsIEFtdA=="))(), loadstring(base64decode("UmVjb2lsQW1vdW50"))(), 0, 1, 0.05)

addSection(PlayerT, loadstring(base64decode("TW92ZQ=="))())
addToggle(PlayerT, loadstring(base64decode("U3BlZWQ="))(), loadstring(base64decode("U3BlZWQ="))())
addSlider(PlayerT, loadstring(base64decode("U3BlZWQgVmFsdWU="))(), loadstring(base64decode("U3BlZWRWYWx1ZQ=="))(), 16, 80, 1)
addToggle(PlayerT, loadstring(base64decode("Tm9jbGlw"))(), loadstring(base64decode("Tm9jbGlw"))())
addToggle(PlayerT, loadstring(base64decode("QW50aS1Cb3c="))(), loadstring(base64decode("QW50aUJvdw=="))())
addToggle(PlayerT, loadstring(base64decode("QW50aWNvbGlzw6Nv"))(), loadstring(base64decode("QW50aWNvbGlzYW8="))())
addSection(PlayerT, loadstring(base64decode("RGV2aWNlIFNwb29m"))())
addToggle(PlayerT, loadstring(base64decode("RGV2aWNlIFNwb29mIChsb29wKQ=="))(), loadstring(base64decode("RGV2aWNlU3Bvb2Y="))())
addDropdown(PlayerT, loadstring(base64decode("RGV2aWNlIE1vZGU="))(), loadstring(base64decode("RGV2aWNlTW9kZQ=="))(), {loadstring(base64decode("Q29uc29sZQ=="))(), loadstring(base64decode("RGVza3RvcA=="))(), loadstring(base64decode("TW9iaWxl"))()})
addSlider(PlayerT, loadstring(base64decode("U3Bvb2YgRGVsYXkgKHNlYyk="))(), loadstring(base64decode("RGV2aWNlU3Bvb2ZEZWxheQ=="))(), 0.5, 5, 0.1)
addButton(PlayerT, loadstring(base64decode("QXBwbHkgRGV2aWNlIE5vdw=="))(), function()
    fireDeviceUpdate()
end)

addSection(Stream, loadstring(base64decode("U3RyZWFt"))())
addToggle(Stream, loadstring(base64decode("U3RyZWFtIFByb29m"))(), loadstring(base64decode("U3RyZWFtUHJvb2Y="))())
addInput(Stream, loadstring(base64decode("RGlzcGxheSBuYW1l"))(), loadstring(base64decode("U3Bvb2ZOYW1l"))(), loadstring(base64decode("UGxheWVy"))())
addToggle(Stream, loadstring(base64decode("VmVyaWZpZWQ="))(), loadstring(base64decode("U2hvd1ZlcmlmaWVk"))())

addSection(Staff, loadstring(base64decode("U3RhZmY="))())
addToggle(Staff, loadstring(base64decode("RGV0ZWN0"))(), loadstring(base64decode("U3RhZmZEZXRlY3Q="))())
addToggle(Staff, loadstring(base64decode("Tm90aWZ5"))(), loadstring(base64decode("U3RhZmZOb3RpZnk="))())
addToggle(Staff, loadstring(base64decode("TGVhdmU="))(), loadstring(base64decode("U3RhZmZMZWF2ZQ=="))())

addSection(Mobile, loadstring(base64decode("TW9iaWxlIEFpbWJvdA=="))())
addToggle(Mobile, loadstring(base64decode("TW9iaWxlIEFpbSBPTg=="))(), loadstring(base64decode("TW9iaWxlQWlt"))())
addSlider(Mobile, loadstring(base64decode("TW9iaWxlIFNtb290aA=="))(), loadstring(base64decode("TW9iaWxlU21vb3Ro"))(), 0.1, 1, 0.05)
addSlider(Mobile, loadstring(base64decode("TW9iaWxlIEZPVg=="))(), loadstring(base64decode("TW9iaWxlRk9W"))(), 40, 350, 1)
addToggle(Mobile, loadstring(base64decode("TW9iaWxlIFNob3cgRk9W"))(), loadstring(base64decode("TW9iaWxlU2hvd0ZPVg=="))())

addSection(Visuals, loadstring(base64decode("RVNQ"))())
addToggle(Visuals, loadstring(base64decode("RVNQIEVuYWJsZWQ="))(), loadstring(base64decode("RVNQ"))())
addToggle(Visuals, loadstring(base64decode("Qm94ZXM="))(), loadstring(base64decode("U2hvd0JveGVz"))())
addDropdown(Visuals, loadstring(base64decode("Qm94IFN0eWxl"))(), loadstring(base64decode("Qm94U3R5bGU="))(), {loadstring(base64decode("Q29ybmVy"))(), loadstring(base64decode("RnVsbA=="))(), loadstring(base64decode("Qm90aA=="))()})
addToggle(Visuals, loadstring(base64decode("TmFtZXM="))(), loadstring(base64decode("U2hvd05hbWVz"))())
addToggle(Visuals, loadstring(base64decode("RGlzdGFuY2U="))(), loadstring(base64decode("U2hvd0Rpc3RhbmNl"))())
addToggle(Visuals, loadstring(base64decode("SGVhbHRo"))(), loadstring(base64decode("U2hvd0hlYWx0aA=="))())
addToggle(Visuals, loadstring(base64decode("SGVhZCBEb3Q="))(), loadstring(base64decode("U2hvd0hlYWREb3Q="))())
addSection(Visuals, loadstring(base64decode("UmFkYXI="))())
addToggle(Visuals, loadstring(base64decode("UmFkYXIgRVNQ"))(), loadstring(base64decode("UmFkYXI="))())
addSlider(Visuals, loadstring(base64decode("UmFkYXIgU2l6ZQ=="))(), loadstring(base64decode("UmFkYXJTaXpl"))(), 80, 220, 5)
addSlider(Visuals, loadstring(base64decode("UmFkYXIgUmFuZ2U="))(), loadstring(base64decode("UmFkYXJSYW5nZQ=="))(), 50, 400, 10)
addSection(Visuals, loadstring(base64decode("Q3Vyc29y"))())
addDropdown(Visuals, loadstring(base64decode("U2VsZWN0IEN1cnNvcg=="))(), loadstring(base64decode("Q3Vyc29yTmFtZQ=="))(), CURSOR_NAMES)
addSlider(Visuals, loadstring(base64decode("Q3Vyc29yIFNpemU="))(), loadstring(base64decode("Q3Vyc29yU2l6ZQ=="))(), 8, 128, 1)
for _, c in ipairs(CURSORS) do
    addButton(Visuals, c.Name, function()
        applyCursorByName(c.Name)
        saveNamedConfig(S.ConfigName)
    end)
end

addSection(Sett, loadstring(base64decode("TmFtZWQgQ29uZmln"))())
addInput(Sett, loadstring(base64decode("Q29uZmlnIG5hbWU="))(), loadstring(base64decode("Q29uZmlnTmFtZQ=="))(), loadstring(base64decode("ZGVmYXVsdA=="))())
addButton(Sett, loadstring(base64decode("U2F2ZSBDb25maWc="))(), function() saveNamedConfig(S.ConfigName) end)
addButton(Sett, loadstring(base64decode("TG9hZCBDb25maWc="))(), function() loadNamedConfig(S.ConfigName) end)
addToggle(Sett, loadstring(base64decode("RlBTICsgTVM="))(), loadstring(base64decode("U2hvd1BlcmY="))())
addToggle(Sett, loadstring(base64decode("UG90YXRvIEZQUyBCb29zdA=="))(), loadstring(base64decode("UG90YXRv"))())

showPage(loadstring(base64decode("Q29tYmF0"))())

local dragging, d0, p0
Top.InputBegan:Connect(function(kCXQgvu1)
    if kCXQgvu1.UserInputType == Enum.UserInputType.MouseButton1 or kCXQgvu1.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        d0 = kCXQgvu1.Position
        p0 = Main.Position
        unlockMouse()
    end
end)
Top.InputEnded:Connect(function(kCXQgvu1)
    if kCXQgvu1.UserInputType == Enum.UserInputType.MouseButton1 or kCXQgvu1.UserInputType == Enum.UserInputType.Touch then
        dragging = false
    end
end)
UIS.InputChanged:Connect(function(kCXQgvu1)
    if dragging and (kCXQgvu1.UserInputType == Enum.UserInputType.MouseMovement or kCXQgvu1.UserInputType == Enum.UserInputType.Touch) then
        local d = kCXQgvu1.Position - d0
        Main.Position = UDim2.new(p0.X.Scale, p0.X.Offset + d.X, p0.Y.Scale, p0.Y.Offset + d.Y)
    end
end)
local function setOpen(v)
    Main.Visible = v
    unlockMouse()
end
Close.MouseButton1Click:Connect(function() setOpen(false) end)
UIS.InputBegan:Connect(function(kCXQgvu1)
    if kCXQgvu1.KeyCode == Enum.KeyCode.RightControl or kCXQgvu1.KeyCode == Enum.KeyCode.LeftControl then
        setOpen(not Main.Visible)
    end
end)
RunService.RenderStepped:Connect(function()
    if Main.Visible then unlockMouse() end
end)
setOpen(true)

task.spawn(function()
    while true do
        local d = tonumber(S.DeviceSpoofDelay) or 1.5
        if d < 0.4 then d = 0.4 end
        task.wait(d)
        if S.DeviceSpoof then fireDeviceUpdate() end
    end
end)

local KEY_MAP = {
    MB1 = Enum.UserInputType.MouseButton1,
    MB2 = Enum.UserInputType.MouseButton2,
    E = Enum.KeyCode.E,
    Q = Enum.KeyCode.Q,
    F = Enum.KeyCode.F,
}
local AimbotActive, Shooting, lastPitch, lastShot = false, false, 0, 0
local noclipConn = nil
local VERIFIED = loadstring(base64decode("XHV7RTAwMH0="))()
local StaffGroupId = 33054943
local CYCLE = {51, 100, 255}
local cycleIndex, currentMin, lastCycle, flagged = 1, 51, 0, {}
local col = Color3.fromRGB(170, 0, 255)

local function dnew(cls)
    if not HasDrawing then return nil end
    local ok, o = pcall(function() return Drawing.new(cls) end)
    if ok then return o end
    return nil
end

local radarBG, radarBorder, radarCenter, radarCrossH, radarCrossV
local radarDots = {}
local function ensureRadar()
    if not HasDrawing or radarBG then return end
    radarBG = dnew(loadstring(base64decode("Q2lyY2xl"))())
    if radarBG then
        radarBG.Filled = true
        radarBG.Color = Color3.fromRGB(10, 10, 14)
        radarBG.Transparency = 0.35
        radarBG.NumSides = 64
        radarBG.Visible = false
    end
    radarBorder = dnew(loadstring(base64decode("Q2lyY2xl"))())
    if radarBorder then
        radarBorder.Filled = false
        radarBorder.Thickness = 1.5
        radarBorder.Color = ACCENT
        radarBorder.NumSides = 64
        radarBorder.Visible = false
    end
    radarCenter = dnew(loadstring(base64decode("Q2lyY2xl"))())
    if radarCenter then
        radarCenter.Filled = true
        radarCenter.Color = Color3.fromRGB(0, 255, 120)
        radarCenter.Radius = 3
        radarCenter.NumSides = 12
        radarCenter.Visible = false
    end
    radarCrossH = dnew(loadstring(base64decode("TGluZQ=="))())
    if radarCrossH then radarCrossH.Thickness = 1; radarCrossH.Color = Color3.fromRGB(60, 60, 80); radarCrossH.Visible = false end
    radarCrossV = dnew(loadstring(base64decode("TGluZQ=="))())
    if radarCrossV then radarCrossV.Thickness = 1; radarCrossV.Color = Color3.fromRGB(60, 60, 80); radarCrossV.Visible = false end
end
local function hideRadar()
    if radarBG then radarBG.Visible = false end
    if radarBorder then radarBorder.Visible = false end
    if radarCenter then radarCenter.Visible = false end
    if radarCrossH then radarCrossH.Visible = false end
    if radarCrossV then radarCrossV.Visible = false end
    for _, d in pairs(radarDots) do
        pcall(function() if d then d.Visible = false end end)
    end
end

local function getChar(p)
    if not p then return nil end
    local ok, c = pcall(function() return p.Character end)
    if ok then return c end
    return nil
end
local function isAlive(p)
    local c = getChar(p)
    if not c then return false end
    local h = c:FindFirstChildOfClass(loadstring(base64decode("SHVtYW5vaWQ="))())
    return h and h.Health > 0
end
local function isEnemy(p)
    if not p or p == LocalPlayer then return false end
    if not S.TeamCheck then return true end
    local ok1, a = pcall(function() return LocalPlayer.Team end)
    local ok2, b = pcall(function() return p.Team end)
    if ok1 and ok2 and a and b then return a ~= b end
    return true
end

local function isSoftPart(part)
    if not part or not part:IsA(loadstring(base64decode("QmFzZVBhcnQ="))()) then return true end
    if isSolidMapProp(part) then return false end
    if part.CanCollide == false and part.Transparency >= 0.3 then return true end
    if part.Transparency >= 0.75 then return true end
    local n = string.lower(part.Name or loadstring(base64decode(""))())
    local full = string.lower(part:GetFullName() or loadstring(base64decode(""))())
    if string.find(n, loadstring(base64decode("Z2xhc3M="))(), 1, true) then return true end
    if string.find(full, loadstring(base64decode("Y2FtZXJhbW9kZWw="))(), 1, true) or string.find(full, loadstring(base64decode("dmlld21vZGVs"))(), 1, true) then return true end
    return false
end

local function isVisible(player)
    if not S.WallCheck then return true end
    local char = getChar(player)
    local head = char and char:FindFirstChild(loadstring(base64decode("SGVhZA=="))())
    if not head then return false end
    local my = getChar(LocalPlayer)
    local origin = Camera.CFrame.Position + Camera.CFrame.LookVector * 1.2
    local target = head.Position
    local dir = target - origin
    local dist = dir.Magnitude
    if dist < 2 then return true end
    local ignore = {char, Camera}
    if my then table.insert(ignore, my) end
    local params = RaycastParams.new()
    params.FilterType = Enum.RaycastFilterType.Exclude
    params.FilterDescendantsInstances = ignore
    params.IgnoreWater = true
    local traveled, pos, unit = 0, origin, dir.Unit
    for _ = 1, 8 do
        local remain = dist - traveled
        if remain <= 0.1 then return true end
        local hit = workspace:Raycast(pos, unit * remain, params)
        if hit == nil then return true end
        if hit.Instance and hit.Instance:IsDescendantOf(char) then return true end
        if (hit.Position - origin).Magnitude < 1.2 and not isSolidMapProp(hit.Instance) then
            table.insert(ignore, hit.Instance)
            params.FilterDescendantsInstances = ignore
            pos = hit.Position + unit * 0.15
            traveled = traveled + 0.15
        elseif isSoftPart(hit.Instance) then
            table.insert(ignore, hit.Instance)
            params.FilterDescendantsInstances = ignore
            local step = (hit.Position - pos).Magnitude
            pos = hit.Position + unit * 0.12
            traveled = traveled + step + 0.12
        else
            return false
        end
    end
    return false
end

local function predictPos(head, char)
    if not S.Prediction or not head then return head.Position end
    local root = char and (char:FindFirstChild(loadstring(base64decode("SHVtYW5vaWRSb290UGFydA=="))()) or char:FindFirstChild(loadstring(base64decode("VG9yc28="))()))
    local vel = Vector3.zero
    if root then pcall(function() vel = root.AssemblyLinearVelocity end) end
    return head.Position + vel * (tonumber(S.PredictAmount) or 0.12)
end

local function getClosest(fov, needVis)
    local best, bd = nil, fov
    local center = Camera.ViewportSize / 2
    for _, plr in ipairs(Players:GetPlayers()) do
        if plr and plr ~= LocalPlayer and isEnemy(plr) and isAlive(plr) then
            local char = getChar(plr)
            local head = char and char:FindFirstChild(loadstring(base64decode("SGVhZA=="))())
            if head then
                local aimAt = predictPos(head, char)
                local pos, on = Camera:WorldToViewportPoint(aimAt)
                if on then
                    local d = (Vector2.new(pos.X, pos.Y) - center).Magnitude
                    if d < bd and ((not needVis) or isVisible(plr)) then
                        bd = d
                        best = aimAt
                    end
                end
            end
        end
    end
    return best
end

UIS.InputBegan:Connect(function(kCXQgvu1, gp)
    if kCXQgvu1.UserInputType == Enum.UserInputType.MouseButton1 then Shooting = true end
    if gp or not S.Aimbot or S.MobileAim then return end
    local key = KEY_MAP[S.AimKey] or Enum.UserInputType.MouseButton2
    if kCXQgvu1.UserInputType == key or kCXQgvu1.KeyCode == key then
        if S.AimMode == loadstring(base64decode("SG9sZA=="))() then AimbotActive = true
        elseif S.AimMode == loadstring(base64decode("VG9nZ2xl"))() then AimbotActive = not AimbotActive end
    end
end)
UIS.InputEnded:Connect(function(kCXQgvu1)
    if kCXQgvu1.UserInputType == Enum.UserInputType.MouseButton1 then Shooting = false end
    local key = KEY_MAP[S.AimKey] or Enum.UserInputType.MouseButton2
    if S.AimMode == loadstring(base64decode("SG9sZA=="))() and (kCXQgvu1.UserInputType == key or kCXQgvu1.KeyCode == key) then
        AimbotActive = false
    end
end)

local function softUpright()
    local c = getChar(LocalPlayer)
    if not c then return end
    local r = c:FindFirstChild(loadstring(base64decode("SHVtYW5vaWRSb290UGFydA=="))())
    local h = c:FindFirstChildOfClass(loadstring(base64decode("SHVtYW5vaWQ="))())
    if not r or not h or h.Health <= 0 then return end
    local st = h:GetState()
    if st == Enum.HumanoidStateType.Jumping or st == Enum.HumanoidStateType.Freefall or st == Enum.HumanoidStateType.Ragdoll then return end
    if r.CFrame.UpVector:Dot(Vector3.yAxis) >= 0.92 then return end
    local pos = r.Position
    local _, yaw = r.CFrame:ToOrientation()
    r.CFrame = CFrame.new(pos) * CFrame.Angles(0, yaw, 0)
end

local function setNoclip(on)
    if noclipConn then noclipConn:Disconnect(); noclipConn = nil end
    if not on then
        local c = getChar(LocalPlayer)
        if c then
            for _, p in ipairs(c:GetDescendants()) do
                if p:IsA(loadstring(base64decode("QmFzZVBhcnQ="))()) then p.CanCollide = true end
            end
        end
        return
    end
    noclipConn = RunService.Stepped:Connect(function()
        local c = getChar(LocalPlayer)
        if not c then return end
        for _, p in ipairs(c:GetDescendants()) do
            if p:IsA(loadstring(base64decode("QmFzZVBhcnQ="))()) then p.CanCollide = false end
        end
    end)
end

task.spawn(function()
    while true do
        task.wait(0.25)
        if S.AntiBow then pcall(softUpright) end
    end
end)
task.spawn(function()
    while true do
        task.wait(0.5)
        if S.StreamProof then
            local full = S.ShowVerified and (tostring(S.SpoofName) .. loadstring(base64decode("IA=="))() .. VERIFIED) or tostring(S.SpoofName)
            pcall(function() LocalPlayer.DisplayName = full end)
            local h = getChar(LocalPlayer) and getChar(LocalPlayer):FindFirstChildOfClass(loadstring(base64decode("SHVtYW5vaWQ="))())
            if h then pcall(function() h.DisplayName = full end) end
        end
    end
end)
task.spawn(function()
    while true do
        task.wait(2)
        if S.StaffDetect then
            local found = false
            for _, p in ipairs(Players:GetPlayers()) do
                if p and p ~= LocalPlayer then
                    local ok, rank = pcall(function() return p:GetRankInGroup(StaffGroupId) end)
                    if ok and type(rank) == loadstring(base64decode("bnVtYmVy"))() and rank >= currentMin and rank > 0 then
                        found = true
                        if not flagged[p.UserId] then
                            flagged[p.UserId] = true
                            if S.StaffLeave then
                                task.delay(0.3, function()
                                    pcall(function() LocalPlayer:Kick(loadstring(base64decode("U3RhZmY="))()) end)
                                end)
                            end
                        end
                    end
                end
            end
            if found then
                lastCycle = tick()
            elseif tick() - lastCycle >= 4 then
                cycleIndex = cycleIndex % #CYCLE + 1
                currentMin = CYCLE[cycleIndex]
                lastCycle = tick()
            end
        end
    end
end)

RunService.Heartbeat:Connect(function()
    local c = getChar(LocalPlayer)
    if c then
        local h = c:FindFirstChildOfClass(loadstring(base64decode("SHVtYW5vaWQ="))())
        if S.Speed and h and h.Health > 0 then h.WalkSpeed = S.SpeedValue or 24 end
        if S.Noclip then
            if not noclipConn then setNoclip(true) end
        elseif noclipConn then
            setNoclip(false)
        end
    end
    if S.Potato then applyPotato(true) else applyPotato(false) end
end)

local function ensureHL(plr)
    if ESPHL[plr] then return end
    local char = getChar(plr)
    if not char then return end
    local h = Instance.new(loadstring(base64decode("SGlnaGxpZ2h0"))())
    h.FillColor = col
    h.OutlineColor = Color3.new(1, 1, 1)
    h.FillTransparency = 0.5
    h.Adornee = char
    h.Parent = char
    ESPHL[plr] = h
end
local function createDrawESP(plr)
    if ESPDraw[plr] then return end
    local box = dnew(loadstring(base64decode("U3F1YXJl"))())
    if not box then return end
    box.Thickness = 1.5
    box.Filled = false
    box.Visible = false
    local lines = {}
    for kCXQgvu1 = 1, 8 do
        local l = dnew(loadstring(base64decode("TGluZQ=="))())
        if l then l.Thickness = 1.5; l.Visible = false; lines[kCXQgvu1] = l end
    end
    local name, dist = dnew(loadstring(base64decode("VGV4dA=="))()), dnew(loadstring(base64decode("VGV4dA=="))())
    if name then name.Size = 14; name.Center = true; name.Outline = true; name.Font = 2; name.Visible = false end
    if dist then dist.Size = 12; dist.Center = true; dist.Outline = true; dist.Font = 2; dist.Visible = false end
    local hb, hf = dnew(loadstring(base64decode("U3F1YXJl"))()), dnew(loadstring(base64decode("U3F1YXJl"))())
    if hb then hb.Filled = false; hb.Visible = false end
    if hf then hf.Filled = true; hf.Visible = false end
    local hd = dnew(loadstring(base64decode("Q2lyY2xl"))())
    if hd then hd.NumSides = 16; hd.Filled = true; hd.Visible = false end
    ESPDraw[plr] = {Box = box, Lines = lines, Name = name, Dist = dist, HB = hb, HF = hf, Dot = hd}
end

Players.PlayerRemoving:Connect(function(p)
    if ESPDraw[p] then
        pcall(function()
            for _, x in pairs(ESPDraw[p]) do
                if type(x) == loadstring(base64decode("dGFibGU="))() then
                    for _, l in pairs(x) do if l then pcall(function() l:Remove() end) end end
                elseif x then
                    pcall(function() x:Remove() end)
                end
            end
        end)
        ESPDraw[p] = nil
    end
    if ESPHL[p] then pcall(function() ESPHL[p]:Destroy() end); ESPHL[p] = nil end
    if radarDots[p] then pcall(function() radarDots[p]:Remove() end); radarDots[p] = nil end
end)

local fovC = dnew(loadstring(base64decode("Q2lyY2xl"))())
if fovC then
    fovC.Thickness = 1
    fovC.NumSides = 48
    fovC.Filled = false
    fovC.Color = Color3.new(1, 1, 1)
    fovC.Visible = false
end
local fpsT = dnew(loadstring(base64decode("VGV4dA=="))())
if fpsT then
    fpsT.Size = 16
    fpsT.Outline = true
    fpsT.Font = 2
    fpsT.Visible = false
end
local frames, lastF, fps = 0, tick(), 0

RunService.RenderStepped:Connect(function()
    frames = frames + 1
    if tick() - lastF >= 1 then
        fps = frames
        frames = 0
        lastF = tick()
    end

    if S.ShowPerf and fpsT then
        local ms = 0
        pcall(function()
            ms = math.floor(Stats.Network.ServerStatsItem[loadstring(base64decode("RGF0YSBQaW5n"))()]:GetValue())
        end)
        fpsT.Text = loadstring(base64decode("RlBTIA=="))() .. fps .. loadstring(base64decode("ICBNUyA="))() .. ms
        fpsT.Position = Vector2.new(Camera.ViewportSize.X - 150, 10)
        fpsT.Color = ACCENT
        fpsT.Visible = true
    elseif fpsT then
        fpsT.Visible = false
    end

    if S.Radar and HasDrawing then
        ensureRadar()
        local size = tonumber(S.RadarSize) or 140
        local range = tonumber(S.RadarRange) or 200
        local half = size / 2
        local center = Vector2.new(20 + half, 20 + half)
        if radarBG then radarBG.Position = center; radarBG.Radius = half; radarBG.Visible = true end
        if radarBorder then radarBorder.Position = center; radarBorder.Radius = half; radarBorder.Visible = true end
        if radarCenter then radarCenter.Position = center; radarCenter.Visible = true end
        if radarCrossH then
            radarCrossH.From = Vector2.new(center.X - half + 4, center.Y)
            radarCrossH.To = Vector2.new(center.X + half - 4, center.Y)
            radarCrossH.Visible = true
        end
        if radarCrossV then
            radarCrossV.From = Vector2.new(center.X, center.Y - half + 4)
            radarCrossV.To = Vector2.new(center.X, center.Y + half - 4)
            radarCrossV.Visible = true
        end
        local myChar = getChar(LocalPlayer)
        local myRoot = myChar and (myChar:FindFirstChild(loadstring(base64decode("SHVtYW5vaWRSb290UGFydA=="))()) or myChar:FindFirstChild(loadstring(base64decode("VG9yc28="))()))
        local camLook = Camera.CFrame.LookVector
        local yaw = math.atan2(camLook.X, camLook.Z)
        local seen = {}
        if myRoot then
            for _, plr in ipairs(Players:GetPlayers()) do
                if plr ~= LocalPlayer and isEnemy(plr) and isAlive(plr) then
                    local char = getChar(plr)
                    local root = char and (char:FindFirstChild(loadstring(base64decode("SHVtYW5vaWRSb290UGFydA=="))()) or char:FindFirstChild(loadstring(base64decode("VG9yc28="))()))
                    if root then
                        local offset = root.Position - myRoot.Position
                        if offset.Magnitude <= range then
                            local rx = offset.X * math.cos(yaw) - offset.Z * math.sin(yaw)
                            local rz = offset.X * math.sin(yaw) + offset.Z * math.cos(yaw)
                            local scale = half / range
                            local dx, dy = rx * scale, -rz * scale
                            local mag = math.sqrt(dx * dx + dy * dy)
                            if mag > half - 4 then
                                dx = dx / mag * (half - 4)
                                dy = dy / mag * (half - 4)
                            end
                            if not radarDots[plr] then
                                local dot = dnew(loadstring(base64decode("Q2lyY2xl"))())
                                if dot then
                                    dot.Filled = true
                                    dot.NumSides = 12
                                    dot.Radius = 4
                                    radarDots[plr] = dot
                                end
                            end
                            local dot = radarDots[plr]
                            if dot then
                                dot.Position = Vector2.new(center.X + dx, center.Y + dy)
                                dot.Color = col
                                dot.Visible = true
                            end
                            seen[plr] = true
                        end
                    end
                end
            end
        end
        for p, d in pairs(radarDots) do
            if not seen[p] then
                pcall(function() if d then d.Visible = false end end)
            end
        end
    else
        hideRadar()
    end

    local showFov, fovR = false, S.AimFOV or 150
    if S.MobileAim then
        showFov = S.MobileShowFOV
        fovR = S.MobileFOV or 160
    else
        showFov = S.ShowFOV and S.Aimbot
        fovR = S.AimFOV or 150
    end
    if fovC then
        fovC.Position = Camera.ViewportSize / 2
        fovC.Radius = fovR
        fovC.Visible = showFov
    end

    local useAim, smooth, fov = false, S.AimSmooth or 0.95, S.AimFOV or 150
    if S.MobileAim then
        useAim = true
        smooth = S.MobileSmooth or 0.9
        fov = S.MobileFOV or 160
    elseif S.Aimbot then
        useAim = AimbotActive or (S.AimMode == loadstring(base64decode("QWx3YXlz"))())
        smooth = S.AimSmooth or 0.95
        fov = S.AimFOV or 150
    end
    if useAim then
        local aimPos = getClosest(fov, true)
        if aimPos then
            if smooth >= 0.98 then
                Camera.CFrame = CFrame.new(Camera.CFrame.Position, aimPos)
            else
                Camera.CFrame = Camera.CFrame:Lerp(
                    CFrame.new(Camera.CFrame.Position, aimPos),
                    math.clamp(smooth, 0.1, 1)
                )
            end
        end
    end

    if S.NoRecoil and Shooting then
        local cf = Camera.CFrame
        local pitch, yaw, roll = cf:ToOrientation()
        local amt = S.RecoilAmount or 0
        if pitch > lastPitch + 0.003 then
            local mixed = lastPitch + (pitch - lastPitch) * amt
            Camera.CFrame = CFrame.new(cf.Position) * CFrame.fromOrientation(mixed, yaw, roll)
            lastPitch = mixed
        else
            lastPitch = pitch
        end
    else
        lastPitch = select(1, Camera.CFrame:ToOrientation())
    end

    if S.Triggerbot then
        local t = getClosest(S.TriggerFOV or 45, S.WallCheck)
        if t and tick() - lastShot > 0.1 then
            lastShot = tick()
            local tool = getChar(LocalPlayer) and getChar(LocalPlayer):FindFirstChildOfClass(loadstring(base64decode("VG9vbA=="))())
            if tool then pcall(function() tool:Activate() end) end
        end
    end

    if not S.ESP then
        clearESP()
    else
        local myRoot = getChar(LocalPlayer) and getChar(LocalPlayer):FindFirstChild(loadstring(base64decode("SHVtYW5vaWRSb290UGFydA=="))())
        for _, plr in ipairs(Players:GetPlayers()) do
            if plr and plr ~= LocalPlayer and isEnemy(plr) and isAlive(plr) then
                local char = getChar(plr)
                local root = char and (char:FindFirstChild(loadstring(base64decode("SHVtYW5vaWRSb290UGFydA=="))()) or char:FindFirstChild(loadstring(base64decode("VG9yc28="))()))
                local head = char and char:FindFirstChild(loadstring(base64decode("SGVhZA=="))())
                local hum = char and char:FindFirstChildOfClass(loadstring(base64decode("SHVtYW5vaWQ="))())
                if root and head then
                    if HasDrawing then
                        if not ESPDraw[plr] then createDrawESP(plr) end
                        local d = ESPDraw[plr]
                        if d and d.Box then
                            local v, on = Camera:WorldToViewportPoint(root.Position)
                            if not on then
                                d.Box.Visible = false
                                if d.Name then d.Name.Visible = false end
                                if d.Dist then d.Dist.Visible = false end
                                if d.HB then d.HB.Visible = false end
                                if d.HF then d.HF.Visible = false end
                                if d.Dot then d.Dot.Visible = false end
                                if d.Lines then
                                    for li = 1, #d.Lines do
                                        if d.Lines[li] then d.Lines[li].Visible = false end
                                    end
                                end
                            else
                                local top = Camera:WorldToViewportPoint(head.Position + Vector3.new(0, 1.1, 0))
                                local bot = Camera:WorldToViewportPoint(root.Position - Vector3.new(0, 2.8, 0))
                                local hgt = math.abs(bot.Y - top.Y)
                                local w = math.clamp(hgt / 1.85, 8, 120)
                                local size = Vector2.new(w, hgt)
                                local pos = Vector2.new(v.X - w / 2, top.Y)
                                local cl = math.clamp(w * 0.25, 4, 12)
                                local style = S.BoxStyle or loadstring(base64decode("Q29ybmVy"))()
                                if S.ShowBoxes and (style == loadstring(base64decode("RnVsbA=="))() or style == loadstring(base64decode("Qm90aA=="))()) then
                                    d.Box.Size = size
                                    d.Box.Position = pos
                                    d.Box.Color = col
                                    d.Box.Visible = true
                                else
                                    d.Box.Visible = false
                                end
                                if S.ShowBoxes and (style == loadstring(base64decode("Q29ybmVy"))() or style == loadstring(base64decode("Qm90aA=="))()) and d.Lines and d.Lines[1] then
                                    local L = d.Lines
                                    L[1].From, L[1].To = pos, Vector2.new(pos.X, pos.Y + cl)
                                    L[2].From, L[2].To = pos, Vector2.new(pos.X + cl, pos.Y)
                                    L[3].From, L[3].To = Vector2.new(pos.X + size.X, pos.Y), Vector2.new(pos.X + size.X, pos.Y + cl)
                                    L[4].From, L[4].To = Vector2.new(pos.X + size.X, pos.Y), Vector2.new(pos.X + size.X - cl, pos.Y)
                                    L[5].From, L[5].To = Vector2.new(pos.X, pos.Y + size.Y), Vector2.new(pos.X, pos.Y + size.Y - cl)
                                    L[6].From, L[6].To = Vector2.new(pos.X, pos.Y + size.Y), Vector2.new(pos.X + cl, pos.Y + size.Y)
                                    L[7].From, L[7].To = Vector2.new(pos.X + size.X, pos.Y + size.Y), Vector2.new(pos.X + size.X, pos.Y + size.Y - cl)
                                    L[8].From, L[8].To = Vector2.new(pos.X + size.X, pos.Y + size.Y), Vector2.new(pos.X + size.X - cl, pos.Y + size.Y)
                                    for li = 1, 8 do
                                        if L[li] then L[li].Color = col; L[li].Visible = true end
                                    end
                                end
                                if S.ShowNames and d.Name then
                                    d.Name.Text = plr.DisplayName
                                    d.Name.Position = Vector2.new(v.X, pos.Y - 14)
                                    d.Name.Color = col
                                    d.Name.Visible = true
                                elseif d.Name then
                                    d.Name.Visible = false
                                end
                                if S.ShowDistance and d.Dist and myRoot then
                                    d.Dist.Text = tostring(math.floor((root.Position - myRoot.Position).Magnitude)) .. loadstring(base64decode("bQ=="))()
                                    d.Dist.Position = Vector2.new(v.X, pos.Y + size.Y + 2)
                                    d.Dist.Visible = true
                                elseif d.Dist then
                                    d.Dist.Visible = false
                                end
                                if S.ShowHealth and hum and d.HB and d.HF then
                                    local pct = math.clamp(hum.Health / math.max(hum.MaxHealth, 1), 0, 1)
                                    d.HB.Size = Vector2.new(3, size.Y)
                                    d.HB.Position = Vector2.new(pos.X - 6, pos.Y)
                                    d.HB.Visible = true
                                    local fh = size.Y * pct
                                    d.HF.Size = Vector2.new(2, fh)
                                    d.HF.Position = Vector2.new(pos.X - 5.5, pos.Y + size.Y - fh)
                                    d.HF.Color = Color3.fromRGB(255 * (1 - pct), 255 * pct, 0)
                                    d.HF.Visible = true
                                end
                                if S.ShowHeadDot and d.Dot then
                                    local hp, on2 = Camera:WorldToViewportPoint(head.Position)
                                    if on2 then
                                        d.Dot.Position = Vector2.new(hp.X, hp.Y)
                                        d.Dot.Radius = math.clamp(w * 0.2, 4, 10)
                                        d.Dot.Color = col
                                        d.Dot.Visible = true
                                    else
                                        d.Dot.Visible = false
                                    end
                                end
                            end
                        end
                    else
                        ensureHL(plr)
                    end
                end
            else
                if ESPDraw[plr] then
                    pcall(function()
                        for _, x in pairs(ESPDraw[plr]) do
                            if type(x) == loadstring(base64decode("dGFibGU="))() then
                                for _, l in pairs(x) do if l then pcall(function() l:Remove() end) end end
                            elseif x then
                                pcall(function() x:Remove() end)
                            end
                        end
                    end)
                    ESPDraw[plr] = nil
                end
                if ESPHL[plr] then
                    pcall(function() ESPHL[plr]:Destroy() end)
                    ESPHL[plr] = nil
                end
            end
        end
    end
end)

task.spawn(function()
    while true do
        task.wait(15)
        saveNamedConfig(S.ConfigName)
    end
end)

if S.Potato then applyPotato(true) end
if S.CursorName and S.CursorName ~= loadstring(base64decode("T2Zm"))() then applyCursorByName(S.CursorName) end
print(loadstring(base64decode("W01vb24gSHViXSBDbGVhbiBidWlsZCBPSyB8IEN1cnNvciBzaXplIDgtMTI4IHwgRG8gTk9UIG9iZnVzY2F0ZSB0aGlzIHJhdw=="))())
end
D1LovpKj(T3pgq)
end)(...)
