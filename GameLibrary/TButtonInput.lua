require('class')

-- Define TMaze class ---------------------------------------------

TButtonInput = {}
TButtonInput = class()


function TButtonInput:New(btn)
    self.button = btn
    return class(self)
end

function TButtonInput:Down()
    return RETRO:ButtonDown(self.button)
end

function TButtonInput:Pressed()
    return RETRO:ButtonPressed(self.button)
end

function TButtonInput:Release()
    return RETRO:ButtonReleased(self.button)
end