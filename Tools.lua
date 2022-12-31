local Players = game:GetService("Players")
local Script = {}

function Script:GetCharacter()
  return Players.LocalPlayer:WaitForChild('Character', 9e9)
end
