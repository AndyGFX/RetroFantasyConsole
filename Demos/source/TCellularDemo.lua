
require('Class')
require('TCellular')

TCellularDemo = class()

local SCREEN_RECT_320x200 = RETRO:Rect2i(0,0,320, 200)
local SIZE_320x200 = RETRO:Vector2i(320, 200)

local COLOR_CLEAN = RETRO:Color32(0, 0, 0,0)
local rect = RETRO:Rect2i()
local offset = RETRO:Vector2i()

function TCellularDemo:New()
	self.cave1 = TCellular:New()
	self.cave2 = TCellular:New()
	return class(self)
end


function TCellularDemo:Initialize()

	
	self.cave1:Generate(64,32,0.6,3,5,5) 	
	self.cave2:Generate(64,32,0.5,3,5,5) 

	rect = RETRO:Rect2i(0, 0, 256, 256)
	offset = RETRO:Vector2i(0,0)
	RETRO:SpriteSheetSetup(BACK_BUFFER, RETRO:Vector2i(256, 256));
	RETRO:ResetPreRender()

end

function TCellularDemo:Update(dt)
	
end

function TCellularDemo:PreRender() 

	print("TCellular prerender ...")
	RETRO:Offscreen(BACK_BUFFER)
	RETRO:Clear(COLOR_CLEAN);
    self.cave1:PreviewMap(32,16,COLOR_BLACK,COLOR_YELLOW)
    self.cave2:PreviewMap(32,16+33,COLOR_BLACK,COLOR_WHITE)
	RETRO:Onscreen();	

end

function TCellularDemo:Render()
	
	RETRO:SpriteSheetSet(BACK_BUFFER);	
	RETRO:DrawCopy(rect, offset);    
    
end

