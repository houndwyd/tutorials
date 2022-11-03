local areas = game:GetService("Workspace").Zones:GetChildren()
local areasTable = {}

for i,v in pairs(areas) do
    table.insert(areasTable, v.Name)
end

local Matieral = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MatieralLua/master/Module.lua"))()

local UI = Matieral.load({
    Title = "Zone Teleporter",
    Style = 1,
    SizeX = 300,
    SizeY = 600,
    Theme = "Dark"
})

local Teleports = UI.New({
    Title = "Teleports"
})

Teleports.Dropdown({
    Text = "Choose a zone",
    Callback = function(value)
    local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
    for i,v in pairs(areas) do
      if v.Name == value then
         for i,v in pairs(v:GetChildren()) do
          if v:IsA("Part") and v.Name == "teleport" then
                      hrp.CFrame = v.CFrame
                  end
               end
            end
        end
    end,
    Options = areasTable
})
