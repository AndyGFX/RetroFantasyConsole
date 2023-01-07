
local SCREEN_CLEAR_COLOR = RETRO:Color32(50, 104, 108)
local COLOR_BLUE = RETRO:Color32(0, 0, 255)
local COLOR_WHITE = RETRO:Color32(255, 255, 255)
local COLOR_BLACK = RETRO:Color32(0, 0, 0,0)

local pos = RETRO:Vector2i()
local A = RETRO:Vector2i()
local B = RETRO:Vector2i()
local size = RETRO:Vector2i()
local rect = RETRO:Rect2i()
local offset = RETRO:Vector2i()

local BUFFER_ID = 1
local bufferInitialized = 0
function OnHardwareSetup()

	print("HW setup ...")


	HW_size_x = 320
	HW_size_y = 200
	HW_map_size_x = 256
	HW_map_size_y = 256
	HW_map_layers = 8
	HW_fps = 60
	HW_pixel_style = PixelStyle.Square

end

function OnInitialize()

	print("Template main.lua initialized ...")
	pos:Set(256/2,256/2)	
	size:Set(32,32)
	A = pos-size
	B = pos+size
	rect = RETRO:Rect2i(0, 0, 256, 256)
	offset = RETRO:Vector2i(0,0)
	RETRO:SpriteSheetSetup(BUFFER_ID, RETRO:Vector2i(256, 256));


end

function OnUpdate(deltaTime)
	
end

function OnPreRender()

	RETRO:Offscreen(BUFFER_ID)
	RETRO:Clear(COLOR_BLACK);
    RETRO:DrawEllipseFill(pos, size, COLOR_BLUE);
    RETRO:DrawEllipse(pos, size, COLOR_WHITE);
	RETRO:Onscreen();

end

function OnRender()

	RETRO:Clear(SCREEN_CLEAR_COLOR)

    RETRO:SpriteSheetSet(BUFFER_ID);

    offset.x = 0
    RETRO:DrawCopy(rect, offset, FLIP_H);
    offset.x = 10
    RETRO:DrawCopy(rect, offset, FLIP_H);
    offset.x = 20
    RETRO:DrawCopy(rect, offset, FLIP_H);
    size.x=64
    size.y=64
    RETRO:DrawEllipse(pos, size, COLOR_WHITE);

end

function OnClose()
	print("OnClose  ... ");
end

