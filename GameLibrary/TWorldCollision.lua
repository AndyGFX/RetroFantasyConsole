
require('class')

bump = require('bump')

TWorldCollision = class()


function TWorldCollision:New()
	self.blocks = {}	
	self.world = {}
	self.intensityColors = {RETRO:Color32(32,32,32),RETRO:Color32(64,64,64),RETRO:Color32(128,128,128),RETRO:Color32(200,200,200)}
	self.borderColor=RETRO:Color32(0,0,255)
	return class(self)
end

function TWorldCollision:CreateWorld(cell_size)
	self.world = bump.newWorld(cell_size)
end


function TWorldCollision:AddBlock(block)
  self.blocks[#self.blocks+1] = block
  self.world:add(block,block.x,block.y,block.w,block.h)
end

function TWorldCollision:DrawBlocks()
  for _,block in ipairs(self.blocks) do    
    RETRO:DrawRect(RETRO:Rect2i(block.x,block.y,block.w,block.h), block.color)
  end
end

function TWorldCollision:DrawEntity(entity)  
  RETRO:DrawRect(RETRO:Rect2i(entity.x,entity.y,entity.w,entity.h), entity.color)
end

function TWorldCollision:AddEntity(entity)
  self.world:add(entity,entity.x,entity.y,entity.w,entity.h)
end 

function TWorldCollision:Move(entity,x,y)
  return self.world:move(entity,x,y)
end 

function TWorldCollision:GetCellRect(cx,cy)
  local cSize = self.world.cellSize
  local l,t = self.world:toWorld(cx,cy)
  return l,t,cSize,cSize
end

function TWorldCollision:DebugDraw()
  local cellSize = self.world.cellSize
  local fontHeight = 6
  local topOffset = (cellSize - fontHeight) / 2
  for cy, row in pairs(self.world.rows) do
    for cx, cell in pairs(row) do
      local l,t,w,h = self:GetCellRect(cx,cy)
      local intensity = math.min(cell.itemCount,#self.intensityColors) 
      local color=self.intensityColors[intensity]

      RETRO:DrawRect(RETRO:Rect2i(l,t,w,h), color)
      
      RETRO:Print(RETRO:Vector2i(l+cellSize/2, t+topOffset), self.borderColor, tostring(cell.itemCount))
    end
  end
end
