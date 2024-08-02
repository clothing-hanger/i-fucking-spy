function createFindable(findable,x,y,r,sx,sy,string,id)
    if not findable then error("Called createFindable with no Findable!") end
    if not id then error("Called createFindable with no ID!") end
    return{
        Findable = findable,
        X = (x or 0),
        Y = (y or 0),
        R = (r or 0), --am i even gonna use r     probably not lmao
        SX = (sx or 1),
        SY = (sy or 1),
        RiddleText = (string or "No Findable Name!"),
        ID = id,
    }
end

function createMultiFindable(findable,positions,string,id)
    if not findable then error("Called createMultiFindable with no Findable!") end
    if not id then error("Called createMultiFindable with no ID!") end
    --add a check to ensure a table is given as positions
    for i = 1,#positions do
    end
    return{
        Findable = findable,

    }
end

