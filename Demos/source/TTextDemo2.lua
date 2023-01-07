

TTextDemo2 = class()


local demo_text = "@FFFFFF\n\nExample of \nalign setup for\ntext writed to Rect"

function TTextDemo2:New()
	
	return class(self)
end


function TTextDemo2:Initialize()
	
end

function TTextDemo2:Update(dt)
	
end

function TTextDemo2:PreRender() 
end

function TTextDemo2:Render()

	
	local rect = RETRO:Rect2i(160-32,10,64,48)
	RETRO:DrawRect(rect, COLOR_DARK_GRAY);	
	RETRO:Print(RETRO:Vector2i(8,32), COLOR_WHITE,  "@FF0000TEXT_OVERFLOW_WRAP\n+\nALIGN_H_CENTER");
	RETRO:Print(rect, COLOR_WHITE,  TEXT_OVERFLOW_WRAP + ALIGN_H_CENTER,"@FF0000TEXT_OVERFLOW_WRAP + ALIGN_H_CENTER"..demo_text);

	
	rect = RETRO:Rect2i(160-32,110,64,48)
	RETRO:DrawRect(rect, COLOR_DARK_GRAY);	
	RETRO:Print(RETRO:Vector2i(8,110), COLOR_WHITE,  "@00FFFFTEXT_OVERFLOW_CLIP \n+\n ALIGN_H_LEFT");
	RETRO:Print(rect, COLOR_WHITE,  TEXT_OVERFLOW_CLIP + ALIGN_H_LEFT,"@00FFFFTEXT_OVERFLOW_CLIP + ALIGN_H_LEFT"..demo_text);

end
