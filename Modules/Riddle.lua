function makePrintableRiddle(findables)
    --[[
    local printableRiddle = {} 
    for Name, Findable in pairs(findables) do
        table.insert(printableRiddle, Findable.Findable:giveColor())
        if #printableRiddle == 1 then
            table.insert(printableRiddle, "I Spy " .. Findable.Findable:giveRiddleText())
        else
            table.insert(printableRiddle, Findable.Findable:giveRiddleText())
        end
    end
    return printableRiddle
--]]



    local printableRiddle = {}
    local counter = 1
    local finalCount = #Findables
    ::start::
    for Name, Findable in pairs(Findables) do
        if Findable.ID == counter then
            if counter == 1 then
                table.insert(printableRiddle, "I Spy " .. Findable.Findable:giveRiddleText())
            else
                table.insert(printableRiddle, Findable.Findable:giveRiddleText())
            end
        end
    end
    counter = counter + 1
    if counter == finalCount then
        return printableRiddle
    else
        goto start
    end

end