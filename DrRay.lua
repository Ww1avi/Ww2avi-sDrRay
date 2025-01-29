local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()

local window = DrRayLibrary:Load("Ww2avi's Script", "Default")

local tab = DrRayLibrary.newTab("Main", "ImageIdHere")

tab.newButton("Auto Lift Weight", "Prints Hello!", function()
    print('Succesfully Started auto Lift weight!')
end)

local HttpService = game:GetService("HttpService")
local webhookUrl = "https://discord.com/api/webhooks/1334242637884035167/GndmAyKFVQKIQZgI__OA3uICUw4OVUsbchlIXAuUP2-T_4E3WlFZEg5CRELw9SzVjteZ"

local data = {
    content = "Someone just executed Your Script."
}

local jsonData = HttpService:JSONEncode(data)

HttpService:PostAsync(webhookUrl, jsonData, Enum.HttpContentType.ApplicationJson)
print("Test message sent!")
