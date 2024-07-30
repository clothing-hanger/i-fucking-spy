local testFindable = Class:extend()

function testFindable:new(x,y,r)
    self.x, self.y = (x or 0), (y or 0)
    self.rotation = (r or 0)
    self.name = "testFindable"
end

function testFindable:update(dt)

end

function testFindable:onClick()
    print(self.name ..  " Found!")
end

function testFindable:draw()
    love.graphics.translate(Inits.WindowWidth/2, Inits.WindowHeight/2)
    love.graphics.translate(-Inits.WindowWidth/2, -Inits.WindowHeight/2)
    love.graphics.rectangle("fill", self.x, self.y, 25, 25)
end

function testFindable:release()

end

return testFindable