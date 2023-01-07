

TTextDemo = class()


local demo_text = "@FFFFFF\n\nExample of \nalign setup for\ntext writed to Rect"

function TTextDemo:New()
	
	return class(self)
end


function TTextDemo:Initialize()
	
end

function TTextDemo:Update(dt)
	
end

function TTextDemo:PreRender() 
end

function TTextDemo:Render()


	local rect = RETRO:Rect2i(160-32,10,64,48)
	RETRO:DrawRect(rect, COLOR_DARK_GRAY);	
	RETRO:Print(rect, COLOR_WHITE,  ALIGN_V_CENTER + ALIGN_H_CENTER,"@FF0000ALIGN_V_CENTER + ALIGN_H_CENTER"..demo_text);

	rect = RETRO:Rect2i(160-32,60,64,48)
	RETRO:DrawRect(rect, COLOR_DARK_GRAY);	
	RETRO:Print(rect, COLOR_WHITE,  ALIGN_V_CENTER + ALIGN_H_RIGHT,"@FFFF00ALIGN_V_CENTER + ALIGN_H_RIGHT"..demo_text);

	rect = RETRO:Rect2i(160-32,110,64,48)
	RETRO:DrawRect(rect, COLOR_DARK_GRAY);	
	RETRO:Print(rect, COLOR_WHITE,  ALIGN_V_CENTER + ALIGN_H_LEFT,"@00FFFFALIGN_V_CENTER + ALIGN_H_LEFT"..demo_text);

end
