local Whitelist = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Whitelist:CreateWindow({
	Name = "Whitelist Example Window",
	LoadingTitle = "Whitelist Interface Suite",
	LoadingSubtitle = "by Sirius",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = "Whitelist Interface Suite",
		FileName = "Big Hub"
	},
	KeySystem = false, 
	KeySettings = {
		Title = "Sirius Hub",
		Subtitle = "Key System",
		Note = "Join the discord (discord.gg/sirius)",
		SaveKey = true,
		Key = "ABCDEF"
	}
})


function Script()
local Script = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Whitelist:CreateWindow({
	Name = "Main Window",
	LoadingTitle = "Whitelist Interface Suite",
	LoadingSubtitle = "by Sirius",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = "Whitelist Interface Suite",
		FileName = "Big Hub"
	},
	KeySystem = false,
	KeySettings = {
		Title = "Sirius Hub",
		Subtitle = "Key System",
		Note = "Join the discord (discord.gg/sirius)",
		SaveKey = true,
		Key = "ABCDEF"
	}
})
end

function Destroy()
   game:GetService("CoreGui").RayfieldOld:Destroy()
end


_G.Key = "key1234"
_G.string = ""

local Tab = Window:CreateTab("Main Example", 4483362458) 

local Input = Tab:CreateInput({
	Name = "Input Key",
	PlaceholderText = "Key Holder",
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
        _G.string = Text
	end,
})

local Button = Tab:CreateButton({
	Name = "Check Key",
	Callback = function()
      if _G.string == _G.Key then
        Script()
        Destroy()
      end
	end,
})
