require('class')

TAnimations = class()

-- TMaze CONSTRUCTOR ------------------------------------------------------


function TAnimations:New() 
	self.data = {}
	self.sheet_id = -1
    return class(self)
    
end 

function TAnimations:Add(_name,_sprite_id,_framesCount,_speed)   

	self.data[_name] = {}
	
	self.data[_name].name = _name
	self.data[_name].startFrame = _sprite_id
	self.data[_name].endFrame = _sprite_id + _framesCount
	self.data[_name].framesCount = _framesCount

	self.data[_name].frames = {}

	for f=1,_framesCount do
		self.data[_name].frames[f] = self.data[_name].startFrame + (f-1)
	end
	
	self.data[_name].speed = _speed
	self.data[_name].play = false
	self.data[_name].currentFrame = self.data[_name].frames[1]
	self.data[_name].time = 0
	self.data[_name].loop = true
	self.animationName = _name

	
end

function TAnimations:SetSpriteSheet(_sheet_id)
	self.sheet_id = _sheet_id
end

--[[
function TAnimations:Update(dt)

	local v={}
	
	for k,v in pairs(self.data) do
			
		if v.loop == false then
			v.play = false
			v.time = 0
			v.currentFrame = v.startFrame
		end

	   	if v.play==true then
	   		v.time = v.time + (dt*v.speed)
   			frame_id = math.floor(v.time % v.framesCount)+1
  			v.currentFrame = v.frames[frame_id]   
	   	end
	end
end
]]


function TAnimations:Update(dt)

	local v= self.data[self.animationName]
	
	if v.loop == false then

		v.time = v.time + (dt*v.speed)
   		frame_id = math.floor(v.time % v.framesCount)+1
		v.currentFrame = v.frames[frame_id]   

		if v.currentFrame==frame_id then
			v.play = false
			v.time = 0
			v.currentFrame = v.startFrame
		end

	else
		v.time = v.time + (dt*v.speed)
   		frame_id = math.floor(v.time % v.framesCount)+1
		v.currentFrame = v.frames[frame_id]   
	end	
	
end


function TAnimations:GetSpriteID()
	return self.sheet_id
end

function TAnimations:GetCurrentTime()
	return self.data[self.animationName].time
end

function TAnimations:GetCurrentFrameID()
	return self.data[self.animationName].currentFrame
end

function TAnimations:Play(_name,_loop)

	-- change anim 
	if _name~=self.animationName then

		self.data[_name].play = true
		self.data[_name].loop = _loop
		self.animationName = _name
		
	end
end

function TAnimations:Stop(_name)
	if (self.data[_name].play==true) then
		self.data[_name].play = false			
	end
end

function TAnimations:Rewind(_name)
	
	self.data[_name].play = false		
	self.data[_name].currentFrame = self.data[_name].frames[1]
	self.data[_name].time = 0
end


function TAnimations:Draw(_x,_y,flag)

	RETRO:SpriteSheetSet(self.sheet_id);
    RETRO:DrawSprite(self:GetCurrentFrameID(), RETRO:Vector2i(_x,_y),flag)

end	