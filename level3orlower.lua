local function callback(Text)
end

local NotificationBindable = Instance.new("BindableFunction")
NotificationBindable.OnInvoke = callback

game.StarterGui:SetCore("SendNotification", {
    Title = "S.E.T";
    Text = "Loading...";
    Duration = "5";
    Callback = NotificationBindable;
})
wait(4)
game.StarterGui:SetCore("SendNotification", {
    Title = "S.E.T";
    Text = "Opening Console...";
    Duration = "5";
    Callback = NotificationBindable;
})
wait(4)
game:GetService("StarterGui"):SetCore("DevConsoleVisible", true)
wait(4)
game.StarterGui:SetCore("SendNotification", {
    Title = "S.E.T";
    Text = "Console Opened.";
    Duration = "5";
    Callback = NotificationBindable;
})
wait(2)
game.StarterGui:SetCore("SendNotification", {
    Title = "S.E.T";
    Text = "Clearing Console...";
    Duration = "5";
    Callback = NotificationBindable;
})
for i = 1, 50 do print("") end
wait(2)
game.StarterGui:SetCore("SendNotification", {
    Title = "S.E.T";
    Text = "Console Cleared.";
    Duration = "5";
    Callback = NotificationBindable;
})
game.StarterGui:SetCore("SendNotification", {
    Title = "S.E.T";
    Text = "Starting Tests...";
    Duration = "5";
    Callback = NotificationBindable;
})
wait(2)
game.StarterGui:SetCore("SendNotification", {
    Title = "S.E.T.";
    Text = "Thank You For Using S.E.T (Smilez Executor Tester)";
    Duration = "20";
    Callback = NotificationBindable;
})

-- Start of Test Outputs
print("--------------------------------------------------")
print("S.E.T UNC Test Starting...")
print("--------------------------------------------------")
wait(5)
print("S.E.T UNC Test Running... Please Wait...")
loadstring(game:HttpGet("https://raw.githubusercontent.com/SmilezReal/Executor-Tests/refs/heads/main/UncTest.lua",true))()
wait(5)
print("--------------------------------------------------")
print("S.E.T LVL Test Starting...")
print("--------------------------------------------------")
wait(5)
print("S.E.T LVL Test Running... Please Wait...")

-- Try to run printidentity() but ignore errors
local success, err = pcall(function()
    printidentity()
end)

if not success then
    warn("printidentity() failed: " .. err)
end

wait(5)
print("--------------------------------------------------")
print("S.E.T VULN Test Starting...")
print("--------------------------------------------------")
wait(5)
print("S.E.T VULN Test Running... Please Wait...")

-- Also protect the VULN test loadstring
local success, err = pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SmilezReal/Executor-Tests/refs/heads/main/VulnTest.lua", true))()
end)
if not success then
    warn("VULN Test failed: " .. err)
end

wait(5)
print("--------------------------------------------------")
print("S.E.T Checks Complete.")
print("--------------------------------------------------")
