
require('class')

-- Define TMaze class ---------------------------------------------

TPlatformer = {}
TPlatformer = class()

CTRL_STATE_IDLE = 0
CTRL_STATE_MOVE_LEFT = 1
CTRL_STATE_MOVE_RIGHT = 2
CTRL_STATE_JUMP = 3
CTRL_STATE_FALL = 4

function TPlatformer:New(data)

	self.world = {}
	self.collisions = nil
	self.collisionsCount = 0
	self.name = data.name
	self.debug_color=data.color

	--player information
	self.player = 
	{
		-- position
		x = data.x,
		y = data.y,
		-- speed
		speed = data.speed,
		-- size
		w = data.w,
		h = data.h,
		--velocity
		dx = 0,
		dy = 0,
		-- direction
		dir = 0,
		--is the player standing on ground
		isgrounded = false,		
		--jump impulse 
		jumpvel = 3.0,
		-- max falling velocity
		maxFallVel = 5.0,
		state = CTRL_STATE_IDLE
	}

	self.bounds = RETRO:Vector2i(320,200)

	-- gravity per frame
	self.grav = 0.1

	return class(self)

end

function TPlatformer:GetData()	
	return {name = self.name,x=self.player.x, y=self.player.y, w = self.player.w, h=self.player.h, color = self.debug_color}
end

--called 60 times per second
function TPlatformer:Update(deltaTime)

	self.player.dx = 0

	-- jump -------------------------------------------------------

	if (RETRO:ButtonDown(BTN_UP) or RETRO:ButtonDown(BTN_A) or RETRO:ButtonDown(BTN_B)) and self.player.isgrounded then
		--launch the player upwards
		self.player.dy = -self.player.jumpvel
	end

	-- walk -------------------------------------------------------
	-- move the player left/right

	if RETRO:ButtonDown(BTN_LEFT) then --left
		self.player.dx = -1
		self.player.dir = FLIP_H
		
	end

	if RETRO:ButtonDown(BTN_RIGHT) then --right
		self.player.dx = 1
		self.player.dir = 0
		
	end

	
	-- check for walls in the direction we are moving.
	local xoffset = 0

	-- moving right, check the right side.
	if self.player.dx > 0 then xoffset = self.player.w end

	--accumulate gravity
	self.player.dy = self.player.dy + self.grav

	
	-- hit floor ?	
	self.player.isgrounded = self:IsOnGround()

	--only check for floors when
	--moving downward

	if self.player.dy >= 0.1 then
		--check bottom center of the
		--player.
		--look for a solid tile
		if self.player.isgrounded then
			--place player on top of tile
			self.player.y = math.floor((self.player.y) / 8) * 8
			--halt velocity
			self.player.dy = 0

			-- Make sure the player doesn't accumulate speed if in a falling loop
		elseif(self.player.dy > self.player.maxFallVel) then
			self.player.dy = self.player.maxFallVel			
		end
	end

	--hit ceiling

	--only check for ceilings when
	--moving up

	
	if self.player.dy <= 0 then
		--check top center of player		
		--look for solid tile
		if self:IsOnCeil() then
			--position self.player right below
			--ceiling
			self.player.y = math.floor((self.player.y + 8) / 8) * 8
			--halt upward velocity
			self.player.dy = 0
		end		
	end
	
	self:SetControlState()

end

function TPlatformer:ApplyMove()
	
	
end

function TPlatformer:GetAsEntity()
-- {name="Player",x=100,y=140,w=16,h=24,color=RETRO:Color32(255,255,0),speed=1}
	return {name=self.name,x=self.player.x,y=self.player.y,w=self.player.w,h=self.player.h,speed=self.player.speed}
end

function TPlatformer:SetControlState()

	if self.player.dx==0  and math.abs(self.player.dy)<=0.1 then  
		self.player.state = CTRL_STATE_IDLE 
		return 0
	end

	if self.player.dx>0 then  
		self.player.state = CTRL_STATE_MOVE_RIGHT 
		return 0
	end
	if self.player.dx<0 then  
		self.player.state = CTRL_STATE_MOVE_LEFT 
		return 0
	end		

	if self.player.dy~=0 then

		if self.player.dy>0.1 then  
			self.player.state = CTRL_STATE_FALL 
		else			
			self.player.state = CTRL_STATE_JUMP 			
		end
	end

	
	
end


function TPlatformer:Collided()
	
	if self.collisionsCount>0 then
		return true
	end
	return false
end


function TPlatformer:IsOnGround()
	
	if self.collisionsCount>0 then
		if self.collisions[1].normal.x==0 and self.collisions[1].normal.y==-1 then
			return true
		end
	end

	return false
end

function TPlatformer:IsOnCeil()
	
	if self.collisionsCount>0 then
		if self.collisions[1].normal.x==0 and self.collisions[1].normal.y==1 then
			return true
		end
	end

	return false
end

function TPlatformer:IsOnWall()
	
	if self.collisionsCount>0 then
		if (self.collisions[1].normal.x==1 and self.collisions[1].normal.y==0) or (self.collisions[1].normal.x==-1 and self.collisions[1].normal.y==0) then
			return true
		end
	end

	return false
end

function TPlatformer:IsNotWall()
	
	if self.collisionsCount>0 then
		if (self.collisions[1].normal.x==1 and self.collisions[1].normal.y==0) or (self.collisions[1].normal.x==-1 and self.collisions[1].normal.y==0) then
			return false
		end
	end

	return true
end

function TPlatformer:SetCollisionState(cols, cols_len)
	self.collisions = cols
	self.collisionsCount = cols_len
	return self.player.state
end

function TPlatformer:Draw()
	
end
