
require('TRooms')


local rooms = TRooms:New(20,10)
local SCREEN_CLEAR_COLOR = RETRO:Color32(80, 80, 80)

function OnHardwareSetup()


	HW_size_x = 320
	HW_size_y = 200
	HW_map_size_x = 256
	HW_map_size_y = 256
	HW_map_layers = 8
	HW_fps = 60
	HW_pixel_style = PixelStyle.Square

end

function OnInitialize()

	rooms:Generate()

end

function OnUpdate(deltaTime)
	
end

function OnRender()

	RETRO:Clear(SCREEN_CLEAR_COLOR);
	rooms:DrawMiniMap(10,10)
end

function OnClose()
	
end
