-- Büyük menü GUI
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- ScreenGui (ana kapsayıcı)
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "BuyukMenu"
screenGui.Parent = playerGui

-- Ana çerçeve
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 700, 0, 450)          -- genişlik 700, yükseklik 450 piksel
frame.Position = UDim2.new(0.5, -350, 0.5, -225) -- ekranın tam ortası
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Parent = screenGui

-- Başlık: Roberto racon bitmişdir
local baslik = Instance.new("TextLabel")
baslik.Size = UDim2.new(1, 0, 0, 100)
baslik.Position = UDim2.new(0, 0, 0, 30)
baslik.BackgroundTransparency = 1
baslik.Text = "Roberto racon bitmişdir"
baslik.TextColor3 = Color3.fromRGB(255, 60, 60)
baslik.Font = Enum.Font.GothamBold
baslik.TextSize = 48
baslik.TextScaled = true
baslik.Parent = frame

-- İlk IP satırı
local ip1 = Instance.new("TextLabel")
ip1.Size = UDim2.new(1, 0, 0, 70)
ip1.Position = UDim2.new(0, 0, 0, 160)
ip1.BackgroundTransparency = 1
ip1.Text = "mert ip-151.250.210.55"
ip1.TextColor3 = Color3.fromRGB(255, 255, 255)
ip1.Font = Enum.Font.SourceSansBold
ip1.TextSize = 34
ip1.TextScaled = true
ip1.Parent = frame

-- İkinci IP satırı
local ip2 = Instance.new("TextLabel")
ip2.Size = UDim2.new(1, 0, 0, 70)
ip2.Position = UDim2.new(0, 0, 0, 250)
ip2.BackgroundTransparency = 1
ip2.Text = "ertan ip-78.190.11.26"
ip2.TextColor3 = Color3.fromRGB(255, 255, 255)
ip2.Font = Enum.Font.SourceSansBold
ip2.TextSize = 34
ip2.TextScaled = true
ip2.Parent = frame


kapat.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)
