-- HiraCode 2026 FULL UI + Vücut Kırmızı Chams ESP (Duvar Arkası Görünür) + BTools (Ultra Agresif)
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

-- KEY POPUP
local keyGui = Instance.new("ScreenGui", game.CoreGui)
keyGui.ResetOnSpawn = false
local keyFrame = Instance.new("Frame", keyGui)
keyFrame.Size = UDim2.new(0, 260, 0, 140)
keyFrame.Position = UDim2.new(.5, -130, .5, -70)
keyFrame.BackgroundColor3 = Color3.fromRGB(8, 12, 30)
Instance.new("UICorner", keyFrame)
local keyTitle = Instance.new("TextLabel", keyFrame)
keyTitle.Size = UDim2.new(1, 0, 0, 30)
keyTitle.Text = "HiraCode Key"
keyTitle.TextColor3 = Color3.new(1, 1, 1)
keyTitle.BackgroundTransparency = 1
keyTitle.Font = Enum.Font.GothamBold
keyTitle.TextSize = 16
local keyBox = Instance.new("TextBox", keyFrame)
keyBox.Size = UDim2.new(.8, 0, 0, 35)
keyBox.Position = UDim2.new(.1, 0, .35, 0)
keyBox.PlaceholderText = "Keyi Giriniz"
keyBox.BackgroundColor3 = Color3.fromRGB(15, 20, 40)
keyBox.TextColor3 = Color3.new(1, 1, 1)
Instance.new("UICorner", keyBox)
local keyBtn = Instance.new("TextButton", keyFrame)
keyBtn.Size = UDim2.new(.8, 0, 0, 30)
keyBtn.Position = UDim2.new(.1, 0, .7, 0)
keyBtn.Text = "Giris Yap"
keyBtn.BackgroundColor3 = Color3.fromRGB(18, 25, 55)
keyBtn.TextColor3 = Color3.new(1, 1, 1)
Instance.new("UICorner", keyBtn)
local unlocked = false
keyBtn.MouseButton1Click:Connect(function()
    if keyBox.Text == "Hiracode2026" then
        unlocked = true
        keyGui:Destroy()
    else
        keyBox.Text = "Hatali Key"
    end
end)
repeat task.wait() until unlocked

-- ANA GUI (GELİŞTİRİLDİ: Daha büyük ve simetrik menü - her şey sığıyor)
local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "HiraCode2026"
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
local main = Instance.new("Frame", gui)
main.Size = UDim2.new(0, 620, 0, 420) -- Daha büyük ve simetrik
main.Position = UDim2.new(0.5, -310, 0.5, -210)
main.BackgroundColor3 = Color3.fromRGB(8, 12, 30)
main.Active = true
main.Draggable = true
Instance.new("UICorner", main)
local stroke = Instance.new("UIStroke", main)
stroke.Color = Color3.fromRGB(40, 90, 255)
local header = Instance.new("Frame", main)
header.Size = UDim2.new(1, 0, 0, 40)
header.BackgroundColor3 = Color3.fromRGB(10, 15, 45)
local title = Instance.new("TextLabel", header)
title.Size = UDim2.new(1, 0, 1, 0)
title.Text = "HiraCode 2026"
title.TextColor3 = Color3.new(1, 1, 1)
title.Font = Enum.Font.GothamBold
title.TextSize = 20
title.BackgroundTransparency = 1

-- SIDEBAR (Daha geniş ve simetrik)
local sidebar = Instance.new("ScrollingFrame", main)
sidebar.Position = UDim2.new(0, 0, 0, 40)
sidebar.Size = UDim2.new(0, 170, 1, -40)
sidebar.BackgroundColor3 = Color3.fromRGB(12, 18, 40)
sidebar.ScrollBarThickness = 4
sidebar.ScrollBarImageColor3 = Color3.fromRGB(40, 90, 255)
local sidebarList = Instance.new("UIListLayout", sidebar)
sidebarList.Padding = UDim.new(0, 6)
sidebarList.SortOrder = Enum.SortOrder.LayoutOrder

local function tab(name)
    local b = Instance.new("TextButton", sidebar)
    b.Size = UDim2.new(1, 0, 0, 48)
    b.Text = name
    b.BackgroundColor3 = Color3.fromRGB(18, 25, 55)
    b.TextColor3 = Color3.new(1, 1, 1)
    b.Font = Enum.Font.GothamBold
    b.TextSize = 16
    Instance.new("UICorner", b)
    return b
end

local t1 = tab("Ana Sayfa")
local t2 = tab("FreeCam")
local t3 = tab("ModList")
local t4 = tab("Infinite Yield")
local t5 = tab("ESP")
local t6 = tab("Aimbot + Hitbox")
local t7 = tab("Adonis Bypass")
local t8 = tab("BTools") -- YENİ SEKMELER

pages = Instance.new("Frame", main)
pages.Position = UDim2.new(0, 170, 0, 40)
pages.Size = UDim2.new(1, -170, 1, -40)
pages.BackgroundTransparency = 1

local function page()
    local f = Instance.new("Frame", pages)
    f.Size = UDim2.new(1, 0, 1, 0)
    f.Visible = false
    f.BackgroundTransparency = 1
    return f
end

local p1 = page()
local p2 = page()
local p3 = page()
local p4 = page()
local p5 = page()
local p6 = page()
local p7 = page()
local p8 = page() -- BTools sayfası
p1.Visible = true

local function show(p)
    p1.Visible = false; p2.Visible = false; p3.Visible = false; p4.Visible = false
    p5.Visible = false; p6.Visible = false; p7.Visible = false; p8.Visible = false
    p.Visible = true
end

t1.MouseButton1Click:Connect(function() show(p1) end)
t2.MouseButton1Click:Connect(function() show(p2) end)
t3.MouseButton1Click:Connect(function() show(p3) end)
t4.MouseButton1Click:Connect(function() show(p4) end)
t5.MouseButton1Click:Connect(function() show(p5) end)
t6.MouseButton1Click:Connect(function() show(p6) end)
t7.MouseButton1Click:Connect(function() show(p7) end)
t8.MouseButton1Click:Connect(function() show(p8) end)

-- ANA SAYFA (orijinal)
local text = Instance.new("TextLabel", p1)
text.Position = UDim2.new(0, 20, 0, 20)
text.Size = UDim2.new(1, 0, 0, 35)
text.Text = "HiraCode 2026"
text.TextColor3 = Color3.new(1, 1, 1)
text.Font = Enum.Font.GothamBold
text.TextSize = 20
text.BackgroundTransparency = 1
text.TextXAlignment = "Left"
local dclink = Instance.new("TextButton", p1)
dclink.Position = UDim2.new(0, 20, 0, 60)
dclink.Size = UDim2.new(0, 350, 0, 30)
dclink.Text = "discord.gg/b8nFQZxsvx"
dclink.TextColor3 = Color3.fromRGB(0, 170, 255)
dclink.BackgroundTransparency = 1
dclink.Font = Enum.Font.GothamBold
dclink.TextSize = 16
dclink.TextXAlignment = "Left"
dclink.MouseButton1Click:Connect(function() setclipboard("https://discord.gg/b8nFQZxsvx") end)

-- FREECAM (orijinal)
local free = Instance.new("TextButton", p2)
free.Size = UDim2.new(0, 240, 0, 50)
free.Position = UDim2.new(0, 20, 0, 20)
free.Text = "Freecam : OFF"
free.BackgroundColor3 = Color3.fromRGB(18, 25, 55)
free.TextColor3 = Color3.new(1, 1, 1)
free.Font = Enum.Font.GothamBold
free.TextSize = 16
Instance.new("UICorner", free)
local fly = false
local loop
free.MouseButton1Click:Connect(function()
    fly = not fly
    free.Text = "Freecam : " .. (fly and "ON" or "OFF")
    local player = Players.LocalPlayer
    local cam = workspace.CurrentCamera
    local char = player.Character
    if not char then return end
    local hum = char:FindFirstChildOfClass("Humanoid")
    local head = char:FindFirstChild("Head")
    if fly then
        hum.PlatformStand = true
        head.Anchored = true
        loop = RunService.Heartbeat:Connect(function(dt)
            local moveDirection = hum.MoveDirection * (60 * dt)
            local headCFrame = head.CFrame
            local camCFrame = cam.CFrame
            local cameraOffset = headCFrame:ToObjectSpace(camCFrame).Position
            camCFrame = camCFrame * CFrame.new(-cameraOffset.X, -cameraOffset.Y, -cameraOffset.Z + 1)
            local cameraPosition = camCFrame.Position
            local headPosition = headCFrame.Position
            local objectSpaceVelocity = CFrame.new(cameraPosition, Vector3.new(headPosition.X, cameraPosition.Y, headPosition.Z)):VectorToObjectSpace(moveDirection)
            head.CFrame = CFrame.new(headPosition) * (camCFrame - cameraPosition) * CFrame.new(objectSpaceVelocity)
        end)
    else
        if loop then loop:Disconnect() end
        if hum then hum.PlatformStand = false end
        if head then head.Anchored = false end
    end
end)

-- MOD LİSTESİ (orijinal)
local modGui = nil
local modButton = Instance.new("TextButton", p3)
modButton.Size = UDim2.new(0, 240, 0, 50)
modButton.Position = UDim2.new(0, 20, 0, 20)
modButton.Text = "Yetkili Listesi : KAPALI"
modButton.BackgroundColor3 = Color3.fromRGB(18, 25, 55)
modButton.TextColor3 = Color3.new(1, 1, 1)
modButton.Font = Enum.Font.GothamBold
modButton.TextSize = 16
Instance.new("UICorner", modButton)
local G1 = 35601550
local G2 = 11475162
local function CreateAdvancedModList()
    if modGui then modGui:Destroy() end
    modGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
    modGui.Name = "AdvancedModList"
    modGui.ResetOnSpawn = false
    local Frame = Instance.new("Frame", modGui)
    Frame.Size = UDim2.new(0, 220, 0, 230)
    Frame.Position = UDim2.new(0, 10, 0.35, 0)
    Frame.BackgroundColor3 = Color3.fromRGB(10, 15, 35)
    Frame.BorderColor3 = Color3.fromRGB(0, 100, 255)
    Frame.BorderSizePixel = 2
    Frame.Draggable = true
    Frame.Active = true
    local Header = Instance.new("TextLabel", Frame)
    Header.Size = UDim2.new(1,0,0,32)
    Header.Text = "🛡️ YETKİLİ LİSTESİ"
    Header.TextColor3 = Color3.new(1,1,1)
    Header.BackgroundColor3 = Color3.fromRGB(0, 60, 150)
    Header.Font = Enum.Font.GothamBold
    Header.TextSize = 14
    local Scrolling = Instance.new("ScrollingFrame", Frame)
    Scrolling.Size = UDim2.new(1,0,1,-32)
    Scrolling.Position = UDim2.new(0,0,0,32)
    Scrolling.BackgroundTransparency = 1
    Scrolling.ScrollBarThickness = 4
    local UIList = Instance.new("UIListLayout", Scrolling)
    UIList.Padding = UDim.new(0, 3)
 
    local function GetStaffRank(player)
        if player == Players.LocalPlayer then return nil end
        local role1 = player:GetRoleInGroup(G1):lower()
        local role2 = player:GetRoleInGroup(G2):lower()
    
        if role2:find("owner") or role2:find("kurucu") then
            return player:GetRoleInGroup(G2), Color3.fromRGB(170,0,255)
        elseif role2:find("yönetici") or role2:find("admin") or role2:find("genel") then
            return player:GetRoleInGroup(G2), Color3.fromRGB(255,50,50)
        elseif role2:find("moderatör") then
            return player:GetRoleInGroup(G2), Color3.fromRGB(0, 200, 255)
        end
    
        if role1:find("öğrenci moderatör ekibi") or role1:find("öğrenci") then
            return "Stajyer Mod", Color3.fromRGB(0,255,120)
        elseif role1:find("moderatör") then
            return player:GetRoleInGroup(G1), Color3.fromRGB(0, 200, 255)
        end
        return nil
    end
 
    local function AddToList(player)
        if Scrolling:FindFirstChild(player.Name) then return end
        local role, color = GetStaffRank(player)
        if not role then return end
    
        local lbl = Instance.new("TextLabel", Scrolling)
        lbl.Name = player.Name
        lbl.Size = UDim2.new(1,0,0,34)
        lbl.BackgroundTransparency = 0.75
        lbl.BackgroundColor3 = Color3.fromRGB(15, 25, 50)
        lbl.TextColor3 = color
        lbl.Text = player.Name .. "\n[" .. role .. "]"
        lbl.Font = Enum.Font.GothamSemibold
        lbl.TextSize = 13.5
        lbl.TextWrapped = true
    end
 
    for _, p in Players:GetPlayers() do
        task.spawn(function() task.wait(0.8) AddToList(p) end)
    end
    Players.PlayerAdded:Connect(function(p) task.wait(1.5) AddToList(p) end)
    Players.PlayerRemoving:Connect(function(p)
        local l = Scrolling:FindFirstChild(p.Name)
        if l then l:Destroy() end
    end)
end
modButton.MouseButton1Click:Connect(function()
    if modGui then
        modGui:Destroy()
        modGui = nil
        modButton.Text = "Yetkili Listesi : KAPALI"
        modButton.BackgroundColor3 = Color3.fromRGB(18, 25, 55)
    else
        CreateAdvancedModList()
        modButton.Text = "Yetkili Listesi : AÇIK"
        modButton.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
    end
end)

-- ====================== ESP SEKME ======================
local espScroll = Instance.new("ScrollingFrame", p5)
espScroll.Size = UDim2.new(1, 0, 1, 0)
espScroll.BackgroundTransparency = 1
espScroll.ScrollBarThickness = 8
espScroll.ScrollBarImageColor3 = Color3.fromRGB(40, 90, 255)
espScroll.CanvasSize = UDim2.new(0, 0, 0, 650)
local uiList = Instance.new("UIListLayout", espScroll)
uiList.Padding = UDim.new(0, 8)
uiList.SortOrder = Enum.SortOrder.LayoutOrder

-- Vücut Kırmızı Chams ESP (Tekrar aç/kapa sorunsuz + Kendimizi göstermiyor)
local espButton = Instance.new("TextButton", espScroll)
espButton.Size = UDim2.new(0, 240, 0, 50)
espButton.Text = "ESP (Vücut Kırmızı) : KAPALI"
espButton.BackgroundColor3 = Color3.fromRGB(18, 25, 55)
espButton.TextColor3 = Color3.new(1, 1, 1)
espButton.Font = Enum.Font.GothamBold
espButton.TextSize = 16
Instance.new("UICorner", espButton)
local ESP_ENABLED = false
local highlights = {}
local playerConnections = {}
local function applyChams(character)
    if not character or highlights[character] then return end
    if character == Players.LocalPlayer.Character then return end
    local highlight = Instance.new("Highlight")
    highlight.Name = "HiraChams"
    highlight.Adornee = character
    highlight.FillColor = Color3.fromRGB(255, 0, 0)
    highlight.OutlineColor = Color3.fromRGB(255, 50, 50)
    highlight.FillTransparency = 0.4
    highlight.OutlineTransparency = 0
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    highlight.Parent = character
    highlights[character] = highlight
end
local function removeAllChams()
    for _, hl in pairs(highlights) do if hl then hl:Destroy() end end
    highlights = {}
end
local function applyCurrentChams()
    for _, plr in ipairs(Players:GetPlayers()) do
        if plr ~= Players.LocalPlayer and plr.Character then
            applyChams(plr.Character)
        end
    end
end
local function setupPlayerESP(player)
    if player == Players.LocalPlayer then return end
    if playerConnections[player] then return end
    local charAddedConn = player.CharacterAdded:Connect(function(char)
        if ESP_ENABLED then
            task.wait(0.5)
            applyChams(char)
        end
    end)
    playerConnections[player] = charAddedConn
end
local function setupAllESP()
    for _, player in ipairs(Players:GetPlayers()) do
        setupPlayerESP(player)
    end
    if not playerConnections["PlayerAdded"] then
        playerConnections["PlayerAdded"] = Players.PlayerAdded:Connect(function(player)
            task.wait(1)
            setupPlayerESP(player)
        end)
    end
end
espButton.MouseButton1Click:Connect(function()
    ESP_ENABLED = not ESP_ENABLED
    espButton.Text = "ESP (Vücut Kırmızı) : " .. (ESP_ENABLED and "AÇIK" or "KAPALI")
    espButton.BackgroundColor3 = ESP_ENABLED and Color3.fromRGB(0, 170, 0) or Color3.fromRGB(18, 25, 55)
    if ESP_ENABLED then
        setupAllESP()
        applyCurrentChams()
    else
        removeAllChams()
    end
end)

-- ESP İsim ve Can (tamamen aynı - bozulmadı)
local NAME_ESP_ENABLED = false
local nameTags = {}
local function applyNameESP(character)
    if not character or nameTags[character] then return end
    if character == Players.LocalPlayer.Character then return end
    local player = Players:GetPlayerFromCharacter(character)
    if not player then return end
    local head = character:FindFirstChild("Head")
    if not head then return end
    local billboard = Instance.new("BillboardGui")
    billboard.Name = "HiraNameESP"
    billboard.Adornee = head
    billboard.Size = UDim2.new(4, 0, 1.5, 0)
    billboard.StudsOffset = Vector3.new(0, 1.8, 0)
    billboard.AlwaysOnTop = true
    billboard.LightInfluence = 0
    local textLabel = Instance.new("TextLabel", billboard)
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.Text = player.Name
    textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    textLabel.TextStrokeTransparency = 0
    textLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
    textLabel.Font = Enum.Font.GothamBold
    textLabel.TextSize = 14
    textLabel.TextScaled = false
    billboard.Parent = character
    nameTags[character] = billboard
end
local function removeAllNameTags()
    for _, tag in pairs(nameTags) do if tag then tag:Destroy() end end
    nameTags = {}
end
local namePlayerConnections = {}
local function setupPlayerNameESP(player)
    if player == Players.LocalPlayer then return end
    if namePlayerConnections[player] then return end
    local charAddedConn = player.CharacterAdded:Connect(function(char)
        if NAME_ESP_ENABLED then
            task.wait(0.5)
            applyNameESP(char)
        end
    end)
    namePlayerConnections[player] = charAddedConn
end
local function setupAllNameESP()
    for _, player in ipairs(Players:GetPlayers()) do
        setupPlayerNameESP(player)
    end
    if not namePlayerConnections["PlayerAdded"] then
        namePlayerConnections["PlayerAdded"] = Players.PlayerAdded:Connect(function(player)
            task.wait(1)
            setupPlayerNameESP(player)
        end)
    end
end
local function applyCurrentNameESP()
    for _, plr in ipairs(Players:GetPlayers()) do
        if plr ~= Players.LocalPlayer and plr.Character then
            applyNameESP(plr.Character)
        end
    end
end
local nameEspButton = Instance.new("TextButton", espScroll)
nameEspButton.Size = UDim2.new(0, 240, 0, 50)
nameEspButton.Text = "ESP İsim : KAPALI"
nameEspButton.BackgroundColor3 = Color3.fromRGB(18, 25, 55)
nameEspButton.TextColor3 = Color3.new(1, 1, 1)
nameEspButton.Font = Enum.Font.GothamBold
nameEspButton.TextSize = 16
Instance.new("UICorner", nameEspButton)
nameEspButton.MouseButton1Click:Connect(function()
    NAME_ESP_ENABLED = not NAME_ESP_ENABLED
    nameEspButton.Text = "ESP İsim : " .. (NAME_ESP_ENABLED and "AÇIK" or "KAPALI")
    nameEspButton.BackgroundColor3 = NAME_ESP_ENABLED and Color3.fromRGB(0, 170, 0) or Color3.fromRGB(18, 25, 55)
    if NAME_ESP_ENABLED then
        setupAllNameESP()
        applyCurrentNameESP()
    else
        removeAllNameTags()
    end
end)

local CAN_ESP_ENABLED = false
local canTags = {}
local function applyCanESP(character)
    if not character or canTags[character] then return end
    if character == Players.LocalPlayer.Character then return end
    local hum = character:FindFirstChildOfClass("Humanoid")
    local head = character:FindFirstChild("Head")
    if not hum or not head then return end
    local billboard = Instance.new("BillboardGui")
    billboard.Name = "HiraCanESP"
    billboard.Adornee = head
    billboard.Size = UDim2.new(4, 0, 1.2, 0)
    billboard.StudsOffset = Vector3.new(0, 4.5, 0)
    billboard.AlwaysOnTop = true
    billboard.LightInfluence = 0
    local textLabel = Instance.new("TextLabel", billboard)
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.TextColor3 = Color3.fromRGB(0, 255, 100)
    textLabel.TextStrokeTransparency = 0
    textLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
    textLabel.Font = Enum.Font.GothamBold
    textLabel.TextSize = 13
    textLabel.TextScaled = false
    local updateHealth = function()
        textLabel.Text = "❤️ " .. math.floor(hum.Health) .. "/" .. math.floor(hum.MaxHealth)
    end
    updateHealth()
    local healthConn = hum.HealthChanged:Connect(updateHealth)
    billboard.Parent = character
    canTags[character] = {billboard = billboard, conn = healthConn}
end
local function removeAllCanTags()
    for _, data in pairs(canTags) do
        if data.conn then data.conn:Disconnect() end
        if data.billboard then data.billboard:Destroy() end
    end
    canTags = {}
end
local canPlayerConnections = {}
local function setupPlayerCanESP(player)
    if player == Players.LocalPlayer then return end
    if canPlayerConnections[player] then return end
    local charAddedConn = player.CharacterAdded:Connect(function(char)
        if CAN_ESP_ENABLED then
            task.wait(0.5)
            applyCanESP(char)
        end
    end)
    canPlayerConnections[player] = charAddedConn
end
local function setupAllCanESP()
    for _, player in ipairs(Players:GetPlayers()) do
        setupPlayerCanESP(player)
    end
    if not canPlayerConnections["PlayerAdded"] then
        canPlayerConnections["PlayerAdded"] = Players.PlayerAdded:Connect(function(player)
            task.wait(1)
            setupPlayerCanESP(player)
        end)
    end
end
local function applyCurrentCanESP()
    for _, plr in ipairs(Players:GetPlayers()) do
        if plr ~= Players.LocalPlayer and plr.Character then
            applyCanESP(plr.Character)
        end
    end
end
local canEspButton = Instance.new("TextButton", espScroll)
canEspButton.Size = UDim2.new(0, 240, 0, 50)
canEspButton.Text = "ESP Can (Sağlık) : KAPALI"
canEspButton.BackgroundColor3 = Color3.fromRGB(18, 25, 55)
canEspButton.TextColor3 = Color3.new(1, 1, 1)
canEspButton.Font = Enum.Font.GothamBold
canEspButton.TextSize = 16
Instance.new("UICorner", canEspButton)
canEspButton.MouseButton1Click:Connect(function()
    CAN_ESP_ENABLED = not CAN_ESP_ENABLED
    canEspButton.Text = "ESP Can (Sağlık) : " .. (CAN_ESP_ENABLED and "AÇIK" or "KAPALI")
    canEspButton.BackgroundColor3 = CAN_ESP_ENABLED and Color3.fromRGB(0, 170, 0) or Color3.fromRGB(18, 25, 55)
    if CAN_ESP_ENABLED then
        setupAllCanESP()
        applyCurrentCanESP()
    else
        removeAllCanTags()
    end
end)

-- ====================== AİMBOT + HİTBOX SEKME (FOV DÜZELDİ + KİLİT GÖSTERGESİ + ÖLÜMDE HITBOX TEMİZLEME + AYRI TEAM CHECK) ======================
local AIMBOT_ENABLED = false
local HITBOX_ENABLED = false
local SHOW_FOV = false
local FOV_RADIUS = 150
local AIMBOT_SMOOTHNESS = 0.18
local AIM_PART = "Head"
local HITBOX_SIZE = 10
local AIMBOT_TEAM_CHECK = true   -- Ayrı team check (aimbot için)
local HITBOX_TEAM_CHECK = true   -- Ayrı team check (hitbox için)
local fovCircleDrawing = nil
local aimbotLoop = nil
local aimLockLabel = nil

-- FOV DAİRESİ (Drawing API ile %100 görünür hale getirildi + her frame güncelleniyor)
local function createFOV()
    if fovCircleDrawing then fovCircleDrawing:Remove() end
    fovCircleDrawing = Drawing.new("Circle")
    fovCircleDrawing.Thickness = 4
    fovCircleDrawing.Color = Color3.fromRGB(255, 0, 0)
    fovCircleDrawing.Transparency = 1
    fovCircleDrawing.Filled = false
    fovCircleDrawing.NumSides = 100
end

local function updateFOV()
    if not fovCircleDrawing then return end
    local cam = workspace.CurrentCamera
    local center = Vector2.new(cam.ViewportSize.X / 2, cam.ViewportSize.Y / 2)
    fovCircleDrawing.Position = center
    fovCircleDrawing.Radius = FOV_RADIUS
    fovCircleDrawing.Visible = SHOW_FOV and AIMBOT_ENABLED
end

-- FOV her frame zorla güncelleniyor (artık ekranda kesinlikle görünüyor)
local globalFOVUpdater = RunService.RenderStepped:Connect(updateFOV)

-- Aimbot kilitleme göstergesi
local function createAimLockLabel()
    aimLockLabel = Instance.new("TextLabel", gui)
    aimLockLabel.Size = UDim2.new(0, 220, 0, 40)
    aimLockLabel.Position = UDim2.new(0.5, -110, 0, 80)
    aimLockLabel.BackgroundTransparency = 0.4
    aimLockLabel.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
    aimLockLabel.TextColor3 = Color3.new(1,1,1)
    aimLockLabel.Font = Enum.Font.GothamBold
    aimLockLabel.TextSize = 18
    aimLockLabel.Text = "AİMBOT KİLİTLENDİ"
    aimLockLabel.Visible = false
    Instance.new("UICorner", aimLockLabel)
end

local function getClosestTarget()
    local camera = workspace.CurrentCamera
    local mouse = Players.LocalPlayer:GetMouse()
    local closest = nil
    local minDist = FOV_RADIUS
    for _, plr in ipairs(Players:GetPlayers()) do
        if plr ~= Players.LocalPlayer and plr.Character then
            -- AİMBOT TEAM CHECK
            if AIMBOT_TEAM_CHECK and plr.Team == Players.LocalPlayer.Team then continue end
            local targetPart = plr.Character:FindFirstChild(AIM_PART)
            if targetPart then
                local partPos = targetPart.Position
                local screenPos, visible = camera:WorldToViewportPoint(partPos)
                if visible and screenPos.Z > 0 then
                    local dist = (Vector2.new(screenPos.X, screenPos.Y) - Vector2.new(mouse.X, mouse.Y)).Magnitude
                    if dist < minDist then
                        minDist = dist
                        closest = targetPart
                    end
                end
            end
        end
    end
    return closest
end

local function startAimbot()
    if aimbotLoop then return end
    aimbotLoop = RunService.RenderStepped:Connect(function()
        if not AIMBOT_ENABLED then return end
        updateFOV()
        
        local rightClick = UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)
        if not rightClick then
            if aimLockLabel then aimLockLabel.Visible = false end
            return
        end
        
        local targetPart = getClosestTarget()
        if targetPart and targetPart.Parent and targetPart.Parent:FindFirstChildOfClass("Humanoid") and targetPart.Parent:FindFirstChildOfClass("Humanoid").Health > 0 then
            local camera = workspace.CurrentCamera
            local targetPos = targetPart.Position
            local velocity = targetPart.Velocity or Vector3.new(0,0,0)
            local predictedPos = targetPos + velocity * 0.035
            local targetCFrame = CFrame.lookAt(camera.CFrame.Position, predictedPos)
            camera.CFrame = camera.CFrame:Lerp(targetCFrame, AIMBOT_SMOOTHNESS)
            
            if aimLockLabel then
                aimLockLabel.Visible = true
                aimLockLabel.Text = "AİMBOT KİLİTLENDİ → " .. targetPart.Parent.Name
            end
        else
            if aimLockLabel then aimLockLabel.Visible = false end
        end
    end)
end

local function stopAimbot()
    if aimbotLoop then aimbotLoop:Disconnect() aimbotLoop = nil end
    if fovCircleDrawing then fovCircleDrawing.Visible = false end
    if aimLockLabel then aimLockLabel.Visible = false end
end

-- HITBOX (tüm server + respawn + ÖLÜMDE TEMİZLEME)
local originalHitboxSizes = {}
local originalHitboxColors = {}
local hitboxConnections = {}

local function cleanHitboxFromCharacter(character)
    if not character then return end
    local head = character:FindFirstChild("Head")
    if not head then return end
    local plr = Players:GetPlayerFromCharacter(character)
    if plr and originalHitboxSizes[plr] then
        head.Size = originalHitboxSizes[plr]
        head.Color = originalHitboxColors[plr]
        head.Transparency = 0
        head.CanCollide = true
        head.Massless = false
    end
end

local function applyHitboxToCharacter(character, state)
    if not character then return end
    local head = character:FindFirstChild("Head")
    if not head then return end
    local plr = Players:GetPlayerFromCharacter(character)
    if not plr or plr == Players.LocalPlayer then return end
    
    -- HITBOX TEAM CHECK
    if HITBOX_TEAM_CHECK and plr.Team == Players.LocalPlayer.Team then return end
    
    if state then
        if not originalHitboxSizes[plr] then
            originalHitboxSizes[plr] = head.Size
            originalHitboxColors[plr] = head.Color
        end
        head.Size = Vector3.new(HITBOX_SIZE, HITBOX_SIZE, HITBOX_SIZE)
        head.Transparency = 0.3
        head.Color = Color3.fromRGB(255, 0, 0)
        head.CanCollide = false
        head.Massless = true
    else
        cleanHitboxFromCharacter(character)
    end
end

local function toggleHitbox(state)
    HITBOX_ENABLED = state
    -- Mevcut herkese uygula
    for _, plr in ipairs(Players:GetPlayers()) do
        if plr ~= Players.LocalPlayer and plr.Character then
            applyHitboxToCharacter(plr.Character, state)
        end
    end
    -- Her oyuncunun CharacterAdded ve CharacterRemoving olaylarını kur
    for _, plr in ipairs(Players:GetPlayers()) do
        if plr ~= Players.LocalPlayer and not hitboxConnections[plr] then
            local addedConn = plr.CharacterAdded:Connect(function(char)
                task.wait(0.3)
                if HITBOX_ENABLED then
                    applyHitboxToCharacter(char, true)
                end
            end)
            local removedConn = plr.CharacterRemoving:Connect(function(char)
                cleanHitboxFromCharacter(char)
            end)
            hitboxConnections[plr] = {added = addedConn, removed = removedConn}
        end
    end
end

-- Aimbot sayfası (daha büyük butonlar)
local aimScroll = Instance.new("ScrollingFrame", p6)
aimScroll.Size = UDim2.new(1, 0, 1, 0)
aimScroll.BackgroundTransparency = 1
aimScroll.ScrollBarThickness = 8
aimScroll.ScrollBarImageColor3 = Color3.fromRGB(40, 90, 255)
aimScroll.CanvasSize = UDim2.new(0, 0, 0, 580)
local aimList = Instance.new("UIListLayout", aimScroll)
aimList.Padding = UDim.new(0, 12)
aimList.SortOrder = Enum.SortOrder.LayoutOrder

local aimHeader = Instance.new("TextLabel", aimScroll)
aimHeader.Size = UDim2.new(1, 0, 0, 35)
aimHeader.Text = "🔫 Aimbot + Hitbox"
aimHeader.TextColor3 = Color3.fromRGB(0, 170, 255)
aimHeader.BackgroundTransparency = 1
aimHeader.Font = Enum.Font.GothamBold
aimHeader.TextSize = 20
aimHeader.TextXAlignment = Enum.TextXAlignment.Left

local aimbotButton = Instance.new("TextButton", aimScroll)
aimbotButton.Size = UDim2.new(0, 260, 0, 55)
aimbotButton.Text = "Aimbot : KAPALI"
aimbotButton.BackgroundColor3 = Color3.fromRGB(18, 25, 55)
aimbotButton.TextColor3 = Color3.new(1, 1, 1)
aimbotButton.Font = Enum.Font.GothamBold
aimbotButton.TextSize = 17
Instance.new("UICorner", aimbotButton)
aimbotButton.MouseButton1Click:Connect(function()
    AIMBOT_ENABLED = not AIMBOT_ENABLED
    aimbotButton.Text = "Aimbot : " .. (AIMBOT_ENABLED and "AÇIK" or "KAPALI")
    aimbotButton.BackgroundColor3 = AIMBOT_ENABLED and Color3.fromRGB(0, 170, 0) or Color3.fromRGB(18, 25, 55)
    if AIMBOT_ENABLED then startAimbot() else stopAimbot() end
end)

local fovButton = Instance.new("TextButton", aimScroll)
fovButton.Size = UDim2.new(0, 260, 0, 55)
fovButton.Text = "Aimbot FOV : KAPALI"
fovButton.BackgroundColor3 = Color3.fromRGB(18, 25, 55)
fovButton.TextColor3 = Color3.new(1, 1, 1)
fovButton.Font = Enum.Font.GothamBold
fovButton.TextSize = 17
Instance.new("UICorner", fovButton)
fovButton.MouseButton1Click:Connect(function()
    if not AIMBOT_ENABLED then return end
    SHOW_FOV = not SHOW_FOV
    fovButton.Text = "Aimbot FOV : " .. (SHOW_FOV and "AÇIK" or "KAPALI")
    fovButton.BackgroundColor3 = SHOW_FOV and Color3.fromRGB(0, 170, 0) or Color3.fromRGB(18, 25, 55)
end)

-- Diğer aimbot ayarları (boyutlar büyütüldü)
local partLabel = Instance.new("TextLabel", aimScroll); partLabel.Size = UDim2.new(0, 260, 0, 30); partLabel.Text = "Aimbot Hedef Parçası"; partLabel.TextColor3 = Color3.new(1,1,1); partLabel.BackgroundTransparency = 1; partLabel.Font = Enum.Font.GothamSemibold; partLabel.TextSize = 15; partLabel.TextXAlignment = Enum.TextXAlignment.Left
local partDropdown = Instance.new("TextButton", aimScroll); partDropdown.Size = UDim2.new(0, 260, 0, 45); partDropdown.Text = "Hedef: " .. AIM_PART; partDropdown.BackgroundColor3 = Color3.fromRGB(15, 20, 40); partDropdown.TextColor3 = Color3.new(1, 1, 1); partDropdown.Font = Enum.Font.GothamBold; partDropdown.TextSize = 17; Instance.new("UICorner", partDropdown)
local parts = {"Head", "Torso", "HumanoidRootPart", "UpperTorso", "LowerTorso"}
local currentIndex = 1
partDropdown.MouseButton1Click:Connect(function()
    currentIndex = (currentIndex % #parts) + 1
    AIM_PART = parts[currentIndex]
    partDropdown.Text = "Hedef: " .. AIM_PART
end)

local fovSizeLabel = Instance.new("TextLabel", aimScroll); fovSizeLabel.Size = UDim2.new(0, 260, 0, 30); fovSizeLabel.Text = "Aimbot FOV Boyutu (150 = varsayılan)"; fovSizeLabel.TextColor3 = Color3.new(1,1,1); fovSizeLabel.BackgroundTransparency = 1; fovSizeLabel.Font = Enum.Font.GothamSemibold; fovSizeLabel.TextSize = 15; fovSizeLabel.TextXAlignment = Enum.TextXAlignment.Left
local fovSizeBox = Instance.new("TextBox", aimScroll); fovSizeBox.Size = UDim2.new(0, 260, 0, 45); fovSizeBox.Text = tostring(FOV_RADIUS); fovSizeBox.BackgroundColor3 = Color3.fromRGB(15, 20, 40); fovSizeBox.TextColor3 = Color3.new(1, 1, 1); fovSizeBox.Font = Enum.Font.GothamBold; fovSizeBox.TextSize = 17; Instance.new("UICorner", fovSizeBox)
fovSizeBox.FocusLost:Connect(function()
    local num = tonumber(fovSizeBox.Text)
    if num and num > 50 and num < 500 then FOV_RADIUS = num end
    fovSizeBox.Text = tostring(FOV_RADIUS)
end)

local hitboxButton = Instance.new("TextButton", aimScroll); hitboxButton.Size = UDim2.new(0, 260, 0, 55); hitboxButton.Text = "Hitbox (Kafa) : KAPALI"; hitboxButton.BackgroundColor3 = Color3.fromRGB(18, 25, 55); hitboxButton.TextColor3 = Color3.new(1, 1, 1); hitboxButton.Font = Enum.Font.GothamBold; hitboxButton.TextSize = 17; Instance.new("UICorner", hitboxButton)
hitboxButton.MouseButton1Click:Connect(function()
    HITBOX_ENABLED = not HITBOX_ENABLED
    hitboxButton.Text = "Hitbox (Kafa) : " .. (HITBOX_ENABLED and "AÇIK" or "KAPALI")
    hitboxButton.BackgroundColor3 = HITBOX_ENABLED and Color3.fromRGB(0, 170, 0) or Color3.fromRGB(18, 25, 55)
    toggleHitbox(HITBOX_ENABLED)
end)

local sizeLabel = Instance.new("TextLabel", aimScroll); sizeLabel.Size = UDim2.new(0, 260, 0, 30); sizeLabel.Text = "Hitbox Boyutu (10 = varsayılan)"; sizeLabel.TextColor3 = Color3.new(1,1,1); sizeLabel.BackgroundTransparency = 1; sizeLabel.Font = Enum.Font.GothamSemibold; sizeLabel.TextSize = 15; sizeLabel.TextXAlignment = Enum.TextXAlignment.Left
local sizeBox = Instance.new("TextBox", aimScroll); sizeBox.Size = UDim2.new(0, 260, 0, 45); sizeBox.Text = tostring(HITBOX_SIZE); sizeBox.BackgroundColor3 = Color3.fromRGB(15, 20, 40); sizeBox.TextColor3 = Color3.new(1, 1, 1); sizeBox.Font = Enum.Font.GothamBold; sizeBox.TextSize = 17; Instance.new("UICorner", sizeBox)
sizeBox.FocusLost:Connect(function()
    local num = tonumber(sizeBox.Text)
    if num and num > 0 then HITBOX_SIZE = num end
    sizeBox.Text = tostring(HITBOX_SIZE)
    if HITBOX_ENABLED then toggleHitbox(false); task.wait(0.1); toggleHitbox(true) end
end)

-- Ayrı Team Check butonları (aimbot ve hitbox için)
local aimTeamLabel = Instance.new("TextLabel", aimScroll)
aimTeamLabel.Size = UDim2.new(0, 260, 0, 30)
aimTeamLabel.Text = "Aimbot Team Check"
aimTeamLabel.TextColor3 = Color3.new(1,1,1)
aimTeamLabel.BackgroundTransparency = 1
aimTeamLabel.Font = Enum.Font.GothamSemibold
aimTeamLabel.TextSize = 15
aimTeamLabel.TextXAlignment = Enum.TextXAlignment.Left

local aimTeamButton = Instance.new("TextButton", aimScroll)
aimTeamButton.Size = UDim2.new(0, 260, 0, 55)
aimTeamButton.Text = "Aimbot Team Check : AÇIK"
aimTeamButton.BackgroundColor3 = Color3.fromRGB(18, 25, 55)
aimTeamButton.TextColor3 = Color3.new(1, 1, 1)
aimTeamButton.Font = Enum.Font.GothamBold
aimTeamButton.TextSize = 17
Instance.new("UICorner", aimTeamButton)
aimTeamButton.MouseButton1Click:Connect(function()
    AIMBOT_TEAM_CHECK = not AIMBOT_TEAM_CHECK
    aimTeamButton.Text = "Aimbot Team Check : " .. (AIMBOT_TEAM_CHECK and "AÇIK" or "KAPALI")
    aimTeamButton.BackgroundColor3 = AIMBOT_TEAM_CHECK and Color3.fromRGB(0, 170, 0) or Color3.fromRGB(18, 25, 55)
end)

local hitTeamLabel = Instance.new("TextLabel", aimScroll)
hitTeamLabel.Size = UDim2.new(0, 260, 0, 30)
hitTeamLabel.Text = "Hitbox Team Check"
hitTeamLabel.TextColor3 = Color3.new(1,1,1)
hitTeamLabel.BackgroundTransparency = 1
hitTeamLabel.Font = Enum.Font.GothamSemibold
hitTeamLabel.TextSize = 15
hitTeamLabel.TextXAlignment = Enum.TextXAlignment.Left

local hitTeamButton = Instance.new("TextButton", aimScroll)
hitTeamButton.Size = UDim2.new(0, 260, 0, 55)
hitTeamButton.Text = "Hitbox Team Check : AÇIK"
hitTeamButton.BackgroundColor3 = Color3.fromRGB(18, 25, 55)
hitTeamButton.TextColor3 = Color3.new(1, 1, 1)
hitTeamButton.Font = Enum.Font.GothamBold
hitTeamButton.TextSize = 17
Instance.new("UICorner", hitTeamButton)
hitTeamButton.MouseButton1Click:Connect(function()
    HITBOX_TEAM_CHECK = not HITBOX_TEAM_CHECK
    hitTeamButton.Text = "Hitbox Team Check : " .. (HITBOX_TEAM_CHECK and "AÇIK" or "KAPALI")
    hitTeamButton.BackgroundColor3 = HITBOX_TEAM_CHECK and Color3.fromRGB(0, 170, 0) or Color3.fromRGB(18, 25, 55)
end)

createFOV()
createAimLockLabel()

-- ====================== ADONİS BYPASS SEKME ======================
local adonisHeader = Instance.new("TextLabel", p7)
adonisHeader.Size = UDim2.new(0, 400, 0, 35)
adonisHeader.Position = UDim2.new(0, 20, 0, 15)
adonisHeader.Text = "🛡️ Adonis Bypass"
adonisHeader.TextColor3 = Color3.fromRGB(0, 170, 255)
adonisHeader.BackgroundTransparency = 1
adonisHeader.Font = Enum.Font.GothamBold
adonisHeader.TextSize = 20
adonisHeader.TextXAlignment = Enum.TextXAlignment.Left
local adonisButton = Instance.new("TextButton", p7)
adonisButton.Size = UDim2.new(0, 260, 0, 55)
adonisButton.Position = UDim2.new(0, 20, 0, 70)
adonisButton.Text = "Adonis Bypass : KAPALI"
adonisButton.BackgroundColor3 = Color3.fromRGB(18, 25, 55)
adonisButton.TextColor3 = Color3.new(1, 1, 1)
adonisButton.Font = Enum.Font.GothamBold
adonisButton.TextSize = 17
Instance.new("UICorner", adonisButton)
local ADONIS_BYPASS_ENABLED = false
local function applyAdonisBypass()
    local g = getinfo or debug.getinfo
    local d = false
    local h = {}
    local x, y
    setthreadidentity(2)
    for i, v in getgc(true) do
        if typeof(v) == "table" then
            local a = rawget(v, "Detected")
            local b = rawget(v, "Kill")
            if typeof(a) == "function" and not x then
                x = a
                local o; o = hookfunction(x, function(c, f, n)
                    if c ~= "_" then
                        if d then warn(`Adonis AntiCheat flagged\nMethod: {c}\nInfo: {f}`) end
                    end
                    return true
                end)
                table.insert(h, x)
            end
            if rawget(v, "Variables") and rawget(v, "Process") and typeof(b) == "function" and not y then
                y = b
                local o; o = hookfunction(y, function(f)
                    if d then warn(`Adonis AntiCheat tried to kill (fallback): {f}`) end
                end)
                table.insert(h, y)
            end
        end
    end
    local o; o = hookfunction(getrenv().debug.info, newcclosure(function(...)
        local a, f = ...
        if x and a == x then
            if d then warn(`zins | adonis bypassed`) end
            return coroutine.yield(coroutine.running())
        end
        return o(...)
    end))
    setthreadidentity(7)
    print("✅ Adonis Bypass (Gelişmiş) Aktif!")
end
adonisButton.MouseButton1Click:Connect(function()
    ADONIS_BYPASS_ENABLED = not ADONIS_BYPASS_ENABLED
    adonisButton.Text = "Adonis Bypass : " .. (ADONIS_BYPASS_ENABLED and "AÇIK" or "KAPALI")
    adonisButton.BackgroundColor3 = ADONIS_BYPASS_ENABLED and Color3.fromRGB(0, 170, 0) or Color3.fromRGB(18, 25, 55)
    if ADONIS_BYPASS_ENABLED then applyAdonisBypass() end
end)

-- ====================== YENİ BTÖOLS SEKME ======================
local btoolsHeader = Instance.new("TextLabel", p8)
btoolsHeader.Size = UDim2.new(0, 400, 0, 40)
btoolsHeader.Position = UDim2.new(0, 20, 0, 15)
btoolsHeader.Text = "🛠️ BTools (Ultra Agresif Delete)"
btoolsHeader.TextColor3 = Color3.fromRGB(0, 170, 255)
btoolsHeader.BackgroundTransparency = 1
btoolsHeader.Font = Enum.Font.GothamBold
btoolsHeader.TextSize = 20
btoolsHeader.TextXAlignment = Enum.TextXAlignment.Left

local warningLabel = Instance.new("TextLabel", p8)
warningLabel.Size = UDim2.new(0, 520, 0, 50)
warningLabel.Position = UDim2.new(0, 20, 0, 65)
warningLabel.Text = "⚠️ BTools kullanmadan önce Adonis Bypass'i AÇIK yapın!"
warningLabel.TextColor3 = Color3.fromRGB(255, 50, 50)
warningLabel.BackgroundTransparency = 1
warningLabel.Font = Enum.Font.GothamBold
warningLabel.TextSize = 17
warningLabel.TextXAlignment = Enum.TextXAlignment.Left

local btoolsButton = Instance.new("TextButton", p8)
btoolsButton.Size = UDim2.new(0, 260, 0, 55)
btoolsButton.Position = UDim2.new(0, 20, 0, 130)
btoolsButton.Text = "BTools : KAPALI"
btoolsButton.BackgroundColor3 = Color3.fromRGB(18, 25, 55)
btoolsButton.TextColor3 = Color3.new(1, 1, 1)
btoolsButton.Font = Enum.Font.GothamBold
btoolsButton.TextSize = 17
Instance.new("UICorner", btoolsButton)

local BTOOLS_ENABLED = false
local btoolsScriptCode = [[
-- === ADANA ROLEPLAY - POLİS VE GRİ PLATFORM SİLEN EN AGRESİF VERSİYON ===
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local camera = workspace.CurrentCamera
local backpack = player:WaitForChild("Backpack")
print(" Polis + Gri Platform Özel Ultra Agresif BTools yükleniyor...")

-- Anti-Kick
local mt = getrawmetatable(game)
local old = mt.namecall
setreadonly(mt, false)
mt.namecall = newcclosure(function(self, ...)
    if getnamecallmethod() == "Kick" then return end
    return old(self, ...)
end)
setreadonly(mt, true)

-- Eski tool'ları temizle
for _, v in pairs(backpack:GetChildren()) do
    if v:IsA("Tool") or v:IsA("HopperBin") then v:Destroy() end
end

local function isReallyGround(obj)
    if not obj then return false end
    local n = obj.Name:lower()
    return n:find("baseplate") or n:find("terrain") or n:find("zemin") or n:find("spawn")
end

local tool = Instance.new("Tool")
tool.Name = "[BT] ULTRA AGRESİF"
tool.RequiresHandle = false
tool.Parent = backpack

local handle = Instance.new("Part")
handle.Name = "Handle"
handle.Transparency = 1
handle.Size = Vector3.new(0.2,0.2,0.2)
handle.Parent = tool

tool.Activated:Connect(function()
    local target = mouse.Target
    if not target then
        local ray = Ray.new(camera.CFrame.Position, mouse.UnitRay.Direction * 1500)
        target = workspace:FindPartOnRayWithIgnoreList(ray, {player.Character})
    end
    if not target then return end
    local root = target
    for i = 1, 40 do
        if not root or root == workspace then break end
        local name = root.Name:lower()
        if root:IsA("Model") or root:IsA("Folder") then
            if name:find("police") or name:find("polis") or name:find("station") or name:find("platform") or name:find("wall") or name:find("building") or name:find("map") or #root:GetDescendants() > 20 then
                break
            end
        end
        root = root.Parent
    end
    if root == target then
        root = target
        for i = 1, 8 do
            if not root.Parent or root.Parent == workspace then break end
            root = root.Parent
        end
    end
    if root == workspace then print(" Workspace korundu!") return end
    pcall(function()
        local count = 0
        for _, v in ipairs(root:GetDescendants()) do
            if v:IsA("BasePart") or v:IsA("UnionOperation") or v:IsA("MeshPart") then
                if not isReallyGround(v) then
                    v:Destroy()
                    count = count + 1
                end
            end
        end
        root:Destroy()
        print(" AGRESİF SİLİNDİ → " .. root.Name .. " (" .. count .. " parça)")
    end)
end)

-- Yedek
for i = 1, 5 do
    local bin = Instance.new("HopperBin")
    bin.BinType = i
    bin.Parent = backpack
end
print(" ULTRA AGRESİF DELETE yüklendi!")
print("Polis binası ve gri platformlara tıkla, silmesi lazım.")
]]

btoolsButton.MouseButton1Click:Connect(function()
    BTOOLS_ENABLED = not BTOOLS_ENABLED
    btoolsButton.Text = "BTools : " .. (BTOOLS_ENABLED and "AÇIK" or "KAPALI")
    btoolsButton.BackgroundColor3 = BTOOLS_ENABLED and Color3.fromRGB(0, 170, 0) or Color3.fromRGB(18, 25, 55)
    
    if BTOOLS_ENABLED then
        loadstring(btoolsScriptCode)()
    else
        -- Temizle
        local backpack = Players.LocalPlayer:WaitForChild("Backpack")
        for _, v in ipairs(backpack:GetChildren()) do
            if v.Name == "[BT] ULTRA AGRESİF" or v:IsA("HopperBin") then
                v:Destroy()
            end
        end
        print("BTools kapatıldı ve temizlendi.")
    end
end)

-- Hitbox ve ESP'ler için respawn desteği
Players.PlayerAdded:Connect(function(plr)
    plr.CharacterAdded:Connect(function(char)
        task.wait(0.5)
        if HITBOX_ENABLED then applyHitboxToCharacter(char, true) end
        if ESP_ENABLED then applyChams(char) end
        if NAME_ESP_ENABLED then applyNameESP(char) end
        if CAN_ESP_ENABLED then applyCanESP(char) end
    end)
end)

-- INFINITE YIELD
local iy = Instance.new("TextButton", p4)
iy.Size = UDim2.new(0, 240, 0, 50)
iy.Position = UDim2.new(0, 20, 0, 20)
iy.Text = "Infinite Yield Ac"
iy.BackgroundColor3 = Color3.fromRGB(18, 25, 55)
iy.TextColor3 = Color3.new(1, 1, 1)
iy.Font = Enum.Font.GothamBold
iy.TextSize = 16
Instance.new("UICorner", iy)
iy.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

-- SHIFT ile animasyonlu menü kapatma (eski hali korundu)
local menuOpen = true
local originalMainPosition = main.Position
local menuTweenInfo = TweenInfo.new(0.45, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.LeftShift or input.KeyCode == Enum.KeyCode.RightShift then
        menuOpen = not menuOpen
        if menuOpen then
            main.Visible = true
            local tween = TweenService:Create(main, menuTweenInfo, {Position = originalMainPosition})
            tween:Play()
        else
            local tween = TweenService:Create(main, menuTweenInfo, {Position = UDim2.new(0.5, -1500, 0.5, -210)})
            tween:Play()
            tween.Completed:Connect(function() if not menuOpen then main.Visible = false end end)
        end
    end
end)

print("✅ HiraCode 2026 + BTools Sekmesi Eklendi + Menü Büyütüldü ve Simetrik Yapıldı + FOV + Aimbot Kilitleme Göstergesi Tamamen Düzeltildi + HITBOX ÖLÜMDE TEMİZ + AYRI TEAM CHECK EKLENDİ!")
