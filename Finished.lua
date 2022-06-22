-- Gui to Lua
-- Version: 3.2

-- Instances:

local LoginGUI = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UIGradient = Instance.new("UIGradient")
local TextBox = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UICorner_4 = Instance.new("UICorner")
local TextButton_2 = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")

--Properties:

LoginGUI.Name = "LoginGUI"
LoginGUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
LoginGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = LoginGUI
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.Position = UDim2.new(0.317436665, 0, 0.172728285, 0)
Frame.Size = UDim2.new(0, 617, 0, 528)

UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Frame

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(85, 170, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(187, 152, 255))}
UIGradient.Parent = Frame

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(132, 156, 247)
TextBox.Position = UDim2.new(0.335076928, 0, 0.352123022, 0)
TextBox.Size = UDim2.new(0, 200, 0, 50)
TextBox.Font = Enum.Font.SourceSans
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

UICorner_2.Parent = TextBox

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(130, 153, 243)
TextButton.Position = UDim2.new(0.336697668, 0, 0.523124993, 0)
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Login"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

UICorner_3.Parent = TextButton

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(133, 158, 250)
TextLabel.Position = UDim2.new(0.23439993, 0, 0.143390223, 0)
TextLabel.Size = UDim2.new(0, 326, 0, 50)
TextLabel.Font = Enum.Font.Gotham
TextLabel.Text = "Key System"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

UICorner_4.Parent = TextLabel

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(130, 153, 243)
TextButton_2.Position = UDim2.new(0.334991992, 0, 0.67937851, 0)
TextButton_2.Size = UDim2.new(0, 200, 0, 50)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "GetKey!"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true

UICorner_5.Parent = TextButton_2

-- Module Scripts:

local fake_module_scripts = {}

do -- Frame.LoginModule
	local script = Instance.new('ModuleScript', Frame)
	script.Name = "LoginModule"
	local function module_script()
		
		
		local LoginModule = {}
		
		function LoginModule.AttemptLogin(key,correctkey)
			local keylowered = string.lower(key)
			if keylowered == correctkey then
				script.Parent.TextButton.BackgroundColor3 = Color3.new(0, 0.423529, 0.0470588)
				wait(1)
				script.Parent.Visible = false
			else
				script.Parent.TextButton.BackgroundColor3 = Color3.new(0.407843, 0, 0)
				wait(1)
				script.Parent.TextButton.BackgroundColor3 = Color3.new(0.152941, 0.152941, 0.152941)
			end
		end
		
		
		return LoginModule
		
	end
	fake_module_scripts[script] = module_script
end


-- Scripts:

local function TZXP_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	local LoginModule = require(script.Parent.Parent.LoginModule)
	local debounce = false
	local correctkey = "#_!-*&_=-?" -- Enter your own code here
	
	script.Parent.MouseButton1Click:Connect(function()
		if debounce == false then
			debounce = true
			local key = script.Parent.Parent.TextBox.Text
			LoginModule.AttemptLogin(key,correctkey)
			wait(2)
			debounce = false
			wait(2)
			loadstring(game.HttpGet(game, "https://raw.githubusercontent.com/J0stGeorge/.lua/main/%25%2B%25%2B%3D%25125%25%2B!%3F"))();
		end
	end)
end
coroutine.wrap(TZXP_fake_script)()
local function XUPXW_fake_script() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton_2)
	local req = require
	local require = function(obj)
		local fake = fake_module_scripts[obj]
		if fake then
			return fake()
		end
		return req(obj)
	end

	setclipboard("https://link-center.net/464082/monki-key1")
	
end
coroutine.wrap(XUPXW_fake_script)()