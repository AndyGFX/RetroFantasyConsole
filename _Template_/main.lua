
local SCREEN_CLEAR_COLOR = RETRO:Color32(50, 104, 108)

function OnHardwareSetup()

	print("HW setup ...")


	HW_size_x = 264
	HW_size_y = 248
	HW_map_size_x = 256
	HW_map_size_y = 256
	HW_map_layers = 8
	HW_fps = 60
	HW_pixel_style = PixelStyle.Square

end

function OnInitialize()

	RETRO:ShowFPSMonitor(0)
	print("Template main.lua initialized ...")
	
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
