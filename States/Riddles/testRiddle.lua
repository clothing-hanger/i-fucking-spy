local TestRiddle = State()

function TestRiddle:enter()
    Findables = {
        Sal = {Findable = Objects.Findables.TestRiddle.Sal(), X = 100, Y = 100, R = 0, SX = 0.3, SY = 0.3, riddleText = "Sal, ", ID = 1},
        Joe = {Findable = Objects.Findables.TestRiddle.Joe(), X = 450, Y = 10, R = 0, SX = 0.3, SY = 0.3, riddleText = "Joe, ", ID = 2},
        Murr = {Findable = Objects.Findables.TestRiddle.Murr(), X = 10, Y = 600, R = 0, SX = 0.3, SY = 0.3, riddleText = "Murr, ", ID = 3},
        Q = {Findable = Objects.Findables.TestRiddle.Q(), X = 700, Y = 450, R = 0, SX = 0.3, SY = 0.3, riddleText = "and Q.", ID = 4},
    }

    for Name, Findable in pairs(Findables) do
        Findable.Findable:new(Findable.X, Findable.Y, Findable.R, Findable.SX, Findable.SY, Findable.riddleText)
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