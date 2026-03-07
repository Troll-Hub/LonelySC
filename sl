local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local Whitelist = {
    7897058943,     -- Death
    2061467416,     -- Owner
    4225017439,     -- Alt
    -- 10599191814    -- Guest
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
