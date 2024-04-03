local triggerpart = game.Workspace.YourTriggerPartsName.ProximityPrompt



triggerpart.Triggered:Connect(function()

	triggerpart.Enabled = false

	script.Parent.Visible = true

	script.Parent.Text = "Your Text 1"

	wait(3)

	script.Parent.Text = "Your Text 2"

	wait(3)

	script.Parent.Visible = false

	triggerpart.Enabled = true

end)
