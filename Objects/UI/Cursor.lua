local Cursor = Class:extend()

function Cursor:new()
    self.name = "cursor"
    self.x, self.y = love.mouse.getPosition()
    self.color = {1,1,1}
    print("cursor created")
end

function Cursor:update(dt)
    self.x, self.y = love.mouse.getPosition()
end

function Cursor:checkClick()
    print("Clicked at " .. self.x .. ", " .. self.y)
    if Findables then
        for Name, Findable in pairs(Findables) do
            local data = Findable.Findable:givePosition()
            if self.x > data.X and self.x < data.X + data.width then
                if self.y > data.Y and self.y < data.Y + data.height then
                    Findable.Findable:onClick()
                
                end
            end
        end
    end
end

function Cursor:draw()
    love.graphics.translate(Inits.WindowWidth/2, Inits.WindowHeight/2)
    love.graphics.translate(-Inits.WindowWidth/2, -Inits.WindowHeight/2)
    love.graphics.setColor(1,1,1)
    love.graphics.rectangle("fill", self.x, self.y, 10,10)
end

function Cursor:release()

end

return Cursor