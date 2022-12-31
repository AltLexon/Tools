local Players = game:GetService("Players")
local Script = {}

function Script:GetCharacter()
  return Players.LocalPlayer.Character
end

return Script
