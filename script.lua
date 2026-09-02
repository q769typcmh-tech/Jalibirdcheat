pcall(function()
if not game:IsLoaded() then game.Loaded:Wait() end
end)
task.wait(0.35)
local _0xFF3F = game:FindService(string.char(80,108,97,121,101,114,115)) or game:GetService(string.char(80,108,97,121,101,114,115))
local _0xFF4F = 0
while not _0xFF3F and _0xFF4F < 50 do
_0xFF4F += 1
task.wait(0.1)
_0xFF3F = game:FindService(string.char(80,108,97,121,101,114,115)) or game:GetService(string.char(80,108,97,121,101,114,115))
end
if not _0xFF3F then
warn(string.char(91,77,111,111,110,93,32,80,108,97,121,101,114,115,32,115,101,114,118,105,99,101,32,109,105,115,115,105,110,103))
return
end
local _0x67D4 = game:GetService(string.char(85,115,101,114,73,110,112,117,116,83,101,114,118,105,99,101))
local _0x8A2A = game:GetService(string.char(82,117,110,83,101,114,118,105,99,101))
local _0x1202 = game:GetService(string.char(76,105,103,104,116,105,110,103))
local _0xE28F = game:GetService(string.char(83,116,97,116,115))
local _0x52CB = game:GetService(string.char(72,116,116,112,83,101,114,118,105,99,101))
local _0x9A58 = game:GetService(string.char(84,119,101,101,110,83,101,114,118,105,99,101))
local _0x4C5B = game:GetService(string.char(82,101,112,108,105,99,97,116,101,100,83,116,111,114,97,103,101))
local _0x15D1 = game:GetService(string.char(86,105,114,116,117,97,108,73,110,112,117,116,77,97,110,97,103,101,114))
local _0x83C0 = workspace.CurrentCamera
local _0x4E10 = _0xFF3F.LocalPlayer
if not _0x4E10 then
_0x4E10 = _0xFF3F.PlayerAdded:Wait()
end_0xFF4F = 0
while (not _0x4E10 or not _0x4E10.Parent) and _0xFF4F < 100 do
_0xFF4F += 1
task.wait(0.05)
_0x4E10 = _0xFF3F.LocalPlayer
end
if not _0x4E10 then
warn(string.char(91,77,111,111,110,93,32,76,111,99,97,108,80,108,97,121,101,114,32,109,105,115,115,105,110,103))
return
end
local _0x238C = _0x4E10:FindFirstChild(string.char(80,108,97,121,101,114,71,117,105)) or _0x4E10:WaitForChild(string.char(80,108,97,121,101,114,71,117,105), 60)
if not _0x238C then
warn(string.char(91,77,111,111,110,93,32,80,108,97,121,101,114,71,117,105,32,116,105,109,101,111,117,116))
return
end
local function _0xFB9F()
if gethui then
local _0x23A4, _0xC029 = pcall(function() return gethui() end)
if _0x23A4 and _0xC029 then return _0xC029 end
end
return game:GetService(string.char(67,111,114,101,71,117,105))
end
local _0x62DF = _0xFB9F()pcall(function()
for _0x4136, _0xA7F0 in ipairs({string.char(77,111,111,110,72,117,98,85,73),string.char(77,111,111,110,67,117,114,115,111,114,85,73),string.char(77,111,111,110,76,111,97,100,85,73),string.char(77,111,111,110,70,79,86,71,117,105),string.char(77,111,111,110,69,83,80,71,117,105),string.char(77,111,111,110,77,111,98,105,108,101,69,83,80,71,117,105)}) do
local _0x6ACF = _0x238C:FindFirstChild(_0xA7F0)
if _0x6ACF then _0x6ACF:Destroy() end
local _0x6AF5 = _0x62DF:FindFirstChild(_0xA7F0)
if _0x6AF5 then _0x6AF5:Destroy() end
end
end)
task.wait(0.05)
local _0x7AB2
pcall(function() _0x7AB2 = _0x4E10:GetMouse() end)local function _0x6049()
local _0x99D7 =string.char(85,110,107,110,111,119,110)pcall(function()
if identifyexecutor then
local _0xA7F0, _0xD278 = identifyexecutor()
_0x99D7 = tostring(_0xA7F0 orstring.char(85,110,107,110,111,119,110))
if _0xD278 then _0x99D7 = _0x99D7 ..string.char(32).. tostring(_0xD278) end
elseif getexecutorname then
_0x99D7 = tostring(getexecutorname())
elseif syn and syn.request then
_0x99D7 =string.char(83,121,110,97,112,115,101)elseif fluxus then
_0x99D7 =string.char(70,108,117,120,117,115)elseif KRNL_LOADED then
_0x99D7 =string.char(75,114,110,108)elseif is_sirhurt_closure then
_0x99D7 =string.char(83,105,114,104,117,114,116)elseif pebc_execute then
_0x99D7 =string.char(80,97,114,97,108,108,101,108)elseif SecureDelta then
_0x99D7 =string.char(68,101,108,116,97)end
end)
return _0x99D7
end
local _0x222C = _0x6049()local _0xBCA1, _0xBE18, _0x4D5E, _0xBBD0, _0xA05F, _0xDE82, _0xA297, _0x7DA6
_0x4D5E = {}
local function _0x425A()
_0xBCA1 = Instance.new(string.char(83,99,114,101,101,110,71,117,105))
_0xBCA1.Name =string.char(77,111,111,110,76,111,97,100,85,73)_0xBCA1.ResetOnSpawn = false
_0xBCA1.IgnoreGuiInset = true
_0xBCA1.DisplayOrder = 9999
_0xBCA1.Parent = _0x238C
task.spawn(function()
task.wait(8)
pcall(function() if _0xBCA1 and _0xBCA1.Parent then _0xBCA1:Destroy() end end)
end)
local _0xC3F5 = Instance.new(string.char(70,114,97,109,101))
_0xC3F5.Size = UDim2.new(1,0,1,0)
_0xC3F5.BackgroundColor3 = Color3.fromRGB(8,8,12)
_0xC3F5.BorderSizePixel = 0
_0xC3F5.Parent = _0xBCA1
local _0x533F = Instance.new(string.char(70,114,97,109,101))
_0x533F.Size = UDim2.new(0,320,0,160)
_0x533F.Position = UDim2.new(0.5,-160,0.5,-80)
_0x533F.BackgroundColor3 = Color3.fromRGB(16,16,22)
_0x533F.BorderSizePixel = 0
_0x533F.Parent = _0xC3F5
Instance.new(string.char(85,73,67,111,114,110,101,114), _0x533F).CornerRadius = UDim.new(0,14)
local _0xE10A = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_0xE10A.Size = UDim2.new(1,-20,0,28)
_0xE10A.Position = UDim2.new(0,10,0,14)
_0xE10A.BackgroundTransparency = 1
_0xE10A.Text =string.char(77,79,79,78,32,72,85,66)_0xE10A.TextColor3 = Color3.fromRGB(138,99,255)
_0xE10A.TextSize = 20
_0xE10A.Font = Enum.Font.GothamBold
_0xE10A.Parent = _0x533F
local _0x0875 = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_0x0875.Size = UDim2.new(1,-20,0,18)
_0x0875.Position = UDim2.new(0,10,0,42)
_0x0875.BackgroundTransparency = 1
_0x0875.Text =string.char(106,97,105,108,98,105,114,100)_0x0875.TextColor3 = Color3.fromRGB(160,160,180)
_0x0875.TextSize = 12
_0x0875.Font = Enum.Font.Gotham
_0x0875.Parent = _0x533F
local _0x033A = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_0x033A.Size = UDim2.new(1,-20,0,18)
_0x033A.Position = UDim2.new(0,10,0,70)
_0x033A.BackgroundTransparency = 1
_0x033A.Text =string.char(83,116,97,114,116,105,110,103,46,46,46)_0x033A.TextColor3 = Color3.fromRGB(220,220,230)
_0x033A.TextSize = 12
_0x033A.Font = Enum.Font.Gotham
_0x033A.TextXAlignment = Enum.TextXAlignment.Left
_0x033A.Parent = _0x533F
local _0xB385 = Instance.new(string.char(70,114,97,109,101))
_0xB385.Size = UDim2.new(1,-24,0,10)
_0xB385.Position = UDim2.new(0,12,0,100)
_0xB385.BackgroundColor3 = Color3.fromRGB(30,30,40)
_0xB385.BorderSizePixel = 0
_0xB385.Parent = _0x533F
Instance.new(string.char(85,73,67,111,114,110,101,114), _0xB385).CornerRadius = UDim.new(1,0)
local _0x7A55 = Instance.new(string.char(70,114,97,109,101))
_0x7A55.Size = UDim2.new(0,0,1,0)
_0x7A55.BackgroundColor3 = Color3.fromRGB(138,99,255)
_0x7A55.BorderSizePixel = 0
_0x7A55.Parent = _0xB385
Instance.new(string.char(85,73,67,111,114,110,101,114), _0x7A55).CornerRadius = UDim.new(1,0)
local _0x9660 = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_0x9660.Size = UDim2.new(1,-20,0,32)
_0x9660.Position = UDim2.new(0,10,0,118)
_0x9660.BackgroundTransparency = 1
_0x9660.Text =string.char(69,120,101,99,117,116,111,114,58,32).. _0x222C
_0x9660.TextColor3 = Color3.fromRGB(140,140,160)
_0x9660.TextSize = 11
_0x9660.Font = Enum.Font.Gotham
_0x9660.TextXAlignment = Enum.TextXAlignment.Left
_0x9660.TextYAlignment = Enum.TextYAlignment.Top
_0x9660.Parent = _0x533F
_0xBE18 = function(_0x4263, text)
_0x4263 = math.clamp(_0x4263,0,1)
pcall(function()
_0x033A.Text = text or _0x033A.Text
_0x9A58:Create(_0x7A55, TweenInfo.new(0.25, Enum.EasingStyle.Quad), {
Size = UDim2.new(_0x4263,0,1,0)
}):Play()
end)
end
_0xBE18(0.08,string.char(68,101,116,101,99,116,105,110,103,32,101,120,101,99,117,116,111,114,46,46,46))
task.wait(0.2)
_0xBE18(0.2,string.char(69,120,101,99,117,116,111,114,58,32).. _0x222C)
task.wait(0.15)
_0xBE18(0.35,string.char(76,111,97,100,105,110,103,32,99,111,110,102,105,103,46,46,46))
task.wait(0.1)_0xA297 = function(_0x84D2, _0x8044) pcall(function() if writefile then writefile(_0x84D2, _0x8044) end end) end
_0x7DA6 = function(_0x84D2)
local _0x23A4, _0x8044 = pcall(function()
if isfile and isfile(_0x84D2) and readfile then return readfile(_0x84D2) end
end)
return _0x23A4 and _0x8044 or nil
end
pcall(function() if makefolder then makefolder(string.char(77,111,111,110,72,117,98)) makefolder(string.char(77,111,111,110,72,117,98,47,67,111,110,102,105,103,115)) end end)
_0x4D5E = {}
_0xBBD0 = {
Aimbot = false, AimKey =string.char(77,66,50), AimMode =string.char(72,111,108,100),
AimFOV = 150, AimSmooth = 0.95, ShowFOV = false,
WallCheck = true, TeamCheck = true, Prediction = true, PredictAmount = 0.12,
Triggerbot = false, TriggerFOV = 22, TriggerDelay = 0.15,
KillAura = false, KillAuraRange = 90, KillAuraBehind = 3.2,
CustomFOV = false, FOVValue = 90,
Speed = false, SpeedValue = 24, Noclip = false, AntiBow = true,
StreamProof = false, SpoofName =string.char(80,108,97,121,101,114), ShowVerified = true,
StaffDetect = false, StaffLeave = false,
ESP = false, ShowBoxes = true, BoxStyle =string.char(67,111,114,110,101,114),
ShowNames = true, ShowDistance = true, ShowHealth = true, ShowHeadDot = true,
Chams = false, GadgetESP = false,
Radar = false, RadarSize = 140, RadarRange = 200,
RGBESP = false, ESPColorR = 170, ESPColorG = 0, ESPColorB = 255,
Hitbox = false, HitboxPart =string.char(72,101,97,100), HitboxSize = 3,
CursorName =string.char(79,102,102), CursorSize = 32,
DeviceSpoof = false, DeviceMode =string.char(67,111,110,115,111,108,101), DeviceSpoofDelay = 1.5,
ScreenStretch = false, StretchAmount = 0.53,
ShowPerf = true, Potato = false,
MobileAim = false, MobileSmooth = 0.9, MobileFOV = 160, MobileShowFOV = true,
TargetPriority =string.char(67,114,111,115,115,104,97,105,114),
SilentAim = false, SilentFOV = 90, SilentShowFOV = true, SilentShowLine = true,
SilentPart =string.char(72,101,97,100), SilentTeamCheck = true, SilentVisible = false,
DesignAccentR = 138, DesignAccentG = 99, DesignAccentB = 255,
ConfigName =string.char(100,101,102,97,117,108,116),
}
for k, _0xD278 in pairs(_0xBBD0) do _0x4D5E[k] = _0xD278 end
local _0x2615 = false
task.delay(2.5, function() _0x2615 = true end)
_0xA05F = function()
local _0xA7F0 = tostring(_0x4D5E.ConfigName orstring.char(100,101,102,97,117,108,116)):gsub(string.char(91,94,37,119,37,45,37,95,93),"")
if _0xA7F0 ==""then _0xA7F0 =string.char(100,101,102,97,117,108,116)end
_0x4D5E.ConfigName = _0xA7F0
_0x4D5E.StretchAmount = math.clamp(tonumber(_0x4D5E.StretchAmount) or 0.53,0.3,1)
_0xA297(string.char(77,111,111,110,72,117,98,47,67,111,110,102,105,103,115,47)..n..string.char(46,106,115,111,110), _0x52CB:JSONEncode(_0x4D5E))
_0xA297(string.char(77,111,111,110,72,117,98,47,74,97,105,108,98,105,114,100,46,106,115,111,110), _0x52CB:JSONEncode(_0x4D5E))
end
_0xDE82 = function()
local _0xA7F0 = tostring(_0x4D5E.ConfigName orstring.char(100,101,102,97,117,108,116)):gsub(string.char(91,94,37,119,37,45,37,95,93),"")
local _0xBB4B = _0x7DA6(string.char(77,111,111,110,72,117,98,47,67,111,110,102,105,103,115,47)..n..string.char(46,106,115,111,110)) or _0x7DA6(string.char(77,111,111,110,72,117,98,47,74,97,105,108,98,105,114,100,46,106,115,111,110))
if _0xBB4B then
pcall(function()
local _0x8044 = _0x52CB:JSONDecode(_0xBB4B)
if type(_0x8044) ==string.char(116,97,98,108,101)then for k,_0xD278 in pairs(_0x8044) do if _0xBBD0[k] ~= nil then _0x4D5E[k]=_0xD278 end end end
end)
end
if type(_0x4D5E.DeviceSpoofDelay) ~=string.char(110,117,109,98,101,114)then _0x4D5E.DeviceSpoofDelay = 1.5 end
_0x4D5E.StretchAmount = math.clamp(tonumber(_0x4D5E.StretchAmount) or 0.53,0.3,1)
if not _0x2615 then
local _0x44C3 = _0x4D5E.ScreenStretch == true
_0x4D5E.ScreenStretch = false
task.delay(2.6, function()
if _0x44C3 then _0x4D5E.ScreenStretch = true end
_0x2615 = true
end)
end
if _0x4D5E.HitboxPart ~=string.char(72,101,97,100)and _0x4D5E.HitboxPart ~=string.char(84,111,114,115,111)then _0x4D5E.HitboxPart =string.char(72,101,97,100)end
local _0x2836 = tostring(_0x4D5E.TargetPriority orstring.char(67,114,111,115,115,104,97,105,114))
if _0x2836 ~=string.char(67,114,111,115,115,104,97,105,114)and _0x2836 ~=string.char(67,108,111,115,101,115,116)and _0x2836 ~=string.char(76,111,119,101,115,116,32,72,80)then _0x4D5E.TargetPriority =string.char(67,114,111,115,115,104,97,105,114)end
end
pcall(_0xDE82)_0x4D5E.SilentAim = false
_0x4D5E.DeviceSpoof = false
_0x4D5E.KillAura = false
_0x4D5E.StaffDetect = false
_0x4D5E.StaffLeave = false
_0x4D5E.StreamProof = false
_0x4D5E.Hitbox = false
local function _0x0A35()
_0x4D5E.SilentAim = false
_0x4D5E.DeviceSpoof = false
_0x4D5E.KillAura = false
_0x4D5E.StaffDetect = false
_0x4D5E.StaffLeave = false
_0x4D5E.StreamProof = false
_0x4D5E.Hitbox = false
end
task.spawn(function()
while true do
task.wait(1)
_0x0A35()
end
end)
end
_0x425A()
local function _0x0EFB()
local _0x23A4, _0x1480 = pcall(function()
return _0x52CB:JSONEncode(_0x4D5E)
end)
if not _0x23A4 or type(_0x1480) ~=string.char(115,116,114,105,110,103)then
if _0x8E91 then _0x8E91.Text =string.char(69,120,112,111,114,116,32,102,97,105,108,101,100)end
return nil
end
pcall(function()
if setclipboard then setclipboard(_0x1480) end
end)
pcall(function()
if toclipboard then toclipboard(_0x1480) end
end)
if _0x8E91 then
_0x8E91.Text =string.char(67,111,110,102,105,103,32,101,120,112,111,114,116,101,100,32,40,99,108,105,112,98,111,97,114,100,32,105,102,32,115,117,112,112,111,114,116,101,100,41)end
return _0x1480
end
local function _0xAA7C(_0xBB4B)
if type(_0xBB4B) ~=string.char(115,116,114,105,110,103)or #_0xBB4B < 2 then
if _0x8E91 then _0x8E91.Text =string.char(73,109,112,111,114,116,58,32,101,109,112,116,121,32,99,111,110,102,105,103)end
return false
end
_0xBB4B = _0xBB4B:gsub(string.char(94,37,115,43),""):gsub(string.char(37,115,43,36),"")
local _0x23A4, _0x5011 = pcall(function()
return _0x52CB:JSONDecode(_0xBB4B)
end)
if not _0x23A4 or type(_0x5011) ~=string.char(116,97,98,108,101)then
if _0x8E91 then _0x8E91.Text =string.char(73,109,112,111,114,116,58,32,105,110,118,97,108,105,100,32,74,83,79,78)end
return false
end
local _0x82E7 = 0
for k, _0xD278 in pairs(_0x5011) do
if _0xBBD0[k] ~= nil then
_0x4D5E[k] = _0xD278
_0x82E7 += 1
end
end
pcall(_0xA05F)
if _0x8E91 then
_0x8E91.Text =string.char(73,109,112,111,114,116,101,100,32).. tostring(_0x82E7) ..string.char(32,115,101,116,116,105,110,103,115,32,226,128,148,32,114,101,45,111,112,101,110,32,116,97,98,115,32,105,102,32,110,101,101,100,101,100)endpcall(function() if _0x2457 then _0x2457(_0x4D5E.CursorName) end end)
pcall(function() if _0x1C67 then _0x1C67() end end)
return true
end
local function _0x9766()
local _0xBB4B = nil
pcall(function()
if getclipboard then _0xBB4B = getclipboard() end
end)
if not _0xBB4B then
pcall(function()
if clipboard and clipboard.get then _0xBB4B = clipboard.get() end
end)
end
if type(_0xBB4B) ~=string.char(115,116,114,105,110,103)or #_0xBB4B < 2 then
if _0x8E91 then _0x8E91.Text =string.char(67,108,105,112,98,111,97,114,100,32,101,109,112,116,121,32,226,128,148,32,112,97,115,116,101,32,105,110,116,111,32,98,111,120,44,32,116,104,101,110,32,73,109,112,111,114,116,32,80,97,115,116,101)end
return false
end
return _0xAA7C(_0xBB4B)
end
_0xBE18(0.5,string.char(76,111,97,100,105,110,103,32,68,114,97,119,105,110,103,46,46,46))
local _0xEF8B = false
local _0xA319 = nil
local function _0x3C43(lib)
if not lib or type(lib.new) ~=string.char(102,117,110,99,116,105,111,110)then return false end
local _0x23A4 = pcall(function()
local _0x8C34 = lib.new(string.char(84,101,120,116))
_0x8C34.Visible = false
_0x8C34:Remove()
end)
if _0x23A4 then _0xEF8B = true _0xA319 = lib return true end
return false
end
_0x3C43(Drawing)
pcall(function() if getrenv then _0x3C43(getrenv().Drawing) end end)
_0xBE18(0.65, _0xEF8B andstring.char(68,114,97,119,105,110,103,32,79,75)orstring.char(68,114,97,119,105,110,103,32,109,105,115,115,105,110,103,32,40,114,97,100,97,114,32,117,110,97,118,97,105,108,97,98,108,101,41))
local function _0xB257()
local _0x417C, _0x22B0, _0x6AF5 = 138, 99, 255
if type(_0x4D5E) ==string.char(116,97,98,108,101)then
_0x417C = tonumber(_0x4D5E.DesignAccentR) or _0x417C
_0x22B0 = tonumber(_0x4D5E.DesignAccentG) or _0x22B0
_0x6AF5 = tonumber(_0x4D5E.DesignAccentB) or _0x6AF5
end
return Color3.fromRGB(math.clamp(_0x417C,0,255), math.clamp(_0x22B0,0,255), math.clamp(_0x6AF5,0,255))
end
local _0xFA3F = _0xB257()
local _0x13CD = Color3.fromRGB(12,12,16)
local _0xE092 = Color3.fromRGB(18,18,24)
local _0x44A6 = Color3.fromRGB(20,20,28)
local _0xB167 = Color3.fromRGB(235,235,245)
local _0xC027 = Color3.fromRGB(160,160,180)
local _0x624C = Enum.Font.Gotham
local _0x7B34 = {}local function _0x4CA2(_0x9DC8, _0xAF6F, _0x1130)
if _0xAF6F then table.insert(_0x7B34, {_0x9DC8=_0x9DC8, _0xAF6F=_0xAF6F, _0x1130=_0x1130}) end
end
local _0x796F = Color3.fromRGB(40, 255, 40)
local _0x3201 = Color3.fromRGB(255, 40, 40)
local function _0xFCEC()
if type(_0x4D5E) ~=string.char(116,97,98,108,101)then return Color3.fromRGB(170,0,255) end
if _0x4D5E.RGBESP then return Color3.fromHSV((tick()*0.4)%1,1,1) end
return Color3.fromRGB(
math.clamp(tonumber(_0x4D5E.ESPColorR) or 170,0,255),
math.clamp(tonumber(_0x4D5E.ESPColorG) or 0,0,255),
math.clamp(tonumber(_0x4D5E.ESPColorB) or 255,0,255)
)
end
local function _0x7082()
pcall(function() _0x67D4.MouseBehavior = Enum.MouseBehavior.Default _0x67D4.MouseIconEnabled = true end)
end
local _0x1C75 = {
{ Name =string.char(79,102,102), Id = nil },
{ Name =string.char(84,67,50), Id =string.char(56,54,56,48,48,54,50,54,56,54)},
{ Name =string.char(67,105,110,110,97,109,111,114,111,108,108), Id =string.char(49,49,55,49,57,56,57,48,53,55,55)},
}
local _0x5858 = Instance.new(string.char(83,99,114,101,101,110,71,117,105))
_0x5858.Name =string.char(77,111,111,110,67,117,114,115,111,114,85,73)_0x5858.ResetOnSpawn = false
_0x5858.IgnoreGuiInset = true
_0x5858.DisplayOrder = 10000
_0x5858.Parent = _0x238C
local _0x8FD6 = Instance.new(string.char(73,109,97,103,101,76,97,98,101,108))
_0x8FD6.BackgroundTransparency = 1
_0x8FD6.AnchorPoint = Vector2.new(0.5,0.5)
_0x8FD6.Size = UDim2.new(0,32,0,32)
_0x8FD6.Visible = false
_0x8FD6.ZIndex = 100
_0x8FD6.Parent = _0x5858
local function _0xE3E3(_0xFC5E)
local _0x7F31 = _0x238C:FindFirstChild(string.char(67,114,111,115,115,104,97,105,114))
if not _0x7F31 then return end
pcall(function()
if _0x7F31:IsA(string.char(83,99,114,101,101,110,71,117,105)) then _0x7F31.Enabled = _0xFC5E end
_0x7F31.Visible = _0xFC5E
for _0x4136,_0x8044 in ipairs(_0x7F31:GetDescendants()) do if _0x8044:IsA(string.char(71,117,105,79,98,106,101,99,116)) then _0x8044.Visible = _0xFC5E end end
end)
end
local function _0x2457(_0x99D7)
_0x99D7 = _0x99D7 or _0x4D5E.CursorName orstring.char(79,102,102)_0x4D5E.CursorName = _0x99D7
local _0x55FC = _0x1C75[1]
for _0x4136,_0x1B2E in ipairs(_0x1C75) do if _0x1B2E.Name == _0x99D7 then _0x55FC = _0x1B2E break end end
_0xE3E3(false)
_0x8FD6.Visible = false
local _0x1239 = math.clamp(tonumber(_0x4D5E.CursorSize) or 32,8,128)
_0x8FD6.Size = UDim2.new(0,_0x1239,0,_0x1239)
if not _0x55FC.Id or _0x55FC.Name ==string.char(79,102,102)then
pcall(function() if _0x7AB2 then _0x7AB2.Icon =""end _0x67D4.MouseIconEnabled = true end)
return
end
if _0x55FC.Id ==string.char(71,65,77,69)then
_0xE3E3(true)
pcall(function() if _0x7AB2 then _0x7AB2.Icon =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,48)end _0x67D4.MouseIconEnabled = true end)
return
end
pcall(function()
_0x67D4.MouseIconEnabled = false
if _0x7AB2 then _0x7AB2.Icon =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47,48)end
_0x8FD6.Image =string.char(114,98,120,97,115,115,101,116,105,100,58,47,47).. tostring(_0x55FC.Id)
_0x8FD6.Visible = true
if _0x67D4.TouchEnabled and not _0x67D4.KeyboardEnabled then
local _0x2164 = _0x83C0.ViewportSize
_0x8FD6.Position = UDim2.new(0, _0x2164.X/2, 0, _0x2164.Y/2)
end
end)
end
local _0xFA2D = 70
pcall(function() _0xFA2D = _0x83C0.FieldOfView end)
local function _0x3205()
if not _0x4D5E.CustomFOV then return end
local _0xD278 = math.clamp(tonumber(_0x4D5E.FOVValue) or 90,40,120)
pcall(function() if math.abs(_0x83C0.FieldOfView-_0xD278)>0.5 then _0x83C0.FieldOfView = _0xD278 end end)
end
local _0xED74 = false
local function _0x4850()
if not _0x2615 then return end
if not _0x4D5E.ScreenStretch then return end
if _0xED74 then return end
if not _0x83C0 or not _0x83C0.Parent then return end
local _0xD8E9 = math.clamp(tonumber(_0x4D5E.StretchAmount) or 0.53,0.3,1)
if _0xD8E9 >= 0.995 then return end
pcall(function()
local _0x3B56 = _0x83C0.CFrame
if _0x3B56 then _0x83C0.CFrame = _0x3B56 * CFrame.new(0,0,0,1,0,0,0,_0xD8E9,0,0,0,1) end
end)
end
local function _0x5501(worldPos)
local _0x7B32 = _0x4E10.Character
if not _0x7B32 then return end
local _0x4FB1 = _0x7B32:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0x4FB1 or not worldPos then return end
pcall(function()
local _0x84D2 = _0x4FB1.Position
_0x4FB1.CFrame = CFrame.new(_0x84D2, Vector3.new(worldPos.X,_0x84D2.Y,worldPos.Z))
end)
end
local function _0x5AE8(_0x84D2)
if not _0x84D2 then return nil end
local _0x23A4,_0x1B2E = pcall(function() return _0x84D2.Character end)
return _0x23A4 and _0x1B2E or nil
end
local _0x8364, _0x5B8D, _0xC7D9, _0x8570, _0x6153, _0x9437, _0x26F4, _0x3641, _0x2CFF, _0x6706, _0xDED6, _0xAB59, _0xA319
local function _0xB6BA()
_0x8364 = function(_0x84D2)
local _0x1B2E = _0x5AE8(_0x84D2)
if not _0x1B2E then return false end
local _0xC029 = _0x1B2E:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
return _0xC029 ~= nil and _0xC029.Health > 0
end
_0x5B8D = function(_0x84D2)
if not _0x84D2 or _0x84D2 == _0x4E10 then return false end
if not _0x4D5E.TeamCheck then return true end
local _0x6ACF,_0x6AF5 = _0x4E10.Team,_0x84D2.Team
if _0x6ACF and _0x6AF5 then return _0x6ACF ~= _0x6AF5 end
return true
end
local _0x04C5 = {string.char(98,111,120),string.char(99,114,97,116,101),string.char(98,97,114,114,101,108),string.char(100,117,109,112,115,116,101,114),string.char(116,114,97,115,104),string.char(99,111,110,116,97,105,110,101,114),string.char(115,104,105,112,112,105,110,103),string.char(119,97,108,108),string.char(112,105,108,108,97,114),string.char(102,101,110,99,101),string.char(103,97,116,101),string.char(99,97,114),string.char(116,114,117,99,107),string.char(118,97,110),string.char(103,101,110,101,114,97,116,111,114),string.char(99,97,98,105,110,101,116),string.char(115,104,101,108,102),string.char(108,111,99,107,101,114),string.char(100,101,115,107),string.char(116,97,98,108,101),string.char(99,111,117,99,104),string.char(98,101,110,99,104),string.char(115,116,97,105,114,115),string.char(108,97,100,100,101,114),string.char(114,97,109,112),string.char(112,105,112,101),string.char(118,101,110,116),string.char(115,97,110,100,98,97,103),string.char(112,97,108,108,101,116),string.char(102,111,114,107,108,105,102,116),
}
local function _0x5B3A(str,_0xF575)
for i=1,#_0xF575 do if string.find(str,_0xF575[i],1,true) then return true end end
return false
end
local function _0x0F1E(_0xEA3E)
if not _0xEA3E or not _0xEA3E:IsA(string.char(66,97,115,101,80,97,114,116)) then return true end
local _0xA7F0 = string.lower(_0xEA3E.Name or"")
local _0x6023 = string.lower(_0xEA3E:GetFullName() or"")
local _0x18D4 = string.lower(tostring(_0xEA3E.Material))
if string.find(_0xA7F0,string.char(103,108,97,115,115),1,true) or string.find(_0x18D4,string.char(103,108,97,115,115),1,true) then return true end
if _0xEA3E.Transparency >= 0.7 then return true end
if string.find(_0xA7F0,string.char(100,111,111,114),1,true) or string.find(_0x6023,string.char(100,111,111,114),1,true) then
if string.find(_0xA7F0,string.char(119,111,111,100),1,true) or string.find(_0x6023,string.char(119,111,111,100),1,true) then return false end
return true
end
if string.find(_0xA7F0,string.char(119,105,110,100,111,119),1,true) then return true end
if _0xEA3E.CanCollide == false and _0xEA3E.Transparency >= 0.25 then return true end
if _0x5B3A(_0xA7F0,_0x04C5) or _0x5B3A(_0x6023,_0x04C5) then return false end
return false
end
local function _0x7C21(_0x2E1B)
if not _0x4D5E.WallCheck then return true end
local _0x3302 = _0x5AE8(_0x2E1B)
local _0x40DD = _0x3302 and _0x3302:FindFirstChild(string.char(72,101,97,100))
if not _0x40DD then return false end
local _0x7B32 = _0x5AE8(_0x4E10)
local _0x22A9 = _0x83C0.CFrame.Position + _0x83C0.CFrame.LookVector*0.8
local _0x3826 = _0x40DD.Position
local _0xCC3B = _0x3826 - _0x22A9
local _0x9CCB = _0xCC3B.Magnitude
if _0x9CCB < 1.5 then return true end
local _0x154F = {_0x83C0}
if _0x7B32 then table.insert(_0x154F,_0x7B32) end
if _0x3302 then table.insert(_0x154F,_0x3302) end
local _0x5041 = RaycastParams.new()
_0x5041.FilterType = Enum.RaycastFilterType.Exclude
_0x5041.FilterDescendantsInstances = _0x154F
_0x5041.IgnoreWater = true
local _0x6372,_0x3EB4,_0x43E3 = 0,_0x22A9,_0xCC3B.Unit
for _0x4136=1,12 do
local _0x85FD = _0x9CCB - _0x6372
if _0x85FD <= 0.15 then return true end
local _0xFD6C = workspace:Raycast(_0x3EB4,_0x43E3*_0x85FD,_0x5041)
if not _0xFD6C then return true end
if _0xFD6C.Instance and _0x3302 and _0xFD6C.Instance:IsDescendantOf(_0x3302) then return true end
if _0x0F1E(_0xFD6C.Instance) then
table.insert(_0x154F,_0xFD6C.Instance)
_0x5041.FilterDescendantsInstances = _0x154F
local _0xF7CC = (_0xFD6C.Position-_0x3EB4).Magnitude
_0x3EB4 = _0xFD6C.Position+_0x43E3*0.15
_0x6372 = _0x6372+_0xF7CC+0.15
else return false end
end
return false
end
_0xAB59 = function(_0x2E1B)
if _0x4D5E.RGBESP then
return Color3.fromHSV((tick() * 0.4) % 1, 1, 1)
end
if _0x7C21(_0x2E1B) then
return _0x796F
end
return _0x3201
end
local function _0xB1E1(_0x40DD,_0x3302)
if not _0x4D5E.Prediction or not _0x40DD then return _0x40DD.Position end
local _0x4FB1 = _0x3302 and (_0x3302:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)) or _0x3302:FindFirstChild(string.char(84,111,114,115,111)))
local _0xED21 = Vector3.zero
if _0x4FB1 then pcall(function() _0xED21 = _0x4FB1.AssemblyLinearVelocity end) end
return _0x40DD.Position + _0xED21*(tonumber(_0x4D5E.PredictAmount) or 0.12)
end
_0xC7D9 = function(_0xAB5B,needVis)
local _0x56F6 = tostring(_0x4D5E.TargetPriority orstring.char(67,114,111,115,115,104,97,105,114))
local _0xF153, _0xCD59 = nil, nil
local _0x1AA3 = math.huge
local _0xE6D9 = _0x83C0.ViewportSize/2
local _0x891E = _0x4E10.Character and (_0x4E10.Character:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)) or _0x4E10.Character:FindFirstChild(string.char(84,111,114,115,111)))
for _0x4136,_0x2E1B in ipairs(_0xFF3F:GetPlayers()) do
if _0x2E1B~=_0x4E10 and _0x5B8D(_0x2E1B) and _0x8364(_0x2E1B) then
local _0x3302 = _0x5AE8(_0x2E1B)
local _0x40DD = _0x3302 and _0x3302:FindFirstChild(string.char(72,101,97,100))
if _0x40DD then
local _0xFA4B = _0xB1E1(_0x40DD,_0x3302)
local _0x3EB4,_0xFC5E = _0x83C0:WorldToViewportPoint(_0xFA4B)
if _0xFC5E and _0x3EB4.Z>0 then
local _0x9D5B = (Vector2.new(_0x3EB4.X,_0x3EB4.Y)-_0xE6D9).Magnitude
if _0x9D5B <= (_0xAB5B or 150) and ((not needVis) or _0x7C21(_0x2E1B)) then
local _0xE90C
if _0x56F6 ==string.char(76,111,119,101,115,116,32,72,80)then
local _0x8D1C = _0x3302:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
_0xE90C = _0x8D1C and _0x8D1C.Health or 100
elseif _0x56F6 ==string.char(67,108,111,115,101,115,116)then
if _0x891E then
_0xE90C = (_0x40DD.Position - _0x891E.Position).Magnitude
else
_0xE90C = _0x3EB4.Z
end
else_0xE90C = _0x9D5B
end
if _0xE90C < _0x1AA3 then
_0x1AA3 = _0xE90C
_0xF153 = _0x2E1B
_0xCD59 = _0xFA4B
end
end
end
end
end
end
return _0xF153,_0xCD59
end_0x9437 = false
pcall(function()
if not Drawing and not _0xA319 then return end
local _0x1DED = _0xA319 or Drawing
_0x26F4 = _0x1DED.new(string.char(67,105,114,99,108,101))
_0x26F4.Thickness = 1
_0x26F4.Visible = false
_0x26F4.Filled = false
_0x26F4.NumSides = 64
_0x26F4.Radius = 90
_0x26F4.Color = Color3.fromRGB(138, 99, 255)
_0x26F4.Transparency = 0.35
_0x3641 = _0x1DED.new(string.char(76,105,110,101))
_0x3641.Thickness = 1
_0x3641.Visible = false
_0x3641.Color = Color3.fromRGB(138, 99, 255)
_0x3641.Transparency = 0.4
end)
_0x8570 = function()
return nilend
_0x6153 = function()
if _0x9437 then return true end
if not getgc or not hookfunction or not newcclosure then return false end
local _0x7D23 = 0
pcall(function()
for _0x4136, value in next, getgc(true) do
if typeof(value) ==string.char(102,117,110,99,116,105,111,110)and not isexecutorclosure(value)
and not iscclosure(value)
and islclosure(value) then
local _0xE9F1, _0xF6E8 = pcall(debug.getinfo, value)
if _0xE9F1 and _0xF6E8 and _0xF6E8.name ==string.char(66,117,108,108,101,116,82,97,121,67,97,115,116)then
local _0x0BED
_0x0BED = hookfunction(value, newcclosure(function(...)if not _0x4D5E.SilentAim then
return _0x0BED(...)
end
local _0xA7F0 = select(string.char(35), ...)
local _0x2998 = {...}
local _0x3826 = _0x8570()
if _0x3826 and _0xA7F0 >= 2 and typeof(_0x2998[1]) ==string.char(86,101,99,116,111,114,51)then
local _0x22A9 = _0x2998[1]
local _0xCC3B = _0x3826.Position - _0x22A9
if _0xCC3B.Magnitude > 0.05 then
_0x2998[2] = _0xCC3B.Unit
end
end
return _0x0BED(table.unpack(_0x2998, 1, _0xA7F0))
end))
_0x7D23 = _0x7D23 + 1
_0x9437 = trueend
end
end
end)
if _0x9437 then
print(string.char(91,77,111,111,110,93,32,83,105,108,101,110,116,32,65,105,109,32,104,111,111,107,101,100,32,66,117,108,108,101,116,82,97,121,67,97,115,116,32,120).. tostring(_0x7D23))
end
return _0x9437
end_0x6153 = function() end
origSizes = {}
local function _0xA4D3(_0x3302)
return _0x3302 and (_0x3302:FindFirstChild(string.char(84,111,114,115,111)) or _0x3302:FindFirstChild(string.char(85,112,112,101,114,84,111,114,115,111)))
end
local function _0xCA1A(_0xEA3E)
if not _0xEA3E then return end
local _0x3265 = origSizes[_0xEA3E]
if _0x3265 then pcall(function() _0xEA3E.Size = _0x3265 end) origSizes[_0xEA3E]=nil end
end
_0x6706 = function()
for _0xEA3E,_0x4136 in pairs(origSizes) do _0xCA1A(_0xEA3E) end
origSizes = {}
end
local function _0x7A5F(_0xEA3E,_0x0715)
if not _0xEA3E or not _0xEA3E:IsA(string.char(66,97,115,101,80,97,114,116)) then return end
if origSizes[_0xEA3E] == nil then origSizes[_0xEA3E]=_0xEA3E.Size end
local _0x6EBC = math.clamp(tonumber(_0x0715) or 3,1.2,12)
pcall(function() _0xEA3E.Size = Vector3.new(_0x6EBC,_0x6EBC,_0x6EBC) _0xEA3E.Massless = true _0xEA3E.CanCollide = false end)
end
_0x2CFF = function()
if not _0x4D5E.Hitbox then _0x6706() return end
local _0x8781 = _0x4D5E.HitboxPart
local _0x0715 = tonumber(_0x4D5E.HitboxSize) or 3
for _0x4136,_0x2E1B in ipairs(_0xFF3F:GetPlayers()) do
if _0x2E1B~=_0x4E10 and _0x5B8D(_0x2E1B) and _0x8364(_0x2E1B) then
local _0x3302 = _0x5AE8(_0x2E1B)
if _0x3302 then
local _0x40DD = _0x3302:FindFirstChild(string.char(72,101,97,100))
local _0x9337 = _0xA4D3(_0x3302)
if _0x8781 ==string.char(72,101,97,100)then
if _0x40DD then _0x7A5F(_0x40DD,_0x0715) end
if _0x9337 then _0xCA1A(_0x9337) end
else
if _0x9337 then _0x7A5F(_0x9337,_0x0715) end
if _0x40DD then _0xCA1A(_0x40DD) end
end
end
end
end
end
local _0xDAD6 = 0
local function _0x3C27()
local _0x3302 = _0x5AE8(_0x4E10)
if not _0x3302 then return nil end
return _0x3302:FindFirstChildOfClass(string.char(84,111,111,108))
end
local function _0xD8D0()local _0x89C0 = _0x3C27()
if not _0x89C0 then return end
local _0x2164 = _0x83C0.ViewportSize
local _0x2884 = math.floor(_0x2164.X/2)
local _0x1B6F = math.floor(_0x2164.Y/2)
local _0x654D = false
pcall(function()
_0x15D1:SendMouseButtonEvent(_0x2884, _0x1B6F, 0, true, game, 1)
task.wait(0.03)
_0x15D1:SendMouseButtonEvent(_0x2884, _0x1B6F, 0, false, game, 1)
_0x654D = true
end)
if not _0x654D then
pcall(function() _0x89C0:Activate() end)
end
endlocal function _0xAC4B()
local _0xAB5B = math.clamp(tonumber(_0x4D5E.TriggerFOV) or 25, 8, 80)
if not _0x83C0 then return nil end
local _0xE6D9 = _0x83C0.ViewportSize / 2
local _0xF153, _0xA5E9 = nil, _0xAB5B
for _0x4136, _0x2E1B in ipairs(_0xFF3F:GetPlayers()) do
if _0x2E1B ~= _0x4E10 and _0x5B8D(_0x2E1B) and _0x8364(_0x2E1B) then
local _0x3302 = _0x5AE8(_0x2E1B)
if _0x3302 then
local _0xD97B = false
if _0x4D5E.WallCheck then
local _0x264B = true
pcall(function() _0x264B = _0x7C21(_0x2E1B) end)
if not _0x264B then _0xD97B = true end
end
if not _0xD97B then
local _0xEA3E = _0x3302:FindFirstChild(string.char(72,101,97,100))
or _0x3302:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
or _0x3302:FindFirstChild(string.char(84,111,114,115,111))
if _0xEA3E then
local _0xE4F2, _0xFC5E = _0x83C0:WorldToViewportPoint(_0xEA3E.Position)
if _0xFC5E and _0xE4F2.Z > 0 then
local _0x9CCB = (Vector2.new(_0xE4F2.X, _0xE4F2.Y) - _0xE6D9).Magnitude
if _0x9CCB <= _0xA5E9 then
_0xA5E9 = _0x9CCB
_0xF153 = _0x2E1B
end
end
end
end
end
end
end
return _0xF153
end
local function _0x997E()
if not _0x4D5E.Triggerbot then return end
if not _0x8364(_0x4E10) then return end
local _0x89C0 = _0x3C27()
if not _0x89C0 then return end
if not _0x83C0 or not _0x83C0.Parent then return endlocal _0x3561 = math.max(tonumber(_0x4D5E.TriggerDelay) or 0.15, 0.12)
if tick() - _0xDAD6 < _0x3561 then return end
local _0x2E1B = _0xAC4B()
if not _0x2E1B then return end
_0xDAD6 = tick()
_0xD8D0()
end
local _0x0DE6 = nil
local function _0x39D6(exclude)
local _0x7B32 = _0x5AE8(_0x4E10)
local _0x891E = _0x7B32 and _0x7B32:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0x891E then return nil end
local _0x542B = tonumber(_0x4D5E.KillAuraRange) or 90
local _0xF153,_0xA5E9 = nil,_0x542B
for _0x4136,_0x2E1B in ipairs(_0xFF3F:GetPlayers()) do
if _0x2E1B~=_0x4E10 and _0x2E1B~=exclude and _0x5B8D(_0x2E1B) and _0x8364(_0x2E1B) then
local _0x3302 = _0x5AE8(_0x2E1B)
local _0x4FB1 = _0x3302 and _0x3302:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0x40DD = _0x3302 and _0x3302:FindFirstChild(string.char(72,101,97,100))
if _0x4FB1 and _0x40DD then
local _0x8044 = (_0x4FB1.Position - _0x891E.Position).Magnitude
if _0x8044 < _0xA5E9 then _0xA5E9 = _0x8044; _0xF153 = _0x2E1B end
end
end
end
return _0xF153
end
local function _0xA7C8(_0x2E1B)
local _0x7B32 = _0x5AE8(_0x4E10)
local _0x891E = _0x7B32 and _0x7B32:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0x3302 = _0x5AE8(_0x2E1B)
local _0x4FB1 = _0x3302 and _0x3302:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0x40DD = _0x3302 and _0x3302:FindFirstChild(string.char(72,101,97,100))
if not _0x891E or not _0x4FB1 or not _0x40DD then return false end
local _0xD09C = tonumber(_0x4D5E.KillAuraBehind) or 3.2
local _0x3061 = _0x4FB1.CFrame.LookVector
local _0x3EB4 = _0x4FB1.Position - _0x3061*_0xD09C + Vector3.new(0,1.4,0)
pcall(function() _0x891E.CFrame = CFrame.new(_0x3EB4, _0x40DD.Position) end)
pcall(function() _0x83C0.CFrame = CFrame.new(_0x83C0.CFrame.Position, _0x40DD.Position) end)
return true
end
local function _0xB3DE()
if not _0x4D5E.KillAura then _0x0DE6 = nil return end
local _0x7B32 = _0x5AE8(_0x4E10)
local _0x6C9E = _0x7B32 and _0x7B32:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if not _0x6C9E or _0x6C9E.Health <= 0 then _0x0DE6 = nil return end
if not _0x0DE6 or not _0x8364(_0x0DE6) or not _0x5B8D(_0x0DE6) then _0x0DE6 = _0x39D6(_0x0DE6) end
if not _0x0DE6 then return end
if _0xA7C8(_0x0DE6) then _0xD8D0() else _0x0DE6 = nil end
end
local _0x7BC1 = nil
pcall(function() _0x7BC1 = _0x4C5B:WaitForChild(string.char(71,97,109,101,69,118,101,110,116,115),8):WaitForChild(string.char(68,101,118,105,99,101,85,112,100,97,116,101),8) end)
_0xDED6 = function()
if not _0x7BC1 then pcall(function() _0x7BC1 = _0x4C5B.GameEvents.DeviceUpdate end) end
if not _0x7BC1 then return end
local _0xC5DE = _0x4D5E.DeviceMode orstring.char(67,111,110,115,111,108,101)pcall(function()
if _0xC5DE ==string.char(67,111,110,115,111,108,101)then _0x7BC1:FireServer() pcall(function() _0x7BC1:FireServer(string.char(67,111,110,115,111,108,101)) end)
elseif _0xC5DE ==string.char(68,101,115,107,116,111,112)then _0x7BC1:FireServer(string.char(68,101,115,107,116,111,112))
else _0x7BC1:FireServer(string.char(77,111,98,105,108,101)) end
end)
end
task.spawn(function()
while true do
local _0x3561 = tonumber(_0x4D5E.DeviceSpoofDelay) or 1.5
if _0x3561 < 0.3 then _0x3561 = 0.3 end
task.wait(_0x3561)
if _0x4D5E.DeviceSpoof then pcall(_0xDED6) end
end
end)
end
_0xB6BA()
_0xBE18(0.78,string.char(66,117,105,108,100,105,110,103,32,69,83,80,46,46,46))local _0x6C47, _0x7406, _0xBC9C, _0xEB48, _0x87AF, _0xF229, _0x49ED, _0xA70E, _0xE5DE, _0x6CF4
local function _0xC3AC()
local _0xCF39 = Instance.new(string.char(83,99,114,101,101,110,71,117,105))
_0xCF39.Name =string.char(77,111,111,110,77,111,98,105,108,101,69,83,80,71,117,105)_0xCF39.ResetOnSpawn = false
_0xCF39.IgnoreGuiInset = true
_0xCF39.DisplayOrder = 99999
_0xCF39.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
_0xCF39.Parent = _0x62DF
local _0x0C28 = {}
local function _0xD5FF(_0x5011)
if not _0x5011 then return end
pcall(function() if _0x5011.fullBox then _0x5011.fullBox:Destroy() end end)
pcall(function() if _0x5011.fullStroke then _0x5011.fullStroke:Destroy() end end)
pcall(function() if _0x5011.name then _0x5011.name:Destroy() end end)
pcall(function() if _0x5011.dist then _0x5011.dist:Destroy() end end)
pcall(function() if _0x5011.healthBg then _0x5011.healthBg:Destroy() end end)
pcall(function() if _0x5011.healthFill then _0x5011.healthFill:Destroy() end end)
pcall(function() if _0x5011.headDot then _0x5011.headDot:Destroy() end end)
if _0x5011.corners then
for i=1,#_0x5011.corners do
local _0x7D77 = _0x5011.corners[i]
pcall(function() if _0x7D77 then _0x7D77:Destroy() end end)
_0x5011.corners[i] = nil
end
end
end
_0x7406 = function()
for _0x2E1B,_0x5011 in pairs(_0x0C28) do
_0xD5FF(_0x5011)
_0x0C28[_0x2E1B]=nil
end
pcall(function()
for _0x4136,child in ipairs(_0xCF39:GetChildren()) do
pcall(function() if child then child:Destroy() end end)
end
end)
_0x0C28 = {}
end
local function _0x5F75(_0x2E1B)
local _0x5011 = _0x0C28[_0x2E1B]
if not _0x5011 then return end
_0xD5FF(_0x5011)
_0x0C28[_0x2E1B]=nil
end
local function _0x6295(_0x2E1B)
if _0x0C28[_0x2E1B] then return _0x0C28[_0x2E1B] end
local _0xB583 = Instance.new(string.char(70,114,97,109,101))
_0xB583.BackgroundTransparency = 1
_0xB583.BorderSizePixel = 0
_0xB583.Visible = false
_0xB583.ZIndex = 999
_0xB583.Parent = _0xCF39
local _0xD6B2
pcall(function()
_0xD6B2 = Instance.new(string.char(85,73,83,116,114,111,107,101))
_0xD6B2.Color = Color3.new(1,1,1)
_0xD6B2.Thickness = 1.5
_0xD6B2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
_0xD6B2.Parent = _0xB583
end)
local _0xB067 = {}
for i=1,8 do
local _0x7D77 = Instance.new(string.char(70,114,97,109,101))
_0x7D77.BorderSizePixel = 0
_0x7D77.BackgroundColor3 = Color3.new(1,1,1)
_0x7D77.Visible = false
_0x7D77.ZIndex = 999
_0x7D77.Parent = _0xCF39
_0xB067[i] = _0x7D77
end
local _0x99D7 = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_0x99D7.BackgroundTransparency = 1
_0x99D7.AnchorPoint = Vector2.new(0.5,0.5)
_0x99D7.TextColor3 = Color3.new(1,1,1)
_0x99D7.TextSize = 12
_0x99D7.Font = Enum.Font.SourceSansBold
_0x99D7.TextStrokeTransparency = 0
_0x99D7.Visible = false
_0x99D7.ZIndex = 999
_0x99D7.Parent = _0xCF39
local _0x9CCB = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_0x9CCB.BackgroundTransparency = 1
_0x9CCB.AnchorPoint = Vector2.new(0.5,0.5)
_0x9CCB.TextColor3 = Color3.new(1,1,1)
_0x9CCB.TextSize = 10
_0x9CCB.Font = Enum.Font.SourceSans
_0x9CCB.TextStrokeTransparency = 0
_0x9CCB.Visible = false
_0x9CCB.ZIndex = 999
_0x9CCB.Parent = _0xCF39
local _0xDEDD = Instance.new(string.char(70,114,97,109,101))
_0xDEDD.BorderSizePixel = 0
_0xDEDD.BackgroundColor3 = Color3.new(0,0,0)
_0xDEDD.Visible = false
_0xDEDD.ZIndex = 999
_0xDEDD.Parent = _0xCF39
local _0x37F7 = Instance.new(string.char(70,114,97,109,101))
_0x37F7.BorderSizePixel = 0
_0x37F7.BackgroundColor3 = Color3.new(1,0,0)
_0x37F7.Visible = false
_0x37F7.ZIndex = 999
_0x37F7.Parent = _0xCF39
local _0x8BDF = Instance.new(string.char(70,114,97,109,101))
_0x8BDF.BorderSizePixel = 0
_0x8BDF.BackgroundColor3 = Color3.new(1,1,1)
_0x8BDF.Visible = false
_0x8BDF.ZIndex = 999
_0x8BDF.Parent = _0xCF39
pcall(function()
local _0xA74D = Instance.new(string.char(85,73,67,111,114,110,101,114))
_0xA74D.CornerRadius = UDim.new(1,0)
_0xA74D.Parent = _0x8BDF
end)
local _0x5011 = {
_0xB583=_0xB583, _0xD6B2=_0xD6B2, _0xB067=_0xB067,
_0x99D7=_0x99D7, _0x9CCB=_0x9CCB, _0xDEDD=_0xDEDD, _0x37F7=_0x37F7, _0x8BDF=_0x8BDF
}
_0x0C28[_0x2E1B] = _0x5011
return _0x5011
end
_0x6C47 = function()
if not _0x4D5E.ESP then _0x7406() return end
if not _0x83C0 or not _0x83C0.Parent then return end
local _0x16A4 = _0x83C0.ViewportSize
if _0x16A4.X < 1 or _0x16A4.Y < 1 then return end
local _0x73B1 = {}
for _0x4136, _0x84D2 in ipairs(_0xFF3F:GetPlayers()) do _0x73B1[_0x84D2] = true end
for _0x2E1B in pairs(_0x0C28) do
if not _0x73B1[_0x2E1B] then _0x5F75(_0x2E1B) end
end
local _0x891E = _0x5AE8(_0x4E10) and _0x5AE8(_0x4E10):FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xB716 = {}
for _0x4136, _0x2E1B in ipairs(_0xFF3F:GetPlayers()) do
if _0x2E1B ~= _0x4E10 and _0x5B8D(_0x2E1B) and _0x8364(_0x2E1B) then
_0xB716[_0x2E1B] = true
local _0x3302 = _0x5AE8(_0x2E1B)
local _0x4FB1 = _0x3302 and (_0x3302:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116)) or _0x3302:FindFirstChild(string.char(84,111,114,115,111)))
local _0x40DD = _0x3302 and _0x3302:FindFirstChild(string.char(72,101,97,100))
local _0x8D1C = _0x3302 and _0x3302:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if not _0x4FB1 or not _0x40DD then
_0x5F75(_0x2E1B)
else
local _0x8044 = _0x6295(_0x2E1B)
local _0xF9DD = _0xAB59(_0x2E1B)
local _0x7C27, _0x2F69 = _0x83C0:WorldToViewportPoint(_0x4FB1.Position)
local _0xDD38, _0x7325 = _0x83C0:WorldToViewportPoint(_0x40DD.Position + Vector3.new(0, 1.1, 0))
local _0x07A4 = _0x83C0:WorldToViewportPoint(_0x4FB1.Position - Vector3.new(0, 2.8, 0))
if not (_0x7C27 and _0xDD38 and _0x2F69 and _0x7325 and _0x7C27.Z > 0 and _0xDD38.Z > 0) then
_0x8044.fullBox.Visible = false
_0x8044.name.Visible = false
_0x8044.dist.Visible = false
_0x8044.healthBg.Visible = false
_0x8044.healthFill.Visible = false
_0x8044.headDot.Visible = false
for i = 1, 8 do
if _0x8044.corners[i] then _0x8044.corners[i].Visible = false end
end
else
local _0x993E = _0x07A4 and _0x07A4.Y or (_0x7C27.Y + 28)
local _0xC029 = math.max(math.abs(_0x993E - _0xDD38.Y), 10)
local _0xC871 = math.clamp(_0xC029 / 1.85, 8, 120)
local _0x9094 = _0x7C27.X - _0xC871 / 2
local _0x3CFA = _0xDD38.Y
local _0x2884 = _0x7C27.X
if _0x4D5E.ShowBoxes and (_0x4D5E.BoxStyle ==string.char(70,117,108,108)or _0x4D5E.BoxStyle ==string.char(66,111,116,104)) then
_0x8044.fullBox.Size = UDim2.new(0, _0xC871, 0, _0xC029)
_0x8044.fullBox.Position = UDim2.new(0, _0x9094, 0, _0x3CFA)
_0x8044.fullBox.BackgroundTransparency = 1
_0x8044.fullBox.Visible = true
if _0x8044.fullStroke then
_0x8044.fullStroke.Color = _0xF9DD
_0x8044.fullStroke.Thickness = 2
end
else
_0x8044.fullBox.Visible = false
end
if _0x4D5E.ShowBoxes and (_0x4D5E.BoxStyle ==string.char(67,111,114,110,101,114)or _0x4D5E.BoxStyle ==string.char(66,111,116,104)) then
local _0xD0A5 = math.clamp(math.min(_0xC871, _0xC029) * 0.2, 5, 14)
local _0x8C34 = 2
local _0x1B2E = _0x8044.corners
_0x1B2E[1].Size = UDim2.new(0, _0xD0A5, 0, _0x8C34); _0x1B2E[1].Position = UDim2.new(0, _0x9094, 0, _0x3CFA)
_0x1B2E[2].Size = UDim2.new(0, _0x8C34, 0, _0xD0A5); _0x1B2E[2].Position = UDim2.new(0, _0x9094, 0, _0x3CFA)
_0x1B2E[3].Size = UDim2.new(0, _0xD0A5, 0, _0x8C34); _0x1B2E[3].Position = UDim2.new(0, _0x9094 + _0xC871 - _0xD0A5, 0, _0x3CFA)
_0x1B2E[4].Size = UDim2.new(0, _0x8C34, 0, _0xD0A5); _0x1B2E[4].Position = UDim2.new(0, _0x9094 + _0xC871 - _0x8C34, 0, _0x3CFA)
_0x1B2E[5].Size = UDim2.new(0, _0xD0A5, 0, _0x8C34); _0x1B2E[5].Position = UDim2.new(0, _0x9094, 0, _0x3CFA + _0xC029 - _0x8C34)
_0x1B2E[6].Size = UDim2.new(0, _0x8C34, 0, _0xD0A5); _0x1B2E[6].Position = UDim2.new(0, _0x9094, 0, _0x3CFA + _0xC029 - _0xD0A5)
_0x1B2E[7].Size = UDim2.new(0, _0xD0A5, 0, _0x8C34); _0x1B2E[7].Position = UDim2.new(0, _0x9094 + _0xC871 - _0xD0A5, 0, _0x3CFA + _0xC029 - _0x8C34)
_0x1B2E[8].Size = UDim2.new(0, _0x8C34, 0, _0xD0A5); _0x1B2E[8].Position = UDim2.new(0, _0x9094 + _0xC871 - _0x8C34, 0, _0x3CFA + _0xC029 - _0xD0A5)
for i = 1, 8 do _0x1B2E[i].BackgroundColor3 = _0xF9DD; _0x1B2E[i].Visible = true end
else
for i = 1, 8 do if _0x8044.corners[i] then _0x8044.corners[i].Visible = false end end
end
if _0x4D5E.ShowNames then
_0x8044.name.Text = _0x2E1B.DisplayName
_0x8044.name.Position = UDim2.new(0, _0x2884, 0, _0x3CFA - 16)
_0x8044.name.TextColor3 = _0xF9DD
_0x8044.name.Visible = true
else
_0x8044.name.Visible = false
end
if _0x4D5E.ShowDistance and _0x891E then
_0x8044.dist.Text = math.floor((_0x4FB1.Position - _0x891E.Position).Magnitude) ..string.char(109)_0x8044.dist.Position = UDim2.new(0, _0x2884, 0, _0x3CFA + _0xC029 + 2)
_0x8044.dist.TextColor3 = _0xF9DD
_0x8044.dist.Visible = true
else
_0x8044.dist.Visible = false
end
if _0x4D5E.ShowHealth and _0x8D1C then
local _0x9AF9 = _0x8D1C.Health
local _0x8A55 = _0x8D1C.MaxHealth
if _0x8A55 <= 0 then _0x8A55 = 100 end
if _0x8A55 <= 1.001 and _0x9AF9 <= 1.001 then
_0x9AF9, _0x8A55 = _0x9AF9 * 100, 100
end
local _0x4263 = math.clamp(_0x9AF9 / _0x8A55, 0, 1)
if _0x4263 > 0.98 then _0x4263 = 1 end
local _0x0F3E = _0xC029
local _0x5431 = _0x9094 - 5
_0x8044.healthBg.Size = UDim2.new(0, 3, 0, _0x0F3E)
_0x8044.healthBg.Position = UDim2.new(0, _0x5431, 0, _0x3CFA)
_0x8044.healthBg.Visible = true
local _0xA00A = math.max(2, math.floor(_0x0F3E * _0x4263 + 0.5))
_0x8044.healthFill.Size = UDim2.new(0, 3, 0, _0xA00A)
_0x8044.healthFill.Position = UDim2.new(0, _0x5431, 0, _0x3CFA + _0x0F3E - _0xA00A)
_0x8044.healthFill.BackgroundColor3 = Color3.fromRGB(
math.floor(255 * math.clamp(2 * (1 - _0x4263), 0, 1)),
math.floor(255 * math.clamp(2 * _0x4263, 0, 1)),
40
)
_0x8044.healthFill.Visible = true
else
_0x8044.healthBg.Visible = false
_0x8044.healthFill.Visible = false
end
if _0x4D5E.ShowHeadDot then
local _0x0A85, _0x66D6 = _0x83C0:WorldToViewportPoint(_0x40DD.Position)
if _0x0A85 and _0x66D6 and _0x0A85.Z > 0 then
local _0xE4B0 = math.clamp(_0xC871 * 0.12, 3, 7)
_0x8044.headDot.Size = UDim2.new(0, _0xE4B0, 0, _0xE4B0)
_0x8044.headDot.Position = UDim2.new(0, _0x0A85.X - _0xE4B0 / 2, 0, _0x0A85.Y - _0xE4B0 / 2)
_0x8044.headDot.BackgroundColor3 = _0xF9DD
_0x8044.headDot.Visible = true
else
_0x8044.headDot.Visible = false
end
else
_0x8044.headDot.Visible = false
end
end
end
end
end
for _0x2E1B in pairs(_0x0C28) do
if not _0xB716[_0x2E1B] then _0x5F75(_0x2E1B) end
end
end
_0xBC9C = function() _0x7406(); _0x6C47() endlocal _0x307A={}
local function _0x6609()
local _0xF748 = nil
pcall(function()
if gethui then _0xF748 = gethui() end
end)
if not _0xF748 then
pcall(function()
_0xF748 = game:GetService(string.char(67,111,114,101,71,117,105))
end)
end
if not _0xF748 then _0xF748 = _0x238C end
return _0xF748
end
_0x87AF = function()
for _0x2E1B,_0x735E in pairs(_0x307A) do
pcall(function() _0x735E:Destroy() end)
_0x307A[_0x2E1B]=nil
end
end
_0xEB48 = function()
if not _0x4D5E.Chams then _0x87AF() return end
local _0xF748 = _0x6609()
local _0xB716 = {}
for _0x4136, _0x2E1B in ipairs(_0xFF3F:GetPlayers()) do
if _0x2E1B ~= _0x4E10 and _0x8364(_0x2E1B) and _0x5B8D(_0x2E1B) then
_0xB716[_0x2E1B] = true
local _0x3302 = _0x5AE8(_0x2E1B)
if _0x3302 then
local _0xC1D3 = _0x3302:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
or _0x3302:FindFirstChild(string.char(72,101,97,100))
or _0x3302:FindFirstChildWhichIsA(string.char(66,97,115,101,80,97,114,116))
if _0xC1D3 then
local _0xF9DD = _0xAB59(_0x2E1B)
local _0x735E = _0x307A[_0x2E1B]
if not _0x735E or not _0x735E.Parent then
_0x735E = Instance.new(string.char(72,105,103,104,108,105,103,104,116))
_0x735E.Name =string.char(77,111,111,110,67,104,97,109,115)_0x735E.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
_0x735E.FillTransparency = 0.4
_0x735E.OutlineTransparency = 0
_0x735E.FillColor = _0xF9DD
_0x735E.OutlineColor = _0xF9DD
_0x735E.Enabled = true
_0x735E.Adornee = _0x3302
_0x735E.Parent = _0xF748
_0x307A[_0x2E1B] = _0x735E
else
if _0x735E.Adornee ~= _0x3302 then _0x735E.Adornee = _0x3302 end
_0x735E.FillColor = _0xF9DD
_0x735E.OutlineColor = _0xF9DD
_0x735E.Enabled = true
end
end
end
end
end
for _0x2E1B, _0x735E in pairs(_0x307A) do
if not _0xB716[_0x2E1B] then
pcall(function() _0x735E:Destroy() end)
_0x307A[_0x2E1B] = nil
end
end
endlocal _0xC20A={string.char(115,109,111,107,101,32,103,114,101,110,97,100,101),string.char(100,101,99,111,121,32,103,114,101,110,97,100,101),string.char(114,101,100,32,115,109,111,107,101),string.char(115,116,105,99,107,121,32,103,114,101,110,97,100,101),string.char(102,108,97,115,104,98,97,110,103),string.char(112,114,111,120,105,109,105,116,121,32,97,108,97,114,109),string.char(102,114,97,103,32,103,114,101,110,97,100,101),string.char(109,111,108,111,116,111,118),string.char(102,114,111,115,116,32,115,109,111,107,101),string.char(116,101,97,114,32,103,97,115),string.char(112,111,105,115,111,110,32,103,97,115),string.char(98,108,97,99,107,32,115,109,111,107,101)}
local _0x8E78={[string.char(115,109,111,107,101,32,103,114,101,110,97,100,101)]=Color3.fromRGB(180,180,180),[string.char(100,101,99,111,121,32,103,114,101,110,97,100,101)]=Color3.fromRGB(160,80,255),[string.char(114,101,100,32,115,109,111,107,101)]=Color3.fromRGB(255,50,50),[string.char(115,116,105,99,107,121,32,103,114,101,110,97,100,101)]=Color3.fromRGB(255,130,0),[string.char(102,108,97,115,104,98,97,110,103)]=Color3.fromRGB(255,255,0),[string.char(112,114,111,120,105,109,105,116,121,32,97,108,97,114,109)]=Color3.fromRGB(0,255,255),[string.char(102,114,97,103,32,103,114,101,110,97,100,101)]=Color3.fromRGB(0,200,0),[string.char(109,111,108,111,116,111,118)]=Color3.fromRGB(255,80,0),[string.char(102,114,111,115,116,32,115,109,111,107,101)]=Color3.fromRGB(100,180,255),[string.char(116,101,97,114,32,103,97,115)]=Color3.fromRGB(180,255,0),[string.char(112,111,105,115,111,110,32,103,97,115)]=Color3.fromRGB(0,255,0),[string.char(98,108,97,99,107,32,115,109,111,107,101)]=Color3.fromRGB(40,40,40)}
local _0xB490={}
local _0x09FF=0
_0x49ED = function() for _0xAF6F,_0x735E in pairs(_0xB490) do pcall(function() _0x735E:Destroy() end) _0xB490[_0xAF6F]=nil end end
local function _0x6D34(_0x99D7) local _0xFFF7=_0x99D7:lower() for _0x6C6F,_0xF9DD in pairs(_0x8E78) do if _0xFFF7:find(_0x6C6F,1,true) then return _0xF9DD end end return Color3.fromRGB(255,255,255) end
local function _0x12CE(_0xAF6F) if _0xAF6F:IsA(string.char(66,97,115,101,80,97,114,116)) then return _0xAF6F end if _0xAF6F:IsA(string.char(84,111,111,108)) then return _0xAF6F:FindFirstChild(string.char(72,97,110,100,108,101)) or _0xAF6F:FindFirstChildOfClass(string.char(66,97,115,101,80,97,114,116)) or _0xAF6F end if _0xAF6F:IsA(string.char(77,111,100,101,108)) then return _0xAF6F:FindFirstChildOfClass(string.char(66,97,115,101,80,97,114,116)) or _0xAF6F end return nil end
_0xF229 = function()
if not _0x4D5E.GadgetESP then _0x49ED() return end
_0x09FF=_0x09FF+1
if _0x09FF<30 then return end
_0x09FF=0
local _0xB3B2={}
for _0x4136,_0xAF6F in ipairs(workspace:GetDescendants()) do
local _0x99D7=_0xAF6F.Name:lower()
local _0x7117=false
for _0x4136,gname in ipairs(_0xC20A) do if _0x99D7:find(gname,1,true) then _0x7117=true break end end
if _0x7117 then
local _0x4FB1=_0x12CE(_0xAF6F)
if _0x4FB1 then
_0xB3B2[_0x4FB1]=true
local _0x735E=_0xB490[_0x4FB1]
if not _0x735E or not _0x735E.Parent then
_0x735E=Instance.new(string.char(72,105,103,104,108,105,103,104,116))
_0x735E.DepthMode=Enum.HighlightDepthMode.AlwaysOnTop
_0x735E.FillTransparency=0.4
_0x735E.OutlineTransparency=0
_0x735E.Parent=_0x4FB1
_0xB490[_0x4FB1]=_0x735E
end
local _0xF9DD=_0x6D34(_0x99D7)
_0x735E.FillColor=_0xF9DD _0x735E.OutlineColor=_0xF9DD _0x735E.Enabled=true
end
end
end
for _0xAF6F,_0x735E in pairs(_0xB490) do if not _0xB3B2[_0xAF6F] then pcall(function() _0x735E:Destroy() end) _0xB490[_0xAF6F]=nil end end
endlocal _0x518D=nil
local _0x3A2A=nil
local _0xC691={}
local function _0x748B(cls)
if not _0xEF8B or not _0xA319 then return nil end
local _0x23A4,_0x3265=pcall(function() return _0xA319.new(cls) end)
if _0x23A4 and _0x3265 then return _0x3265 end
return nil
end
_0xA70E = function()
if not _0x4D5E.Radar then
if _0x518D then _0x518D.Visible=false end
if _0x3A2A then _0x3A2A.Visible=false end
for _0x4136,_0xF563 in pairs(_0xC691) do if _0xF563 then _0xF563.Visible=false end end
return
end
if not _0xEF8B then return end
if not _0x518D then
_0x518D=_0x748B(string.char(67,105,114,99,108,101))
_0x518D.Filled=true
_0x518D.Color=Color3.fromRGB(0,0,0)
_0x518D.Transparency=0.5
_0x518D.NumSides=40
end
if not _0x3A2A then
_0x3A2A=_0x748B(string.char(67,105,114,99,108,101))
_0x3A2A.Filled=false
_0x3A2A.Color=Color3.fromRGB(255,255,255)
_0x3A2A.Thickness=1.5
_0x3A2A.NumSides=40
end
local _0x0715=tonumber(_0x4D5E.RadarSize) or 140
local _0x542B=tonumber(_0x4D5E.RadarRange) or 200
local _0x1478=_0x0715/2
local _0xE6D9=Vector2.new(20+_0x1478,20+_0x1478)
_0x518D.Position=_0xE6D9 _0x518D.Radius=_0x1478 _0x518D.Visible=true
_0x3A2A.Position=_0xE6D9 _0x3A2A.Radius=_0x1478 _0x3A2A.Visible=true
local _0x891E=_0x5AE8(_0x4E10) and _0x5AE8(_0x4E10):FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if not _0x891E then return end
local _0xB6DA=math.atan2(_0x83C0.CFrame.LookVector.X,_0x83C0.CFrame.LookVector.Z)
local _0x8F7F={}
for _0x4136,_0x2E1B in ipairs(_0xFF3F:GetPlayers()) do
if _0x2E1B~=_0x4E10 and _0x8364(_0x2E1B) and _0x5B8D(_0x2E1B) then
local _0x3302=_0x5AE8(_0x2E1B)
local _0x4FB1=_0x3302 and _0x3302:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
if _0x4FB1 then
local _0xF494=_0x4FB1.Position-_0x891E.Position
if _0xF494.Magnitude<=_0x542B then
local _0x617E=_0xF494.X*math.cos(_0xB6DA)-_0xF494.Z*math.sin(_0xB6DA)
local _0x4BAD=_0xF494.X*math.sin(_0xB6DA)+_0xF494.Z*math.cos(_0xB6DA)
local _0x3C75=_0x1478/_0x542B
local _0x571C=_0x617E*_0x3C75
local _0x3584=-_0x4BAD*_0x3C75
local _0xF563=_0xC691[_0x2E1B]
if not _0xF563 then
_0xF563=_0x748B(string.char(67,105,114,99,108,101))
_0xF563.Filled=true
_0xF563.NumSides=8
_0xF563.Radius=3
_0xC691[_0x2E1B]=_0xF563
end
_0xF563.Position=Vector2.new(_0xE6D9.X+_0x571C,_0xE6D9.Y+_0x3584)
_0xF563.Color=_0xAB59(_0x2E1B)
_0xF563.Visible=true
_0x8F7F[_0x2E1B]=true
end
end
end
end
for _0x2E1B,_0xF563 in pairs(_0xC691) do if not _0x8F7F[_0x2E1B] then _0xF563.Visible=false end end
end
_0xFF3F.PlayerRemoving:Connect(function(_0x84D2)
_0x5F75(_0x84D2)
pcall(function() if _0x307A[_0x84D2] then _0x307A[_0x84D2]:Destroy(); _0x307A[_0x84D2]=nil end end)
if _0x0DE6==_0x84D2 then _0x0DE6=nil end
local _0x3302=_0x5AE8(_0x84D2)
if _0x3302 then _0xCA1A(_0x3302:FindFirstChild(string.char(72,101,97,100))) _0xCA1A(_0xA4D3(_0x3302)) end
end)
local function _0x2255(_0x84D2)
_0x84D2.CharacterRemoving:Connect(function()
_0x5F75(_0x84D2)
pcall(function() if _0x307A[_0x84D2] then _0x307A[_0x84D2]:Destroy(); _0x307A[_0x84D2]=nil end end)
end)
_0x84D2.CharacterAdded:Connect(function() task.wait(0.3) _0x5F75(_0x84D2) end)
end
_0xFF3F.PlayerAdded:Connect(_0x2255)
for _0x4136,_0x84D2 in ipairs(_0xFF3F:GetPlayers()) do _0x2255(_0x84D2) end
_0x6CF4=false
_0xE5DE = function(_0xFC5E)
if _0xFC5E==_0x6CF4 then return end
_0x6CF4=_0xFC5E
pcall(function()
_0x1202.GlobalShadows=not _0xFC5E
if _0xFC5E then
_0x1202.FogEnd=9e9
if settings and settings().Rendering then settings().Rendering.QualityLevel=Enum.QualityLevel.Level01 end
for _0x4136,_0x3265 in ipairs(workspace:GetDescendants()) do
if _0x3265:IsA(string.char(66,97,115,101,80,97,114,116)) then
local _0x03C7=false
for _0x4136,_0x2E1B in ipairs(_0xFF3F:GetPlayers()) do if _0x2E1B.Character and _0x3265:IsDescendantOf(_0x2E1B.Character) then _0x03C7=true break end end
if not _0x03C7 then _0x3265.Material=Enum.Material.SmoothPlastic _0x3265.CastShadow=false end
elseif _0x3265:IsA(string.char(80,97,114,116,105,99,108,101,69,109,105,116,116,101,114)) or _0x3265:IsA(string.char(84,114,97,105,108)) or _0x3265:IsA(string.char(66,101,97,109)) then _0x3265.Enabled=false end
end
end
end)
end
end
_0xC3AC()
local _0x0CAF=string.char(226,156,147)pcall(function() if utf8 and utf8.char then _0x0CAF=utf8.char(0xE000) end end)local _0x3A15, _0xE7C9, _0xA40E, _0xE815, _0x9235, _0x3682, _0xDBA7, _0x137A, _0x2BDB, _0xB81D
local _0xA5A0, _0x8E91, _0x84C0, _0xF2E4, _0xF268
local _0xBDDB, _0x1C67, _0x8B9D, _0x3C5C
_0xBE18(0.9,string.char(66,117,105,108,100,105,110,103,32,85,73,46,46,46))
_0x3A15=Instance.new(string.char(83,99,114,101,101,110,71,117,105))
_0x3A15.Name=string.char(77,111,111,110,72,117,98,85,73)_0x3A15.ResetOnSpawn=false
_0x3A15.IgnoreGuiInset=true
_0x3A15.DisplayOrder=999
_0x3A15.Parent=_0x238C
_0xE7C9=Instance.new(string.char(70,114,97,109,101))
_0xE7C9.Size=UDim2.new(0, 640, 0, 480)
_0xE7C9.Position=UDim2.new(0.5,-320,0.5,-240)
_0xE7C9.BackgroundColor3=_0x13CD
_0xE7C9.BackgroundTransparency=0.08
_0xE7C9.BorderSizePixel=0
_0xE7C9.Visible=false
_0xE7C9.Parent=_0x3A15
Instance.new(string.char(85,73,67,111,114,110,101,114),_0xE7C9).CornerRadius=UDim.new(0,14)
local _0x911E = Instance.new(string.char(85,73,83,99,97,108,101))
_0x911E.Scale = 1
_0x911E.Parent = _0xE7C9
local function _0x26E1()
return _0x67D4.TouchEnabled and (not _0x67D4.KeyboardEnabled or _0x83C0.ViewportSize.X < 900)
end
_0x8B9D = function()
local _0x2164 = _0x83C0.ViewportSize
local _0x6F65 = _0x26E1()
local _0x288C = _0x6F65 and math.min(_0x2164.X - 24, 420) or math.min(_0x2164.X - 40, 640)
local _0x7429 = _0x6F65 and math.min(_0x2164.Y - 48, 360) or math.min(_0x2164.Y - 60, 480)
local _0xE8FF, _0xE07B = 640, 480local _0x3C75 = 1
if _0x6F65 then
_0x3C75 = math.clamp(math.min(_0x288C / _0xE8FF, _0x7429 / _0xE07B), 0.55, 0.85)
_0xE7C9.Size = UDim2.new(0, _0xE8FF, 0, _0xE07B)
_0x911E.Scale = _0x3C75
local _0xC871, _0xC029 = _0xE8FF * _0x3C75, _0xE07B * _0x3C75
_0xE7C9.Position = UDim2.new(0.5, -_0xC871/2, 0.5, -_0xC029/2)
else
_0x911E.Scale = 1
local _0xC871 = math.clamp(_0x288C, 480, 640)
local _0xC029 = math.clamp(_0x7429, 360, 480)
_0xE7C9.Size = UDim2.new(0, _0xC871, 0, _0xC029)
_0xE7C9.Position = UDim2.new(0.5, -_0xC871/2, 0.5, -_0xC029/2)
end
end
_0x8B9D()
pcall(function()
_0x83C0:GetPropertyChangedSignal(string.char(86,105,101,119,112,111,114,116,83,105,122,101)):Connect(_0x8B9D)
end)
local _0xD502=Instance.new(string.char(85,73,83,116,114,111,107,101))
_0xD502.Color=Color3.fromRGB(40,38,55)
_0xD502.Thickness=1
_0xD502.Transparency=0.3
_0xD502.Parent=_0xE7C9
_0x4CA2(string.char(115,116,114,111,107,101), _0xD502)
local _0xA40E=Instance.new(string.char(70,114,97,109,101))
_0xA40E.Size=UDim2.new(1,0,0,44)
_0xA40E.BackgroundColor3=_0xE092
_0xA40E.BorderSizePixel=0
_0xA40E.Parent=_0xE7C9
Instance.new(string.char(85,73,67,111,114,110,101,114),_0xA40E).CornerRadius=UDim.new(0,14)
local _0xB1BC=Instance.new(string.char(70,114,97,109,101))
_0xB1BC.Size=UDim2.new(1,0,0,14)
_0xB1BC.Position=UDim2.new(0,0,1,-14)
_0xB1BC.BackgroundColor3=_0xE092
_0xB1BC.BorderSizePixel=0
_0xB1BC.Parent=_0xA40E
local _0xDD01=Instance.new(string.char(70,114,97,109,101))
_0xDD01.Size=UDim2.new(1,0,0,2)
_0xDD01.Position=UDim2.new(0,0,1,-2)
_0xDD01.BackgroundColor3=_0xFA3F
_0xDD01.BorderSizePixel=0
_0xDD01.Parent=_0xA40E
_0x4CA2(string.char(102,105,108,108), _0xDD01)
local _0xE815=Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_0xE815.Size=UDim2.new(1,-50,1,0)
_0xE815.Position=UDim2.new(0,16,0,0)
_0xE815.BackgroundTransparency=1
_0xE815.Text=string.char(77,79,79,78,32,72,85,66,32,32,194,183,32,32,106,97,105,108,98,105,114,100)_0xE815.TextColor3=_0xFA3F
_0xE815.TextSize=15
_0xE815.Font=Enum.Font.GothamBold
_0xE815.TextXAlignment=Enum.TextXAlignment.Left
_0xE815.Parent=_0xA40E
_0x4CA2(string.char(116,101,120,116), _0xE815)
local _0x9235=Instance.new(string.char(84,101,120,116,66,117,116,116,111,110))
_0x9235.Size=UDim2.new(0,30,0,30)
_0x9235.Position=UDim2.new(1,-38,0.5,-15)
_0x9235.BackgroundColor3=Color3.fromRGB(36,32,48)
_0x9235.Text=string.char(195,151)_0x9235.TextColor3=_0xC027
_0x9235.Font=_0x624C
_0x9235.TextSize=18
_0x9235.Parent=_0xA40E
Instance.new(string.char(85,73,67,111,114,110,101,114),_0x9235).CornerRadius=UDim.new(0,6)
local _0x3682=Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_0x3682.Size=UDim2.new(1,-16,0,16)
_0x3682.Position=UDim2.new(0,16,0,44)
_0x3682.BackgroundTransparency=1
_0x3682.Text=string.char(69,120,101,99,117,116,111,114,58,32)..EXECUTOR_NAME
_0x3682.TextColor3=_0xC027
_0x3682.TextSize=11
_0x3682.Font=_0x624C
_0x3682.TextXAlignment=Enum.TextXAlignment.Left
_0x3682.Parent=_0xE7C9
_0xDBA7=Instance.new(string.char(83,99,114,111,108,108,105,110,103,70,114,97,109,101))
_0xDBA7.Size=UDim2.new(0,118,1,-70)
_0xDBA7.Position=UDim2.new(0,10,0,54)
_0xDBA7.BackgroundColor3=_0xE092
_0xDBA7.BorderSizePixel=0
_0xDBA7.ScrollBarThickness=2
_0xDBA7.AutomaticCanvasSize=Enum.AutomaticSize.Y
_0xDBA7.CanvasSize=UDim2.new(0,0,0,0)
_0xDBA7.Parent=_0xE7C9
Instance.new(string.char(85,73,67,111,114,110,101,114),_0xDBA7).CornerRadius=UDim.new(0,8)
local _0x00B9=Instance.new(string.char(85,73,76,105,115,116,76,97,121,111,117,116)) _0x00B9.Padding=UDim.new(0,4) _0x00B9.SortOrder=Enum.SortOrder.LayoutOrder _0x00B9.Parent=_0xDBA7
local _0xF774=Instance.new(string.char(85,73,80,97,100,100,105,110,103)) _0xF774.PaddingTop=UDim.new(0,6) _0xF774.PaddingLeft=UDim.new(0,6) _0xF774.PaddingRight=UDim.new(0,6) _0xF774.Parent=_0xDBA7
_0x137A=Instance.new(string.char(70,114,97,109,101))
_0x137A.Size=UDim2.new(1,-140,1,-72)
_0x137A.Position=UDim2.new(0,132,0,54)
_0x137A.BackgroundTransparency=1
_0x137A.Parent=_0xE7C9
_0x2BDB, _0xB81D = {}, {},{}
_0xBDDB = function(_0xA7F0)
local _0xEEE5 = _0xB257()
for _0x6ACF,_0x84D2 in pairs(_0x2BDB) do _0x84D2.Visible=(_0x6ACF==_0xA7F0) end
for _0x6ACF,_0x6AF5 in pairs(_0xB81D) do
_0x6AF5.BackgroundColor3 = (_0x6ACF==_0xA7F0) and Color3.fromRGB(40,35,60) or Color3.fromRGB(22,22,30)
_0x6AF5.TextColor3 = (_0x6ACF==_0xA7F0) and _0xEEE5 or _0xC027
end
_0x7082()
end
local function _0x18A7(_0x99D7)
local _0xBB2F=Instance.new(string.char(83,99,114,111,108,108,105,110,103,70,114,97,109,101))
_0xBB2F.Size=UDim2.new(1,0,1,0)
_0xBB2F.BackgroundTransparency=1
_0xBB2F.BorderSizePixel=0
_0xBB2F.ScrollBarThickness=3
_0xBB2F.AutomaticCanvasSize=Enum.AutomaticSize.Y
_0xBB2F.CanvasSize=UDim2.new(0,0,0,0)
_0xBB2F.Visible=false
_0xBB2F.Parent=_0x137A
local _0xA28F=Instance.new(string.char(85,73,76,105,115,116,76,97,121,111,117,116))
_0xA28F.Padding=UDim.new(0,5)
_0xA28F.SortOrder=Enum.SortOrder.LayoutOrder
_0xA28F.FillDirection=Enum.FillDirection.Vertical
_0xA28F.HorizontalAlignment=Enum.HorizontalAlignment.Left
_0xA28F.Parent=_0xBB2F
local _0x561B=Instance.new(string.char(85,73,80,97,100,100,105,110,103))
_0x561B.PaddingBottom=UDim.new(0,10)
_0x561B.PaddingTop=UDim.new(0,4)
_0x561B.PaddingLeft=UDim.new(0,2)
_0x561B.PaddingRight=UDim.new(0,8)
_0x561B.Parent=_0xBB2F
_0x2BDB[_0x99D7]=_0xBB2F
local _0xBFD0=Instance.new(string.char(84,101,120,116,66,117,116,116,111,110))
_0xBFD0.Size=UDim2.new(1,0,0,30)
_0xBFD0.BackgroundColor3=Color3.fromRGB(22,22,30)
_0xBFD0.Text=_0x99D7
_0xBFD0.TextColor3=_0xC027
_0xBFD0.TextSize=12
_0xBFD0.Font=Enum.Font.GothamMedium
_0xBFD0.Parent=_0xDBA7
Instance.new(string.char(85,73,67,111,114,110,101,114),_0xBFD0).CornerRadius=UDim.new(0,8)
_0xBFD0.MouseButton1Click:Connect(function() _0xBDDB(_0x99D7) end)
_0xB81D[_0x99D7]=_0xBFD0
return _0xBB2F
end
local function _0xF3D9(_0x84D2) local _0x3265=(_0x84D2:GetAttribute(string.char(79)) or 0)+1 _0x84D2:SetAttribute(string.char(79),_0x3265) return _0x3265 end
local function _0xC58A(_0x84D2,_0x8C34)
local _0x0AFF=Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_0x0AFF.LayoutOrder=_0xF3D9(_0x84D2)
_0x0AFF.Size=UDim2.new(1,-4,0,18)
_0x0AFF.BackgroundTransparency=1
_0x0AFF.Text=string.upper(_0x8C34)
_0x0AFF.TextColor3=_0xFA3F
_0x0AFF.TextSize=11
_0x0AFF.Font=_0x624C
_0x0AFF.TextXAlignment=Enum.TextXAlignment.Left
_0x0AFF.TextYAlignment=Enum.TextYAlignment.Center
_0x0AFF.TextTruncate=Enum.TextTruncate.AtEnd
_0x0AFF.Parent=_0x84D2
_0x4CA2(string.char(116,101,120,116), _0x0AFF)
end
local function _0xF5AC(_0x84D2,label,_0x6C6F)
local _0x395D=Instance.new(string.char(70,114,97,109,101))
_0x395D.LayoutOrder=_0xF3D9(_0x84D2)
_0x395D.Size=UDim2.new(1,0,0,32)
_0x395D.BackgroundColor3=_0x44A6
_0x395D.BorderSizePixel=0
_0x395D.Parent=_0x84D2
Instance.new(string.char(85,73,67,111,114,110,101,114),_0x395D).CornerRadius=UDim.new(0,8)
local _0x8C34=Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_0x8C34.Size=UDim2.new(1,-55,1,0) _0x8C34.Position=UDim2.new(0,10,0,0) _0x8C34.BackgroundTransparency=1
_0x8C34.Text=label _0x8C34.TextColor3=_0xB167 _0x8C34.TextSize=11 _0x8C34.Font=_0x624C _0x8C34.TextXAlignment=Enum.TextXAlignment.Left _0x8C34.Parent=_0x395D
local _0x5B38=Instance.new(string.char(84,101,120,116,66,117,116,116,111,110))
_0x5B38.Size=UDim2.new(0,40,0,18) _0x5B38.Position=UDim2.new(1,-48,0.5,-9)
_0x5B38.BackgroundColor3=_0x4D5E[_0x6C6F] and _0xFA3F or Color3.fromRGB(45,45,58) _0x5B38.Text=""_0x5B38.Parent=_0x395D
_0x4CA2(string.char(116,111,103,103,108,101), _0x5B38, _0x6C6F)
Instance.new(string.char(85,73,67,111,114,110,101,114),_0x5B38).CornerRadius=UDim.new(1,0)
local _0x8D15=Instance.new(string.char(70,114,97,109,101))
_0x8D15.Size=UDim2.new(0,14,0,14) _0x8D15.Position=_0x4D5E[_0x6C6F] and UDim2.new(1,-16,0.5,-7) or UDim2.new(0,2,0.5,-7)
_0x8D15.BackgroundColor3=Color3.new(1,1,1) _0x8D15.BorderSizePixel=0 _0x8D15.Parent=_0x5B38
Instance.new(string.char(85,73,67,111,114,110,101,114),_0x8D15).CornerRadius=UDim.new(1,0)
_0x5B38.MouseButton1Click:Connect(function()
_0x4D5E[_0x6C6F]=not _0x4D5E[_0x6C6F]
local _0xFC5E=_0x4D5E[_0x6C6F]
_0x5B38.BackgroundColor3=_0xFC5E and _0xB257() or Color3.fromRGB(45,45,58)
_0x8D15.Position=_0xFC5E and UDim2.new(1,-16,0.5,-7) or UDim2.new(0,2,0.5,-7)
if _0x6C6F==string.char(69,83,80)then if _0xFC5E then _0xBC9C() else _0x7406() end end
if _0x6C6F==string.char(67,104,97,109,115)then if not _0xFC5E then _0x87AF() end end
if _0x6C6F==string.char(71,97,100,103,101,116,69,83,80)then if not _0xFC5E then _0x49ED() end end
if _0x6C6F==string.char(72,105,116,98,111,120)and not _0xFC5E then _0x6706() end
if _0x6C6F==string.char(68,101,118,105,99,101,83,112,111,111,102)and _0xFC5E then _0xDED6() end
if _0x6C6F==string.char(80,111,116,97,116,111)then _0xE5DE(_0xFC5E) end
if _0x6C6F==string.char(67,117,115,116,111,109,70,79,86)then if _0xFC5E then _0x3205() else pcall(function() _0x83C0.FieldOfView=_0xFA2D end) end end
if _0x6C6F==string.char(77,111,98,105,108,101,65,105,109)and _0xFC5E then _0x4D5E.Aimbot=true end
if _0x6C6F==string.char(75,105,108,108,65,117,114,97)and not _0xFC5E then _0x0DE6=nil end
if _0x6C6F==string.char(83,99,114,101,101,110,83,116,114,101,116,99,104)and _0xFC5E and not _0x2615 then _0x2615=true end
_0xA05F()
_0x7082()
end)
end
local function _0x319F(_0x84D2,label,_0x6C6F,min,max,_0xF7CC)
local _0x395D=Instance.new(string.char(70,114,97,109,101))
_0x395D.LayoutOrder=_0xF3D9(_0x84D2)
_0x395D.Size=UDim2.new(1,0,0,46)
_0x395D.BackgroundColor3=_0x44A6
_0x395D.BorderSizePixel=0
_0x395D.Parent=_0x84D2
Instance.new(string.char(85,73,67,111,114,110,101,114),_0x395D).CornerRadius=UDim.new(0,8)
local _0x8C34=Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_0x8C34.Size=UDim2.new(0.65,0,0,16) _0x8C34.Position=UDim2.new(0,10,0,4) _0x8C34.BackgroundTransparency=1
_0x8C34.Text=label _0x8C34.TextColor3=_0xB167 _0x8C34.TextSize=11 _0x8C34.Font=_0x624C _0x8C34.TextXAlignment=Enum.TextXAlignment.Left _0x8C34.Parent=_0x395D
local _0x2826=Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_0x2826.Size=UDim2.new(0.3,-8,0,16) _0x2826.Position=UDim2.new(0.7,0,0,4) _0x2826.BackgroundTransparency=1
_0x2826.Text=tostring(_0x4D5E[_0x6C6F]) _0x2826.TextColor3=_0xFA3F _0x2826.TextSize=11 _0x2826.Font=_0x624C _0x2826.TextXAlignment=Enum.TextXAlignment.Right _0x2826.Parent=_0x395D
local _0x0F6F=Instance.new(string.char(84,101,120,116,66,117,116,116,111,110))
_0x0F6F.Size=UDim2.new(1,-20,0,8) _0x0F6F.Position=UDim2.new(0,10,0,26) _0x0F6F.BackgroundColor3=Color3.fromRGB(40,40,55) _0x0F6F.Text=""_0x0F6F.Parent=_0x395D
Instance.new(string.char(85,73,67,111,114,110,101,114),_0x0F6F).CornerRadius=UDim.new(1,0)
local _0x4B3A=Instance.new(string.char(70,114,97,109,101))
_0x4B3A.Size=UDim2.new(math.clamp((_0x4D5E[_0x6C6F]-min)/math.max(max-min,0.001),0,1),0,1,0)
_0x4B3A.BackgroundColor3=_0xFA3F _0x4B3A.BorderSizePixel=0 _0x4B3A.Parent=_0x0F6F
_0x4CA2(string.char(102,105,108,108), _0x4B3A)
Instance.new(string.char(85,73,67,111,114,110,101,114),_0x4B3A).CornerRadius=UDim.new(1,0)
local function _0x2601(_0x9094)
local _0xF364=math.clamp((_0x9094-_0x0F6F.AbsolutePosition.X)/math.max(_0x0F6F.AbsoluteSize.X,1),0,1)
local _0xD278=min+_0xF364*(max-min)
_0xD278=math.floor(_0xD278/_0xF7CC+0.5)*_0xF7CC
_0xD278=math.clamp(_0xD278,min,max)
_0x4D5E[_0x6C6F]=_0xD278
_0x4B3A.Size=UDim2.new((_0xD278-min)/math.max(max-min,0.001),0,1,0)
_0x2826.Text=tostring(_0xD278)
if _0x6C6F==string.char(67,117,114,115,111,114,83,105,122,101)then _0x8FD6.Size=UDim2.new(0,_0xD278,0,_0xD278) end
if _0x6C6F==string.char(70,79,86,86,97,108,117,101)and _0x4D5E.CustomFOV then _0x3205() end
if _0x6C6F==string.char(68,101,115,105,103,110,65,99,99,101,110,116,82)or _0x6C6F==string.char(68,101,115,105,103,110,65,99,99,101,110,116,71)or _0x6C6F==string.char(68,101,115,105,103,110,65,99,99,101,110,116,66)then
pcall(_0x1C67)
end
_0xA05F()
end
_0x0F6F.MouseButton1Down:Connect(function()
local _0x8FAD,_0x569E
_0x8FAD=_0x67D4.InputChanged:Connect(function(i) if i.UserInputType==Enum.UserInputType.MouseMovement or i.UserInputType==Enum.UserInputType.Touch then _0x2601(i.Position.X) end end)
_0x569E=_0x67D4.InputEnded:Connect(function(i) if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then if _0x8FAD then _0x8FAD:Disconnect() end if _0x569E then _0x569E:Disconnect() end end end)
pcall(function() _0x2601(_0x67D4:GetMouseLocation().X) end)
end)
end
local function _0xB77C(_0x84D2, label, _0x6C6F, options)
local _0x395D = Instance.new(string.char(70,114,97,109,101))
_0x395D.LayoutOrder = _0xF3D9(_0x84D2)
_0x395D.Size = UDim2.new(1, 0, 0, 54)
_0x395D.BackgroundColor3 = _0x44A6
_0x395D.BorderSizePixel = 0
_0x395D.Parent = _0x84D2
Instance.new(string.char(85,73,67,111,114,110,101,114), _0x395D).CornerRadius = UDim.new(0, 8)
local _0x8C34 = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_0x8C34.Size = UDim2.new(1, -12, 0, 18)
_0x8C34.Position = UDim2.new(0, 10, 0, 4)
_0x8C34.BackgroundTransparency = 1
_0x8C34.Text = label
_0x8C34.TextColor3 = _0xB167
_0x8C34.TextSize = 11
_0x8C34.Font = _0x624C
_0x8C34.TextXAlignment = Enum.TextXAlignment.Left
_0x8C34.Parent = _0x395D
local _0xF748 = Instance.new(string.char(70,114,97,109,101))
_0xF748.Size = UDim2.new(1, -16, 0, 24)
_0xF748.Position = UDim2.new(0, 8, 0, 26)
_0xF748.BackgroundTransparency = 1
_0xF748.Parent = _0x395D
local _0xF575 = Instance.new(string.char(85,73,76,105,115,116,76,97,121,111,117,116))
_0xF575.FillDirection = Enum.FillDirection.Horizontal
_0xF575.Padding = UDim.new(0, 5)
_0xF575.Parent = _0xF748
local _0x78CA = {}
local function _0x0E8B()
local _0xEEE5 = _0xB257()
for opt, _0x6AF5 in pairs(_0x78CA) do
local _0xFC5E = (_0x4D5E[_0x6C6F] == opt)
_0x6AF5.BackgroundColor3 = _0xFC5E and _0xEEE5 or Color3.fromRGB(35, 32, 48)
_0x6AF5.TextColor3 = _0xFC5E and Color3.fromRGB(20, 20, 28) or _0xC027
end
end
local _0xA7F0 = #options
local _0xBC1F = math.clamp(math.floor(300 / math.max(_0xA7F0, 1)), 48, 90)
for _0x4136, opt in ipairs(options) do
local _0x6AF5 = Instance.new(string.char(84,101,120,116,66,117,116,116,111,110))
_0x6AF5.Size = UDim2.new(0, _0xBC1F, 1, 0)
_0x6AF5.BackgroundColor3 = Color3.fromRGB(35, 32, 48)
_0x6AF5.Text = opt
_0x6AF5.TextColor3 = _0xC027
_0x6AF5.TextSize = 10
_0x6AF5.Font = _0x624C
_0x6AF5.Parent = _0xF748
Instance.new(string.char(85,73,67,111,114,110,101,114), _0x6AF5).CornerRadius = UDim.new(0, 6)
_0x78CA[opt] = _0x6AF5
_0x4CA2(string.char(99,104,111,105,99,101), _0x6AF5, _0x6C6F)
_0x6AF5.MouseButton1Click:Connect(function()
_0x4D5E[_0x6C6F] = opt
_0x0E8B()
if _0x6C6F ==string.char(67,117,114,115,111,114,78,97,109,101)then _0x2457(_0x4D5E.CursorName) end
if _0x6C6F ==string.char(68,101,118,105,99,101,77,111,100,101)and _0x4D5E.DeviceSpoof then _0xDED6() end
if _0x6C6F ==string.char(72,105,116,98,111,120,80,97,114,116)then _0x6706() end
_0xA05F()
_0x7082()
end)
end
_0x0E8B()
_0x4CA2(string.char(99,104,111,105,99,101,82,101,102,114,101,115,104), {_0x0E8B = _0x0E8B})
end
local function _0x528A(_0x84D2,label,_0x6C6F,options)
local _0x395D=Instance.new(string.char(70,114,97,109,101))
_0x395D.LayoutOrder=_0xF3D9(_0x84D2)
_0x395D.Size=UDim2.new(1,0,0,32)
_0x395D.BackgroundColor3=_0x44A6
_0x395D.BorderSizePixel=0
_0x395D.Parent=_0x84D2
Instance.new(string.char(85,73,67,111,114,110,101,114),_0x395D).CornerRadius=UDim.new(0,8)
local _0x8C34=Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_0x8C34.Size=UDim2.new(0.4,0,1,0) _0x8C34.Position=UDim2.new(0,10,0,0) _0x8C34.BackgroundTransparency=1
_0x8C34.Text=label _0x8C34.TextColor3=_0xB167 _0x8C34.TextSize=11 _0x8C34.Font=_0x624C _0x8C34.TextXAlignment=Enum.TextXAlignment.Left _0x8C34.Parent=_0x395D
local _0x9BBA=1
for i,_0x3265 in ipairs(options) do if _0x3265==_0x4D5E[_0x6C6F] then _0x9BBA=i end end
local _0xBFD0=Instance.new(string.char(84,101,120,116,66,117,116,116,111,110))
_0xBFD0.Size=UDim2.new(0.55,-12,0,22) _0xBFD0.Position=UDim2.new(0.45,0,0.5,-11)
_0xBFD0.BackgroundColor3=Color3.fromRGB(35,32,48) _0xBFD0.Text=tostring(_0x4D5E[_0x6C6F]) _0xBFD0.TextColor3=_0xFA3F _0xBFD0.TextSize=11 _0xBFD0.Font=_0x624C _0xBFD0.Parent=_0x395D
_0x4CA2(string.char(116,101,120,116), _0xBFD0)
Instance.new(string.char(85,73,67,111,114,110,101,114),_0xBFD0).CornerRadius=UDim.new(0,6)
_0xBFD0.MouseButton1Click:Connect(function()
_0x9BBA=_0x9BBA%#options+1
_0x4D5E[_0x6C6F]=options[_0x9BBA]
_0xBFD0.Text=options[_0x9BBA]
if _0x6C6F==string.char(67,117,114,115,111,114,78,97,109,101)then _0x2457(_0x4D5E.CursorName) end
if _0x6C6F==string.char(68,101,118,105,99,101,77,111,100,101)and _0x4D5E.DeviceSpoof then _0xDED6() end
if _0x6C6F==string.char(72,105,116,98,111,120,80,97,114,116)then _0x6706() end
_0xA05F()
_0x7082()
end)
end
local function _0xA1BD(_0x84D2,label,_0x6C6F,ph)
local _0x395D=Instance.new(string.char(70,114,97,109,101))
_0x395D.LayoutOrder=_0xF3D9(_0x84D2)
_0x395D.Size=UDim2.new(1,0,0,52)
_0x395D.BackgroundColor3=_0x44A6
_0x395D.BorderSizePixel=0
_0x395D.Parent=_0x84D2
Instance.new(string.char(85,73,67,111,114,110,101,114),_0x395D).CornerRadius=UDim.new(0,8)
local _0x8C34=Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_0x8C34.Size=UDim2.new(1,-16,0,14) _0x8C34.Position=UDim2.new(0,10,0,4) _0x8C34.BackgroundTransparency=1
_0x8C34.Text=label _0x8C34.TextColor3=_0xC027 _0x8C34.TextSize=11 _0x8C34.Font=_0x624C _0x8C34.TextXAlignment=Enum.TextXAlignment.Left _0x8C34.Parent=_0x395D
local _0x64BB=Instance.new(string.char(84,101,120,116,66,111,120))
_0x64BB.Size=UDim2.new(1,-20,0,22) _0x64BB.Position=UDim2.new(0,10,0,22)
_0x64BB.BackgroundColor3=Color3.fromRGB(14,14,20) _0x64BB.BorderSizePixel=0
_0x64BB.Text=tostring(_0x4D5E[_0x6C6F] or ph or"") _0x64BB.PlaceholderText=ph or""_0x64BB.TextColor3=_0xB167 _0x64BB.TextSize=12 _0x64BB.Font=_0x624C _0x64BB.ClearTextOnFocus=false _0x64BB.Parent=_0x395D
Instance.new(string.char(85,73,67,111,114,110,101,114),_0x64BB).CornerRadius=UDim.new(0,6)
_0x64BB.FocusLost:Connect(function()
local _0xD278=_0x64BB.Text
if not _0xD278 or _0xD278==""then _0xD278=ph orstring.char(100,101,102,97,117,108,116)_0x64BB.Text=_0xD278 end
_0x4D5E[_0x6C6F]=_0xD278
_0xA05F()
end)
end
local function _0x0165(_0x84D2,label,fn)
local _0xBFD0=Instance.new(string.char(84,101,120,116,66,117,116,116,111,110))
_0xBFD0.LayoutOrder=_0xF3D9(_0x84D2)
_0xBFD0.Size=UDim2.new(1,0,0,30)
_0xBFD0.BackgroundColor3=Color3.fromRGB(35,30,55)
_0xBFD0.Text=label
_0xBFD0.TextColor3=_0xFA3F
_0xBFD0.TextSize=12
_0xBFD0.Font=_0x624C
_0xBFD0.Parent=_0x84D2
Instance.new(string.char(85,73,67,111,114,110,101,114),_0xBFD0).CornerRadius=UDim.new(0,8)
_0xBFD0.MouseButton1Click:Connect(function() fn() _0x7082() end)
end
local _0x4E33=_0x18A7(string.char(67,111,109,98,97,116))
local _0x8D31=_0x18A7(string.char(80,108,97,121,101,114))
local _0x56AC=_0x18A7(string.char(83,116,114,101,97,109))
local _0x575A=_0x18A7(string.char(83,116,97,102,102))
local _0x03D7=_0x18A7(string.char(77,111,98,105,108,101))
local _0xFACD=_0x18A7(string.char(86,105,115,117,97,108,115))
local _0xC4C7=_0x18A7(string.char(68,101,115,105,103,110))
local _0x86C1=_0x18A7(string.char(67,114,101,100,105,116,115))
local _0x76D3=_0x18A7(string.char(67,111,110,102,105,103))
local function _0xC066(_0x84D2, label)
local _0x395D = Instance.new(string.char(70,114,97,109,101))
_0x395D.LayoutOrder = _0xF3D9(_0x84D2)
_0x395D.Size = UDim2.new(1, 0, 0, 32)
_0x395D.BackgroundColor3 = Color3.fromRGB(28, 24, 36)
_0x395D.BorderSizePixel = 0
_0x395D.Parent = _0x84D2
Instance.new(string.char(85,73,67,111,114,110,101,114), _0x395D).CornerRadius = UDim.new(0, 8)
local _0x8C34 = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_0x8C34.Size = UDim2.new(1, -16, 1, 0)
_0x8C34.Position = UDim2.new(0, 10, 0, 0)
_0x8C34.BackgroundTransparency = 1
_0x8C34.Text =string.char(239,191,189,239,191,189,32,76,111,99,107,101,100,32,194,183,32).. tostring(label)
_0x8C34.TextColor3 = Color3.fromRGB(180, 150, 255)
_0x8C34.TextSize = 12
_0x8C34.Font = _0x624C
_0x8C34.TextXAlignment = Enum.TextXAlignment.Left
_0x8C34.Parent = _0x395D
local _0x28E0 = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_0x28E0.Size = UDim2.new(0, 78, 0, 20)
_0x28E0.Position = UDim2.new(1, -86, 0.5, -10)
_0x28E0.BackgroundColor3 = Color3.fromRGB(50, 40, 70)
_0x28E0.Text =string.char(80,82,69,77,73,85,77)_0x28E0.TextColor3 = Color3.fromRGB(200, 180, 255)
_0x28E0.TextSize = 10
_0x28E0.Font = Enum.Font.GothamBold
_0x28E0.Parent = _0x395D
Instance.new(string.char(85,73,67,111,114,110,101,114), _0x28E0).CornerRadius = UDim.new(0, 6)
end
_0xC58A(_0x4E33,string.char(65,105,109,98,111,116))
_0xF5AC(_0x4E33,string.char(65,105,109,98,111,116),string.char(65,105,109,98,111,116))
_0xB77C(_0x4E33,string.char(75,101,121),string.char(65,105,109,75,101,121),{string.char(77,66,49),string.char(77,66,50),string.char(69),string.char(81),string.char(70)})
_0xB77C(_0x4E33,string.char(77,111,100,101),string.char(65,105,109,77,111,100,101),{string.char(72,111,108,100),string.char(84,111,103,103,108,101),string.char(65,108,119,97,121,115)})
_0x319F(_0x4E33,string.char(70,79,86),string.char(65,105,109,70,79,86),40,350,1)
_0x319F(_0x4E33,string.char(83,109,111,111,116,104),string.char(65,105,109,83,109,111,111,116,104),0.1,1,0.05)
_0xF5AC(_0x4E33,string.char(83,104,111,119,32,70,79,86),string.char(83,104,111,119,70,79,86))
_0xF5AC(_0x4E33,string.char(87,97,108,108,32,67,104,101,99,107),string.char(87,97,108,108,67,104,101,99,107))
_0xF5AC(_0x4E33,string.char(84,101,97,109,32,67,104,101,99,107),string.char(84,101,97,109,67,104,101,99,107))
_0xF5AC(_0x4E33,string.char(80,114,101,100,105,99,116,105,111,110),string.char(80,114,101,100,105,99,116,105,111,110))
_0x319F(_0x4E33,string.char(80,114,101,100,105,99,116),string.char(80,114,101,100,105,99,116,65,109,111,117,110,116),0,0.35,0.01)
_0xB77C(_0x4E33,string.char(76,111,99,107,32,80,114,105,111,114,105,116,121),string.char(84,97,114,103,101,116,80,114,105,111,114,105,116,121),{string.char(67,114,111,115,115,104,97,105,114),string.char(67,108,111,115,101,115,116),string.char(76,111,119,101,115,116,32,72,80)})
_0xC58A(_0x4E33,string.char(80,114,101,109,105,117,109,32,226,128,148,32,76,111,99,107,101,100))
_0xC066(_0x4E33,string.char(83,105,108,101,110,116,32,65,105,109))
_0xC066(_0x4E33,string.char(75,105,108,108,32,65,117,114,97))
_0xC066(_0x4E33,string.char(72,105,116,98,111,120,32,69,120,112,97,110,100,101,114))
_0xC58A(_0x4E33,string.char(84,114,105,103,103,101,114,98,111,116))
_0xF5AC(_0x4E33,string.char(84,114,105,103,103,101,114,98,111,116),string.char(84,114,105,103,103,101,114,98,111,116))
_0x319F(_0x4E33,string.char(84,114,105,103,103,101,114,32,70,79,86),string.char(84,114,105,103,103,101,114,70,79,86),8,60,1)
_0x319F(_0x4E33,string.char(84,114,105,103,103,101,114,32,68,101,108,97,121),string.char(84,114,105,103,103,101,114,68,101,108,97,121),0.12,0.40,0.01)
_0xC58A(_0x4E33,string.char(67,97,109,101,114,97,32,70,79,86))
_0xF5AC(_0x4E33,string.char(67,117,115,116,111,109,32,70,79,86),string.char(67,117,115,116,111,109,70,79,86))
_0x319F(_0x4E33,string.char(70,79,86,32,86,97,108,117,101),string.char(70,79,86,86,97,108,117,101),40,120,1)
_0xC58A(_0x8D31,string.char(77,111,118,101))
_0xF5AC(_0x8D31,string.char(83,112,101,101,100),string.char(83,112,101,101,100))
_0x319F(_0x8D31,string.char(83,112,101,101,100,32,86,97,108,117,101),string.char(83,112,101,101,100,86,97,108,117,101),16,80,1)
_0xF5AC(_0x8D31,string.char(78,111,99,108,105,112),string.char(78,111,99,108,105,112))
_0xF5AC(_0x8D31,string.char(65,110,116,105,45,66,111,119),string.char(65,110,116,105,66,111,119))
_0xC58A(_0x8D31,string.char(80,114,101,109,105,117,109,32,111,110,108,121))
_0xC066(_0x8D31,string.char(68,101,118,105,99,101,32,83,112,111,111,102))
_0xC58A(_0x8D31,string.char(83,99,114,101,101,110,32,83,116,114,101,116,99,104))
_0xF5AC(_0x8D31,string.char(83,99,114,101,101,110,32,83,116,114,101,116,99,104),string.char(83,99,114,101,101,110,83,116,114,101,116,99,104))
_0x319F(_0x8D31,string.char(83,116,114,101,116,99,104,32,65,109,111,117,110,116),string.char(83,116,114,101,116,99,104,65,109,111,117,110,116),0.3,1,0.01)
_0xC58A(_0x56AC,string.char(80,114,101,109,105,117,109,32,111,110,108,121))
_0xC066(_0x56AC,string.char(83,116,114,101,97,109,32,80,114,111,111,102))
_0xC066(_0x56AC,string.char(78,97,109,101,32,83,112,111,111,102))
_0xC58A(_0x56AC,string.char(70,114,101,101))
_0xF5AC(_0x56AC,string.char(86,101,114,105,102,105,101,100),string.char(83,104,111,119,86,101,114,105,102,105,101,100))
_0xC58A(_0x575A,string.char(80,114,101,109,105,117,109,32,111,110,108,121))
_0xC066(_0x575A,string.char(83,116,97,102,102,32,68,101,116,101,99,116))
_0xC066(_0x575A,string.char(65,117,116,111,32,76,101,97,118,101,32,111,110,32,83,116,97,102,102))
_0xC066(_0x575A,string.char(83,116,97,102,102,32,65,108,101,114,116,115))
_0xC58A(_0x03D7,string.char(77,111,98,105,108,101,32,65,105,109))
_0xF5AC(_0x03D7,string.char(77,111,98,105,108,101,32,65,105,109,32,79,78),string.char(77,111,98,105,108,101,65,105,109))
_0x319F(_0x03D7,string.char(83,109,111,111,116,104),string.char(77,111,98,105,108,101,83,109,111,111,116,104),0.1,1,0.05)
_0x319F(_0x03D7,string.char(70,79,86),string.char(77,111,98,105,108,101,70,79,86),40,350,1)
_0xF5AC(_0x03D7,string.char(83,104,111,119,32,70,79,86),string.char(77,111,98,105,108,101,83,104,111,119,70,79,86))local _0xD5BD = Instance.new(string.char(70,114,97,109,101))
_0xD5BD.LayoutOrder = _0xF3D9(_0xFACD)
_0xD5BD.Size = UDim2.new(1, 0, 0, 168)
_0xD5BD.BackgroundColor3 = Color3.fromRGB(14, 14, 20)
_0xD5BD.BorderSizePixel = 0
_0xD5BD.Parent = _0xFACD
Instance.new(string.char(85,73,67,111,114,110,101,114), _0xD5BD).CornerRadius = UDim.new(0, 10)
local _0x48EF = Instance.new(string.char(85,73,83,116,114,111,107,101))
_0x48EF.Color = Color3.fromRGB(40, 38, 55)
_0x48EF.Thickness = 1
_0x48EF.Parent = _0xD5BD
local _0x6F4B = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_0x6F4B.Size = UDim2.new(1, -16, 0, 18)
_0x6F4B.Position = UDim2.new(0, 10, 0, 6)
_0x6F4B.BackgroundTransparency = 1
_0x6F4B.Text =string.char(69,83,80,32,80,82,69,86,73,69,87)_0x6F4B.TextColor3 = _0xC027
_0x6F4B.TextSize = 10
_0x6F4B.Font = Enum.Font.GothamBold
_0x6F4B.TextXAlignment = Enum.TextXAlignment.Left
_0x6F4B.Parent = _0xD5BD
local _0xB958 = Instance.new(string.char(70,114,97,109,101))
_0xB958.Size = UDim2.new(1, -20, 0, 130)
_0xB958.Position = UDim2.new(0, 10, 0, 28)
_0xB958.BackgroundColor3 = Color3.fromRGB(18, 18, 26)
_0xB958.BorderSizePixel = 0
_0xB958.ClipsDescendants = true
_0xB958.Parent = _0xD5BD
Instance.new(string.char(85,73,67,111,114,110,101,114), _0xB958).CornerRadius = UDim.new(0, 8)local _0xA755 = Instance.new(string.char(70,114,97,109,101))
_0xA755.Name =string.char(70,105,103,117,114,101)_0xA755.Size = UDim2.new(0, 70, 0, 110)
_0xA755.Position = UDim2.new(0.5, -35, 0.5, -48)
_0xA755.BackgroundTransparency = 1
_0xA755.Parent = _0xB958
local function _0xEA3E(_0x99D7, _0x0715, _0x3EB4, radius, parent)
local _0x465C = Instance.new(string.char(70,114,97,109,101))
_0x465C.Name = _0x99D7
_0x465C.Size = _0x0715
_0x465C.Position = _0x3EB4
_0x465C.BackgroundColor3 = Color3.fromRGB(55, 55, 70)
_0x465C.BorderSizePixel = 0
_0x465C.Parent = parent or _0xA755
Instance.new(string.char(85,73,67,111,114,110,101,114), _0x465C).CornerRadius = UDim.new(radius or 0, 0)
return _0x465C
end
local _0xAC6A = _0xEA3E(string.char(72,101,97,100), UDim2.new(0, 20, 0, 20), UDim2.new(0.5, -10, 0, 0), 1)
local _0x9337 = _0xEA3E(string.char(84,111,114,115,111), UDim2.new(0, 32, 0, 38), UDim2.new(0.5, -16, 0, 24), 0.15)
local _0x0C3F = _0xEA3E(string.char(65,114,109,76), UDim2.new(0, 10, 0, 30), UDim2.new(0.5, -28, 0, 26), 0.2)
local _0x3ADB = _0xEA3E(string.char(65,114,109,82), UDim2.new(0, 10, 0, 30), UDim2.new(0.5, 18, 0, 26), 0.2)
local _0xACBA = _0xEA3E(string.char(76,101,103,76), UDim2.new(0, 12, 0, 28), UDim2.new(0.5, -14, 0, 64), 0.2)
local _0xB48B = _0xEA3E(string.char(76,101,103,82), UDim2.new(0, 12, 0, 28), UDim2.new(0.5, 2, 0, 64), 0.2)
local _0xBE0F = {_0xAC6A, _0x9337, _0x0C3F, _0x3ADB, _0xACBA, _0xB48B}local _0x0E81 = Instance.new(string.char(70,114,97,109,101))
_0x0E81.Name =string.char(66,111,120,70,117,108,108)_0x0E81.Size = UDim2.new(0, 64, 0, 116)
_0x0E81.Position = UDim2.new(0.5, -32, 0.5, -52)
_0x0E81.BackgroundTransparency = 1
_0x0E81.BorderSizePixel = 0
_0x0E81.Parent = _0xB958
local _0x3104 = Instance.new(string.char(85,73,83,116,114,111,107,101))
_0x3104.Thickness = 1.5
_0x3104.Color = Color3.fromRGB(40, 255, 40)
_0x3104.Parent = _0x0E81
local function _0x17A6(_0x99D7, _0x9094, _0x3CFA, xs, ys)
local _0x465C = Instance.new(string.char(70,114,97,109,101))
_0x465C.Name = _0x99D7
_0x465C.BackgroundColor3 = Color3.fromRGB(40, 255, 40)
_0x465C.BorderSizePixel = 0
_0x465C.Size = UDim2.new(0, xs, 0, ys)
_0x465C.Position = UDim2.new(0, _0x9094, 0, _0x3CFA)
_0x465C.Parent = _0x0E81
return _0x465C
end
local _0xB067 = {
_0x17A6(string.char(84,76,49), 0, 0, 12, 2), _0x17A6(string.char(84,76,50), 0, 0, 2, 12),
_0x17A6(string.char(84,82,49), 52, 0, 12, 2), _0x17A6(string.char(84,82,50), 62, 0, 2, 12),
_0x17A6(string.char(66,76,49), 0, 114, 12, 2), _0x17A6(string.char(66,76,50), 0, 104, 2, 12),
_0x17A6(string.char(66,82,49), 52, 114, 12, 2), _0x17A6(string.char(66,82,50), 62, 104, 2, 12),
}
local _0xC8C2 = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_0xC8C2.Size = UDim2.new(0, 120, 0, 16)
_0xC8C2.Position = UDim2.new(0.5, -60, 0.5, -70)
_0xC8C2.BackgroundTransparency = 1
_0xC8C2.Text =string.char(69,110,101,109,121)_0xC8C2.TextColor3 = Color3.fromRGB(255, 255, 255)
_0xC8C2.TextSize = 12
_0xC8C2.Font = Enum.Font.GothamBold
_0xC8C2.Parent = _0xB958
local _0x92A5 = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_0x92A5.Size = UDim2.new(0, 80, 0, 14)
_0x92A5.Position = UDim2.new(0.5, -40, 0.5, 68)
_0x92A5.BackgroundTransparency = 1
_0x92A5.Text =string.char(52,53,109)_0x92A5.TextColor3 = _0xC027
_0x92A5.TextSize = 11
_0x92A5.Font = _0x624C
_0x92A5.Parent = _0xB958
local _0x94CE = Instance.new(string.char(70,114,97,109,101))
_0x94CE.Size = UDim2.new(0, 4, 0, 116)
_0x94CE.Position = UDim2.new(0.5, -40, 0.5, -52)
_0x94CE.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
_0x94CE.BorderSizePixel = 0
_0x94CE.Parent = _0xB958
Instance.new(string.char(85,73,67,111,114,110,101,114), _0x94CE).CornerRadius = UDim.new(1, 0)
local _0xBEF2 = Instance.new(string.char(70,114,97,109,101))
_0xBEF2.Size = UDim2.new(1, 0, 0.7, 0)
_0xBEF2.Position = UDim2.new(0, 0, 0.3, 0)
_0xBEF2.BackgroundColor3 = Color3.fromRGB(40, 255, 40)
_0xBEF2.BorderSizePixel = 0
_0xBEF2.Parent = _0x94CE
Instance.new(string.char(85,73,67,111,114,110,101,114), _0xBEF2).CornerRadius = UDim.new(1, 0)local _0x8BDF = Instance.new(string.char(70,114,97,109,101))
_0x8BDF.Size = UDim2.new(0, 8, 0, 8)
_0x8BDF.AnchorPoint = Vector2.new(0.5, 0.5)
_0x8BDF.Position = UDim2.new(0.5, 0, 0.5, -42)
_0x8BDF.BackgroundColor3 = Color3.fromRGB(40, 255, 40)
_0x8BDF.BorderSizePixel = 0
_0x8BDF.ZIndex = 5
_0x8BDF.Parent = _0xB958
Instance.new(string.char(85,73,67,111,114,110,101,114), _0x8BDF).CornerRadius = UDim.new(1, 0)
local _0x228C = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_0x228C.Size = UDim2.new(0, 100, 0, 14)
_0x228C.Position = UDim2.new(1, -108, 0, 8)
_0x228C.BackgroundTransparency = 1
_0x228C.Text =string.char(86,73,83,73,66,76,69)_0x228C.TextColor3 = Color3.fromRGB(40, 255, 40)
_0x228C.TextSize = 10
_0x228C.Font = Enum.Font.GothamBold
_0x228C.TextXAlignment = Enum.TextXAlignment.Right
_0x228C.Parent = _0xB958
local function _0x2432()
local _0xF9DD
if _0x4D5E.RGBESP then
_0xF9DD = Color3.fromHSV((tick() * 0.4) % 1, 1, 1)
else
_0xF9DD = Color3.fromRGB(
math.clamp(tonumber(_0x4D5E.ESPColorR) or 170, 0, 255),
math.clamp(tonumber(_0x4D5E.ESPColorG) or 0, 0, 255),
math.clamp(tonumber(_0x4D5E.ESPColorB) or 255, 0, 255)
)
endlocal _0x46AE = tostring(_0x4D5E.BoxStyle orstring.char(67,111,114,110,101,114))
local _0x2132 = _0x4D5E.ShowBoxes ~= false and _0x4D5E.ESP ~= false
_0x0E81.Visible = _0x2132
_0x3104.Enabled = (_0x46AE ==string.char(70,117,108,108)or _0x46AE ==string.char(66,111,116,104)) and _0x2132
_0x3104.Color = _0xF9DD
for _0x4136, _0x1B2E in ipairs(_0xB067) do
_0x1B2E.Visible = (_0x46AE ==string.char(67,111,114,110,101,114)or _0x46AE ==string.char(66,111,116,104)) and _0x2132
_0x1B2E.BackgroundColor3 = _0xF9DD
end
_0xC8C2.Visible = _0x4D5E.ShowNames ~= false and _0x4D5E.ESP ~= false
_0xC8C2.TextColor3 = _0xF9DD
_0x92A5.Visible = _0x4D5E.ShowDistance ~= false and _0x4D5E.ESP ~= false
_0x94CE.Visible = _0x4D5E.ShowHealth ~= false and _0x4D5E.ESP ~= false
_0xBEF2.BackgroundColor3 = _0xF9DD
_0x8BDF.Visible = _0x4D5E.ShowHeadDot ~= false and _0x4D5E.ESP ~= false
_0x8BDF.BackgroundColor3 = _0xF9DD
_0x228C.TextColor3 = _0xF9DD
local _0x3291 = Color3.fromRGB(55, 55, 70)
local _0x7D7B = Color3.fromRGB(
math.floor(_0xF9DD.R * 180 + 40),
math.floor(_0xF9DD.G * 180 + 40),
math.floor(_0xF9DD.B * 180 + 40)
)
for _0x4136, bp in ipairs(_0xBE0F) do
bp.BackgroundColor3 = _0x4D5E.Chams and _0x7D7B or _0x3291
endif _0x4D5E.Chams then
_0xAC6A.BackgroundColor3 = Color3.fromRGB(
math.min(255, math.floor(_0xF9DD.R * 200 + 50)),
math.min(255, math.floor(_0xF9DD.G * 200 + 50)),
math.min(255, math.floor(_0xF9DD.B * 200 + 50))
)
end
end
task.spawn(function()
while _0xD5BD.Parent do
_0x2432()
task.wait(_0x4D5E.RGBESP and 0.08 or 0.25)
end
end)
_0xC58A(_0xFACD,string.char(69,83,80))
_0xF5AC(_0xFACD,string.char(69,83,80,32,69,110,97,98,108,101,100),string.char(69,83,80))
_0xF5AC(_0xFACD,string.char(66,111,120,101,115),string.char(83,104,111,119,66,111,120,101,115))
_0xB77C(_0xFACD,string.char(66,111,120,32,83,116,121,108,101),string.char(66,111,120,83,116,121,108,101),{string.char(67,111,114,110,101,114),string.char(70,117,108,108),string.char(66,111,116,104)})
_0xF5AC(_0xFACD,string.char(78,97,109,101,115),string.char(83,104,111,119,78,97,109,101,115))
_0xF5AC(_0xFACD,string.char(68,105,115,116,97,110,99,101),string.char(83,104,111,119,68,105,115,116,97,110,99,101))
_0xF5AC(_0xFACD,string.char(72,101,97,108,116,104),string.char(83,104,111,119,72,101,97,108,116,104))
_0xF5AC(_0xFACD,string.char(72,101,97,100,32,68,111,116),string.char(83,104,111,119,72,101,97,100,68,111,116))
_0xF5AC(_0xFACD,string.char(67,104,97,109,115,32,69,83,80),string.char(67,104,97,109,115))
_0xF5AC(_0xFACD,string.char(71,97,100,103,101,116,32,69,83,80),string.char(71,97,100,103,101,116,69,83,80))
_0xF5AC(_0xFACD,string.char(82,97,100,97,114,32,69,83,80),string.char(82,97,100,97,114))
_0x319F(_0xFACD,string.char(82,97,100,97,114,32,83,105,122,101),string.char(82,97,100,97,114,83,105,122,101),80,220,5)
_0x319F(_0xFACD,string.char(82,97,100,97,114,32,82,97,110,103,101),string.char(82,97,100,97,114,82,97,110,103,101),50,400,10)
_0x0165(_0xFACD,string.char(70,111,114,99,101,32,82,101,102,114,101,115,104,32,69,83,80),_0xBC9C)
_0xC58A(_0xFACD,string.char(69,83,80,32,67,111,108,111,114))
_0xF5AC(_0xFACD,string.char(82,71,66,32,69,83,80),string.char(82,71,66,69,83,80))
_0x319F(_0xFACD,string.char(82,101,100),string.char(69,83,80,67,111,108,111,114,82),0,255,1)
_0x319F(_0xFACD,string.char(71,114,101,101,110),string.char(69,83,80,67,111,108,111,114,71),0,255,1)
_0x319F(_0xFACD,string.char(66,108,117,101),string.char(69,83,80,67,111,108,111,114,66),0,255,1)
_0xC58A(_0xFACD,string.char(67,114,111,115,115,104,97,105,114))
_0xB77C(_0xFACD,string.char(83,116,121,108,101),string.char(67,117,114,115,111,114,78,97,109,101),{string.char(79,102,102),string.char(84,67,50),string.char(67,105,110,110,97,109,111,114,111,108,108)})
_0x319F(_0xFACD,string.char(83,105,122,101),string.char(67,117,114,115,111,114,83,105,122,101),8,128,1)_0x1C67 = function()
_0xFA3F = _0xB257()
local _0xEEE5 = _0xFA3F
for _0x4136, _0x55FC in ipairs(_0x7B34) do
pcall(function()
local _0x9DC8, _0xAF6F, _0x1130 = _0x55FC.kind, _0x55FC.obj, _0x55FC.extra
if _0x9DC8 ==string.char(99,104,111,105,99,101,82,101,102,114,101,115,104)and type(_0xAF6F) ==string.char(116,97,98,108,101)and _0xAF6F.refresh then
_0xAF6F.refresh()
return
end
if not _0xAF6F or (typeof(_0xAF6F) ==string.char(73,110,115,116,97,110,99,101)and not _0xAF6F.Parent) then return end
if _0x9DC8 ==string.char(116,101,120,116)then
_0xAF6F.TextColor3 = _0xEEE5
elseif _0x9DC8 ==string.char(102,105,108,108)then
_0xAF6F.BackgroundColor3 = _0xEEE5
elseif _0x9DC8 ==string.char(115,116,114,111,107,101)then
_0xAF6F.Color = _0xEEE5
elseif _0x9DC8 ==string.char(116,111,103,103,108,101)then
if _0x4D5E[_0x1130] then _0xAF6F.BackgroundColor3 = _0xEEE5 end
elseif _0x9DC8 ==string.char(99,104,111,105,99,101)thenend
end)
endfor _0x6ACF, _0x6AF5 in pairs(_0xB81D) do
if _0x6AF5.TextColor3 ~= _0xC027 then
_0x6AF5.TextColor3 = _0xEEE5
end
end
pcall(function()
if _0xF2E4 then _0xF2E4.Color = _0xEEE5 end
if _0xF268 then _0xF268.TextColor3 = _0xEEE5 end
if _0xE815 then _0xE815.TextColor3 = _0xEEE5 end
end)
end
_0xC58A(_0xC4C7,string.char(65,99,99,101,110,116,32,67,111,108,111,114))
_0x319F(_0xC4C7,string.char(82,101,100),string.char(68,101,115,105,103,110,65,99,99,101,110,116,82),0,255,1)
_0x319F(_0xC4C7,string.char(71,114,101,101,110),string.char(68,101,115,105,103,110,65,99,99,101,110,116,71),0,255,1)
_0x319F(_0xC4C7,string.char(66,108,117,101),string.char(68,101,115,105,103,110,65,99,99,101,110,116,66),0,255,1)
_0x0165(_0xC4C7,string.char(65,112,112,108,121,32,65,99,99,101,110,116),_0x1C67)
_0x0165(_0xC4C7,string.char(82,101,115,101,116,32,68,101,102,97,117,108,116),function()
_0x4D5E.DesignAccentR, _0x4D5E.DesignAccentG, _0x4D5E.DesignAccentB = 138, 99, 255
_0x1C67()
end)
_0xC58A(_0xC4C7,string.char(80,114,101,115,101,116,115))
_0x0165(_0xC4C7,string.char(80,117,114,112,108,101),function() _0x4D5E.DesignAccentR,_0x4D5E.DesignAccentG,_0x4D5E.DesignAccentB=138,99,255 _0x1C67() end)
_0x0165(_0xC4C7,string.char(82,101,100),function() _0x4D5E.DesignAccentR,_0x4D5E.DesignAccentG,_0x4D5E.DesignAccentB=255,60,60 _0x1C67() end)
_0x0165(_0xC4C7,string.char(71,114,101,101,110),function() _0x4D5E.DesignAccentR,_0x4D5E.DesignAccentG,_0x4D5E.DesignAccentB=60,220,100 _0x1C67() end)
_0x0165(_0xC4C7,string.char(66,108,117,101),function() _0x4D5E.DesignAccentR,_0x4D5E.DesignAccentG,_0x4D5E.DesignAccentB=60,140,255 _0x1C67() end)
_0x0165(_0xC4C7,string.char(79,114,97,110,103,101),function() _0x4D5E.DesignAccentR,_0x4D5E.DesignAccentG,_0x4D5E.DesignAccentB=255,140,40 _0x1C67() end)
_0x0165(_0xC4C7,string.char(87,104,105,116,101),function() _0x4D5E.DesignAccentR,_0x4D5E.DesignAccentG,_0x4D5E.DesignAccentB=230,230,240 _0x1C67() end)
_0xC58A(_0x86C1,string.char(67,114,101,100,105,116,115))
local _0x7DE8 = Instance.new(string.char(70,114,97,109,101))
_0x7DE8.LayoutOrder = _0xF3D9(_0x86C1)
_0x7DE8.Size = UDim2.new(1, 0, 0, 120)
_0x7DE8.BackgroundColor3 = _0x44A6
_0x7DE8.BorderSizePixel = 0
_0x7DE8.Parent = _0x86C1
Instance.new(string.char(85,73,67,111,114,110,101,114), _0x7DE8).CornerRadius = UDim.new(0, 10)
local _0x7FAA = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_0x7FAA.Size = UDim2.new(1, -20, 0, 28)
_0x7FAA.Position = UDim2.new(0, 12, 0, 12)
_0x7FAA.BackgroundTransparency = 1
_0x7FAA.Text =string.char(84,104,97,110,107,32,121,111,117,32,68,97,114,105,101,110)_0x7FAA.TextColor3 = _0xFA3F
_0x7FAA.TextSize = 16
_0x7FAA.Font = Enum.Font.GothamBold
_0x7FAA.TextXAlignment = Enum.TextXAlignment.Left
_0x7FAA.Parent = _0x7DE8
_0x4CA2(string.char(116,101,120,116), _0x7FAA)
local _0xFF99 = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_0xFF99.Size = UDim2.new(1, -20, 0, 60)
_0xFF99.Position = UDim2.new(0, 12, 0, 44)
_0xFF99.BackgroundTransparency = 1
_0xFF99.Text =string.char(84,104,97,110,107,32,121,111,117,32,68,97,114,105,101,110,32,102,111,114,32,104,101,108,112,105,110,103,32,117,115,46,10,77,111,111,110,32,72,117,98,32,194,183,32,74,97,105,108,98,105,114,100)_0xFF99.TextColor3 = _0xB167
_0xFF99.TextSize = 12
_0xFF99.Font = _0x624C
_0xFF99.TextXAlignment = Enum.TextXAlignment.Left
_0xFF99.TextYAlignment = Enum.TextYAlignment.Top
_0xFF99.TextWrapped = true
_0xFF99.Parent = _0x7DE8
_0xC58A(_0x76D3,string.char(67,111,110,102,105,103))
_0xA1BD(_0x76D3,string.char(78,97,109,101),string.char(67,111,110,102,105,103,78,97,109,101),string.char(100,101,102,97,117,108,116))
_0x0165(_0x76D3,string.char(83,97,118,101),_0xA05F)
_0x0165(_0x76D3,string.char(76,111,97,100),function() _0xDE82() end)
_0xC58A(_0x76D3,string.char(83,104,97,114,101,32,67,111,110,102,105,103))
local _0x9CD5 = Instance.new(string.char(84,101,120,116,66,111,120))
_0x9CD5.LayoutOrder = _0xF3D9(_0x76D3)
_0x9CD5.Size = UDim2.new(1, 0, 0, 72)
_0x9CD5.BackgroundColor3 = _0x44A6
_0x9CD5.BorderSizePixel = 0
_0x9CD5.ClearTextOnFocus = false
_0x9CD5.Text =""_0x9CD5.PlaceholderText =string.char(80,97,115,116,101,32,115,104,97,114,101,100,32,99,111,110,102,105,103,32,74,83,79,78,32,104,101,114,101)_0x9CD5.PlaceholderColor3 = _0xC027
_0x9CD5.TextColor3 = _0xB167
_0x9CD5.TextSize = 11
_0x9CD5.Font = _0x624C
_0x9CD5.TextWrapped = true
_0x9CD5.TextXAlignment = Enum.TextXAlignment.Left
_0x9CD5.TextYAlignment = Enum.TextYAlignment.Top
_0x9CD5.MultiLine = true
_0x9CD5.Parent = _0x76D3
Instance.new(string.char(85,73,67,111,114,110,101,114), _0x9CD5).CornerRadius = UDim.new(0, 8)
local _0xCEEB = Instance.new(string.char(85,73,80,97,100,100,105,110,103))
_0xCEEB.PaddingTop = UDim.new(0, 6)
_0xCEEB.PaddingLeft = UDim.new(0, 8)
_0xCEEB.PaddingRight = UDim.new(0, 8)
_0xCEEB.Parent = _0x9CD5
_0x0165(_0x76D3,string.char(69,120,112,111,114,116,32,67,111,110,102,105,103),function()
local _0x1480 = _0x0EFB()
if _0x1480 then
_0x9CD5.Text = _0x1480
if _0x8E91 then _0x8E91.Text =string.char(69,120,112,111,114,116,101,100,32,226,128,148,32,99,111,112,105,101,100,32,43,32,115,104,111,119,110,32,105,110,32,98,111,120,32,40,115,104,97,114,101,32,116,104,105,115,41)end
end
end)
_0x0165(_0x76D3,string.char(73,109,112,111,114,116,32,80,97,115,116,101),function()
_0xAA7C(_0x9CD5.Text)
end)
_0x0165(_0x76D3,string.char(73,109,112,111,114,116,32,67,108,105,112,98,111,97,114,100),function()
_0x9766()
end)
_0x0165(_0x76D3,string.char(67,108,101,97,114,32,66,111,120),function()
_0x9CD5.Text =""if _0x8E91 then _0x8E91.Text =string.char(83,104,97,114,101,32,98,111,120,32,99,108,101,97,114,101,100)end
end)
_0x0165(_0x76D3,string.char(82,101,115,101,116,32,68,101,102,97,117,108,116,115),function()
for k, _0xD278 in pairs(_0xBBD0) do
_0x4D5E[k] = _0xD278
end
_0x9CD5.Text =""pcall(_0xA05F)
pcall(function() if _0x2457 then _0x2457(_0x4D5E.CursorName) end end)
pcall(function() if _0x1C67 then _0x1C67() end end)
pcall(function() if _0x87AF then _0x87AF() end end)
pcall(function() if _0x7406 then _0x7406() end end)
if _0x8E91 then _0x8E91.Text =string.char(67,111,110,102,105,103,32,114,101,115,101,116,32,116,111,32,100,101,102,97,117,108,116,115)end
end)
_0xF5AC(_0x76D3,string.char(70,80,83,32,43,32,77,83),string.char(83,104,111,119,80,101,114,102))
_0xF5AC(_0x76D3,string.char(80,111,116,97,116,111),string.char(80,111,116,97,116,111))
_0xC58A(_0x76D3,string.char(83,116,97,116,117,115))
_0x8E91=Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_0x8E91.LayoutOrder=_0xF3D9(_0x76D3)
_0x8E91.Size=UDim2.new(1,0,0,40)
_0x8E91.BackgroundColor3=_0x44A6
_0x8E91.BorderSizePixel=0
_0x8E91.Text=string.char(69,120,101,99,117,116,111,114,58,32)..EXECUTOR_NAME..string.char(32,124,32,86,105,115,58,32,71,114,101,101,110,47,82,101,100)_0x8E91.TextColor3=_0xB167
_0x8E91.TextSize=12
_0x8E91.Font=_0x624C
_0x8E91.Parent=_0x76D3
Instance.new(string.char(85,73,67,111,114,110,101,114),_0x8E91).CornerRadius=UDim.new(0,8)
_0xBDDB(string.char(67,111,109,98,97,116))
for _0x4136,pg in pairs(_0x2BDB) do
pcall(function()
local _0xA28F = pg:FindFirstChildOfClass(string.char(85,73,76,105,115,116,76,97,121,111,117,116))
if _0xA28F then
pg.CanvasSize = UDim2.new(0, 0, 0, _0xA28F.AbsoluteContentSize.Y + 16)
end
end)
end
_0xA5A0=Instance.new(string.char(84,101,120,116,66,117,116,116,111,110))
_0xA5A0.Size=UDim2.new(0,56,0,36)
_0xA5A0.Position=UDim2.new(1,-66,0,12)
_0xA5A0.BackgroundColor3=Color3.fromRGB(30,30,40)
_0xA5A0.Text=string.char(79,80,69,78)_0xA5A0.TextColor3=_0xFA3F
_0xA5A0.TextSize=14
_0xA5A0.Font=_0x624C
_0xA5A0.Visible=true
_0xA5A0.Parent=_0x3A15
Instance.new(string.char(85,73,67,111,114,110,101,114),_0xA5A0).CornerRadius=UDim.new(0,8)
local _0xA92E = false
_0xA5A0.Active = true
do
local _0xC5F6, _0xDDC5, _0x19F3 = false, nil, nil
_0xA5A0.InputBegan:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1
or input.UserInputType == Enum.UserInputType.Touch then
_0xC5F6 = true
_0xA92E = false
_0xDDC5 = input.Position
_0x19F3 = _0xA5A0.Position
end
end)
_0x67D4.InputEnded:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1
or input.UserInputType == Enum.UserInputType.Touch then
_0xC5F6 = false
end
end)
_0x67D4.InputChanged:Connect(function(input)
if not _0xC5F6 or not _0xDDC5 or not _0x19F3 then return end
if input.UserInputType == Enum.UserInputType.MouseMovement
or input.UserInputType == Enum.UserInputType.Touch then
local _0x8044 = input.Position - _0xDDC5
if math.abs(_0x8044.X) > 5 or math.abs(_0x8044.Y) > 5 then _0xA92E = true end
_0xA5A0.Position = UDim2.new(
_0x19F3.X.Scale, _0x19F3.X.Offset + _0x8044.X,
_0x19F3.Y.Scale, _0x19F3.Y.Offset + _0x8044.Y
)
end
end)
end
_0xA5A0.MouseButton1Click:Connect(function()
if _0xA92E then _0xA92E = false return end
_0xE7C9.Visible = true
_0xA5A0.Visible = false
end)
_0x3C5C = function() _0xA5A0.Visible=not _0xE7C9.Visible end
local _0xC5F6,_0x9D8C,_0xC7B3
_0xA40E.InputBegan:Connect(function(i)
if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then
_0xC5F6=true _0x9D8C=i.Position _0xC7B3=_0xE7C9.Position
end
end)
_0xA40E.InputEnded:Connect(function(i)
if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then _0xC5F6=false end
end)
_0x67D4.InputChanged:Connect(function(i)
if _0xC5F6 and (i.UserInputType==Enum.UserInputType.MouseMovement or i.UserInputType==Enum.UserInputType.Touch) then
local _0x8044=i.Position-_0x9D8C
_0xE7C9.Position=UDim2.new(_0xC7B3.X.Scale,_0xC7B3.X.Offset+_0x8044.X,_0xC7B3.Y.Scale,_0xC7B3.Y.Offset+_0x8044.Y)
end
end)
_0x9235.MouseButton1Click:Connect(function() _0xE7C9.Visible=false _0x3C5C() end)
_0x67D4.InputBegan:Connect(function(i)
if i.KeyCode==Enum.KeyCode.RightControl or i.KeyCode==Enum.KeyCode.LeftControl then
_0xE7C9.Visible=not _0xE7C9.Visible _0x3C5C() _0x7082()
end
end)
local _0xD947={MB1=Enum.UserInputType.MouseButton1,MB2=Enum.UserInputType.MouseButton2,E=Enum.KeyCode.E,Q=Enum.KeyCode.Q,F=Enum.KeyCode.F}
local _0x1106=false
local _0x4F9F
local function _0xF6B2(i)
local _0x6C6F=_0xD947[_0x4D5E.AimKey] or Enum.UserInputType.MouseButton2
local _0x6EBC=tostring(_0x6C6F)
if string.find(_0x6EBC,string.char(77,111,117,115,101,66,117,116,116,111,110),1,true) then return i.UserInputType==_0x6C6F end
if string.find(_0x6EBC,string.char(75,101,121,67,111,100,101),1,true) then return i.KeyCode==_0x6C6F end
return false
end
_0x67D4.InputBegan:Connect(function(i,gp)
if not _0x4D5E.Aimbot or _0x4D5E.MobileAim then return end
if not _0xF6B2(i) then return end
if _0x4D5E.AimMode==string.char(72,111,108,100)then _0x1106=true elseif _0x4D5E.AimMode==string.char(84,111,103,103,108,101)then _0x1106=not _0x1106 end
end)
_0x67D4.InputEnded:Connect(function(i)
if _0x4D5E.AimMode==string.char(72,111,108,100)and _0xF6B2(i) then _0x1106=false end
end)
local function _0xE9F6(_0xFC5E)
if _0x4F9F then _0x4F9F:Disconnect() _0x4F9F=nil end
if not _0xFC5E then
local _0x1B2E=_0x5AE8(_0x4E10)
if _0x1B2E then for _0x4136,_0x84D2 in ipairs(_0x1B2E:GetDescendants()) do if _0x84D2:IsA(string.char(66,97,115,101,80,97,114,116)) then _0x84D2.CanCollide=true end end end
return
end
_0x4F9F=_0x8A2A.Stepped:Connect(function()
local _0x1B2E=_0x5AE8(_0x4E10)
if not _0x1B2E then return end
for _0x4136,_0x84D2 in ipairs(_0x1B2E:GetDescendants()) do if _0x84D2:IsA(string.char(66,97,115,101,80,97,114,116)) then _0x84D2.CanCollide=false end end
end)
end
task.spawn(function()
while true do
task.wait(0.2)
if _0x4D5E.AntiBow then
pcall(function()
local _0x1B2E=_0x5AE8(_0x4E10)
if not _0x1B2E then return end
local _0x417C=_0x1B2E:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
local _0xC029=_0x1B2E:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if not _0x417C or not _0xC029 or _0xC029.Health<=0 then return end
local _0x023F=_0xC029:GetState()
if _0x023F==Enum.HumanoidStateType.Jumping or _0x023F==Enum.HumanoidStateType.Freefall then return end
if _0x417C.CFrame.UpVector:Dot(Vector3.yAxis)>=0.92 then return end
local _0x4136,_0xB6DA=_0x417C.CFrame:ToOrientation()
_0x417C.CFrame=CFrame.new(_0x417C.Position)*CFrame.Angles(0,_0xB6DA,0)
end)
end
end
end)
task.spawn(function()
while true do
task.wait(0.5)
if _0x4D5E.StreamProof then
local _0x6023=tostring(_0x4D5E.SpoofName)
if _0x4D5E.ShowVerified then _0x6023=_0x6023..string.char(32)..VERIFIED_MARK end
pcall(function() _0x4E10.DisplayName=_0x6023 end)
end
end
end)
local _0x5910=33054943
local _0x69FC={}
task.spawn(function()
while true do
task.wait(2)
if false and _0x4D5E.StaffDetect then
for _0x4136,_0x84D2 in ipairs(_0xFF3F:GetPlayers()) do
if _0x84D2~=_0x4E10 then
local _0x23A4,_0xBC32=pcall(function() return _0x84D2:GetRankInGroup(_0x5910) end)
if _0x23A4 and type(_0xBC32)==string.char(110,117,109,98,101,114)and _0xBC32>=51 then
if not _0x69FC[_0x84D2.UserId] then _0x69FC[_0x84D2.UserId]=true if _0x4D5E.StaffLeave then pcall(function() _0x4E10:Kick(string.char(83,116,97,102,102)) end) end end
end
end
end
end
end
end)local _0x32FF=Instance.new(string.char(83,99,114,101,101,110,71,117,105))
_0x32FF.Name=string.char(77,111,111,110,70,79,86,71,117,105)_0x32FF.ResetOnSpawn=false
_0x32FF.IgnoreGuiInset=true
_0x32FF.DisplayOrder=99999
_0x32FF.Parent=_0x62DF
_0x84C0=Instance.new(string.char(70,114,97,109,101))
_0x84C0.AnchorPoint=Vector2.new(0.5,0.5)
_0x84C0.Size=UDim2.new(0,300,0,300)
_0x84C0.Position=UDim2.new(0.5,0,0.5,0)
_0x84C0.BackgroundTransparency=1
_0x84C0.BorderSizePixel=0
_0x84C0.Visible=false
_0x84C0.ZIndex=999
_0x84C0.Parent=_0x32FF
pcall(function() Instance.new(string.char(85,73,67,111,114,110,101,114),_0x84C0).CornerRadius=UDim.new(1,0) end)
_0xF2E4=nil
pcall(function()
_0xF2E4=Instance.new(string.char(85,73,83,116,114,111,107,101))
_0xF2E4.Color=Color3.new(1,1,1)
_0xF2E4.Thickness=1.5
_0xF2E4.ApplyStrokeMode=Enum.ApplyStrokeMode.Border
_0xF2E4.Parent=_0x84C0
end)
local _0xE3CB,_0x2C5D,_0x97ED,_0x6635=0,tick(),0,0
_0x8A2A.Heartbeat:Connect(function()
local _0x1B2E=_0x5AE8(_0x4E10)
if _0x1B2E then
local _0xC029=_0x1B2E:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
if _0x4D5E.Speed and _0xC029 and _0xC029.Health>0 then _0xC029.WalkSpeed=_0x4D5E.SpeedValue or 24 end
if _0x4D5E.Noclip then if not _0x4F9F then _0xE9F6(true) end elseif _0x4F9F then _0xE9F6(false) end
end
_0xE5DE(_0x4D5E.Potato==true)
pcall(_0x997E)
pcall(_0xB3DE)
end)
_0x8A2A.RenderStepped:Connect(function()
pcall(function()
_0xE3CB=_0xE3CB+1
if tick()-_0x2C5D>=1 then _0x97ED=_0xE3CB _0xE3CB=0 _0x2C5D=tick() end
if _0x8FD6.Visible then
if _0x67D4.TouchEnabled and not _0x67D4.KeyboardEnabled then
local _0x2164 = _0x83C0.ViewportSize
_0x8FD6.Position = UDim2.new(0, _0x2164.X/2, 0, _0x2164.Y/2)
else
local _0xA855 = _0x67D4:GetMouseLocation()
_0x8FD6.Position = UDim2.new(0, _0xA855.X, 0, _0xA855.Y)
end
end
if _0x4D5E.CustomFOV then _0x3205() end
_0xED74=false
local _0x2D58,_0xD80E,_0xAB5B=false,_0x4D5E.AimSmooth or 0.95,_0x4D5E.AimFOV or 150
if _0x4D5E.KillAura and _0x0DE6 and _0x8364(_0x0DE6) then _0xED74=true
elseif not _0x4D5E.KillAura then
if _0x4D5E.MobileAim then _0x2D58=true _0xD80E=_0x4D5E.MobileSmooth or 0.9 _0xAB5B=_0x4D5E.MobileFOV or 160
elseif _0x4D5E.Aimbot then _0x2D58=_0x1106 or _0x4D5E.AimMode==string.char(65,108,119,97,121,115)_0xD80E=_0x4D5E.AimSmooth or 0.95 _0xAB5B=_0x4D5E.AimFOV or 150 end
end
if _0x2D58 then
local _0x4136,_0x7474=_0xC7D9(_0xAB5B,true)
if _0x7474 then
_0xED74=true
if _0xD80E>=0.98 then _0x83C0.CFrame=CFrame.new(_0x83C0.CFrame.Position,_0x7474)
else _0x83C0.CFrame=_0x83C0.CFrame:Lerp(CFrame.new(_0x83C0.CFrame.Position,_0x7474),math.clamp(_0xD80E,0.1,1)) end
_0x5501(_0x7474)
end
end
_0x4850()
pcall(_0x6C47)
pcall(_0xEB48)
pcall(_0xF229)
pcall(_0xA70E)
_0x6635=_0x6635+1
if _0x6635>=2 then _0x6635=0 pcall(_0x2CFF) endpcall(function()
local _0xE6D9 = _0x83C0.ViewportSize / 2
if _0x26F4 then
_0x26F4.Position = _0xE6D9
_0x26F4.Radius = tonumber(_0x4D5E.SilentFOV) or 90
_0x26F4.Visible = _0x4D5E.SilentAim and _0x4D5E.SilentShowFOV
if _0x4D5E.RGBESP then _0x26F4.Color = _0xFCEC() else _0x26F4.Color = _0xB257() end
end
if _0x3641 then
local _0x8C34 = _0x4D5E.SilentAim and _0x4D5E.SilentShowLine and _0x8570() or nil
if _0x8C34 then
local _0xE4F2, _0xFC5E = _0x83C0:WorldToViewportPoint(_0x8C34.Position)
if _0xFC5E then
_0x3641.From = _0xE6D9
_0x3641.To = Vector2.new(_0xE4F2.X, _0xE4F2.Y)
_0x3641.Visible = true
if _0x4D5E.RGBESP then _0x3641.Color = _0xFCEC() else _0x3641.Color = _0xB257() end
else
_0x3641.Visible = false
end
else
_0x3641.Visible = false
end
end
end)
local _0x67E0,_0x0BA0=false,_0x4D5E.AimFOV or 150
if _0x4D5E.MobileAim then _0x67E0=_0x4D5E.MobileShowFOV _0x0BA0=_0x4D5E.MobileFOV or 160 else _0x67E0=_0x4D5E.ShowFOV _0x0BA0=_0x4D5E.AimFOV or 150 end
_0x84C0.Size=UDim2.new(0,_0x0BA0*2,0,_0x0BA0*2)
_0x84C0.Position=UDim2.new(0.5,0,0.5,0)
_0x84C0.Visible=_0x67E0
if _0xF2E4 then if _0x4D5E.RGBESP then _0xF2E4.Color=_0xFCEC() end end
end)
end)
_0xF268 = Instance.new(string.char(84,101,120,116,76,97,98,101,108))
_0xF268.Name =string.char(77,111,111,110,70,80,83,76,97,98,101,108)_0xF268.BackgroundTransparency = 1
_0xF268.TextColor3 = _0xFA3F
_0xF268.TextSize = 14
_0xF268.Font = Enum.Font.GothamBold
_0xF268.TextStrokeTransparency = 0
_0xF268.Position = UDim2.new(0, 10, 0, 10)
_0xF268.Size = UDim2.new(0, 200, 0, 20)
_0xF268.Visible = false
_0xF268.Parent = _0x62DF
task.spawn(function()
while true do
task.wait(0.5)
if _0x4D5E.ShowPerf then
local _0x7B1F = 0
pcall(function() _0x7B1F = math.floor(_0xE28F.Network.ServerStatsItem[string.char(68,97,116,97,32,80,105,110,103)]:GetValue()) end)
_0xF268.Text =string.char(70,80,83,58,32)..fps..string.char(32,32,77,83,58,32)..ping
_0xF268.Visible = true
else
_0xF268.Visible = false
end
end
end)
task.spawn(function() while true do task.wait(15) _0xA05F() end end)
if _0x4D5E.CursorName and _0x4D5E.CursorName~=string.char(79,102,102)then _0x2457(_0x4D5E.CursorName) end
if _0x4D5E.CustomFOV then _0x3205() end
_0xBE18(1,string.char(68,111,110,101))
task.wait(0.35)
pcall(function() _0xBCA1:Destroy() end)
_0xE7C9.Visible=true
_0xA5A0.Visible=false
print(string.char(91,77,111,111,110,32,72,117,98,93,32,80,85,66,76,73,67,32,77,79,66,73,76,69,32,124,32).. _0x222C ..string.char(32,124,32,86,105,115,32,71,114,101,101,110,47,82,101,100))
