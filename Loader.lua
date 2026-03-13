local PlaceScripts = {
    [155615604] = "https://raw.githubusercontent.com/4levy/Elystra.wtf/refs/heads/main/PL.lua",
    [77837537595343] = "https://raw.githubusercontent.com/4levy/Elystra.wtf/refs/heads/main/BannaTown.lua",
    [114116662845070] = "https://raw.githubusercontent.com/4levy/Elystra.wtf/refs/heads/main/CityBanna.lua",
    [14807448145] = "https://raw.githubusercontent.com/umrfyn/Elystra.wtf/refs/heads/main/ThaiBanCity.txt",
    [103854444055060] = "https://raw.githubusercontent.com/umrfyn/Elystra.wtf/refs/heads/main/SilentAssassins.lua"
}

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local currentPlaceId = game.PlaceId

local scriptUrl = PlaceScripts[currentPlaceId]

if scriptUrl then
    local ok = pcall(function()
        loadstring(game:HttpGet(scriptUrl))()
    end)

    if not ok then
        LocalPlayer:Kick("Script failed to load.")
    end
else
    LocalPlayer:Kick("This game is not supported.")
end
