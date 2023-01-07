

TInputDemo = class()

local pos  = RETRO:Vector2i()

function TInputDemo:New()
	
	return class(self)
end


function TInputDemo:Initialize()
	

	RETRO:SpriteSheetSetup(SPR_CTRL_ABXY, "game:/data/Controller_ABXY_16x16", SIZE_16x16)
	RETRO:SpriteSheetSetup(SPR_CTRL_PAD, "game:/data/Controller_pad_24x24", SIZE_24x24)
	RETRO:SpriteSheetSetup(SPR_CTRL_TRIG, "game:/data/Controller_trigger_24x24", SIZE_24x24)

end

function TInputDemo:Update(dt)
	
end

function TInputDemo:PreRender() 
end

function TInputDemo:Render()

	local x,y = 96,48

	RETRO:SpriteSheetSet(SPR_CTRL_ABXY)
	if (RETRO:ButtonDown(BTN_Y)) then
		RETRO:DrawSprite(0,pos:Set(x+24, y+24));
	else
		RETRO:DrawSprite(4,pos:Set(x+24, y+24));
	end

	if (RETRO:ButtonDown(BTN_X)) then
		RETRO:DrawSprite(1,pos:Set(x+24+16, y+24));
	else
		RETRO:DrawSprite(5,pos:Set(x+24+16, y+24));
	end

	if (RETRO:ButtonDown(BTN_A)) then
		RETRO:DrawSprite(2,pos:Set(x+24+16*2, y+24));
	else
		RETRO:DrawSprite(6,pos:Set(x+24+16*2, y+24));
	end

	if (RETRO:ButtonDown(BTN_B)) then
		RETRO:DrawSprite(3,pos:Set(x+24+16*3, y+24));
	else
		RETRO:DrawSprite(7,pos:Set(x+24+16*3, y+24));
	end

	RETRO:SpriteSheetSet(SPR_CTRL_TRIG)

	if (RETRO:ButtonDown(BTN_LS)) then
		RETRO:DrawSprite(4,pos:Set(x+24, y+40));
	else
		RETRO:DrawSprite(0,pos:Set(x+24, y+40));
	end

	if (RETRO:ButtonDown(BTN_RS)) then
		RETRO:DrawSprite(5,pos:Set(x+24+32, y+40));
	else
		RETRO:DrawSprite(1,pos:Set(x+24+32, y+40));
	end

	RETRO:SpriteSheetSet(SPR_CTRL_PAD)
	RETRO:DrawSprite(2,pos:Set(x+100, y+24))

	if (RETRO:ButtonDown(BTN_UP)) then
		RETRO:DrawSprite(0,pos:Set(x+100, y+24))
	end

	if (RETRO:ButtonDown(BTN_DOWN)) then
		RETRO:DrawSprite(4,pos:Set(x+100, y+24));
	end

	if (RETRO:ButtonDown(BTN_LEFT)) then
		RETRO:DrawSprite(3,pos:Set(x+100, y+24))
	end

	if (RETRO:ButtonDown(BTN_RIGHT)) then
		RETRO:DrawSprite(1,pos:Set(x+100, y+24))
	end


end
