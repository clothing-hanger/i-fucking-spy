local TestFindable = Class:extend()

function TestFindable:new(x,y,r,riddleText)
    self.name = "TestFindable"
    self.x, self.y = (x or 0), (y or 0)
    self.rotation = (r or 0)
    self.color = {1,1,1}
    self.riddleText = riddleText
    self.found = false
    self.width = 25
    self.height = 25
end

function TestFindable:update(dt)

end

function TestFindable:givePosition()
    return{
        X = self.x,
        Y = self.y,
        width = self.width,
        height = self.height,
    }
end

function TestFindable:onClick()
    print(self.name ..  " Found!")
    self.found = true
    self.color = {0,1,1}
end


function TestFindable:giveRiddleText()
    return self.riddleText
end

function TestFindable:giveColor()
    return self.color
end

function TestFindable:draw()
    love.graphics.translate(Inits.WindowWidth/2, Inits.WindowHeight/2)
    love.graphics.translate(-Inits.WindowWidth/2, -Inits.WindowHeight/2)
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end

function TestFindable:release()

end

return TestFindable