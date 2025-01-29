local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()

local window = DrRayLibrary:Load("Ww2avi's Script", "Default")

local tab = DrRayLibrary.newTab("Main", "ImageIdHere")

tab.newButton("Auto Lift Weight", "Starts Auto Lift weight!", function()
    print('Succesfully Started auto Lift weight!')
end)

local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")

local webhookUrl = "https://discord.com/api/webhooks/1334248022854471710/4q7FBj937QoqAaL-M96OAitTLQl7H2xkMu6fnmgSiGan2skjn2DZEP1aCfCaywBTqP3A"

local function sendWebhook(player)
    local data = {
        content = player.Name .. " executed the script!"
    }

    local jsonData = HttpService:JSONEncode(data)

    local success, response = pcall(function()
        return HttpService:PostAsync(webhookUrl, jsonData, Enum.HttpContentType.ApplicationJson)
    end)

    if success then
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("✅ Webhook sent successfully!", "All")
    else
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("❌ Webhook failed! Error: " .. response, "All")
    end
end

-- When a player joins, send webhook
Players.PlayerAdded:Connect(sendWebhook)
