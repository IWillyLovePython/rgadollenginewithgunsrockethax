getgenv().hax = true --change to false/true to activate

game.Players.LocalPlayer.CharacterAdded:Connect(function(player)
    if hax and tostring(player) == tostring(game.Players.LocalPlayer) then
        function rockethax(child)
            while hax and wait() and child:FindFirstChild("CurrentAmmo") ~= nil do
                child.CurrentAmmo.RobloxLocked = true
                child.CurrentAmmo.Value = 1000
                child.Configuration.ShotCooldown.Value = 0
            end
        end
        
        game.Players.LocalPlayer.Character.ChildAdded:Connect(function(child) 
            if tostring(child) == "Rocket Launcher" and hax then
                rockethax(child)
            end
        end)
    end
end)
