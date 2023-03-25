local Mod = {
 1,
}
local Stars = {
3827953742,
13008430,
12669318,
352361396,
2612705398,
2991958274,
12175156,
12284980,
12715631,
12084090,
10885607,
11010181,
2556759841,
}


local formatNumber = (function(n)
    n = tostring(n)
    return n:reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
end)

local function checkingzincs()
    for i,v in pairs(game:GetService('Workspace').Players:GetChildren()) do
        if v:FindFirstChild('UpperTorso') then
            if not v:FindFirstChild('UpperTorso'):FindFirstChild('OriginalSize') then
                local plrcheck = game:GetService('Players'):FindFirstChild(v.Name)
                if plrcheck then
                    local plrID = game:GetService('Players'):FindFirstChild(v.Name).UserId
                    if table.find(Stars, plrID) then
                        if v:FindFirstChildWhichIsA('Humanoid') then           
                            v:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[⭐]' .. game.Players[v.Name].DisplayName) 
                        end
                    
                    else
                        if v:FindFirstChildWhichIsA('Humanoid') then
                            v:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[💻]' .. game.Players[v.Name].DisplayName)
                        end
                    end
                end
            else
                local plrcheck = game.Players:FindFirstChild(v.Name)
                if plrcheck then
                    local plrID = game.Players:FindFirstChild(v.Name).UserId
                    if table.find(Mods, plrID) then
                        if v:FindFirstChildWhichIsA('Humanoid') then
                            v:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑]' .. game.Players[v.Name].DisplayName)
                        end
           
                    elseif table.find(Stars, plrID) then
                        if v:FindFirstChildWhichIsA('Humanoid') then
                            v:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[⭐]' .. game.Players[v.Name].DisplayName)
                        end
                    end
                end
            end
        end
    end
end

local succ, errr = pcall(checkingzincs)
