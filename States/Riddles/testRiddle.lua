local TestRiddle = State()

function TestRiddle:enter()
    Findables = {

        Can = {Findable = Objects.Findables.TestRiddle.Can(), X = 500, Y = 300, R = 0, SX = 1, SY = 1, riddleText = "a can, ", ID = 1},
        Clippers = {Findable = Objects.Findables.TestRiddle.Clippers(), X = 500, Y = 300, R = 0, SX = 1, SY = 1, riddleText = "clippers, ", ID = 2},
        Egg = {Findable = Objects.Findables.TestRiddle.Egg(), X = 500, Y = 300, R = 0, SX = 1, SY = 1, riddleText = "an egg, ", ID = 3},
        Fry = {Findable = Objects.Findables.TestRiddle.Fry(), X = 500, Y = 300, R = 0, SX = 1, SY = 1, riddleText = "a fry, ", ID = 4},
        Sanitizer = {Findable = Objects.Findables.TestRiddle.Sanitizer(), X = 500, Y = 300, R = 0, SX = 1, SY = 1, riddleText = "sanitizer, ", ID = 5},
        Sausage = {Findable = Objects.Findables.TestRiddle.Sausage(), X = 500, Y = 300, R = 0, SX = 1, SY = 1, riddleText = "a sausage, ", ID = 6},
        Wrapper = {Findable = Objects.Findables.TestRiddle.Wrapper(), X = 500, Y = 300, R = 0, SX = 1, SY = 1, riddleText = "a wrapper, ", ID = 7},
        Zipper = {Findable = Objects.Findables.TestRiddle.Zipper(), X = 500, Y = 300, R = 0, SX = 1, SY = 1, riddleText = "and a zipper.", ID = 8},

    }



    for Name, Findable in pairs(Findables) do
        Findable.Findable:new(Findable.X, Findable.Y, Findable.R, Findable.SX, Findable.SY, Findable.riddleText)
    end
end


function TestRiddle:update(dt)
    for Name, Findable in pairs(Findables) do
        Findable.Findable:update(dt)
    end
 

    updateFindableEditor()
end

function TestRiddle:draw()
    for Name, Findable in pairs(Findables) do
        Findable.Findable:draw()
    end

    love.graphics.printf(makePrintableRiddle(Findables), Inits.GameWidth/-300, Inits.GameHeight/2, 600, "center")

    drawFindableEditor()
end

return TestRiddle