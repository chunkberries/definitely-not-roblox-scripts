-- Game link: https://www.roblox.com/games/137069154816703/Hack-Vault-for-Brainrots
-- Shorted ver: loadstring(game:HttpGet("https://raw.githubusercontent.com/chunkberries/definitely-not-roblox-scripts/refs/heads/main/hackforbrainrots.lua"))()

local Player = game.Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")
local StarterGui = game:GetService("StarterGui")
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")

local autofarming = false

local positions = {
	bestCelestial = Vector3.new(-2495, 5, -707),
	celestial     = Vector3.new(-2362, 5, -707),
	bestOg        = Vector3.new(-2251, 5, -707),
	Og            = Vector3.new(-2129, 5, -707),
	bestAncient   = Vector3.new(-2011, 5, -707),
	ancient       = Vector3.new(-1888, 5, -707),
	bestSecret    = Vector3.new(-1767, 5, -707),
	secret        = Vector3.new(-1643, 5, -707),
	bestDivine    = Vector3.new(-1535, 5, -707),
	divine        = Vector3.new(-1410, 5, -707),
	bestMythical  = Vector3.new(-1292, 5, -707),
	mythical      = Vector3.new(-1168, 5, -707),
	bestLegendary = Vector3.new(-1040, 11, -707),
	legendary     = Vector3.new(-934, 5, -707),
	bestEpic      = Vector3.new(-817, 5, -707),
	epic          = Vector3.new(-688, 5, -707),
	bestRare      = Vector3.new(-579, 11, -707),
	rare          = Vector3.new(-456, 5, -707),
	bestUncommon  = Vector3.new(-338, 5, -707),
	uncommon      = Vector3.new(-221, 5, -707),
	bestCommon    = Vector3.new(-89, 5, -707),
	common        = Vector3.new(5, 5, -707)
}


local BerryHub = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICornerMainFrame = Instance.new("UICorner")
local UICornerCloseButton = Instance.new("UICorner")
local ScrollingFrame = Instance.new("ScrollingFrame")
local AutoFarmLabel = Instance.new("TextLabel")
local AutofarmToggleBtn = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local DropDownFrame = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local UIPadding = Instance.new("UIPadding")
local ancient = Instance.new("Frame")
local NameLabel = Instance.new("TextLabel")
local TPButton = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local bestOg = Instance.new("Frame")
local NameLabel_2 = Instance.new("TextLabel")
local TPButton_2 = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local mythical = Instance.new("Frame")
local NameLabel_3 = Instance.new("TextLabel")
local TPButton_3 = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local bestAncient = Instance.new("Frame")
local NameLabel_4 = Instance.new("TextLabel")
local TPButton_4 = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local celestial = Instance.new("Frame")
local NameLabel_5 = Instance.new("TextLabel")
local TPButton_5 = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local secret = Instance.new("Frame")
local NameLabel_6 = Instance.new("TextLabel")
local TPButton_6 = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local bestRare = Instance.new("Frame")
local NameLabel_7 = Instance.new("TextLabel")
local TPButton_7 = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local bestCelestial = Instance.new("Frame")
local NameLabel_8 = Instance.new("TextLabel")
local TPButton_8 = Instance.new("TextButton")
local UICorner_11 = Instance.new("UICorner")
local bestEpic = Instance.new("Frame")
local NameLabel_9 = Instance.new("TextLabel")
local TPButton_9 = Instance.new("TextButton")
local UICorner_12 = Instance.new("UICorner")
local bestLegendary = Instance.new("Frame")
local NameLabel_10 = Instance.new("TextLabel")
local TPButton_10 = Instance.new("TextButton")
local UICorner_13 = Instance.new("UICorner")
local common = Instance.new("Frame")
local NameLabel_11 = Instance.new("TextLabel")
local TPButton_11 = Instance.new("TextButton")
local UICorner_14 = Instance.new("UICorner")
local bestCommon = Instance.new("Frame")
local NameLabel_12 = Instance.new("TextLabel")
local TPButton_12 = Instance.new("TextButton")
local UICorner_15 = Instance.new("UICorner")
local bestUncommon = Instance.new("Frame")
local NameLabel_13 = Instance.new("TextLabel")
local TPButton_13 = Instance.new("TextButton")
local UICorner_16 = Instance.new("UICorner")
local uncommon = Instance.new("Frame")
local NameLabel_14 = Instance.new("TextLabel")
local TPButton_14 = Instance.new("TextButton")
local UICorner_17 = Instance.new("UICorner")
local bestDivine = Instance.new("Frame")
local NameLabel_15 = Instance.new("TextLabel")
local TPButton_15 = Instance.new("TextButton")
local UICorner_18 = Instance.new("UICorner")
local rare = Instance.new("Frame")
local NameLabel_16 = Instance.new("TextLabel")
local TPButton_16 = Instance.new("TextButton")
local UICorner_19 = Instance.new("UICorner")
local legendary = Instance.new("Frame")
local NameLabel_17 = Instance.new("TextLabel")
local TPButton_17 = Instance.new("TextButton")
local UICorner_20 = Instance.new("UICorner")
local epic = Instance.new("Frame")
local NameLabel_18 = Instance.new("TextLabel")
local TPButton_18 = Instance.new("TextButton")
local UICorner_21 = Instance.new("UICorner")
local bestMythical = Instance.new("Frame")
local NameLabel_19 = Instance.new("TextLabel")
local TPButton_19 = Instance.new("TextButton")
local UICorner_22 = Instance.new("UICorner")
local bestSecret = Instance.new("Frame")
local NameLabel_20 = Instance.new("TextLabel")
local TPButton_20 = Instance.new("TextButton")
local UICorner_23 = Instance.new("UICorner")
local Og = Instance.new("Frame")
local NameLabel_21 = Instance.new("TextLabel")
local TPButton_21 = Instance.new("TextButton")
local UICorner_24 = Instance.new("UICorner")
local divine = Instance.new("Frame")
local NameLabel_22 = Instance.new("TextLabel")
local TPButton_22 = Instance.new("TextButton")
local UICorner_25 = Instance.new("UICorner")
local UIListLayout = Instance.new("UIListLayout")
local TPTitle = Instance.new("TextLabel")
local Info = Instance.new("TextLabel")
local Title = Instance.new("TextLabel")
local CloseButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local CollectAllBtn = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local CollectAll = Instance.new("TextLabel")

--Properties:

BerryHub.Name = "BerryHub"
BerryHub.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
BerryHub.ZIndexBehavior = Enum.ZIndexBehavior.Global

MainFrame.Name = "MainFrame"
MainFrame.Parent = BerryHub
MainFrame.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.5, 0, 0.55, 0)
MainFrame.Size = UDim2.new(0.384422123, 0, 0.395488709, 0)
MainFrame.AnchorPoint = Vector2.new(0.5,0.5)

UICornerMainFrame.CornerRadius = UDim.new(0, 10)
UICornerMainFrame.Parent = MainFrame

ScrollingFrame.Parent = MainFrame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.0413943343, 0, 0.14828898, 0)
ScrollingFrame.Size = UDim2.new(0.917211354, 0, 0.741444886, 0)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 4, 0)

AutoFarmLabel.Name = "AutoFarmLabel"
AutoFarmLabel.Parent = ScrollingFrame
AutoFarmLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AutoFarmLabel.BackgroundTransparency = 1.000
AutoFarmLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
AutoFarmLabel.BorderSizePixel = 0
AutoFarmLabel.Position = UDim2.new(0.0191880632, 0, 0.0318792947, 0)
AutoFarmLabel.Size = UDim2.new(0, 298, 0, 31)
AutoFarmLabel.Font = Enum.Font.GothamBold
AutoFarmLabel.Text = "Auto Farm"
AutoFarmLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoFarmLabel.TextScaled = true
AutoFarmLabel.TextSize = 14.000
AutoFarmLabel.TextWrapped = true
AutoFarmLabel.TextXAlignment = Enum.TextXAlignment.Left

AutofarmToggleBtn.Name = "AutofarmToggleBtn"
AutofarmToggleBtn.Parent = ScrollingFrame
AutofarmToggleBtn.BackgroundColor3 = Color3.fromRGB(77, 255, 0)
AutofarmToggleBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
AutofarmToggleBtn.BorderSizePixel = 0
AutofarmToggleBtn.Position = UDim2.new(0.698612928, 0, 0.0318793245, 0)
AutofarmToggleBtn.Size = UDim2.new(0, 97, 0, 29)
AutofarmToggleBtn.Font = Enum.Font.GothamBold
AutofarmToggleBtn.Text = "Disabled"
AutofarmToggleBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
AutofarmToggleBtn.TextScaled = true
AutofarmToggleBtn.TextSize = 14.000
AutofarmToggleBtn.TextWrapped = true

CloseButton.Name = "CloseButton"
CloseButton.Parent = MainFrame
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CloseButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.BorderSizePixel = 0
CloseButton.Position = UDim2.new(0.897154212, 0, 0.0304182507, 0)
CloseButton.Size = UDim2.new(0, 34, 0, 34)
CloseButton.Font = Enum.Font.GothamBold
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(0, 0, 0)
CloseButton.TextScaled = true
CloseButton.TextSize = 14.000
CloseButton.TextWrapped = true

UICornerCloseButton.CornerRadius = UDim.new(0, 5)
UICornerCloseButton.Parent = CloseButton

UICorner_2.CornerRadius = UDim.new(0, 5)
UICorner_2.Parent = AutofarmToggleBtn

DropDownFrame.Name = "DropDownFrame"
DropDownFrame.Parent = ScrollingFrame
DropDownFrame.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
DropDownFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
DropDownFrame.BorderSizePixel = 0
DropDownFrame.Position = UDim2.new(0.00477274414, 0, 0.158855215, 0)
DropDownFrame.Size = UDim2.new(0.930000007, 0, 0.550000012, 0)

UICorner_3.CornerRadius = UDim.new(0, 10)
UICorner_3.Parent = DropDownFrame

UIPadding.Parent = DropDownFrame
UIPadding.PaddingTop = UDim.new(0.00999999978, 0)

ancient.Name = "ancient"
ancient.Parent = DropDownFrame
ancient.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ancient.BackgroundTransparency = 1.000
ancient.BorderColor3 = Color3.fromRGB(0, 0, 0)
ancient.BorderSizePixel = 0
ancient.LayoutOrder = 7
ancient.Size = UDim2.new(0.996143341, 0, 0.0345661938, 0)

NameLabel.Name = "NameLabel"
NameLabel.Parent = ancient
NameLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameLabel.BackgroundTransparency = 1.000
NameLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameLabel.BorderSizePixel = 0
NameLabel.LayoutOrder = 6
NameLabel.Position = UDim2.new(0.0190333799, 0, 0.0228137206, 0)
NameLabel.Size = UDim2.new(0.743142128, 0, 0.959999979, 0)
NameLabel.Font = Enum.Font.GothamBold
NameLabel.Text = "Ancient"
NameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
NameLabel.TextScaled = true
NameLabel.TextSize = 14.000
NameLabel.TextWrapped = true
NameLabel.TextXAlignment = Enum.TextXAlignment.Left

TPButton.Name = "TPButton"
TPButton.Parent = ancient
TPButton.BackgroundColor3 = Color3.fromRGB(77, 255, 0)
TPButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TPButton.BorderSizePixel = 0
TPButton.Position = UDim2.new(0.727094293, 0, 0.025758056, 0)
TPButton.Size = UDim2.new(0.241895258, 0, 0.898064554, 0)
TPButton.Font = Enum.Font.GothamBold
TPButton.Text = "Teleport"
TPButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TPButton.TextScaled = true
TPButton.TextSize = 14.000
TPButton.TextWrapped = true

UICorner_4.CornerRadius = UDim.new(0, 5)
UICorner_4.Parent = TPButton

bestOg.Name = "bestOg"
bestOg.Parent = DropDownFrame
bestOg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
bestOg.BackgroundTransparency = 1.000
bestOg.BorderColor3 = Color3.fromRGB(0, 0, 0)
bestOg.BorderSizePixel = 0
bestOg.LayoutOrder = 3
bestOg.Size = UDim2.new(0.996143341, 0, 0.0345661938, 0)

NameLabel_2.Name = "NameLabel"
NameLabel_2.Parent = bestOg
NameLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_2.BackgroundTransparency = 1.000
NameLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameLabel_2.BorderSizePixel = 0
NameLabel_2.LayoutOrder = 3
NameLabel_2.Position = UDim2.new(0.0190333799, 0, 0.0228137206, 0)
NameLabel_2.Size = UDim2.new(0.743142128, 0, 0.959999979, 0)
NameLabel_2.Font = Enum.Font.GothamBold
NameLabel_2.Text = "Best OG"
NameLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_2.TextScaled = true
NameLabel_2.TextSize = 14.000
NameLabel_2.TextWrapped = true
NameLabel_2.TextXAlignment = Enum.TextXAlignment.Left

TPButton_2.Name = "TPButton"
TPButton_2.Parent = bestOg
TPButton_2.BackgroundColor3 = Color3.fromRGB(77, 255, 0)
TPButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TPButton_2.BorderSizePixel = 0
TPButton_2.Position = UDim2.new(0.727094293, 0, 0.025758056, 0)
TPButton_2.Size = UDim2.new(0.241895258, 0, 0.898064554, 0)
TPButton_2.Font = Enum.Font.GothamBold
TPButton_2.Text = "Teleport"
TPButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TPButton_2.TextScaled = true
TPButton_2.TextSize = 14.000
TPButton_2.TextWrapped = true

UICorner_5.CornerRadius = UDim.new(0, 5)
UICorner_5.Parent = TPButton_2

mythical.Name = "mythical"
mythical.Parent = DropDownFrame
mythical.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mythical.BackgroundTransparency = 1.000
mythical.BorderColor3 = Color3.fromRGB(0, 0, 0)
mythical.BorderSizePixel = 0
mythical.LayoutOrder = 13
mythical.Size = UDim2.new(0.996143341, 0, 0.0345661938, 0)

NameLabel_3.Name = "NameLabel"
NameLabel_3.Parent = mythical
NameLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_3.BackgroundTransparency = 1.000
NameLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameLabel_3.BorderSizePixel = 0
NameLabel_3.LayoutOrder = 12
NameLabel_3.Position = UDim2.new(0.0190333799, 0, 0.0228137206, 0)
NameLabel_3.Size = UDim2.new(0.743142128, 0, 0.959999979, 0)
NameLabel_3.Font = Enum.Font.GothamBold
NameLabel_3.Text = "Mythical"
NameLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_3.TextScaled = true
NameLabel_3.TextSize = 14.000
NameLabel_3.TextWrapped = true
NameLabel_3.TextXAlignment = Enum.TextXAlignment.Left

TPButton_3.Name = "TPButton"
TPButton_3.Parent = mythical
TPButton_3.BackgroundColor3 = Color3.fromRGB(77, 255, 0)
TPButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TPButton_3.BorderSizePixel = 0
TPButton_3.Position = UDim2.new(0.727094293, 0, 0.025758056, 0)
TPButton_3.Size = UDim2.new(0.241895258, 0, 0.898064554, 0)
TPButton_3.Font = Enum.Font.GothamBold
TPButton_3.Text = "Teleport"
TPButton_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TPButton_3.TextScaled = true
TPButton_3.TextSize = 14.000
TPButton_3.TextWrapped = true

UICorner_6.CornerRadius = UDim.new(0, 5)
UICorner_6.Parent = TPButton_3

bestAncient.Name = "bestAncient"
bestAncient.Parent = DropDownFrame
bestAncient.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
bestAncient.BackgroundTransparency = 1.000
bestAncient.BorderColor3 = Color3.fromRGB(0, 0, 0)
bestAncient.BorderSizePixel = 0
bestAncient.LayoutOrder = 6
bestAncient.Size = UDim2.new(0.996143341, 0, 0.0345661938, 0)

NameLabel_4.Name = "NameLabel"
NameLabel_4.Parent = bestAncient
NameLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_4.BackgroundTransparency = 1.000
NameLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameLabel_4.BorderSizePixel = 0
NameLabel_4.LayoutOrder = 5
NameLabel_4.Position = UDim2.new(0.0190333799, 0, 0.0228137206, 0)
NameLabel_4.Size = UDim2.new(0.743142128, 0, 0.959999979, 0)
NameLabel_4.Font = Enum.Font.GothamBold
NameLabel_4.Text = "Best Ancient"
NameLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_4.TextScaled = true
NameLabel_4.TextSize = 14.000
NameLabel_4.TextWrapped = true
NameLabel_4.TextXAlignment = Enum.TextXAlignment.Left

TPButton_4.Name = "TPButton"
TPButton_4.Parent = bestAncient
TPButton_4.BackgroundColor3 = Color3.fromRGB(77, 255, 0)
TPButton_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TPButton_4.BorderSizePixel = 0
TPButton_4.Position = UDim2.new(0.727094293, 0, 0.025758056, 0)
TPButton_4.Size = UDim2.new(0.241895258, 0, 0.898064554, 0)
TPButton_4.Font = Enum.Font.GothamBold
TPButton_4.Text = "Teleport"
TPButton_4.TextColor3 = Color3.fromRGB(0, 0, 0)
TPButton_4.TextScaled = true
TPButton_4.TextSize = 14.000
TPButton_4.TextWrapped = true

UICorner_7.CornerRadius = UDim.new(0, 5)
UICorner_7.Parent = TPButton_4

celestial.Name = "celestial"
celestial.Parent = DropDownFrame
celestial.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
celestial.BackgroundTransparency = 1.000
celestial.BorderColor3 = Color3.fromRGB(0, 0, 0)
celestial.BorderSizePixel = 0
celestial.LayoutOrder = 2
celestial.Size = UDim2.new(0.996143341, 0, 0.0345661938, 0)

NameLabel_5.Name = "NameLabel"
NameLabel_5.Parent = celestial
NameLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_5.BackgroundTransparency = 1.000
NameLabel_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameLabel_5.BorderSizePixel = 0
NameLabel_5.LayoutOrder = 2
NameLabel_5.Position = UDim2.new(0.0190333799, 0, 0.0228137206, 0)
NameLabel_5.Size = UDim2.new(0.743142128, 0, 0.959999979, 0)
NameLabel_5.Font = Enum.Font.GothamBold
NameLabel_5.Text = "Celestial"
NameLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_5.TextScaled = true
NameLabel_5.TextSize = 14.000
NameLabel_5.TextWrapped = true
NameLabel_5.TextXAlignment = Enum.TextXAlignment.Left

TPButton_5.Name = "TPButton"
TPButton_5.Parent = celestial
TPButton_5.BackgroundColor3 = Color3.fromRGB(77, 255, 0)
TPButton_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TPButton_5.BorderSizePixel = 0
TPButton_5.Position = UDim2.new(0.727094293, 0, 0.025758056, 0)
TPButton_5.Size = UDim2.new(0.241895258, 0, 0.898064554, 0)
TPButton_5.Font = Enum.Font.GothamBold
TPButton_5.Text = "Teleport"
TPButton_5.TextColor3 = Color3.fromRGB(0, 0, 0)
TPButton_5.TextScaled = true
TPButton_5.TextSize = 14.000
TPButton_5.TextWrapped = true

UICorner_8.CornerRadius = UDim.new(0, 5)
UICorner_8.Parent = TPButton_5

secret.Name = "secret"
secret.Parent = DropDownFrame
secret.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
secret.BackgroundTransparency = 1.000
secret.BorderColor3 = Color3.fromRGB(0, 0, 0)
secret.BorderSizePixel = 0
secret.LayoutOrder = 9
secret.Size = UDim2.new(0.996143341, 0, 0.0345661938, 0)

NameLabel_6.Name = "NameLabel"
NameLabel_6.Parent = secret
NameLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_6.BackgroundTransparency = 1.000
NameLabel_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameLabel_6.BorderSizePixel = 0
NameLabel_6.LayoutOrder = 8
NameLabel_6.Position = UDim2.new(0.0190333799, 0, 0.0228137206, 0)
NameLabel_6.Size = UDim2.new(0.743142128, 0, 0.959999979, 0)
NameLabel_6.Font = Enum.Font.GothamBold
NameLabel_6.Text = "Secret"
NameLabel_6.TextColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_6.TextScaled = true
NameLabel_6.TextSize = 14.000
NameLabel_6.TextWrapped = true
NameLabel_6.TextXAlignment = Enum.TextXAlignment.Left

TPButton_6.Name = "TPButton"
TPButton_6.Parent = secret
TPButton_6.BackgroundColor3 = Color3.fromRGB(77, 255, 0)
TPButton_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
TPButton_6.BorderSizePixel = 0
TPButton_6.Position = UDim2.new(0.727094293, 0, 0.025758056, 0)
TPButton_6.Size = UDim2.new(0.241895258, 0, 0.898064554, 0)
TPButton_6.Font = Enum.Font.GothamBold
TPButton_6.Text = "Teleport"
TPButton_6.TextColor3 = Color3.fromRGB(0, 0, 0)
TPButton_6.TextScaled = true
TPButton_6.TextSize = 14.000
TPButton_6.TextWrapped = true

UICorner_9.CornerRadius = UDim.new(0, 5)
UICorner_9.Parent = TPButton_6

bestRare.Name = "bestRare"
bestRare.Parent = DropDownFrame
bestRare.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
bestRare.BackgroundTransparency = 1.000
bestRare.BorderColor3 = Color3.fromRGB(0, 0, 0)
bestRare.BorderSizePixel = 0
bestRare.LayoutOrder = 18
bestRare.Size = UDim2.new(0.996143341, 0, 0.0345661938, 0)

NameLabel_7.Name = "NameLabel"
NameLabel_7.Parent = bestRare
NameLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_7.BackgroundTransparency = 1.000
NameLabel_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameLabel_7.BorderSizePixel = 0
NameLabel_7.LayoutOrder = 17
NameLabel_7.Position = UDim2.new(0.0190333799, 0, 0.0228137206, 0)
NameLabel_7.Size = UDim2.new(0.743142128, 0, 0.959999979, 0)
NameLabel_7.Font = Enum.Font.GothamBold
NameLabel_7.Text = "Best Rare"
NameLabel_7.TextColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_7.TextScaled = true
NameLabel_7.TextSize = 14.000
NameLabel_7.TextWrapped = true
NameLabel_7.TextXAlignment = Enum.TextXAlignment.Left

TPButton_7.Name = "TPButton"
TPButton_7.Parent = bestRare
TPButton_7.BackgroundColor3 = Color3.fromRGB(77, 255, 0)
TPButton_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
TPButton_7.BorderSizePixel = 0
TPButton_7.Position = UDim2.new(0.727094293, 0, 0.025758056, 0)
TPButton_7.Size = UDim2.new(0.241895258, 0, 0.898064554, 0)
TPButton_7.Font = Enum.Font.GothamBold
TPButton_7.Text = "Teleport"
TPButton_7.TextColor3 = Color3.fromRGB(0, 0, 0)
TPButton_7.TextScaled = true
TPButton_7.TextSize = 14.000
TPButton_7.TextWrapped = true

UICorner_10.CornerRadius = UDim.new(0, 5)
UICorner_10.Parent = TPButton_7

bestCelestial.Name = "bestCelestial"
bestCelestial.Parent = DropDownFrame
bestCelestial.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
bestCelestial.BackgroundTransparency = 1.000
bestCelestial.BorderColor3 = Color3.fromRGB(0, 0, 0)
bestCelestial.BorderSizePixel = 0
bestCelestial.LayoutOrder = 1
bestCelestial.Size = UDim2.new(0.996143341, 0, 0.0345661938, 0)

NameLabel_8.Name = "NameLabel"
NameLabel_8.Parent = bestCelestial
NameLabel_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_8.BackgroundTransparency = 1.000
NameLabel_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameLabel_8.BorderSizePixel = 0
NameLabel_8.LayoutOrder = 1
NameLabel_8.Position = UDim2.new(0.0190333799, 0, 0.0228137206, 0)
NameLabel_8.Size = UDim2.new(0.743142128, 0, 0.959999979, 0)
NameLabel_8.Font = Enum.Font.GothamBold
NameLabel_8.Text = "Best Celestial"
NameLabel_8.TextColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_8.TextScaled = true
NameLabel_8.TextSize = 14.000
NameLabel_8.TextWrapped = true
NameLabel_8.TextXAlignment = Enum.TextXAlignment.Left

TPButton_8.Name = "TPButton"
TPButton_8.Parent = bestCelestial
TPButton_8.BackgroundColor3 = Color3.fromRGB(77, 255, 0)
TPButton_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
TPButton_8.BorderSizePixel = 0
TPButton_8.Position = UDim2.new(0.727094293, 0, 0.025758056, 0)
TPButton_8.Size = UDim2.new(0.241895258, 0, 0.898064554, 0)
TPButton_8.Font = Enum.Font.GothamBold
TPButton_8.Text = "Teleport"
TPButton_8.TextColor3 = Color3.fromRGB(0, 0, 0)
TPButton_8.TextScaled = true
TPButton_8.TextSize = 14.000
TPButton_8.TextWrapped = true

UICorner_11.CornerRadius = UDim.new(0, 5)
UICorner_11.Parent = TPButton_8

bestEpic.Name = "bestEpic"
bestEpic.Parent = DropDownFrame
bestEpic.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
bestEpic.BackgroundTransparency = 1.000
bestEpic.BorderColor3 = Color3.fromRGB(0, 0, 0)
bestEpic.BorderSizePixel = 0
bestEpic.LayoutOrder = 16
bestEpic.Size = UDim2.new(0.996143341, 0, 0.0345661938, 0)

NameLabel_9.Name = "NameLabel"
NameLabel_9.Parent = bestEpic
NameLabel_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_9.BackgroundTransparency = 1.000
NameLabel_9.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameLabel_9.BorderSizePixel = 0
NameLabel_9.LayoutOrder = 15
NameLabel_9.Position = UDim2.new(0.0190333799, 0, 0.0228137206, 0)
NameLabel_9.Size = UDim2.new(0.743142128, 0, 0.959999979, 0)
NameLabel_9.Font = Enum.Font.GothamBold
NameLabel_9.Text = "Best Epic"
NameLabel_9.TextColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_9.TextScaled = true
NameLabel_9.TextSize = 14.000
NameLabel_9.TextWrapped = true
NameLabel_9.TextXAlignment = Enum.TextXAlignment.Left

TPButton_9.Name = "TPButton"
TPButton_9.Parent = bestEpic
TPButton_9.BackgroundColor3 = Color3.fromRGB(77, 255, 0)
TPButton_9.BorderColor3 = Color3.fromRGB(0, 0, 0)
TPButton_9.BorderSizePixel = 0
TPButton_9.Position = UDim2.new(0.727094293, 0, 0.025758056, 0)
TPButton_9.Size = UDim2.new(0.241895258, 0, 0.898064554, 0)
TPButton_9.Font = Enum.Font.GothamBold
TPButton_9.Text = "Teleport"
TPButton_9.TextColor3 = Color3.fromRGB(0, 0, 0)
TPButton_9.TextScaled = true
TPButton_9.TextSize = 14.000
TPButton_9.TextWrapped = true

UICorner_12.CornerRadius = UDim.new(0, 5)
UICorner_12.Parent = TPButton_9

bestLegendary.Name = "bestLegendary"
bestLegendary.Parent = DropDownFrame
bestLegendary.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
bestLegendary.BackgroundTransparency = 1.000
bestLegendary.BorderColor3 = Color3.fromRGB(0, 0, 0)
bestLegendary.BorderSizePixel = 0
bestLegendary.LayoutOrder = 14
bestLegendary.Size = UDim2.new(0.996143341, 0, 0.0345661938, 0)

NameLabel_10.Name = "NameLabel"
NameLabel_10.Parent = bestLegendary
NameLabel_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_10.BackgroundTransparency = 1.000
NameLabel_10.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameLabel_10.BorderSizePixel = 0
NameLabel_10.LayoutOrder = 13
NameLabel_10.Position = UDim2.new(0.0190333799, 0, 0.0228137206, 0)
NameLabel_10.Size = UDim2.new(0.743142128, 0, 0.959999979, 0)
NameLabel_10.Font = Enum.Font.GothamBold
NameLabel_10.Text = "Best Legendary"
NameLabel_10.TextColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_10.TextScaled = true
NameLabel_10.TextSize = 14.000
NameLabel_10.TextWrapped = true
NameLabel_10.TextXAlignment = Enum.TextXAlignment.Left

TPButton_10.Name = "TPButton"
TPButton_10.Parent = bestLegendary
TPButton_10.BackgroundColor3 = Color3.fromRGB(77, 255, 0)
TPButton_10.BorderColor3 = Color3.fromRGB(0, 0, 0)
TPButton_10.BorderSizePixel = 0
TPButton_10.Position = UDim2.new(0.727094293, 0, 0.025758056, 0)
TPButton_10.Size = UDim2.new(0.241895258, 0, 0.898064554, 0)
TPButton_10.Font = Enum.Font.GothamBold
TPButton_10.Text = "Teleport"
TPButton_10.TextColor3 = Color3.fromRGB(0, 0, 0)
TPButton_10.TextScaled = true
TPButton_10.TextSize = 14.000
TPButton_10.TextWrapped = true

UICorner_13.CornerRadius = UDim.new(0, 5)
UICorner_13.Parent = TPButton_10

common.Name = "common"
common.Parent = DropDownFrame
common.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
common.BackgroundTransparency = 1.000
common.BorderColor3 = Color3.fromRGB(0, 0, 0)
common.BorderSizePixel = 0
common.LayoutOrder = 23
common.Size = UDim2.new(0.996143341, 0, 0.0345661938, 0)

NameLabel_11.Name = "NameLabel"
NameLabel_11.Parent = common
NameLabel_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_11.BackgroundTransparency = 1.000
NameLabel_11.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameLabel_11.BorderSizePixel = 0
NameLabel_11.LayoutOrder = 22
NameLabel_11.Position = UDim2.new(0.0190333799, 0, 0.0228137206, 0)
NameLabel_11.Size = UDim2.new(0.743142128, 0, 0.959999979, 0)
NameLabel_11.Font = Enum.Font.GothamBold
NameLabel_11.Text = "Common"
NameLabel_11.TextColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_11.TextScaled = true
NameLabel_11.TextSize = 14.000
NameLabel_11.TextWrapped = true
NameLabel_11.TextXAlignment = Enum.TextXAlignment.Left

TPButton_11.Name = "TPButton"
TPButton_11.Parent = common
TPButton_11.BackgroundColor3 = Color3.fromRGB(77, 255, 0)
TPButton_11.BorderColor3 = Color3.fromRGB(0, 0, 0)
TPButton_11.BorderSizePixel = 0
TPButton_11.Position = UDim2.new(0.727094293, 0, 0.025758056, 0)
TPButton_11.Size = UDim2.new(0.241895258, 0, 0.898064554, 0)
TPButton_11.Font = Enum.Font.GothamBold
TPButton_11.Text = "Teleport"
TPButton_11.TextColor3 = Color3.fromRGB(0, 0, 0)
TPButton_11.TextScaled = true
TPButton_11.TextSize = 14.000
TPButton_11.TextWrapped = true

UICorner_14.CornerRadius = UDim.new(0, 5)
UICorner_14.Parent = TPButton_11

bestCommon.Name = "bestCommon"
bestCommon.Parent = DropDownFrame
bestCommon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
bestCommon.BackgroundTransparency = 1.000
bestCommon.BorderColor3 = Color3.fromRGB(0, 0, 0)
bestCommon.BorderSizePixel = 0
bestCommon.LayoutOrder = 22
bestCommon.Size = UDim2.new(0.996143341, 0, 0.0345661938, 0)

NameLabel_12.Name = "NameLabel"
NameLabel_12.Parent = bestCommon
NameLabel_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_12.BackgroundTransparency = 1.000
NameLabel_12.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameLabel_12.BorderSizePixel = 0
NameLabel_12.LayoutOrder = 21
NameLabel_12.Position = UDim2.new(0.0190333799, 0, 0.0228137206, 0)
NameLabel_12.Size = UDim2.new(0.743142128, 0, 0.959999979, 0)
NameLabel_12.Font = Enum.Font.GothamBold
NameLabel_12.Text = "Best Common"
NameLabel_12.TextColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_12.TextScaled = true
NameLabel_12.TextSize = 14.000
NameLabel_12.TextWrapped = true
NameLabel_12.TextXAlignment = Enum.TextXAlignment.Left

TPButton_12.Name = "TPButton"
TPButton_12.Parent = bestCommon
TPButton_12.BackgroundColor3 = Color3.fromRGB(77, 255, 0)
TPButton_12.BorderColor3 = Color3.fromRGB(0, 0, 0)
TPButton_12.BorderSizePixel = 0
TPButton_12.Position = UDim2.new(0.727094293, 0, 0.025758056, 0)
TPButton_12.Size = UDim2.new(0.241895258, 0, 0.898064554, 0)
TPButton_12.Font = Enum.Font.GothamBold
TPButton_12.Text = "Teleport"
TPButton_12.TextColor3 = Color3.fromRGB(0, 0, 0)
TPButton_12.TextScaled = true
TPButton_12.TextSize = 14.000
TPButton_12.TextWrapped = true

UICorner_15.CornerRadius = UDim.new(0, 5)
UICorner_15.Parent = TPButton_12

bestUncommon.Name = "bestUncommon"
bestUncommon.Parent = DropDownFrame
bestUncommon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
bestUncommon.BackgroundTransparency = 1.000
bestUncommon.BorderColor3 = Color3.fromRGB(0, 0, 0)
bestUncommon.BorderSizePixel = 0
bestUncommon.LayoutOrder = 20
bestUncommon.Size = UDim2.new(0.996143341, 0, 0.0345661938, 0)

NameLabel_13.Name = "NameLabel"
NameLabel_13.Parent = bestUncommon
NameLabel_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_13.BackgroundTransparency = 1.000
NameLabel_13.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameLabel_13.BorderSizePixel = 0
NameLabel_13.LayoutOrder = 19
NameLabel_13.Position = UDim2.new(0.0190333799, 0, 0.0228137206, 0)
NameLabel_13.Size = UDim2.new(0.743142128, 0, 0.959999979, 0)
NameLabel_13.Font = Enum.Font.GothamBold
NameLabel_13.Text = "Best Uncommon"
NameLabel_13.TextColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_13.TextScaled = true
NameLabel_13.TextSize = 14.000
NameLabel_13.TextWrapped = true
NameLabel_13.TextXAlignment = Enum.TextXAlignment.Left

TPButton_13.Name = "TPButton"
TPButton_13.Parent = bestUncommon
TPButton_13.BackgroundColor3 = Color3.fromRGB(77, 255, 0)
TPButton_13.BorderColor3 = Color3.fromRGB(0, 0, 0)
TPButton_13.BorderSizePixel = 0
TPButton_13.Position = UDim2.new(0.727094293, 0, 0.025758056, 0)
TPButton_13.Size = UDim2.new(0.241895258, 0, 0.898064554, 0)
TPButton_13.Font = Enum.Font.GothamBold
TPButton_13.Text = "Teleport"
TPButton_13.TextColor3 = Color3.fromRGB(0, 0, 0)
TPButton_13.TextScaled = true
TPButton_13.TextSize = 14.000
TPButton_13.TextWrapped = true

UICorner_16.CornerRadius = UDim.new(0, 5)
UICorner_16.Parent = TPButton_13

uncommon.Name = "uncommon"
uncommon.Parent = DropDownFrame
uncommon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
uncommon.BackgroundTransparency = 1.000
uncommon.BorderColor3 = Color3.fromRGB(0, 0, 0)
uncommon.BorderSizePixel = 0
uncommon.LayoutOrder = 21
uncommon.Size = UDim2.new(0.996143341, 0, 0.0345661938, 0)

NameLabel_14.Name = "NameLabel"
NameLabel_14.Parent = uncommon
NameLabel_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_14.BackgroundTransparency = 1.000
NameLabel_14.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameLabel_14.BorderSizePixel = 0
NameLabel_14.LayoutOrder = 20
NameLabel_14.Position = UDim2.new(0.0190333799, 0, 0.0228137206, 0)
NameLabel_14.Size = UDim2.new(0.743142128, 0, 0.959999979, 0)
NameLabel_14.Font = Enum.Font.GothamBold
NameLabel_14.Text = "Uncommon"
NameLabel_14.TextColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_14.TextScaled = true
NameLabel_14.TextSize = 14.000
NameLabel_14.TextWrapped = true
NameLabel_14.TextXAlignment = Enum.TextXAlignment.Left

TPButton_14.Name = "TPButton"
TPButton_14.Parent = uncommon
TPButton_14.BackgroundColor3 = Color3.fromRGB(77, 255, 0)
TPButton_14.BorderColor3 = Color3.fromRGB(0, 0, 0)
TPButton_14.BorderSizePixel = 0
TPButton_14.Position = UDim2.new(0.727094293, 0, 0.025758056, 0)
TPButton_14.Size = UDim2.new(0.241895258, 0, 0.898064554, 0)
TPButton_14.Font = Enum.Font.GothamBold
TPButton_14.Text = "Teleport"
TPButton_14.TextColor3 = Color3.fromRGB(0, 0, 0)
TPButton_14.TextScaled = true
TPButton_14.TextSize = 14.000
TPButton_14.TextWrapped = true

UICorner_17.CornerRadius = UDim.new(0, 5)
UICorner_17.Parent = TPButton_14

bestDivine.Name = "bestDivine"
bestDivine.Parent = DropDownFrame
bestDivine.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
bestDivine.BackgroundTransparency = 1.000
bestDivine.BorderColor3 = Color3.fromRGB(0, 0, 0)
bestDivine.BorderSizePixel = 0
bestDivine.LayoutOrder = 10
bestDivine.Size = UDim2.new(0.996143341, 0, 0.0345661938, 0)

NameLabel_15.Name = "NameLabel"
NameLabel_15.Parent = bestDivine
NameLabel_15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_15.BackgroundTransparency = 1.000
NameLabel_15.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameLabel_15.BorderSizePixel = 0
NameLabel_15.LayoutOrder = 9
NameLabel_15.Position = UDim2.new(0.0190333799, 0, 0.0228137206, 0)
NameLabel_15.Size = UDim2.new(0.743142128, 0, 0.959999979, 0)
NameLabel_15.Font = Enum.Font.GothamBold
NameLabel_15.Text = "Best Divine"
NameLabel_15.TextColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_15.TextScaled = true
NameLabel_15.TextSize = 14.000
NameLabel_15.TextWrapped = true
NameLabel_15.TextXAlignment = Enum.TextXAlignment.Left

TPButton_15.Name = "TPButton"
TPButton_15.Parent = bestDivine
TPButton_15.BackgroundColor3 = Color3.fromRGB(77, 255, 0)
TPButton_15.BorderColor3 = Color3.fromRGB(0, 0, 0)
TPButton_15.BorderSizePixel = 0
TPButton_15.Position = UDim2.new(0.727094293, 0, 0.025758056, 0)
TPButton_15.Size = UDim2.new(0.241895258, 0, 0.898064554, 0)
TPButton_15.Font = Enum.Font.GothamBold
TPButton_15.Text = "Teleport"
TPButton_15.TextColor3 = Color3.fromRGB(0, 0, 0)
TPButton_15.TextScaled = true
TPButton_15.TextSize = 14.000
TPButton_15.TextWrapped = true

UICorner_18.CornerRadius = UDim.new(0, 5)
UICorner_18.Parent = TPButton_15

rare.Name = "rare"
rare.Parent = DropDownFrame
rare.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
rare.BackgroundTransparency = 1.000
rare.BorderColor3 = Color3.fromRGB(0, 0, 0)
rare.BorderSizePixel = 0
rare.LayoutOrder = 19
rare.Size = UDim2.new(0.996143341, 0, 0.0345661938, 0)

NameLabel_16.Name = "NameLabel"
NameLabel_16.Parent = rare
NameLabel_16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_16.BackgroundTransparency = 1.000
NameLabel_16.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameLabel_16.BorderSizePixel = 0
NameLabel_16.LayoutOrder = 18
NameLabel_16.Position = UDim2.new(0.0190333799, 0, 0.0228137206, 0)
NameLabel_16.Size = UDim2.new(0.743142128, 0, 0.959999979, 0)
NameLabel_16.Font = Enum.Font.GothamBold
NameLabel_16.Text = "Rare"
NameLabel_16.TextColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_16.TextScaled = true
NameLabel_16.TextSize = 14.000
NameLabel_16.TextWrapped = true
NameLabel_16.TextXAlignment = Enum.TextXAlignment.Left

TPButton_16.Name = "TPButton"
TPButton_16.Parent = rare
TPButton_16.BackgroundColor3 = Color3.fromRGB(77, 255, 0)
TPButton_16.BorderColor3 = Color3.fromRGB(0, 0, 0)
TPButton_16.BorderSizePixel = 0
TPButton_16.Position = UDim2.new(0.727094293, 0, 0.025758056, 0)
TPButton_16.Size = UDim2.new(0.241895258, 0, 0.898064554, 0)
TPButton_16.Font = Enum.Font.GothamBold
TPButton_16.Text = "Teleport"
TPButton_16.TextColor3 = Color3.fromRGB(0, 0, 0)
TPButton_16.TextScaled = true
TPButton_16.TextSize = 14.000
TPButton_16.TextWrapped = true

UICorner_19.CornerRadius = UDim.new(0, 5)
UICorner_19.Parent = TPButton_16

legendary.Name = "legendary"
legendary.Parent = DropDownFrame
legendary.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
legendary.BackgroundTransparency = 1.000
legendary.BorderColor3 = Color3.fromRGB(0, 0, 0)
legendary.BorderSizePixel = 0
legendary.LayoutOrder = 15
legendary.Size = UDim2.new(0.996143341, 0, 0.0345661938, 0)

NameLabel_17.Name = "NameLabel"
NameLabel_17.Parent = legendary
NameLabel_17.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_17.BackgroundTransparency = 1.000
NameLabel_17.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameLabel_17.BorderSizePixel = 0
NameLabel_17.LayoutOrder = 14
NameLabel_17.Position = UDim2.new(0.0190333799, 0, 0.0228137206, 0)
NameLabel_17.Size = UDim2.new(0.743142128, 0, 0.959999979, 0)
NameLabel_17.Font = Enum.Font.GothamBold
NameLabel_17.Text = "Legendary"
NameLabel_17.TextColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_17.TextScaled = true
NameLabel_17.TextSize = 14.000
NameLabel_17.TextWrapped = true
NameLabel_17.TextXAlignment = Enum.TextXAlignment.Left

TPButton_17.Name = "TPButton"
TPButton_17.Parent = legendary
TPButton_17.BackgroundColor3 = Color3.fromRGB(77, 255, 0)
TPButton_17.BorderColor3 = Color3.fromRGB(0, 0, 0)
TPButton_17.BorderSizePixel = 0
TPButton_17.Position = UDim2.new(0.727094293, 0, 0.025758056, 0)
TPButton_17.Size = UDim2.new(0.241895258, 0, 0.898064554, 0)
TPButton_17.Font = Enum.Font.GothamBold
TPButton_17.Text = "Teleport"
TPButton_17.TextColor3 = Color3.fromRGB(0, 0, 0)
TPButton_17.TextScaled = true
TPButton_17.TextSize = 14.000
TPButton_17.TextWrapped = true

UICorner_20.CornerRadius = UDim.new(0, 5)
UICorner_20.Parent = TPButton_17

epic.Name = "epic"
epic.Parent = DropDownFrame
epic.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
epic.BackgroundTransparency = 1.000
epic.BorderColor3 = Color3.fromRGB(0, 0, 0)
epic.BorderSizePixel = 0
epic.LayoutOrder = 17
epic.Size = UDim2.new(0.996143341, 0, 0.0345661938, 0)

NameLabel_18.Name = "NameLabel"
NameLabel_18.Parent = epic
NameLabel_18.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_18.BackgroundTransparency = 1.000
NameLabel_18.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameLabel_18.BorderSizePixel = 0
NameLabel_18.LayoutOrder = 16
NameLabel_18.Position = UDim2.new(0.0190333799, 0, 0.0228137206, 0)
NameLabel_18.Size = UDim2.new(0.743142128, 0, 0.959999979, 0)
NameLabel_18.Font = Enum.Font.GothamBold
NameLabel_18.Text = "Epic"
NameLabel_18.TextColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_18.TextScaled = true
NameLabel_18.TextSize = 14.000
NameLabel_18.TextWrapped = true
NameLabel_18.TextXAlignment = Enum.TextXAlignment.Left

TPButton_18.Name = "TPButton"
TPButton_18.Parent = epic
TPButton_18.BackgroundColor3 = Color3.fromRGB(77, 255, 0)
TPButton_18.BorderColor3 = Color3.fromRGB(0, 0, 0)
TPButton_18.BorderSizePixel = 0
TPButton_18.Position = UDim2.new(0.727094293, 0, 0.025758056, 0)
TPButton_18.Size = UDim2.new(0.241895258, 0, 0.898064554, 0)
TPButton_18.Font = Enum.Font.GothamBold
TPButton_18.Text = "Teleport"
TPButton_18.TextColor3 = Color3.fromRGB(0, 0, 0)
TPButton_18.TextScaled = true
TPButton_18.TextSize = 14.000
TPButton_18.TextWrapped = true

UICorner_21.CornerRadius = UDim.new(0, 5)
UICorner_21.Parent = TPButton_18

bestMythical.Name = "bestMythical"
bestMythical.Parent = DropDownFrame
bestMythical.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
bestMythical.BackgroundTransparency = 1.000
bestMythical.BorderColor3 = Color3.fromRGB(0, 0, 0)
bestMythical.BorderSizePixel = 0
bestMythical.LayoutOrder = 12
bestMythical.Size = UDim2.new(0.996143341, 0, 0.0345661938, 0)

NameLabel_19.Name = "NameLabel"
NameLabel_19.Parent = bestMythical
NameLabel_19.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_19.BackgroundTransparency = 1.000
NameLabel_19.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameLabel_19.BorderSizePixel = 0
NameLabel_19.LayoutOrder = 11
NameLabel_19.Position = UDim2.new(0.0190333799, 0, 0.0228137206, 0)
NameLabel_19.Size = UDim2.new(0.743142128, 0, 0.959999979, 0)
NameLabel_19.Font = Enum.Font.GothamBold
NameLabel_19.Text = "Best Mythical"
NameLabel_19.TextColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_19.TextScaled = true
NameLabel_19.TextSize = 14.000
NameLabel_19.TextWrapped = true
NameLabel_19.TextXAlignment = Enum.TextXAlignment.Left

TPButton_19.Name = "TPButton"
TPButton_19.Parent = bestMythical
TPButton_19.BackgroundColor3 = Color3.fromRGB(77, 255, 0)
TPButton_19.BorderColor3 = Color3.fromRGB(0, 0, 0)
TPButton_19.BorderSizePixel = 0
TPButton_19.Position = UDim2.new(0.727094293, 0, 0.025758056, 0)
TPButton_19.Size = UDim2.new(0.241895258, 0, 0.898064554, 0)
TPButton_19.Font = Enum.Font.GothamBold
TPButton_19.Text = "Teleport"
TPButton_19.TextColor3 = Color3.fromRGB(0, 0, 0)
TPButton_19.TextScaled = true
TPButton_19.TextSize = 14.000
TPButton_19.TextWrapped = true

UICorner_22.CornerRadius = UDim.new(0, 5)
UICorner_22.Parent = TPButton_19

bestSecret.Name = "bestSecret"
bestSecret.Parent = DropDownFrame
bestSecret.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
bestSecret.BackgroundTransparency = 1.000
bestSecret.BorderColor3 = Color3.fromRGB(0, 0, 0)
bestSecret.BorderSizePixel = 0
bestSecret.LayoutOrder = 8
bestSecret.Size = UDim2.new(0.996143341, 0, 0.0345661938, 0)

NameLabel_20.Name = "NameLabel"
NameLabel_20.Parent = bestSecret
NameLabel_20.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_20.BackgroundTransparency = 1.000
NameLabel_20.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameLabel_20.BorderSizePixel = 0
NameLabel_20.LayoutOrder = 7
NameLabel_20.Position = UDim2.new(0.0190333799, 0, 0.0228137206, 0)
NameLabel_20.Size = UDim2.new(0.743142128, 0, 0.959999979, 0)
NameLabel_20.Font = Enum.Font.GothamBold
NameLabel_20.Text = "Best Secret"
NameLabel_20.TextColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_20.TextScaled = true
NameLabel_20.TextSize = 14.000
NameLabel_20.TextWrapped = true
NameLabel_20.TextXAlignment = Enum.TextXAlignment.Left

TPButton_20.Name = "TPButton"
TPButton_20.Parent = bestSecret
TPButton_20.BackgroundColor3 = Color3.fromRGB(77, 255, 0)
TPButton_20.BorderColor3 = Color3.fromRGB(0, 0, 0)
TPButton_20.BorderSizePixel = 0
TPButton_20.Position = UDim2.new(0.727094293, 0, 0.025758056, 0)
TPButton_20.Size = UDim2.new(0.241895258, 0, 0.898064554, 0)
TPButton_20.Font = Enum.Font.GothamBold
TPButton_20.Text = "Teleport"
TPButton_20.TextColor3 = Color3.fromRGB(0, 0, 0)
TPButton_20.TextScaled = true
TPButton_20.TextSize = 14.000
TPButton_20.TextWrapped = true

UICorner_23.CornerRadius = UDim.new(0, 5)
UICorner_23.Parent = TPButton_20

Og.Name = "Og"
Og.Parent = DropDownFrame
Og.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Og.BackgroundTransparency = 1.000
Og.BorderColor3 = Color3.fromRGB(0, 0, 0)
Og.BorderSizePixel = 0
Og.LayoutOrder = 4
Og.Size = UDim2.new(0.996143341, 0, 0.0345661938, 0)

NameLabel_21.Name = "NameLabel"
NameLabel_21.Parent = Og
NameLabel_21.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_21.BackgroundTransparency = 1.000
NameLabel_21.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameLabel_21.BorderSizePixel = 0
NameLabel_21.LayoutOrder = 4
NameLabel_21.Position = UDim2.new(0.0190333799, 0, 0.0228137206, 0)
NameLabel_21.Size = UDim2.new(0.743142128, 0, 0.959999979, 0)
NameLabel_21.Font = Enum.Font.GothamBold
NameLabel_21.Text = "OG"
NameLabel_21.TextColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_21.TextScaled = true
NameLabel_21.TextSize = 14.000
NameLabel_21.TextWrapped = true
NameLabel_21.TextXAlignment = Enum.TextXAlignment.Left

TPButton_21.Name = "TPButton"
TPButton_21.Parent = Og
TPButton_21.BackgroundColor3 = Color3.fromRGB(77, 255, 0)
TPButton_21.BorderColor3 = Color3.fromRGB(0, 0, 0)
TPButton_21.BorderSizePixel = 0
TPButton_21.Position = UDim2.new(0.727094293, 0, 0.025758056, 0)
TPButton_21.Size = UDim2.new(0.241895258, 0, 0.898064554, 0)
TPButton_21.Font = Enum.Font.GothamBold
TPButton_21.Text = "Teleport"
TPButton_21.TextColor3 = Color3.fromRGB(0, 0, 0)
TPButton_21.TextScaled = true
TPButton_21.TextSize = 14.000
TPButton_21.TextWrapped = true

UICorner_24.CornerRadius = UDim.new(0, 5)
UICorner_24.Parent = TPButton_21

divine.Name = "divine"
divine.Parent = DropDownFrame
divine.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
divine.BackgroundTransparency = 1.000
divine.BorderColor3 = Color3.fromRGB(0, 0, 0)
divine.BorderSizePixel = 0
divine.LayoutOrder = 11
divine.Size = UDim2.new(0.996143341, 0, 0.0345661938, 0)

NameLabel_22.Name = "NameLabel"
NameLabel_22.Parent = divine
NameLabel_22.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_22.BackgroundTransparency = 1.000
NameLabel_22.BorderColor3 = Color3.fromRGB(0, 0, 0)
NameLabel_22.BorderSizePixel = 0
NameLabel_22.LayoutOrder = 10
NameLabel_22.Position = UDim2.new(0.0190333799, 0, 0.0228137206, 0)
NameLabel_22.Size = UDim2.new(0.743142128, 0, 0.959999979, 0)
NameLabel_22.Font = Enum.Font.GothamBold
NameLabel_22.Text = "Divine"
NameLabel_22.TextColor3 = Color3.fromRGB(255, 255, 255)
NameLabel_22.TextScaled = true
NameLabel_22.TextSize = 14.000
NameLabel_22.TextWrapped = true
NameLabel_22.TextXAlignment = Enum.TextXAlignment.Left

TPButton_22.Name = "TPButton"
TPButton_22.Parent = divine
TPButton_22.BackgroundColor3 = Color3.fromRGB(77, 255, 0)
TPButton_22.BorderColor3 = Color3.fromRGB(0, 0, 0)
TPButton_22.BorderSizePixel = 0
TPButton_22.Position = UDim2.new(0.727094293, 0, 0.025758056, 0)
TPButton_22.Size = UDim2.new(0.241895258, 0, 0.898064554, 0)
TPButton_22.Font = Enum.Font.GothamBold
TPButton_22.Text = "Teleport"
TPButton_22.TextColor3 = Color3.fromRGB(0, 0, 0)
TPButton_22.TextScaled = true
TPButton_22.TextSize = 14.000
TPButton_22.TextWrapped = true

UICorner_25.CornerRadius = UDim.new(0, 5)
UICorner_25.Parent = TPButton_22

UIListLayout.Parent = DropDownFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0.00999999978, 0)

TPTitle.Name = "TPTitle"
TPTitle.Parent = ScrollingFrame
TPTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TPTitle.BackgroundTransparency = 1.000
TPTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
TPTitle.BorderSizePixel = 0
TPTitle.Position = UDim2.new(0.00722324336, 0, 0.137520909, 0)
TPTitle.Size = UDim2.new(0, 298, 0, 22)
TPTitle.Font = Enum.Font.GothamBold
TPTitle.Text = "Teleportations:"
TPTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
TPTitle.TextScaled = true
TPTitle.TextSize = 14.000
TPTitle.TextWrapped = true
TPTitle.TextXAlignment = Enum.TextXAlignment.Left

Info.Name = "Info"
Info.Parent = ScrollingFrame
Info.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Info.BackgroundTransparency = 1.000
Info.BorderColor3 = Color3.fromRGB(0, 0, 0)
Info.BorderSizePixel = 0
Info.Position = UDim2.new(0.0191881005, 0, 0.0513469593, 0)
Info.Size = UDim2.new(0, 368, 0, 66)
Info.Font = Enum.Font.GothamBold
Info.Text = "When Auto Farm is enabled you will teleport to the best zone in the game. When you pick a brainrot up you will automatically teleport back to your base. Then when you place it down the cycle repeats."
Info.TextColor3 = Color3.fromRGB(255, 255, 255)
Info.TextScaled = true
Info.TextSize = 14.000
Info.TextWrapped = true
Info.TextXAlignment = Enum.TextXAlignment.Left

local AutoFarmWarnining = Info:Clone()
AutoFarmWarnining.Parent = ScrollingFrame
AutoFarmWarnining.Text = "[WARNING] When teleporting you might encounter lag because of the game needing to load everything in."
AutoFarmWarnining.TextColor3 = Color3.new(255, 0, 0)
AutoFarmWarnining.Position = UDim2.new(0.0191881005, 0, 0.091, 0)
AutoFarmWarnining.Size = UDim2.new(0, 368, 0, 30)

Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.25, 0, 0.1, 0)
Title.Size = UDim2.new(1, 0, 0.117870726, 0)
Title.Font = Enum.Font.GothamBold
Title.Text = "BerryHub v1.01"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

local CredLabel = Title:Clone()
CredLabel.Parent = MainFrame
CredLabel.Position = UDim2.new(0.185, 0, 0.18, 0)
CredLabel.Size = UDim2.new(0.4, 0, 0.05, 0)
CredLabel.Text = "made by chunkberries"
CredLabel.AnchorPoint = Vector2.new(0.5, 0.5)

CollectAllBtn.Name = "CollectAllBtn"
CollectAllBtn.Parent = MainFrame.ScrollingFrame
CollectAllBtn.BackgroundColor3 = Color3.fromRGB(77, 255, 0)
CollectAllBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
CollectAllBtn.BorderSizePixel = 0
CollectAllBtn.Position = UDim2.new(0.69861275, 0, 0.106442065, 0)
CollectAllBtn.Size = UDim2.new(0, 97, 0, 29)
CollectAllBtn.Font = Enum.Font.GothamBold
CollectAllBtn.Text = "Fire"
CollectAllBtn.TextColor3 = Color3.fromRGB(0, 0, 0)
CollectAllBtn.TextScaled = true
CollectAllBtn.TextSize = 14.000
CollectAllBtn.TextWrapped = true

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = CollectAllBtn

CollectAll.Name = "CollectAll"
CollectAll.Parent = MainFrame.ScrollingFrame
CollectAll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CollectAll.BackgroundTransparency = 1.000
CollectAll.BorderColor3 = Color3.fromRGB(0, 0, 0)
CollectAll.BorderSizePixel = 0
CollectAll.Position = UDim2.new(0.0191880632, 0, 0.106442035, 0)
CollectAll.Size = UDim2.new(0, 298, 0, 31)
CollectAll.Font = Enum.Font.GothamBold
CollectAll.Text = "Collect All"
CollectAll.TextColor3 = Color3.fromRGB(255, 255, 255)
CollectAll.TextScaled = true
CollectAll.TextSize = 14.000
CollectAll.TextWrapped = true
CollectAll.TextXAlignment = Enum.TextXAlignment.Left

CloseButton.MouseButton1Click:Connect(function()
	BerryHub:Destroy()
	autofarming = false
end)

local TextOrgPos = Title.Position
local FrameOrgSize = MainFrame.Size

local LoadAnimTweenInfo = TweenInfo.new(
	0.5
)

local SizeTweenInfo = TweenInfo.new(
	1,
	Enum.EasingStyle.Exponential,
	Enum.EasingDirection.Out
)

local TextTweenInfo = TweenInfo.new(
	0.7,
	Enum.EasingStyle.Exponential,
	Enum.EasingDirection.Out
)
local LoadInTween = TweenService:Create(MainFrame, LoadAnimTweenInfo, {Position = UDim2.new(0.5,0,0.5,0)})
local SizeTween = TweenService:Create(MainFrame, SizeTweenInfo, {Size = FrameOrgSize})
local TextTween = TweenService:Create(Title, TextTweenInfo, {Position = TextOrgPos})
local MainFrameTransTween = TweenService:Create(MainFrame, LoadAnimTweenInfo, {BackgroundTransparency = 0})
local TextTransTween = TweenService:Create(Title, LoadAnimTweenInfo, {TextTransparency = 0})

local function fadeIn()
	for _, ui in MainFrame:GetDescendants() do
		if ui == Title then continue end

		if ui == ScrollingFrame then
			TweenService:Create(ui, TweenInfo.new(0.5), {ScrollBarImageTransparency = 0}):Play()
		end

		if ui == DropDownFrame then
			TweenService:Create(ui, TweenInfo.new(0.5), {BackgroundTransparency = 0}):Play()
		end

		if ui:IsA("Frame") then continue end
		if ui:IsA("TextLabel") or ui:IsA("TextButton") or ui:IsA("TextBox") then
			TweenService:Create(ui, TweenInfo.new(0.5), {TextTransparency = 0}):Play()
		end
		if ui:IsA("ImageLabel") or ui:IsA("ImageButton") then
			TweenService:Create(ui, TweenInfo.new(0.5), {ImageTransparency = 0}):Play()
		end

		if ui:IsA("TextButton") then
			TweenService:Create(ui, TweenInfo.new(0.5), {BackgroundTransparency = 0}):Play()
		end
	end
end

local function fadeOut()
	for _, ui in MainFrame:GetDescendants() do
		if ui == Title then continue end

		if ui == ScrollingFrame then
			TweenService:Create(ui, TweenInfo.new(0.5), {ScrollBarImageTransparency = 1}):Play()
		end

		if ui:IsA("TextLabel") or ui:IsA("TextButton") or ui:IsA("TextBox") then
			TweenService:Create(ui, TweenInfo.new(0.5), {TextTransparency = 1}):Play()
		end
		if ui:IsA("ImageLabel") or ui:IsA("ImageButton") then
			TweenService:Create(ui, TweenInfo.new(0.5), {ImageTransparency = 1}):Play()
		end
		if ui:IsA("TextButton") then
			TweenService:Create(ui, TweenInfo.new(0.5), {BackgroundTransparency = 1}):Play()
		end
		if ui == DropDownFrame then
			TweenService:Create(ui, TweenInfo.new(0.5), {BackgroundTransparency = 1}):Play()
		end
	end
end

local function makeInvis()
	for _, ui in MainFrame:GetDescendants() do
		if ui == Title then continue end
		if ui == ScrollingFrame then
			ui.ScrollBarImageTransparency = 1
		end
		if ui:IsA("TextLabel") or ui:IsA("TextButton") or ui:IsA("TextBox") then
			ui.TextTransparency = 1
		end
		if ui:IsA("ImageLabel") or ui:IsA("ImageButton") then
			ui.ImageTransparency = 1
		end
		if ui:IsA("TextButton") then
			ui.BackgroundTransparency = 1
		end
		if ui == DropDownFrame then
			ui.BackgroundTransparency = 1
		end
	end
end

local function playLoadAnimation()
	MainFrame.BackgroundTransparency = 1
	Title.TextTransparency = 1
	Title.AnchorPoint = Vector2.new(0.5, 0.5)
	Title.Position = UDim2.new(0.5,0,0.5,0)
	MainFrame.Size = UDim2.new(0.3,0,0.3,0)
	makeInvis()
	LoadInTween:Play()
	TextTransTween:Play()
	MainFrameTransTween:Play()
	task.wait(1)
	SizeTween:Play()
	TextTween:Play()
	fadeIn()
end

local dragging      = false
local inputChanged2 = nil

local function enable()
	local object          = MainFrame
	local dragInput       = nil
	local dragStart       = nil
	local startPos        = nil
	local preparingToDrag = false

	local currentPos    = nil
	local targetPos     = nil
	local heartbeatConn = nil

	local LERP_SPEED = 14

	local function lerp(a, b, t)
		return a + (b - a) * t
	end

	local function startLoop()
		if heartbeatConn then return end
		heartbeatConn = RunService.Heartbeat:Connect(function(dt)
			local t = math.min(dt * LERP_SPEED, 1)

			currentPos = UDim2.new(
				currentPos.X.Scale, lerp(currentPos.X.Offset, targetPos.X.Offset, t),
				currentPos.Y.Scale, lerp(currentPos.Y.Offset, targetPos.Y.Offset, t)
			)
			object.Position = currentPos

			if not dragging then
				local posDone = math.abs(currentPos.X.Offset - targetPos.X.Offset) < 0.5
					and math.abs(currentPos.Y.Offset - targetPos.Y.Offset) < 0.5
				if posDone then
					object.Position = targetPos
					heartbeatConn:Disconnect()
					heartbeatConn = nil
				end
			end
		end)
	end

	local function update(input)
		local delta = input.Position - dragStart
		targetPos = UDim2.new(
			startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y
		)
	end

	object.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1
			or input.UserInputType == Enum.UserInputType.Touch then
			preparingToDrag = true

			local connection
			connection = input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End
					and (dragging or preparingToDrag) then
					dragging        = false
					preparingToDrag = false
					connection:Disconnect()
				end
			end)
		end
	end)

	object.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement
			or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	inputChanged2 = UserInputService.InputChanged:Connect(function(input)
		if object.Parent == nil then
			if inputChanged2 then inputChanged2:Disconnect(); inputChanged2 = nil end
			if heartbeatConn then heartbeatConn:Disconnect(); heartbeatConn = nil end
			return
		end

		if preparingToDrag then
			preparingToDrag = false
			dragging        = true
			dragStart       = input.Position
			startPos        = object.Position
			currentPos      = object.Position
			targetPos       = object.Position
			startLoop()
		end

		if input == dragInput and dragging then
			update(input)
		end
	end)
end

enable()

local function findPlot()
	for i, plot in Workspace.Plots:GetChildren() do
		if plot:IsA("Model") then
			if string.match(plot.BaseDisplay.BaseInfo.Title.Text, Player.Name) then
				return plot
			end
		end
	end
end

local plot = findPlot()
local function hasBrainrot(stand)
	for i, child in stand:GetChildren() do
		if child:FindFirstChildOfClass("AnimationController") then
			return true
		end
	end
	return false
end

local function teleportTo(position)
	local hrp = Player.Character:FindFirstChild("HumanoidRootPart")
	hrp.Position = position
end

local function findPlotSpawn()
	for i, plot in Workspace.Plots:GetChildren() do
		if plot:IsA("Model") then
			if string.match(plot.BaseDisplay.BaseInfo.Title.Text, Player.Name) then
				local spawnThing = plot:FindFirstChild("Spawn")
				if spawnThing then
					return spawnThing
				end
			end
		end
	end
end

local function teleportToPlot()
	local plot = findPlotSpawn()
	teleportTo(plot.Position)
end

local function autoFarm()
	autofarming = true
	teleportTo(positions["bestCelestial"])
end

local function stopAutoFarm()
	autofarming = false
end

local function collectAll()
	for i, floor in plot.Floors:GetChildren() do
		for i, stand in floor.Stands:GetChildren() do
			if hasBrainrot(stand) then
				local touchpart = stand.CashModel:FindFirstChild("TouchPart")
				teleportTo(touchpart.Position)
			end
			task.wait(0.2)
		end
		task.wait(0.2)
	end
	local plotSpawn = findPlotSpawn()
	teleportTo(plotSpawn.Position)
end

for i, frame in DropDownFrame:GetChildren() do
	if frame:IsA("Frame") then
		local tpPos = positions[frame.Name]
		frame.TPButton.MouseButton1Click:Connect(function()
			teleportTo(tpPos)
		end)
	end
end

for i, floor in plot.Floors:GetChildren() do
	for i, stand in floor.Stands:GetChildren() do
		stand.ChildAdded:Connect(function(child)
			if child:FindFirstChildOfClass("AnimationController") and autofarming then
				task.wait(0.5)
				teleportTo(positions["bestCelestial"])
			end
		end)
	end
end

game.Workspace.DescendantAdded:Connect(function(desc)
	if desc.Name == "PoliceCar" then
		teleportToPlot()
	end
end)

AutofarmToggleBtn.MouseButton1Click:Connect(function()
	if autofarming then
		stopAutoFarm()
		AutofarmToggleBtn.Text = "Auto Farm: Off"
		AutofarmToggleBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	else
		autoFarm()
		AutofarmToggleBtn.Text = "Auto Farm: On"
		AutofarmToggleBtn.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
	end
end)

CollectAllBtn.MouseButton1Click:Connect(function()
	collectAll()
end)

AutofarmToggleBtn.Text = "Auto Farm: Off"
AutofarmToggleBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)

playLoadAnimation()
