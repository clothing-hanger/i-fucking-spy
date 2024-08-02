local selectedFindable = 1
local editAmount = 1


function updateFindableEditor()
    if Input:pressed("Left") then
        for Name, Findable in pairs(Findables) do
            if Findable.Findable.ID == selectedFindable then
                Findable.Findable.x = Findable.Findable.x - editAmount
            end
        end
    end

    if Input:pressed("Right") then
        for Name, Findable in pairs(Findables) do
            if Findable.Findable.ID == selectedFindable then
                Findable.Findable.x = Findable.Findable.x + editAmount          -- shit looks like yanderedev wrote this 😭
            end
        end
    end

    if Input:pressed("Up") then
        for Name, Findable in pairs(Findables) do
            if Findable.Findable.ID == selectedFindable then
                Findable.Findable.x = Findable.Findable.y - editAmount
            end
        end
    end

    if Input:pressed("Down") then
        for Name, Findable in pairs(Findables) do
            if Findable.Findable.ID == selectedFindable then
                Findable.Findable.y = Findable.Findable.y + editAmount
            end
        end
    end

    

end


function drawFindableEditor()
    love.graphics.rectangle("fill", 0, 0, 100, 100)
    local printableFindableData = ""
    local printableFindableDataTable = {}
    for Name, Findable in pairs(Findables) do
        printableFindableData =  "Name: " .. Findable.Findable.name .. " X: " .. Findable.Findable.x .. " Y: " .. Findable.Findable .. "\n"
        table.insert(printableFindableData)
    end

    love.graphics.print(printableFindableData)
end


