local Players = game:GetService("Players")
local Workspace = game:GetService('Workspace')

local Script = {}

function Script:GetCharacter()
  if Players.LocalPlayer.Character ~= nil then
    return Players.LocalPlayer.Character
  else
    repeat task.wait() until Players.LocalPlayer.Character ~= nil
    return Players.LocalPlayer.Character
  end
  return Players.LocalPlayer.Character
end

function Script:FindPartByName(name)
  for _, v in next, Workspace:GetDescendants() do
   if v.Name == name then
      return v
   end
  end
  
  print('Part dont exist!')
  return
end

function Script:FindPartByNameAndClass(name, class)
  for _, v in next, game:GetDescendants() do
    if v:IsA(class) and v.Name == name then
     return v 
    end
  end
  print('Part dont exist!')
  return
end

return Script
