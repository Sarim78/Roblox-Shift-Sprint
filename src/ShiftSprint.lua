-- Services
local userInput = game:GetService('UserInputService')
local Players = game:GetService('Players')

-- Configuration
local sprintSpeed = 32 -- Speed when holding shift
local walkSpeed = 16 -- Default walk speed

-- Get the local player
local player = Players.LocalPlayer

-- Called when a key is pressed
-- Sets WalkSpeed to sprintSpeed if Left Shift is pressed
local function beginSprint(input, gameProccessed)
	if not gameProccessed then
		if input.UserInputType == Enum.UserInputType.Keyboard then
			local keycode = input.KeyCode
			if keycode == Enum.KeyCode.LeftShift then 
				player.Character.Humanoid.WalkSpeed = sprintSpeed
			end
		end
	end
end

-- Called when a key is released
-- Resets WalkSpeed back to normal if Left Shift is released
local function endSprint(input, gameProccessed)
	if not gameProccessed then
		if input.UserInputType == Enum.UserInputType.Keyboard then
			local keycode = input.KeyCode
			if keycode == Enum.KeyCode.LeftShift then 
				player.Character.Humanoid.WalkSpeed = walkSpeed
			end
		end
	end
end

-- Connect input events to sprint functions
userInput.InputBegan:Connect(beginSprint)
userInput.InputEnded:Connect(endSprint)