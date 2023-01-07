

TLoadTMX = class()



function TLoadTMX:New()
	
	return class(self)
end


function TLoadTMX:Initialize()


	RETRO:SpriteSheetSetup(SHEET_TILES_PLATFORM, "game:/data/scene_001/tileset", RETRO:Vector2i(16, 16));
	RETRO:SpriteSheetSetup(SHEET_TILES_MID, "game:/data/scene_001/middleground", RETRO:Vector2i(16, 16));
	RETRO:SpriteSheetSetup(SHEET_TILES_BKG, "game:/data/scene_001/background", RETRO:Vector2i(16, 16));	

	
	
	map = RETRO:MapLoadTMX("game:/data/scene_001/level_001",true)

	RETRO:MapLoadTMXLayer(map, "Foreground", 0);
	RETRO:MapLoadTMXLayer(map, "Platforms", 1);
	RETRO:MapLoadTMXLayer(map, "Middleground", 2);
	RETRO:MapLoadTMXLayer(map, "Background", 3);

	RETRO:MapLayerSpriteSheetSet(0, SHEET_TILES_PLATFORM);
	RETRO:MapLayerSpriteSheetSet(1, SHEET_TILES_PLATFORM);
	RETRO:MapLayerSpriteSheetSet(2, SHEET_TILES_MID);
	RETRO:MapLayerSpriteSheetSet(3, SHEET_TILES_BKG);
    
end

function TLoadTMX:Update(dt)
	
end

function TLoadTMX:PreRender() 
end

function TLoadTMX:Render()


		RETRO:ClipSet(RETRO:Rect2i(8, 8, 320-4-8-4, 200-24-8-4));

        RETRO:DrawMapLayer(3,RETRO:Vector2i(0,-170));
        RETRO:DrawMapLayer(2,RETRO:Vector2i(0,-170));
        RETRO:DrawMapLayer(1,RETRO:Vector2i(0,-170));
        RETRO:DrawMapLayer(0,RETRO:Vector2i(0,-170));

       RETRO:ClipReset();
   
end
