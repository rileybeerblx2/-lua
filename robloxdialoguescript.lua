local debounce = false
local cooldown = 5

local Messages = {"Custom Text", "egg hunt?", "upcoming placeholder game?"}

script.Parent.Touched:Connect(function(hit)
    if hit.Parent:FindFirstChild("Humanoid") then
        if debounce == false then
            debounce = true

        local GUI = script.Parent.NpcDialogue:Clone()
        local Player = game.Players:GetPlayerFromCharacter(hit.Parent)

        local Rig = script.Parent.Parent:Clone()
        GUI.Parent = Player.PlayerGui
        GUI.Background.NpcName.Texy = script.Parent.Parent.Name

        Rig.Parent = GUI.Background.ViewportFrame

        for i, v in Pairs(Messages) do
            for i = 1, string.len(v) do wait(0.025)
                GUI.Background.DialogueText.Text = string.sub(v, 1, i)
          end
          wait(3)
        end

        wait(cooldown)
        debounce = false
      end
    end
  end)
