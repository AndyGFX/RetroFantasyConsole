
require('TAnimation')


TAnimSpriteDemo = class()

local anim1 = TAnimations:New()
local anim2 = TAnimations:New()
local anim3 = TAnimations:New()

local pos = RETRO:Vector2i()
TXT_POS = RETRO:Vector2i(4,4)

function TAnimSpriteDemo:New()
	
	return class(self)
end


function TAnimSpriteDemo:Initialize()

	print ("Initialieze ANIM DEMO")
	local anim_speed = 8
    anim1:SetSpriteSheet(SPR_PLAYER_ID);
    anim1:Add("IDLE",16,4,anim_speed)

    anim2:SetSpriteSheet(SPR_PLAYER_ID);
	anim2:Add("RUN",0,6,anim_speed)

	anim3:SetSpriteSheet(SPR_PLAYER_ID);
	anim3:Add("CLIMB",5*8,3,anim_speed)

	anim1:Play("IDLE",true)
	anim2:Play("RUN",true)
	anim3:Play("CLIMB",true)
	
end

function TAnimSpriteDemo:Update(dt)
	
	anim1:Update(dt);
	anim2:Update(dt);
	anim3:Update(dt);
	
end

function TAnimSpriteDemo:PreRender() 
end

function TAnimSpriteDemo:Render()

	

	RETRO:Print(pos:Set(16,24), COLOR_WHITE,  "@FFFF00Animation: @FFFFFFIDLE");
	anim1:Draw(100,16,0)

	RETRO:Print(pos:Set(16,24+40), COLOR_WHITE,  "@FFFF00Animation: @FFFFFFRUN");
	anim2:Draw(100,16+40,0)

	RETRO:Print(pos:Set(16,24+40+40), COLOR_WHITE,  "@FFFF00Animation: @FFFFFFCLIMB");
	anim3:Draw(100,16+40+40,0)

	RETRO:Print(pos:Set(150,64), COLOR_WHITE,  "@FFFF00Supported methods:\n@FFFFFF - Play\n - Stop\n - Rewind\n - Update\n - Play\n - Add");
	
end
