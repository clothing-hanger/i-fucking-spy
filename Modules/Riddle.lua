function makePrintableRiddle(findables)
    local printableRiddle = {} 
    for Name, Findable in pairs(findables) do
        table.insert(printableRiddle, Findable.Findable:giveColor())
        table.insert(printableRiddle, Findable.Findable:giveRiddleText())
    end
    return printableRiddle
end