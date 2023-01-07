
require('class')

Include("source/TDemos.lua")
Include("source/TTextDemo.lua")
Include("source/TTextDemo2.lua")
Include("source/TPrimitiveDemo.lua")
Include("source/TCellularDemo.lua")
Include("source/TAnimSpriteDemo.lua")
Include("source/TLoadTMX.lua")
Include("source/TMazeDemo.lua")
Include("source/TInputDemo.lua")
Include("source/TBumpCollision.lua")
Include("source/TVideoFX_1.lua")
Include("source/TVideoFX_2.lua")
Include("source/TVideoFX_3.lua")
Include("source/TTweenDemo.lua")
Include("source/TCopyBuffer.lua")
Include("source/TSFXDemo.lua")


local demos = TDemos:New()
local demo_list = {}


demo_list[1] = "DemoText"
demo_list[2] = "DemoText2"
demo_list[3] = "DemoPrimitive"
demo_list[4] = "CellularDemo"
demo_list[5] = "AnimSpriteDemo"
demo_list[6] = "LoadTMXDemo"
demo_list[7] = "MazeDemo"
demo_list[8] = "InputDemo"
demo_list[9] = "BumpDemo"
demo_list[10] = "VideoFX1"
demo_list[11] = "VideoFX2"
demo_list[12] = "VideoFX3"
demo_list[13] = "TTweenDemo"
demo_list[14] = "TCopyBuffer"
demo_list[15] = "TSFXDemo"


current_demo_id = 15

BACK_BUFFER = 0
SPR_BUTTON_ID = 1
SPR_PLAYER_ID = 2

SHEET_TILES_BKG = 3
SHEET_TILES_MID = 4
SHEET_TILES_PLATFORM = 5



SPR_CTRL_ABXY = 6
SPR_CTRL_PAD = 7
SPR_CTRL_TRIG = 8
SPR_TWEEN_ID = 9
SPR_FONT_ID =  10

SIZE_16x16 = RETRO:Vector2i(16, 16)
SIZE_24x24 = RETRO:Vector2i(24, 24)
SIZE_32x32 = RETRO:Vector2i(32, 32)

USER_FONT_ID = 0

SCREEN_COLOR_CLEAR = RETRO:Color32(32, 32, 32)

COLOR_WHITE = RETRO:Color32(255,255,255,255)
COLOR_YELLOW = RETRO:Color32(255, 255, 0,255)
COLOR_BLUE = RETRO:Color32(0, 0, 255,255)
COLOR_BLACK = RETRO:Color32(0, 0, 0,255)
COLOR_DARK_GRAY = RETRO:Color32(32, 32, 32,255)
COLOR_GREEN = RETRO:Color32(0, 255, 0,255)

-- SFX id is returned from SoundSetup
SFX_0 = -1
SFX_1 = -1
SFX_2 = -1
SFX_3 = -1

-- Music id is user slot id for MUSIC
MUSIC_ID = 0

local BtnPrev = GUI:Button()
local BtnNext = GUI:Button()

local FrameRect = RETRO:Rect2i(2,2,320-4,200-24)
local SlicedRect_A = RETRO:Rect2i(32 + 0, 0, 4, 4)      
local SlicedRect_B = RETRO:Rect2i(32 + 4, 0, 8, 4)      
local SlicedRect_C = RETRO:Rect2i(32 + 12, 0, 4, 4)     

local SlicedRect_E = RETRO:Rect2i(32 + 0, 4, 4, 10)     
local SlicedRect_X = RETRO:Rect2i(32 + 4, 4, 8, 10)     
local SlicedRect_F = RETRO:Rect2i(32 + 12, 4, 4, 10)    

local SlicedRect_G = RETRO:Rect2i(32 + 0, 12, 4, 4)     
local SlicedRect_H = RETRO:Rect2i(32 + 4, 12, 8, 4)     
local SlicedRect_I = RETRO:Rect2i(32 + 12, 12, 4, 4)   

local demo_name_pos = RETRO:Vector2i(96, 200-16)

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

	-- SUPPORTED formats: MOD, XM, XMA, OGG, WAV

	-- load sprites
	RETRO:SpriteSheetSetup(SPR_BUTTON_ID, "game:/data/Buttons", SIZE_16x16);
	RETRO:SpriteSheetSetup(SPR_PLAYER_ID, "game:/data/Player", SIZE_32x32);
	
	-- Load SFX
	
	SFX_0 = RETRO:SoundSetup( "SFX-1","game:/data/sound/Laser.ogg" )
	SFX_1 = RETRO:SoundSetup( "SFX-2","game:/data/sound/Jump.ogg" )
	SFX_2 = RETRO:SoundSetup( "SFX-3","game:/data/sound/Explosion.ogg" )
	SFX_3 = RETRO:SoundSetup( "SFX-4","game:/data/sound/coin.ogg" )
	

	-- Load MUSIC
	RETRO:MusicSetup(MUSIC_ID,"game:/data/music/Starter8bitDub.ogg")

	-- LOAD USER FONT
	RETRO:SpriteSheetSetup(SPR_FONT_ID, "game:/data/UserFont", RETRO:Vector2i(12,12));
	RETRO:SpriteSheetSet(SPR_FONT_ID);
	RETRO:FontSetup(USER_FONT_ID, 65, 90, RETRO:Vector2i(0, 0), SPR_FONT_ID, RETRO:Vector2i(12, 12), 6, 1, -1, false);

	-- prepare GUI
	BtnNext:Setup(SPR_BUTTON_ID,"Next [D]", 320-64-8, 200-20, 64, 16,BTN_RIGHT);	
	BtnPrev:Setup(SPR_BUTTON_ID,"Prev [A]", 8, 200-20, 64, 16,BTN_LEFT);	

	-- add demos to list

	demos:Add("DemoText","DEMO: Text align function",TTextDemo:New())
	demos:Add("DemoText2","DEMO: Text wrap function",TTextDemo2:New())
	demos:Add("DemoPrimitive","DEMO: Draw primitives",TPrimitiveDemo:New())
	demos:Add("CellularDemo","DEMO: Cellular automata",TCellularDemo:New())
	demos:Add("AnimSpriteDemo","DEMO: Sprite animation",TAnimSpriteDemo:New())
	demos:Add("LoadTMXDemo","DEMO: Load tilemap from TMX",TLoadTMX:New())
	demos:Add("MazeDemo","DEMO: Maze class example",TMazeDemo:New())
	demos:Add("InputDemo","DEMO: Input example",TInputDemo:New())
	demos:Add("BumpDemo","DEMO: of using BUMP collision",TBumpCollision:New())
	demos:Add("VideoFX1","DEMO: VideoFX #1",TVideoFX_1:New())
	demos:Add("VideoFX2","DEMO: VideoFX #2",TVideoFX_2:New())
	demos:Add("VideoFX3","DEMO: VideoFX #3",TVideoFX_3:New())
	demos:Add("TTweenDemo","DEMO: Tween effect",TTweenDemo:New())
	demos:Add("TCopyBuffer","DEMO: Off screen render",TCopyBuffer:New())
	demos:Add("TSFXDemo","DEMO: Play SoundFX",TSFXDemo:New())

	

	-- set startup demo
	demos:SetDemo(demo_list[current_demo_id])

	RETRO:ShowFPSMonitor(0)

	-- Initialize selected demo
	demos:Initialize()
end

function OnUpdate(deltaTime)

	-- Update selected demo	
	demos:Update(deltaTime)

	-- update GUI events
	BtnPrev:Update()
	BtnNext:Update()

	if BtnPrev:IsPressed() and current_demo_id>1 then
		current_demo_id = current_demo_id - 1
		demos:SetDemo(demo_list[current_demo_id])

	end

	if BtnNext:IsPressed() and current_demo_id<#demo_list then
		current_demo_id = current_demo_id + 1
		demos:SetDemo(demo_list[current_demo_id])

	end
end

function OnPreRender()
	demos:PreRender()
end

function OnRender()

	RETRO:Clear(SCREEN_COLOR_CLEAR);

	RETRO:SpriteSheetSet(SPR_BUTTON_ID)
	
	RETRO:DrawNineSlice(FrameRect,
		SlicedRect_A,SlicedRect_B,SlicedRect_C,     
        SlicedRect_E,SlicedRect_X,SlicedRect_F,    
        SlicedRect_G,SlicedRect_H,SlicedRect_I)

	-- Draw selected demo
	demos:Render()

	-- Draw GUI
	BtnPrev:Draw()
	BtnNext:Draw()

	-- Draw DEMO name
	RETRO:Print(demo_name_pos, COLOR_WHITE, "@323232["..tostring(current_demo_id).."/"..tostring(#demo_list).."] @FFFFFF"..demos:GetDemoInfo());
end

function OnClose()
	print("OnClose  ... ");
end
