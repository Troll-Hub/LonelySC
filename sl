local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local Whitelist = {
    7897058943,     -- Death
    2061467416,     -- Owner
    4225017439,     -- Alt
   -- 1261664009    -- Guest
    -- agrega aquí los que quieras
}

local isWhitelisted = false

for _, id in ipairs(Whitelist) do
    if id == LocalPlayer.UserId then
        isWhitelisted = true
        break
    end
end

if isWhitelisted then
    print("Granted")
else
    game:Shutdown()
end

while true do
Workspace.ReplicatedStorage.Grigora.Host.Remotes.Zenkai:FireServer(0, 341)
wait(5)
