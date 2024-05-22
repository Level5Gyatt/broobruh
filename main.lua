local Nam = ""
local ItemsCap = 50000
local target = {game.Workspace,game.StarterGui,game.Lighting,game.ReplicatedStorage}
if Nam == "" then
  error("you forgor to enter filename :skull:")
else
  local new
  if not game.ReplicatedStorage:FindFirstChild("OhioFileName") then
    new = Instance.new("StringValue")
    new.Name = "OhioFileName"
    new.Parent = game.ReplicatedStorage
  else
    new = game.ReplicatedStorage:FindFirstChild("OhioFileName")
  end
  new.Value = Nam
  local newCap
  if not game.ReplicatedStorage:FindFirstChild("OhioItemsCap") then
    newCap = Instance.new("IntValue")
    newCap.Name = "OhioItemsCap"
    newCap.Parent = game.ReplicatedStorage
  else
    newCap = game.ReplicatedStorage:FindFirstChild("OhioItemsCap")
  end
  newCap.Value = ItemsCap
  local newFol
  if not game.ReplicatedStorage:FindFirstChild("OhioTargetFolder") then
    newFol = Instance.new("Folder")
    newFol.Name = "OhioTargetFolder"
    newFol.Parent = game.ReplicatedStorage
  else
    newFol = game.ReplicatedStorage:FindFirstChild("OhioTargetFolder")
    newFol:ClearAllChildren()
  end
  for _,v in pairs(target) do
      local new2 = Instance.new("ObjectValue")
      new2.Value = v
      new2.Parent = newFol
  end
  
  
  loadstring(game:HttpGet('https://raw.githubusercontent.com/Level5Gyatt/broobruh/main/v37.txt',true))()
end
