

TTweenDemo = class()

info = {}
info[1]="Tween.Linear = 0"
info[2]="Tween.SineIn= 1"
info[3]="Tween.SineOut=2"
info[4]="Tween.SineInOut=3"
info[5]="Tween.QuadIn=4"
info[6]="Tween.QuadOut=5"
info[7]="Tween.QuadInOut=6"
info[8]="Tween.CubicIn=7"
info[9]="Tween.CubicOut=8"
info[10]="Tween.CubicInOut=9"
info[11]="Tween.QuarticIn=10"
info[12]="Tween.QuarticOut=11"
info[13]="Tween.QuarticInOut=12"
info[14]="Tween.QuanticIn=13"
info[15]="Tween.QuanticOut=14"
info[16]="Tween.QuanticInOut=15"
info[17]="Tween.ExpoIn=16"
info[18]="Tween.ExpoOut=17"
info[19]="Tween.ExpoInOut=18"
info[20]="Tween.CircIn=19"
info[21]="Tween.CircOut=20"
info[22]="Tween.CircInOut=21"
info[23]="Tween.BackIn=22"
info[24]="Tween.BackOut=23"
info[25]="Tween.BackInOut=24"
info[26]="Tween.ElasticIn=25"
info[27]="Tween.ElasticOut=26"
info[28]="Tween.ElasticInOut=27"
info[29]="Tween.BounceIn=28"
info[30]="Tween.BounceOut=29"
info[31]="Tween.BounceInOut=30"


local p0 = RETRO:Vector2i(32,32+128)
local p1 = RETRO:Vector2i(0,0)
local a = RETRO:Vector2i(32,32+128)
local b = RETRO:Vector2i(32+128,32+128)
local c = RETRO:Vector2i(32+128,32)
local pos = RETRO:Vector2i()

local time = 0
local height = 64
local tween_id = 0

function TTweenDemo:New()
	return class(self)
end


function TTweenDemo:Initialize()
	RETRO:SpriteSheetSetup(SPR_TWEEN_ID, "game:/data/TweenSprites", SIZE_16x16);
end

function TTweenDemo:Update(dt)
	time = time + dt*height
	if time>height*2 then
		time = 0
	end


	if (RETRO:ButtonPressed(BTN_UP)) then
		if tween_id<30 then tween_id = tween_id +1 end
	end

	if (RETRO:ButtonPressed(BTN_DOWN)) then
		if tween_id>0 then tween_id = tween_id -1 end
	end

end

function TTweenDemo:PreRender() 
end

function TTweenDemo:Render()

	

	
	p0.x = 32
	p0.y = 32+128

	RETRO:DrawLine(a, b, COLOR_BLACK)
	RETRO:DrawLine(b, c, COLOR_BLACK)

	for i=0,127 do
            
	    local val = 0
		val = TWEEN:Interpolate(tween_id, 0, height, i / height);		
		p1.x = 32+i
		p1.y = 32 + 128 - val
		RETRO:DrawLine(p0, p1, COLOR_WHITE)
		p0 = p1

	end

	RETRO:SpriteSheetSet(SPR_TWEEN_ID)
	RETRO:DrawSprite(0,32+time-8,32+128-TWEEN:Interpolate(tween_id, 0, height, time / height)-8);
	RETRO:DrawSprite(0,32+128,32+128-TWEEN:Interpolate(tween_id, 0, height, time / height)-8);
	RETRO:Print(200,64,COLOR_WHITE,"@FFFFFFUse [UP]/[DOWN]\nCurrent tween type:\n\n   @FFFF00"..info[tween_id+1])
end
