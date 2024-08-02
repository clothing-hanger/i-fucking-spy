local TheJokers = Class:extend()

function TheJokers:new(x,y,r,sx,sy,riddleText)
    self.name = "Jokers"
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

function TheJokers:update(dt)

end

function TheJokers:givePosition()
    return{
        X = self.x,
        Y = self.y,
        width = self.width,
        height = self.height,
    }
end

function TheJokers:onClick()
    print(self.name ..  " Found!")
    self.found = true
    self.color = {0,1,1}
end

function TheJokers:giveRiddleText()
    return self.riddleText
end

function TheJokers:giveColor()
    return self.color
end

function TheJokers:draw()

    love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
    love.graphics.draw(self.image, self.x, self.y, self.r, self.scaleX, self.scaleY)
end

function TheJokers:release()

end

return TheJokers