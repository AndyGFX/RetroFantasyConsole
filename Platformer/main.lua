
require('TWorldCollision')
require('TPlatformer')
require('TAnimation')

local player = {name="Player",x=100,y=140,w=16,h=24,color=RETRO:Color32(255,255,0),speed=1}
player_anim = {}
playerControl = {}


local SCREEN_CLEAR_COLOR = RETRO:Color32(80, 80, 80)

SPR_PLAYER_ID = 2

SHEET_TILES_BKG = 3
SHEET_TILES_MID = 4
SHEET_TILES_PLATFORM = 5

SIZE_32x32 = RETRO:Vector2i(32, 32)
CAMERA_POS = RETRO:Vector2i(0,0)
TILE_SIZE = 16

COLLISION_EMPTY = 0
COLLISION_SOLID = 1
COLLISION_ONEWAY = 2

COLOR_WHITE = RETRO:Color32(255,255,255)

BLOCK_COLOR= RETRO:Color32(0,255,0)

TXT_POS = RETRO:Vector2i(4,4)
STATE_TEXT = ""


function OnHardwareSetup()


	HW_size_x = 320
	HW_size_y = 200
	HW_map_size_x = 256
	HW_map_size_y = 256
	HW_map_layers = 8
	HW_fps = 60
	HW_pixel_style = PixelStyle.Square

end

function OnInitialize()

	-- hide FPS monitor 
	RETRO:HideFPSMonitor()

	-- load player sprite sheet
	RETRO:SpriteSheetSetup(SPR_PLAYER_ID, "game:/data/Player", SIZE_32x32);

	-- initialize player animations
	print ("Initialize ANIMS ...")
	local anim_speed = 8
	player_anim = TAnimations:New()
    player_anim:SetSpriteSheet(SPR_PLAYER_ID);
    player_anim:Add("IDLE",16,4,anim_speed)
	player_anim:Add("RUN",0,6,anim_speed)
	player_anim:Add("JUMP",8,1,anim_speed)
	player_anim:Add("FALL",9,1,anim_speed)

	-- initialzie player control
	print ("Initialize player controller ...")
	playerControl = TPlatformer:New(player)

	-- initialize collision world
	print ("Initialize world collision ...")
	playerControl.world = TWorldCollision:New()
	playerControl.world:CreateWorld(TILE_SIZE)
	playerControl.world:AddEntity(player)
  	

	-- load used tileset
	print ("Initialize MAP ...")

	RETRO:SpriteSheetSetup(SHEET_TILES_PLATFORM, "game:/data/scene_001/tileset", RETRO:Vector2i(16, 16));
	RETRO:SpriteSheetSetup(SHEET_TILES_MID, "game:/data/scene_001/middleground", RETRO:Vector2i(16, 16));
	RETRO:SpriteSheetSetup(SHEET_TILES_BKG, "game:/data/scene_001/background", RETRO:Vector2i(16, 16));	
	
	-- load TMX map
	map = RETRO:MapLoadTMX("game:/data/scene_001/level_001",true)

	-- calc and set world bounds
	playerControl.world.bounds = RETRO:Vector2i(map.size.x*TILE_SIZE,map.size.y*TILE_SIZE)

	-- load TMX layer
	local idx = 0

	RETRO:MapLoadTMXLayer(map, "Collision", idx);
	RETRO:MapLoadTMXLayer(map, "Foreground",idx+1);
	RETRO:MapLoadTMXLayer(map, "Platforms", idx+2);
	RETRO:MapLoadTMXLayer(map, "Middleground", idx+3);
	RETRO:MapLoadTMXLayer(map, "Background", idx+4);

	-- set spritesheet for map layer
	RETRO:MapLayerSpriteSheetSet(0, SHEET_TILES_PLATFORM);
	RETRO:MapLayerSpriteSheetSet(1, SHEET_TILES_PLATFORM);
	RETRO:MapLayerSpriteSheetSet(2, SHEET_TILES_PLATFORM);
	RETRO:MapLayerSpriteSheetSet(3, SHEET_TILES_MID);
	RETRO:MapLayerSpriteSheetSet(4, SHEET_TILES_BKG);

	-- convert map collision to collision world
	for mx=0,map.size.x-1 do
		for my=0,map.size.y-1 do
			local cell = RETRO:MapSpriteGet(0, RETRO:Vector2i(mx,my))

			if cell==0 then
				RETRO:MapDataSet(0,RETRO:Vector2i(mx,my),{collision=COLLISION_SOLID})
				playerControl.world:AddBlock({name="cell"..tostring(mx)..tostring(my),x=mx*16,y=my*16,w=16,h=16,color=BLOCK_COLOR})				
			else
				RETRO:MapDataSet(0,RETRO:Vector2i(mx,my),{collision=COLLISION_EMPTY})	
			end
		end
	end
	
	
end

function OnUpdate(deltaTime)
	
	-- TODO: fix calc gravity when is player in collision 
	playerControl:Update(deltaTime)

	CAMERA_POS.x = playerControl.player.x-160
    CAMERA_POS.y = playerControl.player.y-100


    playerControl.player.x, playerControl.player.y, cols, cols_len = playerControl.world:Move(player, playerControl.player.x+playerControl.player.dx, playerControl.player.y+playerControl.player.dy)
	local state = playerControl:SetCollisionState(cols, cols_len)    
	

	local state = playerControl.player.state
	-- set animation by player movement state
	if state==CTRL_STATE_MOVE_LEFT then
		player_anim:Play("RUN",true) 
		STATE_TEXT = "STATE: M.LEFT"
	end

	if state==CTRL_STATE_MOVE_RIGHT then 		
		player_anim:Play("RUN",true) 
		STATE_TEXT = "STATE: M.RIGHT"
	end

	if state==CTRL_STATE_IDLE then  		
		player_anim:Play("IDLE",true) 
		STATE_TEXT = "STATE: IDLE"
	end
	if state==CTRL_STATE_JUMP then  		
		player_anim:Play("JUMP",true) 
		STATE_TEXT = "STATE: JUMP"
	end

	if state==CTRL_STATE_FALL then  		
		player_anim:Play("FALL",true) 
		STATE_TEXT = "STATE: FALL"
	end
	
	player_anim:Update(deltaTime)
	

end

function OnRender()

	RETRO:Clear(SCREEN_CLEAR_COLOR);
	RETRO:CameraSet(CAMERA_POS)
	
	RETRO:DrawMapLayer(4,RETRO:Vector2i(0,0));
	RETRO:DrawMapLayer(3,RETRO:Vector2i(0,0));
    RETRO:DrawMapLayer(2,RETRO:Vector2i(0,0));
    RETRO:DrawMapLayer(1,RETRO:Vector2i(0,0));
    RETRO:DrawMapLayer(0,RETRO:Vector2i(0,0));

	

	player_anim:Draw(playerControl.player.x-8,playerControl.player.y-8,playerControl.player.dir)

	
	
	--world:DebugDraw()
	playerControl.world:DrawBlocks()
	playerControl.world:DrawEntity(playerControl:GetData())

	RETRO:CameraReset()
	RETRO:Print(TXT_POS, COLOR_WHITE, STATE_TEXT);
	RETRO:Print(TXT_POS+RETRO:Vector2i(0,8), COLOR_WHITE, "Ground: "..tostring(playerControl:IsOnGround()))
	RETRO:Print(TXT_POS+RETRO:Vector2i(0,16), COLOR_WHITE, "DX: "..tostring(playerControl.player.dx))
	RETRO:Print(TXT_POS+RETRO:Vector2i(0,24), COLOR_WHITE, "DY: "..tostring(playerControl.player.dy))
	RETRO:Print(TXT_POS+RETRO:Vector2i(0,32), COLOR_WHITE, "ANIM: "..player_anim.animationName)
	RETRO:Print(TXT_POS+RETRO:Vector2i(0,40), COLOR_WHITE, "FRAME: "..tostring(player_anim:GetCurrentFrameID()))
	RETRO:Print(TXT_POS+RETRO:Vector2i(0,48), COLOR_WHITE, "TIME: "..tostring(player_anim:GetCurrentTime()))
	
	
	
end

function OnClose()
	
end
