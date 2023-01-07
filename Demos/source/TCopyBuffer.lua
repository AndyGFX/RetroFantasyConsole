
TCopyBuffer = class()

function TCopyBuffer:New()
	return class(self)
end

local COLOR_CLEAN = RETRO:Color32(0, 0, 0,0)

local pos = RETRO:Vector2i()
local A = RETRO:Vector2i()
local B = RETRO:Vector2i()
local size = RETRO:Vector2i()
local rect = RETRO:Rect2i()
local offset = RETRO:Vector2i()


local bufferInitialized = 0


function TCopyBuffer:Initialize()

	print("Template main.lua initialized ...")
	pos:Set(256/2,96)	
	size:Set(32,32)
	A = pos-size
	B = pos+size
	rect = RETRO:Rect2i(0, 0, 256, 256)
	offset = RETRO:Vector2i(0,0)
	RETRO:SpriteSheetSetup(BACK_BUFFER, RETRO:Vector2i(256, 256));
	RETRO:ResetPreRender()

end

function TCopyBuffer:Update(deltaTime)	
end

function TCopyBuffer:PreRender()

	print("TMaze prerender ...")
	RETRO:Offscreen(BACK_BUFFER)
	RETRO:Clear(COLOR_CLEAN);
    RETRO:DrawEllipseFill(pos, size, COLOR_BLUE);
    RETRO:DrawEllipse(pos, size, COLOR_WHITE);
	RETRO:Onscreen();

end

function TCopyBuffer:Render()


    RETRO:SpriteSheetSet(BACK_BUFFER);

    offset.x = 0
    RETRO:DrawCopy(rect, offset);
    offset.x = 10
    RETRO:DrawCopy(rect, offset);
    offset.x = 20
    RETRO:DrawCopy(rect, offset, FLIP_H);
    size.x=64
    size.y=64
    RETRO:DrawEllipse(pos, size, COLOR_WHITE);

end
