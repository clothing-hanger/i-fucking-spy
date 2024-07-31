local Joe = Class:extend()

function Joe:new(x,y,r,sx,sy,riddleText)
    self.name = "Joe"
    self.x, self.y = (x or 0), (y or 0)
    self.rotation = (r or 0)
    self.scaleX = (sx or 1)
    self.scaleY = (sy or 1)
    self.color = {1,1,1}
    self.riddleText = riddleText
    self.found = false
    self.image = love.graphics.newImage("Images/Riddles/TestRiddle/Findables/" .. self.name .. ".png")
    self.width = self.image:getWidth()*self.scaleX
    self.height = self.image:getHeight()*self.scaleY
end

function Joe:update(dt)

end

function Joe:givePosition()
    return{
        X = self.x,
        Y = self.y,
        width = self.width,
        height = self.height,
    }
end

function Joe:onClick()
    print(self.name ..  " Found!")
    self.found = true
    self.color = {0,1,1}
end


function Joe:giveRiddleText()
    return self.riddleText
end

function Joe:giveColor()
    return self.color
end

function Joe:draw()
    love.graphics.translate(Inits.WindowWidth/2, Inits.WindowHeight/2)
    love.graphics.translate(-Inits.WindowWidth/2, -Inits.WindowHeight/2)
    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
    love.graphics.draw(self.image, self.x, self.y, self.r, self.scaleX, self.scaleY)
end

function Joe:release()

end

return Joe