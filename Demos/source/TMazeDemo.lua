
require('TMaze')

TMazeDemo = class()


local COLOR_CLEAN = RETRO:Color32(0, 0, 0,0)
local rect = RETRO:Rect2i()
local offset = RETRO:Vector2i()

function TMazeDemo:New()
	
	return class(self)
end


function TMazeDemo:Initialize()

	print("TMaze initialized ...")

	self.maze = TMaze:New(64,64)
	self.maze:Generate()

	rect = RETRO:Rect2i(0, 0, 256, 256)
	offset = RETRO:Vector2i(0,0)
	RETRO:SpriteSheetSetup(BACK_BUFFER, RETRO:Vector2i(256, 256));
	RETRO:ResetPreRender()

end

function TMazeDemo:Update(dt)
	
end

function TMazeDemo:PreRender() 
	
	print("TMaze prerender ...")
	RETRO:Offscreen(BACK_BUFFER)
	RETRO:Clear(COLOR_CLEAN);
    self.maze:Preview(16,16,COLOR_YELLOW);
	RETRO:Onscreen();
end

function TMazeDemo:Render()

	
	RETRO:SpriteSheetSet(BACK_BUFFER);	
	RETRO:DrawCopy(rect, offset);
	

end
