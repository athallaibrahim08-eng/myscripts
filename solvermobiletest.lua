local player = game.Players.LocalPlayer
local tool = script.Parent
local event = tool:WaitForChild("ActionEvent")

local gui = tool:WaitForChild("ScreenGui")
local frame = gui:WaitForChild("Frame")

tool.Equipped:Connect(function()
	gui.Enabled = true
	print("Solver equipped - GUI ON")
end)

tool.Unequipped:Connect(function()
	gui.Enabled = false
end)

-- Button connections
frame.TeleportBtn.MouseButton1Click:Connect(function()
	event:FireServer("Teleport")
end)

frame.BringBtn.MouseButton1Click:Connect(function()
	event:FireServer("BringObject")
end)

frame.TelekinesisBtn.MouseButton1Click:Connect(function()
	event:FireServer("Telekinesis")
end)

frame.GUI2Btn.MouseButton1Click:Connect(function()
	event:FireServer("OpenGUI2")
end)

frame.ShieldBtn.MouseButton1Click:Connect(function()
	event:FireServer("Shield")
end)

frame.CloneBtn.MouseButton1Click:Connect(function()
	event:FireServer("Clone")
end)

frame.DestroyBtn.MouseButton1Click:Connect(function()
	event:FireServer("Destroy")
end)

frame.FixBtn.MouseButton1Click:Connect(function()
	event:FireServer("Fix")
end)

frame.GunBtn.MouseButton1Click:Connect(function()
	event:FireServer("Gun")
end)
