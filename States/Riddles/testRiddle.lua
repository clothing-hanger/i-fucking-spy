local TestRiddle = State()

function TestRiddle:enter()
    Findables = {
        testObject = {Findable = Objects.Findables.TestFindable(), X = 100, Y = 100, R = 0, riddleText = "a test object, "},
    }


    Riddle = {}

    self:InitRiddle()

    
    for Name, Findable in pairs(Findables) do
        Findable.Findable:new(Findable.X, Findable.Y, Findable.R, Findable.riddleText)
    end
end

function TestRiddle:InitRiddle()
    for Name, Findable in pairs(Findables) do
        table.insert(Riddle, Findable.Findable:giveRiddleText())
    end
end

function TestRiddle:update(dt)
    for Name, Findable in pairs(Findables) do
        Findable.Findable:update(dt)
    end
 
end

function TestRiddle:draw()
    for Name, Findable in pairs(Findables) do
        Findable.Findable:draw()
    end

    love.graphics.printf(makePrintableRiddle(Findables), Inits.GameWidth/-300, Inits.GameHeight/2, 600, "center")
end

return TestRiddle