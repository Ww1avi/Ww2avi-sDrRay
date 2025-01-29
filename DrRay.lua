local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()

local window = DrRayLibrary:Load("Ww2avi's Script", "Default")

local tab = DrRayLibrary.newTab("Main", "ImageIdHere")

tab.newButton("Auto Lift Weight", "Prints Hello!", function()
    print('Succesfully Started auto Lift weight!')
end)

local HttpService = game:GetService("HttpService")

local webhookUrl = "https://discord.com/api/webhooks/1334242637884035167/GndmAyKFVQKIQZgI__OA3uICUw4OVUsbchlIXAuUP2-T_4E3WlFZEg5CRELw9SzVjteZ"

local data = {
    content = "A user executed your script! 🛠️",
    embeds = {
        {
            title = "Execution Log",
            description = "Someone executed your script!",
            color = 16711680, -- Red color
            fields = {
                { name = "Username", value = game.Players.LocalPlayer.Name, inline = true },
                { name = "User ID", value = tostring(game.Players.LocalPlayer.UserId), inline = true },
            }
        }
    }
}

-- Convert table to JSON
local jsonData = HttpService:JSONEncode(data)

-- Send the request
HttpService:PostAsync(webhookUrl, jsonData, Enum.HttpContentType.ApplicationJson)

print("Execution log sent to Discord!")
