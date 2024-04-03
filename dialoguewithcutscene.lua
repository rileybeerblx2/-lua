local animation = script:WaitForChild('Animation')
local humanoid = script.Parent:WaitForChild('Humanoid')
local Animate = humanoid:LoadAnimation(animation)
Animate:Play()

Dialogue Script

local deb = false

game.Workspace.CutscenePart.Touched:Connect(function()
if deb == false then
deb = true
wait(.5)
script.Parent.Visible = false
script.Parent.Text = "Your Dialogue"
wait(3)
script.Parent.Text = "Your Dialogue 2"
wait(3)
script.Parent.Text = "Your Dialogue 3"
script.Parent.Visible = false
wait(1)
deb = false
end
end)
