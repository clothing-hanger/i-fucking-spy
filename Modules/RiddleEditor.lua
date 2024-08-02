local selectedFindable = 1
function updateFindableEditor()
    if Input:pressed("Left") then
        for Name, Findable in pairs(Findables) do
            if Findable.Findable.ID == selectedFindable then
                Findable.Findable.X = Findable.Findable.X - 1
            end
        end
    end
        
    if Findables then
        for Name, Findable in pairs(Findables) do
            
        end
    end
end