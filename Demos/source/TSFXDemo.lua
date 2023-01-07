

TSFXDemo = class()

function TSFXDemo:New()
	
	return class(self)
end


function TSFXDemo:Initialize()
	
end

function TSFXDemo:Update(dt)
	
end

function TSFXDemo:PreRender() 
end

function TSFXDemo:Render()

	
	if RETRO:KeyPressed(49) then
		RETRO:SoundPlay( SFX_0, 100,1 )
	end
	if RETRO:KeyPressed(50) then
		RETRO:SoundPlay( SFX_1, 100,1 )
	end
	if RETRO:KeyPressed(51) then
		RETRO:SoundPlay( "SFX-3", 100,1 )
	end
	if RETRO:KeyPressed(52) then
		RETRO:SoundPlay( SFX_3, 100,1 )
	end
	if RETRO:KeyPressed(53) then
		RETRO:MusicPlay( MUSIC_ID)
	end

	RETRO:Print(RETRO:Vector2i(32,48+16*0), COLOR_WHITE,  "[1] press key to play SFX 0");
	
	RETRO:Print(RETRO:Vector2i(32,48+16*1), COLOR_WHITE,  "[2] press key to play SFX 1");
	RETRO:Print(RETRO:Vector2i(32,48+16*2), COLOR_WHITE,  "[3] press key to play SFX 2");
	RETRO:Print(RETRO:Vector2i(32,48+16*3), COLOR_WHITE,  "[4] press key to play SFX 3");
	RETRO:Print(RETRO:Vector2i(32,48+16*4), COLOR_WHITE,  "[5] press key to play MUSIC");

	RETRO:Print(USER_FONT_ID,RETRO:Vector2i(32,32+16*-1),COLOR_WHITE,"@w448MUSIC AND SFX LOADER ...");
	RETRO:Print(USER_FONT_ID,RETRO:Vector2i(32,48+16*5),COLOR_WHITE,"[MOD OGG XM XMA WAV]");

end
