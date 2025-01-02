-- Tạo một GUI để hiển thị thông báo trên màn hình
local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Parent = player:WaitForChild("PlayerGui")

-- Tạo khung chứa thông báo
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 600, 0, 50) -- Tăng chiều rộng để chứa nội dung dài
frame.Position = UDim2.new(0.5, -300, 0, 10) -- Đặt lên phía trên màn hình
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
frame.BackgroundTransparency = 0.5
frame.Parent = gui

-- Tạo nhãn để hiển thị nội dung thông báo
local label = Instance.new("TextLabel")
label.Size = UDim2.new(1, 0, 1, 0)
label.Position = UDim2.new(0, 0, 0, 0)
label.BackgroundTransparency = 1
label.Text = "Thông Báo: Nhớ Mua Acc Tại DUCDESIGNER.SITE Nha" -- Giữ một dòng
label.TextColor3 = Color3.fromRGB(255, 255, 0) -- Màu vàng cho chữ
label.TextScaled = true
label.Font = Enum.Font.SourceSansBold
label.Parent = frame

-- Chạy script liên quan đến Blox Fruit
local success2, err2 = pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/simple-hubs/contents/refs/heads/main/bloxfruit-kaitan-main.lua"))()
end)

if not success2 then
    warn("Không thể chạy script Blox Fruit: ", err2)
end
