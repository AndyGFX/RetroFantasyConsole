
local SCREEN_CLEAR_COLOR = RETRO:Color32(50, 104, 108)

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

	print("Rect3i demo initialized ...")
	
	r1 = RETRO:Rect2i(10,10,20,20)
	r2 = RETRO:Rect2i()	
	r2:Set(10,10,20,20)
	r3 = RETRO:Rect2i(10,10,20,22)
	intersects = r2:Intersects(r1)
	pos = r2:IntersectionDepth(r1)
	print(pos:ToString())

	if (r1==r2) then
		print("equ")
	end 
	
	if (r1~=r3) then
		print("not equ")
	end 
	
end

function OnUpdate(deltaTime)
	
end

function OnPreRender() 
	
end

function OnRender()

        RETRO:Clear(SCREEN_CLEAR_COLOR);


end

function OnClose()
	print("OnClose  ... ");
end
