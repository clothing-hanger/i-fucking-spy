local TestRiddle = State()

function TestRiddle:enter()
    Findables = {
        Findable1 = {Findable = Objects.Findables.testFindable(), X = 100, Y = 100, R = 0},
    }
    
    for Name, Findable in pairs(Findables) do
        Findable.Findable:new(Findable.X, Findable.Y)
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
end

return TestRiddle