

print("--- Game data SAVE/LOAD test ---")

SCREEN_COLOR_CLEAR = RETRO:Color32(32, 32, 32)

function OnHardwareSetup()

	print("HW setup ...")


	HW_size_x = 320
	HW_size_y = 200
	HW_map_size_x = 256
	HW_map_size_y = 256
	HW_map_layers = 8
	HW_fps = 30
	HW_pixel_style = PixelStyle.Square

end


local MyObject = 
{
	Int = 10,
	--array = [1,2,3,4,5]
	w = {x=0, y=0, label="console"}
	
}

function OnInitialize()

	print("Initialize ...")
	
	-- integer
	DATA:SetInt("VarInt",11)
	-- float
	DATA:SetFloat("VarFloat",2.22)
	-- string
	DATA:SetString("VarString","MyString")
	-- object/table
	DATA:SetObject("MyObject",MyObject)
	
	DATA:SetVector2i("VarV2i",RETRO:Vector2i(2,3))

	DATA:SetRect2i("VarR2i",RETRO:Rect2i(2,3,4,5))
	DATA:SetRect2i("VarR2f",RETRO:Rect2i(2.2,3.3,4.4,5.5))

	DATA:Save()

	local newObject = {}
	newObject = DATA:GetAsObject("MyObject");
	print(newObject.w.label)
	print(DATA:GetAsString("VarString"))
end

function OnUpdate(deltaTime)
	
end

function OnRender()

        RETRO:Clear(SCREEN_COLOR_CLEAR);

        RETRO:Print(RETRO:Vector2i(4, 4), RETRO:Color32(127, 213, 221), "--- Game data SAVE/LOAD test ---");
        
end

function OnClose()
	print("OnClose  ... ");
end

print("LUA Script loaded");