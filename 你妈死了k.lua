if game.PlaceId == 2753915549 or game.PlaceId == 4442272183 or game.PlaceId == 7449423635 then
_G.Color = Color3.fromRGB(255,255,255)
if not game:IsLoaded() then repeat game.Loaded:Wait() until game:IsLoaded() end

repeat wait() until game:GetService("Players")

if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then repeat wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") end

wait(1)

do
local ui = game.CoreGui:FindFirstChild("UlLib")
if ui then
ui:Destroy()
end
end

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local function MakeDraggable(topbarobject, object)
local Dragging = nil
local DragInput = nil
local DragStart = nil
local StartPosition = nil

local function Update(input)
local Delta = input.Position - DragStart
local pos =
UDim2.new(
StartPosition.X.Scale,
StartPosition.X.Offset + Delta.X,
StartPosition.Y.Scale,
StartPosition.Y.Offset + Delta.Y
)
local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
Tween:Play()
end

topbarobject.InputBegan:Connect(
function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
Dragging = true
DragStart = input.Position
StartPosition = object.Position

input.Changed:Connect(
function()
if input.UserInputState == Enum.UserInputState.End then
Dragging = false
end
end
)
end
end
)

topbarobject.InputChanged:Connect(
function(input)
if
input.UserInputType == Enum.UserInputType.MouseMovement or
input.UserInputType == Enum.UserInputType.Touch
then
DragInput = input
end
end
)

UserInputService.InputChanged:Connect(
function(input)
if input == DragInput and Dragging then
Update(input)
end
end
)
end

local library = {}

function library:AddWindow(text,keybind)
local bind = keybind or Enum.KeyCode.RightControl
local ff = false
local currenttab = ""

local DoctorShiba = Instance.new("ScreenGui")
DoctorShiba.Name = "UlLib"
DoctorShiba.Parent = game.CoreGui
DoctorShiba.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local Main = Instance.new("Frame")
Main.Name = "Main"
Main.Parent = DoctorShiba
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(30, 28, 39)
Main.BackgroundTransparency = 0.100
Main.BorderSizePixel = 0
Main.ClipsDescendants = true
Main.Position = UDim2.new(0.499526083, 0, 0.499241292, 0)
Main.Size = UDim2.new(0, 600, 0, 350)

local Top = Instance.new("Frame")
Top.Name = "Top"
Top.Parent = Main
Top.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Top.BackgroundTransparency = 1.000
Top.BorderSizePixel = 0
Top.Size = UDim2.new(0, 600, 0, 20)

local Page = Instance.new("Frame")
Page.Name = "Page"
Page.Parent = Main
Page.BackgroundColor3 = Color3.fromRGB(25, 23, 35)
Page.BackgroundTransparency = 0.100
Page.BorderSizePixel = 0
Page.Size = UDim2.new(0, 125, 0, 350)

local NameHub = Instance.new("TextLabel")
NameHub.Name = "NameHub"
NameHub.Parent = Page
NameHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
NameHub.BackgroundTransparency = 1.000
NameHub.Position = UDim2.new(0.113333493, 0, 0, 0)
NameHub.Size = UDim2.new(0, 110, 0, 20)
NameHub.Font = Enum.Font.GothamSemibold
NameHub.Text = text
NameHub.TextColor3 = Color3.fromRGB(225, 0, 0)
NameHub.TextSize = 11.000
NameHub.TextXAlignment = Enum.TextXAlignment.Left

local User = Instance.new("Frame")
User.Name = "User"
User.Parent = Page
User.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
User.BackgroundTransparency = 1.000
User.Position = UDim2.new(0, 0, 0.8, 30)
User.Size = UDim2.new(0, 125, 0, 40)

local UserText = Instance.new("TextLabel")
UserText.Name = "UserText"
UserText.Parent = User
UserText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UserText.BackgroundTransparency = 1.000
UserText.Position = UDim2.new(0.354999989, 0, 0, 11)
UserText.Size = UDim2.new(0, 80, 0, 20)
UserText.Font = Enum.Font.Gotham
UserText.Text = tostring(game.Players.LocalPlayer.Name)
spawn(function()
while wait() do
pcall(function()
wait(0.1)
game:GetService('TweenService'):Create(
UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
{TextColor3 = Color3.fromRGB(255, 255, 255)}
):Play()
wait(.5)
game:GetService('TweenService'):Create(
UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
{TextColor3 = Color3.fromRGB(255, 155, 0)}
):Play()
wait(.5)
game:GetService('TweenService'):Create(
UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
{TextColor3 = Color3.fromRGB(255, 255, 0)}
):Play()
wait(.5)
game:GetService('TweenService'):Create(
UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
{TextColor3 = Color3.fromRGB(0, 255, 0)}
):Play()
wait(.5)
game:GetService('TweenService'):Create(
UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
{TextColor3 = Color3.fromRGB(0, 255, 255)}
):Play()
wait(.5)
game:GetService('TweenService'):Create(
UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
{TextColor3 = Color3.fromRGB(0, 155, 255)}
):Play()
wait(.5)
game:GetService('TweenService'):Create(
UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
{TextColor3 = Color3.fromRGB(255, 0, 255)}
):Play()
wait(.5)
game:GetService('TweenService'):Create(
UserText,TweenInfo.new(1,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),
{TextColor3 = Color3.fromRGB(255, 0, 155)}
):Play()
wait(.5)
end)
end
end)
UserText.TextScaled = true
UserText.TextSize = 11.000
UserText.TextWrapped = true
UserText.TextXAlignment = Enum.TextXAlignment.Left

local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
UITextSizeConstraint.Parent = UserText
UITextSizeConstraint.MaxTextSize = 11

local UserImage = Instance.new("ImageLabel")
UserImage.Name = "UserImage"
UserImage.Parent = User
UserImage.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
UserImage.Position = UDim2.new(0, 10, 0, 9)
UserImage.Size = UDim2.new(0, 25, 0, 25)
UserImage.Image = "https://www.roblox.com/headshot-thumbnail/image?userId="..game.Players.LocalPlayer.UserId.."&width=420&height=420&format=png"

local UserImageCorner = Instance.new("UICorner")
UserImageCorner.CornerRadius = UDim.new(0, 100)
UserImageCorner.Name = "UserImageCorner"
UserImageCorner.Parent = UserImage

local ScrollPage = Instance.new("ScrollingFrame")
ScrollPage.Name = "ScrollPage"
ScrollPage.Parent = Page
ScrollPage.Active = true
ScrollPage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollPage.BackgroundTransparency = 1.000
ScrollPage.BorderSizePixel = 0
ScrollPage.Position = UDim2.new(0, 0, 0.086, 0)
ScrollPage.Size = UDim2.new(0, 125, 0, 290)
ScrollPage.CanvasSize = UDim2.new(0, 0, 0, 0)
ScrollPage.ScrollBarThickness = 0
local PageList = Instance.new("UIListLayout")
PageList.Name = "PageList"
PageList.Parent = ScrollPage
PageList.SortOrder = Enum.SortOrder.LayoutOrder
PageList.Padding = UDim.new(0, 7)

local PagePadding = Instance.new("UIPadding")
PagePadding.Name = "PagePadding"
PagePadding.Parent = ScrollPage
PagePadding.PaddingTop = UDim.new(0, 5)
PagePadding.PaddingLeft = UDim.new(0, 28)

local TabFolder = Instance.new("Folder")
TabFolder.Name = "TabFolder"
TabFolder.Parent = Main

MakeDraggable(Top,Main)

local uihide = false

UserInputService.InputBegan:Connect(function(input)
if input.KeyCode == bind then
if uihide == false then
uihide = true
Main:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.2,true)
else
uihide = false
Main:TweenSize(UDim2.new(0, 600, 0, 350),"Out","Quad",0.2,true)
end
end
end)

local uitab = {}

function uitab:AddTab(text,image)
local Image = image or 6023426915

local PageButton = Instance.new("TextButton")
PageButton.Name = "PageButton"
PageButton.Parent = ScrollPage
PageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PageButton.BackgroundTransparency = 1.000
PageButton.BorderSizePixel = 0
PageButton.Position = UDim2.new(0.224000007, 0, 0.029787235, 0)
PageButton.Size = UDim2.new(0, 97, 0, 20)
PageButton.AutoButtonColor = false
PageButton.Font = Enum.Font.GothamSemibold
PageButton.Text = text
PageButton.TextColor3 = Color3.fromRGB(225, 225, 225)
PageButton.TextSize = 11.000
PageButton.TextXAlignment = Enum.TextXAlignment.Left

local PageImage = Instance.new("ImageLabel")
PageImage.Name = "PageImage"
PageImage.Parent = PageButton
PageImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PageImage.BackgroundTransparency = 1.000
PageImage.Position = UDim2.new(0, -20, 0, 3)
PageImage.Size = UDim2.new(0, 15, 0, 15)
PageImage.Image = "rbxassetid://"..tostring(Image)

local MainTab = Instance.new("Frame")
MainTab.Name = "MainTab"
MainTab.Parent = TabFolder
MainTab.BackgroundColor3 = Color3.fromRGB(30, 28, 39)
MainTab.BorderSizePixel = 0
MainTab.Position = UDim2.new(0.208333328, 0, 0, 0)
MainTab.Size = UDim2.new(0, 475, 0, 350)
MainTab.Visible = false

local ScrollTab = Instance.new("ScrollingFrame")
ScrollTab.Name = "ScrollTab"
ScrollTab.Parent = MainTab
ScrollTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollTab.BackgroundTransparency = 1.000
ScrollTab.BorderSizePixel = 0
ScrollTab.Position = UDim2.new(0, 0, 0.057, 0)
ScrollTab.Size = UDim2.new(0, 475, 0, 330)
ScrollTab.CanvasSize = UDim2.new(0, 0, 0, 0)
ScrollTab.ScrollBarThickness = 3

local TabList = Instance.new("UIListLayout")
TabList.Name = "TabList"
TabList.Parent = ScrollTab
TabList.SortOrder = Enum.SortOrder.LayoutOrder
TabList.Padding = UDim.new(0, 5)

local TabPadding = Instance.new("UIPadding")
TabPadding.Name = "TabPadding"
TabPadding.Parent = ScrollTab
TabPadding.PaddingLeft = UDim.new(0, 10)
TabPadding.PaddingTop = UDim.new(0, 10)

PageButton.MouseButton1Click:Connect(function()
currenttab = MainTab.Name
for i,v in next, TabFolder:GetChildren() do
if v.Name == "MainTab" then
v.Visible = false
end
end
MainTab.Visible = true

for i,v in next, ScrollPage:GetChildren() do
if v:IsA("TextButton") then
TweenService:Create(
v,
TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
{TextColor3 = Color3.fromRGB(225, 225, 225)}
):Play()
end
TweenService:Create(
PageButton,
TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
{TextColor3 = Color3.fromRGB(255,255,255)}
):Play()
end
end)

if ff == false then
TweenService:Create(
PageButton,
TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
{TextColor3 = Color3.fromRGB(255,255,255)}
):Play()
for i,v in next, TabFolder:GetChildren() do
if v.Name == "MainTab" then
v.Visible = false
end
MainTab.Visible = true
end
ff = true
end

game:GetService("RunService").Stepped:Connect(function()
pcall(function()
ScrollPage.CanvasSize = UDim2.new(0,0,0,PageList.AbsoluteContentSize.Y + 10)
ScrollTab.CanvasSize = UDim2.new(0,0,0,TabList.AbsoluteContentSize.Y + 30)
end)
end)

local main = {}

function main:AddButton(text,callback)
local Button = Instance.new("TextButton")

Button.Name = "Button"
Button.Parent = ScrollTab
Button.BackgroundColor3 = Color3.fromRGB(50, 48, 59)
Button.BackgroundTransparency = 0.1
Button.BorderSizePixel = 0
Button.Size = UDim2.new(0, 455, 0, 30)
Button.AutoButtonColor = false
Button.Font = Enum.Font.Gotham
Button.Text = text
Button.TextColor3 = Color3.fromRGB(225, 225, 225)
Button.TextSize = 9.000
Button.TextWrapped = true

local ButtonCorner = Instance.new("UICorner")
ButtonCorner.Name = "ButtonCorner"
ButtonCorner.CornerRadius = UDim.new(0, 5)
ButtonCorner.Parent = Button

Button.MouseEnter:Connect(function()
TweenService:Create(
Button,
TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
{TextColor3 = Color3.fromRGB(255,255,255)}
):Play()
end)

Button.MouseLeave:Connect(function()
TweenService:Create(
Button,
TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
{TextColor3 = Color3.fromRGB(225, 225, 225)}
):Play()
end)

Button.MouseButton1Click:Connect(function()
callback()
Button.TextSize = 0
TweenService:Create(
Button,
TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.Out),
{TextSize = 11}
):Play()
end)
end

function main:AddToggle(text,config,callback)
local ToggleImage = Instance.new("Frame")

local Toggle = Instance.new("TextButton")
Toggle.Name = "Toggle"
Toggle.Parent = ScrollTab
Toggle.BackgroundColor3 = Color3.fromRGB(50, 48, 59)
Toggle.BackgroundTransparency = 0.1
Toggle.BorderSizePixel = 0
Toggle.AutoButtonColor = true
Toggle.Size = UDim2.new(0, 455, 0, 30)
Toggle.Font = Enum.Font.SourceSans
Toggle.Text = ""
Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
Toggle.TextSize = 12.000

local ToggleCorner = Instance.new("UICorner")
ToggleCorner.Name = "ToggleCorner"
ToggleCorner.CornerRadius = UDim.new(0, 5)
ToggleCorner.Parent = Toggle

local ToggleLabel = Instance.new("TextLabel")
ToggleLabel.Name = "ToggleLabel"
ToggleLabel.Parent = Toggle
ToggleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggleLabel.BackgroundTransparency = 1.000
ToggleLabel.Position = UDim2.new(0, 13, 0, 0)
ToggleLabel.Size = UDim2.new(0, 410, 0, 30)
ToggleLabel.Font = Enum.Font.Gotham
ToggleLabel.Text = text
ToggleLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
ToggleLabel.TextSize = 11.000
ToggleLabel.TextXAlignment = Enum.TextXAlignment.Left

ToggleImage.Name = "ToggleImage"
ToggleImage.Parent = Toggle
ToggleImage.BackgroundColor3 = Color3.fromRGB(70, 68, 79)
ToggleImage.Position = UDim2.new(0, 425, 0, 5)
ToggleImage.BorderSizePixel = 0
ToggleImage.Size = UDim2.new(0, 20, 0, 20)
local ToggleImageCorner = Instance.new("UICorner")
ToggleImageCorner.Name = "ToggleImageCorner"
ToggleImageCorner.CornerRadius = UDim.new(0, 5)
ToggleImageCorner.Parent = ToggleImage

local ToggleImage2 = Instance.new("Frame")
ToggleImage2.Name = "ToggleImage2"
ToggleImage2.Parent = ToggleImage
ToggleImage2.AnchorPoint = Vector2.new(0.5, 0.5)
ToggleImage2.BackgroundColor3 = Color3.fromRGB(255,255,255)
ToggleImage2.Position = UDim2.new(0, 10, 0, 10)
ToggleImage2.Visible = false

local ToggleImage2Corner = Instance.new("UICorner")
ToggleImage2Corner.Name = "ToggleImageCorner"
ToggleImage2Corner.CornerRadius = UDim.new(0, 5)
ToggleImage2Corner.Parent = ToggleImage2

Toggle.MouseEnter:Connect(function()
TweenService:Create(
ToggleLabel,
TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
{TextColor3 = Color3.fromRGB(255,255,255)}
):Play()
end)

Toggle.MouseLeave:Connect(function()
TweenService:Create(
ToggleLabel,
TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
{TextColor3 = Color3.fromRGB(225, 225, 225)}
):Play()
end)
if config == nil then config = false end
local toggled = config or false
Toggle.MouseButton1Click:Connect(function()
if toggled == false then
toggled = true
ToggleImage2.Visible = true
ToggleImage2:TweenSize(UDim2.new(0, 21, 0, 21),"In","Quad",0.1,true)
else
toggled = false
ToggleImage2:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.1,true)
wait(0.1)
ToggleImage2.Visible = false
end
callback(toggled)
end)

if config == true then
ToggleImage2.Visible = true
ToggleImage2:TweenSize(UDim2.new(0, 21, 0, 21),"In","Quad",0.1,true)
toggled = true
callback(toggled)
end
end

function main:AddTextbox(text,holder,disappear,callback)
local Textboxx = Instance.new("Frame")
local TextboxxCorner = Instance.new("UICorner")
local TextboxTitle = Instance.new("TextLabel")
local Textbox = Instance.new("TextBox")
local TextboxCorner = Instance.new("UICorner")

Textboxx.Name = "Textboxx"
Textboxx.Parent = ScrollTab
Textboxx.BackgroundColor3 = Color3.fromRGB(50, 48, 59)
Textboxx.Size = UDim2.new(0, 455, 0, 30)

TextboxxCorner.CornerRadius = UDim.new(0, 5)
TextboxxCorner.Name = "TextboxxCorner"
TextboxxCorner.Parent = Textboxx

TextboxTitle.Name = "TextboxTitle"
TextboxTitle.Parent = Textboxx
TextboxTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextboxTitle.BackgroundTransparency = 1.000
TextboxTitle.Position = UDim2.new(0, 15, 0, 0)
TextboxTitle.Size = UDim2.new(0, 300, 0, 30)
TextboxTitle.Font = Enum.Font.Gotham
TextboxTitle.Text = text
TextboxTitle.TextColor3 = Color3.fromRGB(225, 225, 225)
TextboxTitle.TextSize = 11.000
TextboxTitle.TextXAlignment = Enum.TextXAlignment.Left

Textbox.Name = "Textbox"
Textbox.Parent = Textboxx
Textbox.BackgroundColor3 = Color3.fromRGB(30, 28, 39)
Textbox.Position = UDim2.new(0, 310, 0, 5)
Textbox.Size = UDim2.new(0, 140, 0, 20)
Textbox.Font = Enum.Font.Gotham
Textbox.Text = holder
Textbox.TextColor3 = Color3.fromRGB(225, 225, 225)
Textbox.TextSize = 11.000

Textbox.FocusLost:Connect(function()
if #Textbox.Text > 0 then
callback(Textbox.Text)
end
if disappear then
Textbox.Text = ""
else
Textbox.Text = holder
end
end)

TextboxCorner.Name = "TextboxCorner"
TextboxCorner.CornerRadius = UDim.new(0, 5)
TextboxCorner.Parent = Textbox
end

function main:AddDropdown(text,table,callback)
local Dropdown = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local DropButton = Instance.new("TextButton")
local Droptitle = Instance.new("TextLabel")
local DropScroll = Instance.new("ScrollingFrame")
local DropdownList = Instance.new("UIListLayout")
local DropdownPadding = Instance.new("UIPadding")
local DropImage = Instance.new("ImageLabel")

Dropdown.Name = "Dropdown"
Dropdown.Parent = ScrollTab
Dropdown.Active = true
Dropdown.BackgroundColor3 = Color3.fromRGB(50, 48, 59)
Dropdown.ClipsDescendants = true
Dropdown.Size = UDim2.new(0, 455, 0, 30)

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = Dropdown

DropButton.Name = "DropButton"
DropButton.Parent = Dropdown
DropButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DropButton.BackgroundTransparency = 1.000
DropButton.Size = UDim2.new(0, 455, 0, 30)
DropButton.Font = Enum.Font.SourceSans
DropButton.Text = ""
DropButton.TextColor3 = Color3.fromRGB(0, 0, 0)
DropButton.TextSize = 14.000

Droptitle.Name = "Droptitle"
Droptitle.Parent = Dropdown
Droptitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Droptitle.BackgroundTransparency = 1.000
Droptitle.Position = UDim2.new(0.0281690136, 0, 0, 0)
Droptitle.Size = UDim2.new(0, 410, 0, 30)
Droptitle.Font = Enum.Font.Gotham
Droptitle.Text = text.." : "
Droptitle.TextColor3 = Color3.fromRGB(225, 225, 225)
Droptitle.TextSize = 11.000
Droptitle.TextXAlignment = Enum.TextXAlignment.Left

DropImage.Name = "DropImage"
DropImage.Parent = Dropdown
DropImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DropImage.BackgroundTransparency = 1.000
DropImage.Position = UDim2.new(0, 425, 0, 5)
DropImage.Rotation = 0
DropImage.Size = UDim2.new(0, 20, 0, 20)
DropImage.Image = "rbxassetid://5012539403"

DropScroll.Name = "DropScroll"
DropScroll.Parent = Droptitle
DropScroll.Active = true
DropScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DropScroll.BackgroundTransparency = 1.000
DropScroll.BorderSizePixel = 0
DropScroll.Position = UDim2.new(-0.0317460336, 0, 1, 0)
DropScroll.Size = UDim2.new(0, 455, 0, 70)
DropScroll.CanvasSize = UDim2.new(0, 0, 0, 2)
DropScroll.ScrollBarThickness = 2

DropdownList.Name = "DropdownList"
DropdownList.Parent = DropScroll
DropdownList.SortOrder = Enum.SortOrder.LayoutOrder
DropdownList.Padding = UDim.new(0, 5)

DropdownPadding.Name = "DropdownPadding"
DropdownPadding.Parent = DropScroll
DropdownPadding.PaddingTop = UDim.new(0, 5)

local isdropping = false

for i,v in next,table do
local DropButton2 = Instance.new("TextButton")

DropButton2.Name = "DropButton2"
DropButton2.Parent = DropScroll
DropButton2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
DropButton2.BackgroundTransparency = 1.000
DropButton2.Size = UDim2.new(0, 455, 0, 30)
DropButton2.AutoButtonColor = false
DropButton2.Font = Enum.Font.Gotham
DropButton2.TextColor3 = Color3.fromRGB(225, 225, 225)
DropButton2.TextSize = 11.000
DropButton2.Text = tostring(v)

DropButton2.MouseEnter:Connect(function()
TweenService:Create(
DropButton2,
TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
{TextColor3 = Color3.fromRGB(255,255,255)}
):Play()
end)
DropButton2.MouseLeave:Connect(function()
TweenService:Create(
DropButton2,
TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
{TextColor3 = Color3.fromRGB(225, 225, 225)}
):Play()
end)

DropButton2.MouseButton1Click:Connect(function()
TweenService:Create(
Dropdown,
TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
{Size = UDim2.new(0, 455, 0, 30)}
):Play()
TweenService:Create(
DropImage,
TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
{Rotation = 0}
):Play()
Droptitle.Text =  text.." : "..tostring(v)
callback(v)
isdropping = not isdropping
DropScroll.CanvasSize = UDim2.new(0,0,0,DropdownList.AbsoluteContentSize.Y + 10)
end)
end

DropButton.MouseButton1Click:Connect(function()
if isdropping == false then
isdropping = true
TweenService:Create(
Dropdown,
TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
{Size = UDim2.new(0, 455, 0, 100)}
):Play()
TweenService:Create(
DropImage,
TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
{Rotation = -180}
):Play()
DropScroll.CanvasSize = UDim2.new(0,0,0,DropdownList.AbsoluteContentSize.Y + 10)
else
isdropping = false
TweenService:Create(
Dropdown,
TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
{Size = UDim2.new(0, 455, 0, 30)}
):Play()
TweenService:Create(
DropImage,
TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
{Rotation = 0}
):Play()
DropScroll.CanvasSize = UDim2.new(0,0,0,DropdownList.AbsoluteContentSize.Y + 10)
end
end)
DropScroll.CanvasSize = UDim2.new(0,0,0,DropdownList.AbsoluteContentSize.Y + 10)

local drop = {}

function drop:Clear()
Droptitle.Text = tostring(text).." :"
TweenService:Create(
Dropdown,
TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
{Size = UDim2.new(0, 455, 0, 30)}
):Play()
isdropping = false
for i, v in next, DropScroll:GetChildren() do
if v:IsA("TextButton") then
v:Destroy()
end
end
end
function drop:Add(t)
local DropButton2 = Instance.new("TextButton")

DropButton2.Name = "DropButton2"
DropButton2.Parent = DropScroll
DropButton2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
DropButton2.BackgroundTransparency = 1.000
DropButton2.Size = UDim2.new(0, 455, 0, 30)
DropButton2.AutoButtonColor = false
DropButton2.Font = Enum.Font.Gotham
DropButton2.TextColor3 = Color3.fromRGB(225, 225, 225)
DropButton2.TextSize = 11.000
DropButton2.Text = tostring(t)

DropButton2.MouseButton1Click:Connect(function()
TweenService:Create(
Dropdown,
TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
{Size = UDim2.new(0, 455, 0, 30)}
):Play()
TweenService:Create(
DropImage,
TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
{Rotation = 0}
):Play()
Droptitle.Text =  text.." : "..tostring(t)
callback(t)
isdropping = not isdropping
DropScroll.CanvasSize = UDim2.new(0,0,0,DropdownList.AbsoluteContentSize.Y + 10)
end)
end
return drop
end

function main:AddSlider(text,min,max,set,callback)
set = (math.clamp(set,min,max))
if set > max then set = max end

local Slider = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local SliderTitle = Instance.new("TextLabel")
local SliderValue = Instance.new("TextLabel")
local SliderButton = Instance.new("TextButton")
local Bar1 = Instance.new("Frame")
local Bar = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local CircleBar = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local UICorner_4 = Instance.new("UICorner")

Slider.Name = "Slider"
Slider.Parent = ScrollTab
Slider.BackgroundColor3 = Color3.fromRGB(50, 48, 59)
Slider.Size = UDim2.new(0, 455, 0, 40)

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = Slider

SliderTitle.Name = "SliderTitle"
SliderTitle.Parent = Slider
SliderTitle.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
SliderTitle.BackgroundTransparency = 1.000
SliderTitle.Position = UDim2.new(0.0283286124, 0, 0, 0)
SliderTitle.Size = UDim2.new(0, 290, 0, 20)
SliderTitle.Font = Enum.Font.Gotham
SliderTitle.Text = text
SliderTitle.TextColor3 = Color3.fromRGB(225, 225, 225)
SliderTitle.TextSize = 11.000
SliderTitle.TextXAlignment = Enum.TextXAlignment.Left

SliderValue.Name = "SliderValue"
SliderValue.Parent = Slider
SliderValue.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
SliderValue.BackgroundTransparency = 1.000
SliderValue.Position = UDim2.new(0.887778878, 0, 0, 0)
SliderValue.Size = UDim2.new(0, 40, 0, 20)
SliderValue.Font = Enum.Font.Gotham
SliderValue.Text =  tostring(set and math.floor( (set / max) * (max - min) + min) or 0)
SliderValue.TextColor3 = Color3.fromRGB(225, 225, 225)
SliderValue.TextSize = 11.000

SliderButton.Name = "SliderButton"
SliderButton.Parent = Slider
SliderButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
SliderButton.BackgroundTransparency = 1.000
SliderButton.Position = UDim2.new(0, 10, 0, 25)
SliderButton.Size = UDim2.new(0, 435, 0, 5)
SliderButton.AutoButtonColor = false
SliderButton.Font = Enum.Font.SourceSans
SliderButton.Text = ""
SliderButton.TextColor3 = Color3.fromRGB(0, 0, 0)
SliderButton.TextSize = 14.000

Bar1.Name = "Bar1"
Bar1.Parent = SliderButton
Bar1.BackgroundColor3 = Color3.fromRGB(30, 28, 39)
Bar1.Size = UDim2.new(0, 435, 0, 5)

Bar.Name = "Bar"
Bar.Parent = Bar1
Bar.BackgroundColor3 = Color3.fromRGB(255,255,255)
Bar.Size = UDim2.new(set/max, 0, 0, 5)

UICorner_2.CornerRadius = UDim.new(0, 100)
UICorner_2.Parent = Bar

CircleBar.Name = "CircleBar"
CircleBar.Parent = Bar
CircleBar.BackgroundColor3 = Color3.fromRGB(255, 8, 0)
CircleBar.Position = UDim2.new(1, -2, 0, -2)
CircleBar.AnchorPoint = Vector2.new(0, 0.1)
CircleBar.Size = UDim2.new(0, 10, 0, 10)

UICorner_3.CornerRadius = UDim.new(0, 100)
UICorner_3.Parent = CircleBar

UICorner_4.CornerRadius = UDim.new(0, 100)
UICorner_4.Parent = Bar1

local mouse = game.Players.LocalPlayer:GetMouse()
local uis = game:GetService("UserInputService")

if Value == nil then
Value = set
pcall(function()
callback(Value)
end)
end

SliderButton.MouseButton1Down:Connect(function()
Value = math.floor((((tonumber(max) - tonumber(min)) / 435) * Bar.AbsoluteSize.X) + tonumber(min)) or 0
pcall(function()
callback(Value)
end)
Bar.Size = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X, 0, 435), 0, 5)
CircleBar.Position = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X - 2, 0, 425), 0, -2)
moveconnection = mouse.Move:Connect(function()
SliderValue.Text = Value
Value = math.floor((((tonumber(max) - tonumber(min)) / 435) * Bar.AbsoluteSize.X) + tonumber(min))
pcall(function()
callback(Value)
end)
Bar.Size = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X, 0, 435), 0, 5)
CircleBar.Position = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X - 2, 0, 425), 0, -2)
end)
releaseconnection = uis.InputEnded:Connect(function(Mouse)
if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
Value = math.floor((((tonumber(max) - tonumber(min)) / 435) * Bar.AbsoluteSize.X) + tonumber(min))
pcall(function()
callback(Value)
end)
Bar.Size = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X, 0, 435), 0, 5)
CircleBar.Position = UDim2.new(0, math.clamp(mouse.X - Bar.AbsolutePosition.X - 2, 0, 425), 0, -2)
moveconnection:Disconnect()
releaseconnection:Disconnect()
end
end)
end)
releaseconnection = uis.InputEnded:Connect(function(Mouse)
if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
Value = math.floor((((tonumber(max) - tonumber(min)) / 435) * Bar.AbsoluteSize.X) + tonumber(min))
SliderValue.Text = Value
end
end)
end
function main:AddSeperator(text)
local Seperator = Instance.new("Frame")
local Sep1 = Instance.new("Frame")
local SepLabel = Instance.new("TextLabel")
local Sep2 = Instance.new("Frame")

Seperator.Name = "Seperator"
Seperator.Parent = ScrollTab
Seperator.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Seperator.BackgroundTransparency = 1.000
Seperator.ClipsDescendants = true
Seperator.Size = UDim2.new(0, 455, 0, 20)

Sep1.Name = "Sep1"
Sep1.Parent = Seperator
Sep1.BackgroundColor3 = Color3.fromRGB(255,255,255)
Sep1.BorderSizePixel = 0
Sep1.Position = UDim2.new(0, 0, 0, 10)
Sep1.Size = UDim2.new(0, 150, 0, 1)

SepLabel.Name = "SepLabel"
SepLabel.Parent = Seperator
SepLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SepLabel.BackgroundTransparency = 1.000
SepLabel.Position = UDim2.new(0, 95, 0, 0)
SepLabel.Size = UDim2.new(0, 255, 0, 20)
SepLabel.Font = Enum.Font.Gotham
SepLabel.Text = text
SepLabel.TextColor3 = Color3.fromRGB(225,225,225)
SepLabel.TextSize = 11.000

Sep2.Name = "Sep2"
Sep2.Parent = Seperator
Sep2.BackgroundColor3 = Color3.fromRGB(255,255,255)
Sep2.BorderSizePixel = 0
Sep2.Position = UDim2.new(0, 305, 0, 10)
Sep2.Size = UDim2.new(0, 150, 0, 1)
end
function main:AddLine()
local Line = Instance.new("Frame")
local Linee = Instance.new("Frame")

Line.Name = "Line"
Line.Parent = ScrollTab
Line.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Line.BackgroundTransparency = 1.000
Line.ClipsDescendants = true
Line.Size = UDim2.new(0, 455, 0, 20)

Linee.Name = "Linee"
Linee.Parent = Line
Linee.BackgroundColor3 = Color3.fromRGB(255,255,255)
Linee.BorderSizePixel = 0
Linee.Position = UDim2.new(0, 0, 0, 10)
Linee.Size = UDim2.new(0, 455, 0, 1)
end
function main:AddLabel(text)
local Label = Instance.new("TextLabel")
local PaddingLabel = Instance.new("UIPadding")
local labell = {}

Label.Name = "Label"
Label.Parent = ScrollTab
Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Label.BackgroundTransparency = 1.000
Label.Size = UDim2.new(0, 455, 0, 20)
Label.Font = Enum.Font.Gotham
Label.TextColor3 = Color3.fromRGB(225, 225, 225)
Label.TextSize = 11.000
Label.Text = text
Label.TextXAlignment = Enum.TextXAlignment.Left

PaddingLabel.PaddingLeft = UDim.new(0,10)
PaddingLabel.Parent = Label
PaddingLabel.Name = "PaddingLabel"

function labell:Set(newtext)
Label.Text = newtext
end

return labell
end

return main
end
return uitab
end

--------------------------------------------------------------------
if game.PlaceId == 2753915549 then
World1 = true
elseif game.PlaceId == 4442272183 then
World2 = true
elseif game.PlaceId == 7449423635 then
World3 = true
end

function CheckQuest()
MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
if World1 then
if MyLevel == 1 or MyLevel <= 9 then
Mon = "Bandit [Lv. 5]"
LevelQuest = 1
NameQuest = "BanditQuest1"
NameMon = "Bandit"
CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
elseif MyLevel == 10 or MyLevel <= 14 then
Mon = "Monkey [Lv. 14]"
LevelQuest = 1
NameQuest = "JungleQuest"
NameMon = "Monkey"
CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
elseif MyLevel == 15 or MyLevel <= 29 then
Mon = "Gorilla [Lv. 20]"
LevelQuest = 2
NameQuest = "JungleQuest"
NameMon = "Gorilla"
CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
elseif MyLevel == 30 or MyLevel <= 39 then
Mon = "Pirate [Lv. 35]"
LevelQuest = 1
NameQuest = "BuggyQuest1"
NameMon = "Pirate"
CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
elseif MyLevel == 40 or MyLevel <= 59 then
Mon = "Brute [Lv. 45]"
LevelQuest = 2
NameQuest = "BuggyQuest1"
NameMon = "Brute"
CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
elseif MyLevel == 60 or MyLevel <= 74 then
Mon = "Desert Bandit [Lv. 60]"
LevelQuest = 1
NameQuest = "DesertQuest"
NameMon = "Desert Bandit"
CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
elseif MyLevel == 75 or MyLevel <= 89 then
Mon = "Desert Officer [Lv. 70]"
LevelQuest = 2
NameQuest = "DesertQuest"
NameMon = "Desert Officer"
CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
elseif MyLevel == 90 or MyLevel <= 99 then
Mon = "Snow Bandit [Lv. 90]"
LevelQuest = 1
NameQuest = "SnowQuest"
NameMon = "Snow Bandit"
CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
elseif MyLevel == 100 or MyLevel <= 119 then
Mon = "Snowman [Lv. 100]"
LevelQuest = 2
NameQuest = "SnowQuest"
NameMon = "Snowman"
CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
elseif MyLevel == 120 or MyLevel <= 149 then
Mon = "Chief Petty Officer [Lv. 120]"
LevelQuest = 1
NameQuest = "MarineQuest2"
NameMon = "Chief Petty Officer"
CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
elseif MyLevel == 150 or MyLevel <= 174 then
Mon = "Sky Bandit [Lv. 150]"
LevelQuest = 1
NameQuest = "SkyQuest"
NameMon = "Sky Bandit"
CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
elseif MyLevel == 175 or MyLevel <= 189 then
Mon = "Dark Master [Lv. 175]"
LevelQuest = 2
NameQuest = "SkyQuest"
NameMon = "Dark Master"
CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
elseif MyLevel == 190 or MyLevel <= 209 then
Mon = "Prisoner [Lv. 190]"
LevelQuest = 1
NameQuest = "PrisonerQuest"
NameMon = "Prisoner"
CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
elseif MyLevel == 210 or MyLevel <= 249 then
Mon = "Dangerous Prisoner [Lv. 210]"
LevelQuest = 2
NameQuest = "PrisonerQuest"
NameMon = "Dangerous Prisoner"
CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
elseif MyLevel == 250 or MyLevel <= 274 then
Mon = "Toga Warrior [Lv. 250]"
LevelQuest = 1
NameQuest = "ColosseumQuest"
NameMon = "Toga Warrior"
CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
elseif MyLevel == 275 or MyLevel <= 299 then
Mon = "Gladiator [Lv. 275]"
LevelQuest = 2
NameQuest = "ColosseumQuest"
NameMon = "Gladiator"
CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
elseif MyLevel == 300 or MyLevel <= 324 then
Mon = "Military Soldier [Lv. 300]"
LevelQuest = 1
NameQuest = "MagmaQuest"
NameMon = "Military Soldier"
CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
elseif MyLevel == 325 or MyLevel <= 374 then
Mon = "Military Spy [Lv. 325]"
LevelQuest = 2
NameQuest = "MagmaQuest"
NameMon = "Military Spy"
CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
elseif MyLevel == 375 or MyLevel <= 399 then
Mon = "Fishman Warrior [Lv. 375]"
LevelQuest = 1
NameQuest = "FishmanQuest"
NameMon = "Fishman Warrior"
CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
end
elseif MyLevel == 400 or MyLevel <= 449 then
Mon = "Fishman Commando [Lv. 400]"
LevelQuest = 2
NameQuest = "FishmanQuest"
NameMon = "Fishman Commando"
CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
end
elseif MyLevel == 450 or MyLevel <= 474 then
Mon = "God's Guard [Lv. 450]"
LevelQuest = 1
NameQuest = "SkyExp1Quest"
NameMon = "God's Guard"
CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
end
elseif MyLevel == 475 or MyLevel <= 524 then
Mon = "Shanda [Lv. 475]"
LevelQuest = 2
NameQuest = "SkyExp1Quest"
NameMon = "Shanda"
CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
end
elseif MyLevel == 525 or MyLevel <= 549 then
Mon = "Royal Squad [Lv. 525]"
LevelQuest = 1
NameQuest = "SkyExp2Quest"
NameMon = "Royal Squad"
CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
elseif MyLevel == 550 or MyLevel <= 624 then
Mon = "Royal Soldier [Lv. 550]"
LevelQuest = 2
NameQuest = "SkyExp2Quest"
NameMon = "Royal Soldier"
CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
elseif MyLevel == 625 or MyLevel <= 649 then
Mon = "Galley Pirate [Lv. 625]"
LevelQuest = 1
NameQuest = "FountainQuest"
NameMon = "Galley Pirate"
CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
elseif MyLevel >= 650 then
Mon = "Galley Captain [Lv. 650]"
LevelQuest = 2
NameQuest = "FountainQuest"
NameMon = "Galley Captain"
CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
end
elseif World2 then
if MyLevel == 700 or MyLevel <= 724 then
Mon = "Raider [Lv. 700]"
LevelQuest = 1
NameQuest = "Area1Quest"
NameMon = "Raider"
CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
elseif MyLevel == 725 or MyLevel <= 774 then
Mon = "Mercenary [Lv. 725]"
LevelQuest = 2
NameQuest = "Area1Quest"
NameMon = "Mercenary"
CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
elseif MyLevel == 775 or MyLevel <= 799 then
Mon = "Swan Pirate [Lv. 775]"
LevelQuest = 1
NameQuest = "Area2Quest"
NameMon = "Swan Pirate"
CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
elseif MyLevel == 800 or MyLevel <= 874 then
Mon = "Factory Staff [Lv. 800]"
NameQuest = "Area2Quest"
LevelQuest = 2
NameMon = "Factory Staff"
CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
elseif MyLevel == 875 or MyLevel <= 899 then
Mon = "Marine Lieutenant [Lv. 875]"
LevelQuest = 1
NameQuest = "MarineQuest3"
NameMon = "Marine Lieutenant"
CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
elseif MyLevel == 900 or MyLevel <= 949 then
Mon = "Marine Captain [Lv. 900]"
LevelQuest = 2
NameQuest = "MarineQuest3"
NameMon = "Marine Captain"
CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
elseif MyLevel == 950 or MyLevel <= 974 then
Mon = "Zombie [Lv. 950]"
LevelQuest = 1
NameQuest = "ZombieQuest"
NameMon = "Zombie"
CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
elseif MyLevel == 975 or MyLevel <= 999 then
Mon = "Vampire [Lv. 975]"
LevelQuest = 2
NameQuest = "ZombieQuest"
NameMon = "Vampire"
CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
elseif MyLevel == 1000 or MyLevel <= 1049 then
Mon = "Snow Trooper [Lv. 1000]"
LevelQuest = 1
NameQuest = "SnowMountainQuest"
NameMon = "Snow Trooper"
CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
elseif MyLevel == 1050 or MyLevel <= 1099 then
Mon = "Winter Warrior [Lv. 1050]"
LevelQuest = 2
NameQuest = "SnowMountainQuest"
NameMon = "Winter Warrior"
CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
elseif MyLevel == 1100 or MyLevel <= 1124 then
Mon = "Lab Subordinate [Lv. 1100]"
LevelQuest = 1
NameQuest = "IceSideQuest"
NameMon = "Lab Subordinate"
CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
elseif MyLevel == 1125 or MyLevel <= 1174 then
Mon = "Horned Warrior [Lv. 1125]"
LevelQuest = 2
NameQuest = "IceSideQuest"
NameMon = "Horned Warrior"
CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
elseif MyLevel == 1175 or MyLevel <= 1199 then
Mon = "Magma Ninja [Lv. 1175]"
LevelQuest = 1
NameQuest = "FireSideQuest"
NameMon = "Magma Ninja"
CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
elseif MyLevel == 1200 or MyLevel <= 1249 then
Mon = "Lava Pirate [Lv. 1200]"
LevelQuest = 2
NameQuest = "FireSideQuest"
NameMon = "Lava Pirate"
CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
elseif MyLevel == 1250 or MyLevel <= 1274 then
Mon = "Ship Deckhand [Lv. 1250]"
LevelQuest = 1
NameQuest = "ShipQuest1"
NameMon = "Ship Deckhand"
CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)
if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
end
elseif MyLevel == 1275 or MyLevel <= 1299 then
Mon = "Ship Engineer [Lv. 1275]"
LevelQuest = 2
NameQuest = "ShipQuest1"
NameMon = "Ship Engineer"
CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)
if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
end
elseif MyLevel == 1300 or MyLevel <= 1324 then
Mon = "Ship Steward [Lv. 1300]"
LevelQuest = 1
NameQuest = "ShipQuest2"
NameMon = "Ship Steward"
CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
end
elseif MyLevel == 1325 or MyLevel <= 1349 then
Mon = "Ship Officer [Lv. 1325]"
LevelQuest = 2
NameQuest = "ShipQuest2"
NameMon = "Ship Officer"
CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
end
elseif MyLevel == 1350 or MyLevel <= 1374 then
Mon = "Arctic Warrior [Lv. 1350]"
LevelQuest = 1
NameQuest = "FrostQuest"
NameMon = "Arctic Warrior"
CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422))
end
elseif MyLevel == 1375 or MyLevel <= 1424 then
Mon = "Snow Lurker [Lv. 1375]"
LevelQuest = 2
NameQuest = "FrostQuest"
NameMon = "Snow Lurker"
CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
elseif MyLevel == 1425 or MyLevel <= 1449 then
Mon = "Sea Soldier [Lv. 1425]"
LevelQuest = 1
NameQuest = "ForgottenQuest"
NameMon = "Sea Soldier"
CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
elseif MyLevel >= 1450 then
Mon = "Water Fighter [Lv. 1450]"
LevelQuest = 2
NameQuest = "ForgottenQuest"
NameMon = "Water Fighter"
CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
end
elseif World3 then
if MyLevel == 1500 or MyLevel <= 1524 then
Mon = "Pirate Millionaire [Lv. 1500]"
LevelQuest = 1
NameQuest = "PiratePortQuest"
NameMon = "Pirate Millionaire"
CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
elseif MyLevel == 1525 or MyLevel <= 1574 then
Mon = "Pistol Billionaire [Lv. 1525]"
LevelQuest = 2
NameQuest = "PiratePortQuest"
NameMon = "Pistol Billionaire"
CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
elseif MyLevel == 1575 or MyLevel <= 1599 then
Mon = "Dragon Crew Warrior [Lv. 1575]"
LevelQuest = 1
NameQuest = "AmazonQuest"
NameMon = "Dragon Crew Warrior"
CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
elseif MyLevel == 1600 or MyLevel <= 1624 then
Mon = "Dragon Crew Archer [Lv. 1600]"
NameQuest = "AmazonQuest"
LevelQuest = 2
NameMon = "Dragon Crew Archer"
CFrameQuest = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
elseif MyLevel == 1625 or MyLevel <= 1649 then
Mon = "Female Islander [Lv. 1625]"
NameQuest = "AmazonQuest2"
LevelQuest = 1
NameMon = "Female Islander"
CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
elseif MyLevel == 1650 or MyLevel <= 1699 then
Mon = "Giant Islander [Lv. 1650]"
NameQuest = "AmazonQuest2"
LevelQuest = 2
NameMon = "Giant Islander"
CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
elseif MyLevel == 1700 or MyLevel <= 1724 then
Mon = "Marine Commodore [Lv. 1700]"
LevelQuest = 1
NameQuest = "MarineTreeIsland"
NameMon = "Marine Commodore"
CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
elseif MyLevel == 1725 or MyLevel <= 1774 then
Mon = "Marine Rear Admiral [Lv. 1725]"
NameMon = "Marine Rear Admiral"
NameQuest = "MarineTreeIsland"
LevelQuest = 2
CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
elseif MyLevel == 1775 or MyLevel <= 1799 then
Mon = "Fishman Raider [Lv. 1775]"
LevelQuest = 1
NameQuest = "DeepForestIsland3"
NameMon = "Fishman Raider"
CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
elseif MyLevel == 1800 or MyLevel <= 1824 then
Mon = "Fishman Captain [Lv. 1800]"
LevelQuest = 2
NameQuest = "DeepForestIsland3"
NameMon = "Fishman Captain"
CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
elseif MyLevel == 1825 or MyLevel <= 1849 then
Mon = "Forest Pirate [Lv. 1825]"
LevelQuest = 1
NameQuest = "DeepForestIsland"
NameMon = "Forest Pirate"
CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
elseif MyLevel == 1850 or MyLevel <= 1899 then
Mon = "Mythological Pirate [Lv. 1850]"
LevelQuest = 2
NameQuest = "DeepForestIsland"
NameMon = "Mythological Pirate"
CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
elseif MyLevel == 1900 or MyLevel <= 1924 then
Mon = "Jungle Pirate [Lv. 1900]"
LevelQuest = 1
NameQuest = "DeepForestIsland2"
NameMon = "Jungle Pirate"
CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
elseif MyLevel == 1925 or MyLevel <= 1974 then
Mon = "Musketeer Pirate [Lv. 1925]"
LevelQuest = 2
NameQuest = "DeepForestIsland2"
NameMon = "Musketeer Pirate"
CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
elseif MyLevel == 1975 or MyLevel <= 1999 then
Mon = "Reborn Skeleton [Lv. 1975]"
LevelQuest = 1
NameQuest = "HauntedQuest1"
NameMon = "Reborn Skeleton"
CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
elseif MyLevel == 2000 or MyLevel <= 2024 then
Mon = "Living Zombie [Lv. 2000]"
LevelQuest = 2
NameQuest = "HauntedQuest1"
NameMon = "Living Zombie"
CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
elseif MyLevel == 2025 or MyLevel <= 2049 then
Mon = "Demonic Soul [Lv. 2025]"
LevelQuest = 1
NameQuest = "HauntedQuest2"
NameMon = "Demonic Soul"
CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
elseif MyLevel == 2050 or MyLevel <= 2074 then
Mon = "Posessed Mummy [Lv. 2050]"
LevelQuest = 2
NameQuest = "HauntedQuest2"
NameMon = "Posessed Mummy"
CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
elseif MyLevel == 2075 or MyLevel <= 2099 then
Mon = "Peanut Scout [Lv. 2075]"
LevelQuest = 1
NameQuest = "NutsIslandQuest"
NameMon = "Peanut Scout"
CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
elseif MyLevel == 2100 or MyLevel <= 2124 then
Mon = "Peanut President [Lv. 2100]"
LevelQuest = 2
NameQuest = "NutsIslandQuest"
NameMon = "Peanut President"
CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
elseif MyLevel == 2125 or MyLevel <= 2149 then
Mon = "Ice Cream Chef [Lv. 2125]"
LevelQuest = 1
NameQuest = "IceCreamIslandQuest"
NameMon = "Ice Cream Chef"
CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
elseif MyLevel == 2150 or MyLevel <= 2199 then
Mon = "Ice Cream Commander [Lv. 2150]"
LevelQuest = 2
NameQuest = "IceCreamIslandQuest"
NameMon = "Ice Cream Commander"
CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
elseif MyLevel == 2200 or MyLevel <= 2224 then
Mon = "Cookie Crafter [Lv. 2200]"
LevelQuest = 1
NameQuest = "CakeQuest1"
NameMon = "Cookie Crafter"
CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
elseif MyLevel == 2225 or MyLevel <= 2249 then
Mon = "Cake Guard [Lv. 2225]"
LevelQuest = 2
NameQuest = "CakeQuest1"
NameMon = "Cake Guard"
CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
elseif MyLevel == 2250 or MyLevel <= 2274 then
Mon = "Baking Staff [Lv. 2250]"
LevelQuest = 1
NameQuest = "CakeQuest2"
NameMon = "Baking Staff"
CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
elseif MyLevel >= 2275 then
Mon = "Head Baker [Lv. 2275]"
LevelQuest = 2
NameQuest = "CakeQuest2"
NameMon = "Head Baker"
CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
end
end
end

function Hop()
local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
function TPReturner()
local Site;
if foundAnything == "" then
Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
else
Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
end
local ID = ""
if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
foundAnything = Site.nextPageCursor
end
local num = 0;
for i,v in pairs(Site.data) do
local Possible = true
ID = tostring(v.id)
if tonumber(v.maxPlayers) > tonumber(v.playing) then
for _,Existing in pairs(AllIDs) do
if num ~= 0 then
if ID == tostring(Existing) then
Possible = false
end
else
if tonumber(actualHour) ~= tonumber(Existing) then
local delFile = pcall(function()
AllIDs = {}
table.insert(AllIDs, actualHour)
end)
end
end
num = num + 1
end
if Possible == true then
table.insert(AllIDs, ID)
wait()
pcall(function()
wait()
game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
end)
wait(4)
end
end
end
end
function Teleport()
while wait() do
pcall(function()
TPReturner()
if foundAnything ~= "" then
TPReturner()
end
end)
end
end
Teleport()
end

function isnil(thing)
return (thing == nil)
end
local function round(n)
return math.floor(tonumber(n) + 0.5)
end
Number = math.random(1, 1000000)
function UpdateEspPlayer()
if ESPPlayer then
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if not isnil(v.Character) then
if not v.Character.Head:FindFirstChild('NameEsp'..v.Name) then
local BillboardGui = Instance.new("BillboardGui")
local ESP = Instance.new("TextLabel")
local HealthESP = Instance.new("TextLabel")
BillboardGui.Parent = v.Character.Head
BillboardGui.Name = 'NameEsp'..v.Name
BillboardGui.ExtentsOffset = Vector3.new(0, 1, 0)
BillboardGui.Size = UDim2.new(1,200,1,30)
BillboardGui.Adornee = v.Character.Head
BillboardGui.AlwaysOnTop = true
ESP.Name = "ESP"
ESP.Parent = BillboardGui
ESP.TextTransparency = 0
ESP.BackgroundTransparency = 1
ESP.Size = UDim2.new(0, 200, 0, 30)
ESP.Position = UDim2.new(0,25,0,0)
ESP.Font = Enum.Font.Gotham
ESP.Text = (v.Name ..' '.."[ "..round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M'.." ]")
if v.Team == game:GetService("Players").LocalPlayer.Team then
ESP.TextColor3 = Color3.new(0, 255, 255)
else
ESP.TextColor3 = Color3.new(255, 0, 0)
end
ESP.TextSize = 14
ESP.TextStrokeTransparency = 0.500
ESP.TextWrapped = true
HealthESP.Name = "HealthESP"
HealthESP.Parent = ESP
HealthESP.TextTransparency = 0
HealthESP.BackgroundTransparency = 1
HealthESP.Position = ESP.Position + UDim2.new(0, -25, 0, 15)
HealthESP.Size = UDim2.new(0, 200, 0, 30)
HealthESP.Font = Enum.Font.Gotham
HealthESP.TextColor3 = Color3.fromRGB(255, 255, 255)
HealthESP.TextSize = 14
HealthESP.TextStrokeTransparency = 0.500
HealthESP.TextWrapped = true
HealthESP.Text = "Health "..math.floor(v.Character.Humanoid.Health).."/"..math.floor(v.Character.Humanoid.MaxHealth)
else
v.Character.Head['NameEsp'..v.Name].ESP.Text = (v.Name ..' '..round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')
v.Character.Head['NameEsp'..v.Name].ESP.HealthESP.Text = "Health "..math.floor(v.Character.Humanoid.Health).."/"..math.floor(v.Character.Humanoid.MaxHealth)
v.Character.Head:FindFirstChild('NameEsp'..v.Name).ESP.TextTransparency = 0
v.Character.Head:FindFirstChild('NameEsp'..v.Name).ESP.HealthESP.TextTransparency = 0
end
end
end
else
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if v.Character.Head:FindFirstChild('NameEsp'..v.Name) then
v.Character.Head:FindFirstChild('NameEsp'..v.Name).ESP.TextTransparency = 1
v.Character.Head:FindFirstChild('NameEsp'..v.Name).ESP.HealthESP.TextTransparency = 1
end
end
end
end

function UpdateIslandESP()
for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
pcall(function()
if IslandESP then
if v.Name ~= "Sea" then
if not v:FindFirstChild('NameEsp') then
local bill = Instance.new('BillboardGui',v)
bill.Name = 'NameEsp'
bill.ExtentsOffset = Vector3.new(0, 1, 0)
bill.Size = UDim2.new(1,200,1,30)
bill.Adornee = v
bill.AlwaysOnTop = true
local name = Instance.new('TextLabel',bill)
name.Font = "GothamBold"
name.FontSize = "Size14"
name.TextWrapped = true
name.Size = UDim2.new(1,0,1,0)
name.TextYAlignment = 'Top'
name.BackgroundTransparency = 1
name.TextStrokeTransparency = 0.5
name.TextColor3 = Color3.fromRGB(80, 245, 245)
else
v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
end
end
else
if v:FindFirstChild('NameEsp') then
v:FindFirstChild('NameEsp'):Destroy()
end
end
end)
end
end

function UpdateChestEsp()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
pcall(function()
if string.find(v.Name,"Chest") then
if ChestESP then
if string.find(v.Name,"Chest") then
if not v:FindFirstChild('NameEsp'..Number) then
local bill = Instance.new('BillboardGui',v)
bill.Name = 'NameEsp'..Number
bill.ExtentsOffset = Vector3.new(0, 1, 0)
bill.Size = UDim2.new(1,200,1,30)
bill.Adornee = v
bill.AlwaysOnTop = true
local name = Instance.new('TextLabel',bill)
name.Font = "GothamBold"
name.FontSize = "Size14"
name.TextWrapped = true
name.Size = UDim2.new(1,0,1,0)
name.TextYAlignment = 'Top'
name.BackgroundTransparency = 1
name.TextStrokeTransparency = 0.5
name.TextColor3 = Color3.fromRGB(0, 255, 250)
if v.Name == "Chest1" then
name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
end
if v.Name == "Chest2" then
name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
end
if v.Name == "Chest3" then
name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
end
else
v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
end
end
else
if v:FindFirstChild('NameEsp'..Number) then
v:FindFirstChild('NameEsp'..Number):Destroy()
end
end
end
end)
end
end

function UpdateBfEsp()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
pcall(function()
if DevilFruitESP then
if string.find(v.Name, "Fruit") then
if not v.Handle:FindFirstChild('NameEsp'..Number) then
local bill = Instance.new('BillboardGui',v.Handle)
bill.Name = 'NameEsp'..Number
bill.ExtentsOffset = Vector3.new(0, 1, 0)
bill.Size = UDim2.new(1,200,1,30)
bill.Adornee = v.Handle
bill.AlwaysOnTop = true
local name = Instance.new('TextLabel',bill)
name.Font = "GothamBold"
name.FontSize = "Size14"
name.TextWrapped = true
name.Size = UDim2.new(1,0,1,0)
name.TextYAlignment = 'Top'
name.BackgroundTransparency = 1
name.TextStrokeTransparency = 0.5
name.TextColor3 = Color3.fromRGB(255, 255, 255)
name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
else
v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')
end
end
else
if v.Handle:FindFirstChild('NameEsp'..Number) then
v.Handle:FindFirstChild('NameEsp'..Number):Destroy()
end
end
end)
end
end

function UpdateFlowerEsp()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
pcall(function()
if v.Name == "Flower2" or v.Name == "Flower1" then
if FlowerESP then
if not v:FindFirstChild('NameEsp'..Number) then
local bill = Instance.new('BillboardGui',v)
bill.Name = 'NameEsp'..Number
bill.ExtentsOffset = Vector3.new(0, 1, 0)
bill.Size = UDim2.new(1,200,1,30)
bill.Adornee = v
bill.AlwaysOnTop = true
local name = Instance.new('TextLabel',bill)
name.Font = "GothamBold"
name.FontSize = "Size14"
name.TextWrapped = true
name.Size = UDim2.new(1,0,1,0)
name.TextYAlignment = 'Top'
name.BackgroundTransparency = 1
name.TextStrokeTransparency = 0.5
name.TextColor3 = Color3.fromRGB(255, 255, 255)
if v.Name == "Flower1" then
name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
name.TextColor3 = Color3.fromRGB(0, 0, 255)
end
if v.Name == "Flower2" then
name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
name.TextColor3 = Color3.fromRGB(255, 255, 255)
end
else
v['NameEsp'..Number].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
end
else
if v:FindFirstChild('NameEsp'..Number) then
v:FindFirstChild('NameEsp'..Number):Destroy()
end
end
end
end)
end
end

function InfAb()
if InfAbility then
if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
local inf = Instance.new("ParticleEmitter")
inf.Acceleration = Vector3.new(0,0,0)
inf.Archivable = true
inf.Drag = 20
inf.EmissionDirection = Enum.NormalId.Top
inf.Enabled = true
inf.Lifetime = NumberRange.new(0.2,0.2)
inf.LightInfluence = 0
inf.LockedToPart = true
inf.Name = "Agility"
inf.Rate = 500
local numberKeypoints2 = {
NumberSequenceKeypoint.new(0, 0);
NumberSequenceKeypoint.new(1, 4);
}
inf.Size = NumberSequence.new(numberKeypoints2)
inf.RotSpeed = NumberRange.new(999, 9999)
inf.Rotation = NumberRange.new(0, 0)
inf.Speed = NumberRange.new(30, 30)
inf.SpreadAngle = Vector2.new(360,360)
inf.Texture = "rbxassetid://7157487174"
inf.VelocityInheritance = 0
inf.ZOffset = 2
inf.Transparency = NumberSequence.new(0)
inf.Color = ColorSequence.new(Color3.fromRGB(80,245,245),Color3.fromRGB(80,245,245))
inf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
end
else
if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()
end
end
end

local LocalPlayer = game:GetService'Players'.LocalPlayer
local originalstam = LocalPlayer.Character.Energy.Value
function infinitestam()
LocalPlayer.Character.Energy.Changed:connect(function()
if InfiniteEnergy then
LocalPlayer.Character.Energy.Value = originalstam
end
end)
end

spawn(function()
pcall(function()
while wait(.1) do
if InfiniteEnergy then
wait(0.3)
originalstam = LocalPlayer.Character.Energy.Value
infinitestam()
end
end
end)
end)

function NoDodgeCool()
if nododgecool then
for i,v in next, getgc() do
if game:GetService("Players").LocalPlayer.Character.Dodge then
if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Dodge then
for i2,v2 in next, getupvalues(v) do
if tostring(v2) == "0.4" then
repeat wait(.1)
setupvalue(v,i2,0)
until not nododgecool
end
end
end
end
end
end
end

function fly()
local mouse=game:GetService("Players").LocalPlayer:GetMouse''
localplayer=game:GetService("Players").LocalPlayer
game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
local torso = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
local speedSET=25
local keys={a=false,d=false,w=false,s=false}
local e1
local e2
local function start()
local pos = Instance.new("BodyPosition",torso)
local gyro = Instance.new("BodyGyro",torso)
pos.Name="EPIXPOS"
pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
pos.position = torso.Position
gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
gyro.CFrame = torso.CFrame
repeat
wait()
localplayer.Character.Humanoid.PlatformStand=true
local new=gyro.CFrame - gyro.CFrame.p + pos.position
if not keys.w and not keys.s and not keys.a and not keys.d then
speed=1
end
if keys.w then
new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
speed=speed+speedSET
end
if keys.s then
new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
speed=speed+speedSET
end
if keys.d then
new = new * CFrame.new(speed,0,0)
speed=speed+speedSET
end
if keys.a then
new = new * CFrame.new(-speed,0,0)
speed=speed+speedSET
end
if speed>speedSET then
speed=speedSET
end
pos.position=new.p
if keys.w then
gyro.CFrame = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*15),0,0)
elseif keys.s then
gyro.CFrame = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*15),0,0)
else
gyro.CFrame = workspace.CurrentCamera.CoordinateFrame
end
until not Fly
if gyro then
gyro:Destroy()
end
if pos then
pos:Destroy()
end
flying=false
localplayer.Character.Humanoid.PlatformStand=false
speed=0
end
e1=mouse.KeyDown:connect(function(key)
if not torso or not torso.Parent then
flying=false e1:disconnect() e2:disconnect() return
end
if key=="w" then
keys.w=true
elseif key=="s" then
keys.s=true
elseif key=="a" then
keys.a=true
elseif key=="d" then
keys.d=true
end
end)
e2=mouse.KeyUp:connect(function(key)
if key=="w" then
keys.w=false
elseif key=="s" then
keys.s=false
elseif key=="a" then
keys.a=false
elseif key=="d" then
keys.d=false
end
end)
start()
end

function Click()
game:GetService'VirtualUser':CaptureController()
game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end

function AutoHaki()
if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
end
end

function UnEquipWeapon(Weapon)
if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
_G.NotAutoEquip = true
wait(.5)
game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
wait(.1)
_G.NotAutoEquip = false
end
end

function EquipWeapon(ToolSe)
if not _G.NotAutoEquip then
if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
wait(.1)
game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
end
end
end

function topos(Pos)
Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
pcall(function() tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/210, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
tween:Play()
if Distance <= 250 then
tween:Cancel()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
end
if _G.StopTween == true then
tween:Cancel()
_G.Clip = false
end
end

function GetDistance(target)
return math.floor((target.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
end

function TP(Pos)
Distance = (Pos.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
if Distance < 250 then
Speed = 700000
elseif Distance >= 1000 then
Speed = 200
end
game:GetService("TweenService"):Create(
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
{CFrame = Pos}
):Play()
_G.Clip = true
wait(Distance/Speed)
_G.Clip = false
end

spawn(function()
pcall(function()
while wait() do
if _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or FarmBoss or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone == true then
if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
local Noclip = Instance.new("BodyVelocity")
Noclip.Name = "BodyClip"
Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
Noclip.MaxForce = Vector3.new(100000,100000,100000)
Noclip.Velocity = Vector3.new(0,0,0)
end
end
end
end)
end)

spawn(function()
pcall(function()
game:GetService("RunService").Stepped:Connect(function()
if _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone == true then
for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
if v:IsA("BasePart") then
v.CanCollide = false
end
end
end
end)
end)
end)

spawn(function()
while wait() do
if _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone == true then
pcall(function()
game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken",true)
end)
end
end
end)

function StopTween(target)
if not target then
_G.StopTween = true
wait()
topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
wait()
if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
end
_G.StopTween = false
_G.Clip = false
end
end

spawn(function()
pcall(function()
while wait() do
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
if v:IsA("Tool") then
if v:FindFirstChild("RemoteFunctionShoot") then
SelectWeaponGun = v.Name
end
end
end
end
end)
end)

game:GetService("Players").LocalPlayer.Idled:connect(function()
game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(1)
game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

local ScreenGui = Instance.new("ScreenGui")
local Toggle = Instance.new("TextButton")

ScreenGui.Name = "ScreenGui"
ScreenGui.Parent = game.CoreGui

Toggle.Name = "Toggle"
Toggle.Parent = ScreenGui
Toggle.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Toggle.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
Toggle.Size = UDim2.new(0, 50, 0, 50)
Toggle.Font = Enum.Font.Code
Toggle.Text = "T"
Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
Toggle.TextScaled = true
Toggle.MouseButton1Down:connect(function()
game:GetService("VirtualInputManager"):SendKeyEvent(true,305,false,game)
game:GetService("VirtualInputManager"):SendKeyEvent(false,305,false,game)
end)
