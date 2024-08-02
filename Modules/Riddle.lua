function makePrintableRiddle(findables)
    
    local entries = {}
    for Name, Findable in pairs(findables) do
        table.insert(entries, {id = Findable.ID, name = Name, findable = Findable})
    end
    table.sort(entries, function(a, b) return a.id < b.id end)
    
    local printableRiddle = {}
    for i, entry in ipairs(entries) do
        local Findable = entry.findable
        table.insert(printableRiddle, Findable.Findable:giveColor())
        if #printableRiddle == 1 then
            table.insert(printableRiddle, "I Spy " .. Findable.Findable:giveRiddleText())
        else
            table.insert(printableRiddle, Findable.Findable:giveRiddleText())
        end
    end
    
    return printableRiddle

end