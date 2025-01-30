local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()

local window = DrRayLibrary:Load("Ww2avi's Script", "Default")

local tab = DrRayLibrary.newTab("Main", "ImageIdHere")

tab.newButton("Auto Lifts weight", "Starts Auto Lift weight!", function()
    game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
end)
