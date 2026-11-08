-- PURPLE HUB 💜

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local gui = Instance.new("ScreenGui")
gui.Name = "PurpleHub"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.fromOffset(240, 160)
frame.Position = UDim2.new(0.5, -120, 0.5, -80)
frame.BackgroundColor3 = Color3.fromRGB(15, 12, 22)
frame.Active = true
frame.Draggable = true
frame.Parent = gui

Instance.new("UICorner", frame).CornerRadius =
    UDim.new(0, 14)

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 50)
title.BackgroundTransparency = 1
title.Text = "PURPLE HUB"
title.TextColor3 = Color3.fromRGB(190, 120, 255)
title.TextSize = 24
title.Font = Enum.Font.GothamBold
title.Parent = frame

local toggle = Instance.new("TextButton")
toggle.Size = UDim2.new(0.85, 0, 0, 45)
toggle.Position = UDim2.new(0.075, 0, 0, 80)
toggle.BackgroundColor3 = Color3.fromRGB(110, 45, 170)
toggle.Text = "AUTO WHEELIE: OFF"
toggle.TextColor3 = Color3.new(1, 1, 1)
toggle.TextSize = 14
toggle.Font = Enum.Font.GothamBold
toggle.Parent = frame

Instance.new("UICorner", toggle).CornerRadius =
    UDim.new(0, 10)

local enabled = false

toggle.MouseButton1Click:Connect(function()
    enabled = not enabled
    toggle.Text = enabled and
        "AUTO WHEELIE: ON" or
        "AUTO WHEELIE: OFF"
end)