
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

	print("Vector3i demo initialized ...")
	
	v1 = RETRO:Vector2i(10,12)
	v2 = RETRO:Vector2i()
	v2:Set(14,15)

	v3 = v1 + v2
	-- ADD
	print(v3:ToString())

	-- SUB
	v3 = v1 - v2
	print(v3:ToString())

	-- SCALE
	v3 = v1*5
	print(v3:ToString())

	-- MAGNITUDE
	m = v3:SqrMagnitude()
	print(tostring(m))

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
