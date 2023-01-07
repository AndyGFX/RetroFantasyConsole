

TPrimitiveDemo = class()


local pixels = {}
local sin_x = 0
local sin_y = 0
local c = 0

local rnd_color = RETRO:Color32(math.random(255), math.random(255), math.random(255))
local pos1 = RETRO:Vector2i()
local pos2 = RETRO:Vector2i()
local pos_c = RETRO:Vector2i(128, 72)
local pos3 = RETRO:Vector2i(32, 32)
local posA = RETRO:Vector2i(16,16)
local posB = RETRO:Vector2i(320-16,16)
local iposc = RETRO:Vector2i(256, 72)
local rect1 = RETRO:Rect2i(16, 56, 32, 32)
local rect2 = RETRO:Rect2i(16, 96, 32, 32)

function TPrimitiveDemo:New()
	
	return class(self)
end


function TPrimitiveDemo:Initialize()
	local i = 1
    for x=0,16 do
        for y=0,16 do           
            pixels[i]={}
            pixels[i].pos = RETRO:Vector2i(16+x*2, 16+y*2)          
            pixels[i].color = RETRO:Color32()
            i=i+1
        end
    end 
    
end

function TPrimitiveDemo:Update(dt)
	c = c + 1
	if c>360 then c=0 end

	sin_x =math.abs(math.sin(math.rad(c)))*50

end

function TPrimitiveDemo:PreRender() 
end

function TPrimitiveDemo:Render()
	
	for p=1,#pixels do
        pixels[p].color.r = math.random(255)
        pixels[p].color.g = math.random(255)
        pixels[p].color.b = math.random(255)
    	RETRO:DrawPixel(pixels[p].pos, pixels[p].color);
	end


    RETRO:DrawRect(rect1, COLOR_YELLOW);

    RETRO:DrawRectFill(rect2, COLOR_YELLOW);

    
    RETRO:DrawEllipse(pos_c, pos1:Set(32,sin_x), rnd_color);
    RETRO:DrawEllipseFill(pos_c, pos2:Set(sin_x,32), COLOR_BLUE);
    RETRO:DrawEllipseInvertedFill(iposc, pos3, COLOR_BLUE);


    for y=0,16 do
        rnd_color = RETRO:Color32(math.random(255), math.random(255), math.random(255))
        posA.y = 136+y*2
        posB.y = 136+y*2
    	RETRO:DrawLine(posA, posB, rnd_color);
    end
end
