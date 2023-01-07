require('class')

-- Define TMaze class ---------------------------------------------

TKeyInput = {}
TKeyInput = class()


function TKeyInput:New(key)
    self.key = btn
    return class(self)
end

function TKeyInput:Down()
    return RETRO:KeyDown(self.key)    
end

function TKeyInput:Pressed()
    return RETRO:KeyPressed(self.key)
end

function TKeyInput:Release()
    return RETRO:KeyReleased(self.key)
end