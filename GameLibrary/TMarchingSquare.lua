
-- TMarchingSquare v0.5 [AndyGFX] ------------------------------------------------------

--[[

Installation:

copy file TMarchingSquare.lua to Lib folder

Initialization:

require('Class')
require('TCellular')
require('TMarchingSquare')

Define theme:

Example:
theme1 = {}

theme1[01] = {tile = 0,flag=-1}
theme1[02] = {tile = 1,flag=-1}
theme1[03] = {tile = 2,flag=-1}
theme1[04] = {tile = 3,flag=-1}
theme1[05] = {tile = 4,flag=-1}
theme1[06] = {tile = 5,flag=-1}
theme1[07] = {tile = 6,flag=-1}
theme1[08] = {tile = 7,flag=-1}
theme1[09] = {tile = 8,flag=-1}
theme1[10] = {tile = 9,flag=-1}
theme1[11] = {tile = 10,flag=-1}
theme1[12] = {tile = 11,flag=-1}
theme1[13] = {tile = 12,flag=-1}
theme1[14] = {tile = 13,flag=-1}
theme1[15] = {tile = 14,flag=-1}
theme1[16] = {tile = 15,flag=-1}

Generate map:
	cave = TCellular:New()
	cave:Generate(32,30,0.6,3,5,5) 

	marchingSquares = TMarchingSquare:New();
	marchingSquares.theme = theme1;
	marchingSquares.invert = true;
	marchingSquares.mapData = cave;
	RETRO:MapLayerSpriteSheetSet(MAP_LAYER, SPR_AUTOTILES_ID);
	marchingSquares:BuildTilemap(MAP_LAYER);
	
Render map:	
	RETRO:DrawMapLayer(MAP_LAYER)
]]

TMarchingSquare = {}

---------------------------------------------------------------
-- TMarchingSquare CONSTRUCTOR --------------------------------
---------------------------------------------------------------

function TMarchingSquare:New() 

    self.theme = {}
    self.mapData = {}
	self.invert = false

	return class(self)

end  

---------------------------------------------------------------
-- HELPER for invert map result
---------------------------------------------------------------
function TMarchingSquare:Invert(value)

	if (self.invert) then

		if (value==0) then
			return 1;
		end		
		if (value==1) then
			return 0;
		end
	end
	
	return value;	
end

---------------------------------------------------------------
-- HELPER for analyze cells around [x,y] in map
---------------------------------------------------------------
function TMarchingSquare:GetMarchingSquareAt(x,y)

	local tl = self:Invert(self.mapData:Map(x-1,y-1)) or 0	
	local tr = self:Invert(self.mapData:Map(x,y-1)) or 0	
	local bl = self:Invert(self.mapData:Map(x-1,y)) or 0
	local br = self:Invert(self.mapData:Map(x,y)) or 0 
	
	local res = ((tl + lshift(tr,1) + lshift(br,2) + lshift(bl,3)));

	return res; 

end

---------------------------------------------------------------
-- Build tilemap 
---------------------------------------------------------------
function TMarchingSquare:BuildTilemap(layer)
	for xm=1,self.mapData._w do
		for ym=1,self.mapData._h do		
			idx = self:GetMarchingSquareAt(xm,ym);				
			RETRO:MapSpriteSet(layer, RETRO:Vector2i(xm-1,ym-1), self.theme[idx+1].tile,RETRO:Color32(255,255,255,255), 0)
		end
	end
end

---------------------------------------------------------------
-- Public BITWISE operations
---------------------------------------------------------------
function lshift(x, by)
  return x * 2 ^ by
end

function rshift(x, by)
  return math.floor(x / 2 ^ by)
end
