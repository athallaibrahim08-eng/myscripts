local UIS = game:GetService("UserInputService")
local player = game.Players.LocalPlayer
local tool = script.Parent
local event = tool:WaitForChild("ActionEvent")

tool.Equipped:Connect(function()
	print("Solver equipped - GUI ON")
end)

UIS.InputBegan:Connect(function(input, gp)
	if gp then return end

	if input.KeyCode == Enum.KeyCode.Z then
		event:FireServer("Teleport")

	elseif input.KeyCode == Enum.KeyCode.X then
		event:FireServer("BringObject")

	elseif input.KeyCode == Enum.KeyCode.V then
		event:FireServer("Telekinesis")

	elseif input.KeyCode == Enum.KeyCode.M then
		event:FireServer("OpenGUI2")

	elseif input.KeyCode == Enum.KeyCode.I then
		event:FireServer("Shield")

	elseif input.KeyCode == Enum.KeyCode.Q then
		event:FireServer("Clone")

	elseif input.KeyCode == Enum.KeyCode.D then
		event:FireServer("Destroy")

	elseif input.KeyCode == Enum.KeyCode.F then
		event:FireServer("Fix")

	elseif input.KeyCode == Enum.KeyCode.K then
		event:FireServer("Gun")
	end
end)
