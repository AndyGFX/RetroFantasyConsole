local bump = require('bump')

TBumpCollision = class()


---------------------------------------------------------------------
-- bump_debug for TIC-80
local bump_debug = {}
local intensityColors = {RETRO:Color32(32,32,32),RETRO:Color32(64,64,64),RETRO:Color32(128,128,128),RETRO:Color32(200,200,200)}
local borderColor=RETRO:Color32(0,0,255)

local function getCellRect(world, cx,cy)
  local cellSize = world.cellSize
  local l,t = world:toWorld(cx,cy)
  return l,t,cellSize,cellSize
end

function bump_debug.draw(world)
  local cellSize = world.cellSize
  local fontHeight = 6
  local topOffset = (cellSize - fontHeight) / 2
  for cy, row in pairs(world.rows) do
    for cx, cell in pairs(row) do
      local l,t,w,h = getCellRect(world, cx,cy)
      local intensity = math.min(cell.itemCount,#intensityColors) 
      local color=intensityColors[intensity]

      
      --RETRO:DrawRectFill(RETRO:Rect2i(l,t,w,h), borderColor)
      RETRO:DrawRect(RETRO:Rect2i(l,t,w,h), color)
      
      RETRO:Print(RETRO:Vector2i(l+cellSize/2, t+topOffset), borderColor, tostring(cell.itemCount))
    end
  end
end


UP=0
DOWN=1
LEFT=2
RIGHT=3

CELL_SIZE=32

BLOCK_COLOR= RETRO:Color32(0,255,0,255)
PLAYER_COLOR=RETRO:Color32(255,255,0,255)


local world = bump.newWorld(CELL_SIZE)
local blocks = {}

local function addBlock(block)
  blocks[#blocks+1] = block
  world:add(block,block.x,block.y,block.w,block.h)
end

local function drawBlocks()
  for _,block in ipairs(blocks) do
    --rect(block.x,block.y,block.w,block.h,block.color)
    RETRO:DrawRect(RETRO:Rect2i(block.x,block.y,block.w,block.h), block.color)
  end
end

local function drawPlayer(player)
  --rect(player.x,player.y,player.w,player.h,player.color)
  RETRO:DrawRect(RETRO:Rect2i(player.x,player.y,player.w,player.h), player.color)
end

local function addPlayer(player)
  world:add(player,player.x,player.y,player.w,player.h)
end  

local A = {name="A",x=80,y=80,w=20,h=20,color=BLOCK_COLOR}
local B = {name="B",x=10,y=10,w=32,h=32,color=BLOCK_COLOR}
local C = {name="B",x=25,y=55,w=15,h=15,color=BLOCK_COLOR}
local player = {name="Player",x=50,y=50,w=16,h=16,color=PLAYER_COLOR,speed=1}
local mouse_pos = RETRO:Vector2i()
local info_pos = RETRO:Vector2i(160, 32)

addBlock(A)
addBlock(B)
addBlock(C)
addPlayer(player)

local dx, dy = 0, 0
local info = ""


function TBumpCollision:New()
	
	return class(self)
end


function TBumpCollision:Initialize()


    
end

function TBumpCollision:Update(dt)

	info =""

	mouse_pos = RETRO:PointerPos();
	player.x = mouse_pos.x
	player.y = mouse_pos.y

	
    player.x, player.y, cols, cols_len = world:move(player, player.x, player.y)
    	
    	
    for i=1, tonumber(cols_len) do
      	local col = cols[i]
      	info = "col.other: "..col.other.name..",\n col.type: "..col.type..",\n col.normal: "..tostring(col.normal.x) ..","..tostring(col.normal.y)      	
    end
      		    	
    
end

function TBumpCollision:PreRender() 
end

function TBumpCollision:Render()

    bump_debug.draw(world)
    drawBlocks()
    drawPlayer(player)
   
   	RETRO:Print(info_pos, COLOR_YELLOW, info);

end
