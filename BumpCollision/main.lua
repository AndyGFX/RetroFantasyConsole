
require('TWorldCollision')


cWorld = {}




UP=0
DOWN=1
LEFT=2
RIGHT=3

CELL_SIZE=32

BLOCK_COLOR= RETRO:Color32(0,255,0)
PLAYER_COLOR=RETRO:Color32(255,255,0)


local A = {name="A",x=80,y=80,w=20,h=20,color=BLOCK_COLOR}
local B = {name="B",x=10,y=10,w=32,h=32,color=BLOCK_COLOR}
local C = {name="B",x=25,y=55,w=15,h=15,color=BLOCK_COLOR}
local player = {name="Player",x=50,y=50,w=12,h=12,color=PLAYER_COLOR,speed=1}


local dx, dy = 0, 0
local info = ""

function OnHardwareSetup()

	print("Pixel LUA game console.")

	HW_size_x = 320
	HW_size_y = 200
	HW_map_size_x = 256
	HW_map_size_y = 256
	HW_map_layers = 8	
	HW_fps = 30
	HW_pixel_style = PixelStyle.Square

end

function OnInitialize()

  cWorld = TWorldCollision:New()
  cWorld:CreateWorld(16)
  cWorld:AddBlock(A)
  cWorld:AddBlock(B)
  cWorld:AddBlock(C)
  cWorld:AddEntity(player)
	
end

function OnUpdate(dt)
	
	local speed = player.speed
	dx, dy = 0, 0
	info =""
	
  if RETRO:ButtonDown(BTN_LEFT) then dx=-speed end
  
  if RETRO:ButtonDown(BTN_RIGHT) then dx=speed end
  
  if RETRO:ButtonDown(BTN_UP) then dy=-speed end
  
  if RETRO:ButtonDown(BTN_DOWN) then dy=speed end

	if dx~=0 or dy~=0 then
    	
    	player.x, player.y, cols, cols_len = cWorld:Move(player, player.x+dx, player.y+dy)
    	
    	for i=1, tonumber(cols_len) do
      		local col = cols[i]
      		info = "col.other: "..col.other.name..", col.type: "..col.type..", col.normal: "..tostring(col.normal.x) ..","..tostring(col.normal.y)      	
    	end
      		    	
    end

end

function OnRender()

	RETRO:Clear(RETRO:Color32(50, 104, 108));

    RETRO:Print(RETRO:Vector2i(4, 4), RETRO:Color32(127, 213, 221), "--- BUMP class test ---");
    cWorld:DebugDraw()
    cWorld:DrawBlocks()
    cWorld:DrawEntity(player)
	  
    RETRO:Print(RETRO:Vector2i(4, 150), RETRO:Color32(127, 213, 221), info);
    
end

function OnClose()
	print("OnClose  ... ");
end
