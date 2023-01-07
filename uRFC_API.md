# RETRO FANTASY CONSOLE

##**FEATURES**

- Pixel Perfect Rendering
- Pixel Style 
- Sprite sheets
- Drawing Sprite
- Drawing  9-slice Sprite
- Drawing primitives - pixel, rect, elipse, trianle, line 
- build-in Font
- Custom font
- Inline String Coloring
- Inline Font Changes
- Text Alignment
- Text Clipping
- Tilemaps
- Changing Layer Sprite Sheet
- Setting/Getting Tile Info
- Color Tinting
- Alpha Transparency
- Clip Region
- Camera
- Post-Processing Effects
- Tween
- Sound load/play OGG | MOD | WAV | XM | XMA
- Music load/play OGG | MOD | WAV | XM | XMA
- Gamepad Input
- Keyboard input
- Mouse input
- Shaders (unfinished)

##**Execute game**

uRFC.exe -game <folder name> -resolution <app width(int)> <app height(int)> <fullscreen(bool)>

```
uRFC.exe -game Game_001 -resolution 1280 800 false
```

##**Build-in console commands**

|CMD|Desc|Usage|
|--|--|--|
|quit|Quit the game either by Quit() or CancelQuit().|quit
|help|Displays all of the commands OR displays help for a specific command.|help OR help {CMD};
|clear|Clears all of the commands from the list.|clear|
|load|Load game|load [game folder name]|
|run|Execute loaded game|run|
|dir|Get list of games|dir|
|reset|Reset console when you want load and run new game|reset|
|exec|Load and execute game|exec [game folder name]|
|create|Create new game folder|create [game folder name]|
|compress|Compress game folder to card.|compress [game folder name]|
|unpack|Extract game cartridge to folder|unpack [game.cartridge]|


##**Const**

| Syntax | Description |
|--|--|
| ALIGN_H_CENTER  | Center horizontally |
| ALIGN_H_LEFT|Align to the left edge
| ALIGN_H_RIGHT|Align to the right edge
| ALIGN_V_BOTTOM|Align to the bottom edge
| ALIGN_V_CENTER|Center vertically
| ALIGN_V_TOP|Align to the top edge
| BTN_A|A button on gamepad.
| BTN_ABXY|A, B, X, or Y button on gamepad
| BTN_B|B button on gamepad.
| BTN_DOWN|Down D-pad button on gamepad.
| BTN_LEFT|Left D-pad button on gamepad.
| BTN_LS|Left shoulder button on gamepad.
| BTN_MENU|Menu button on gamepad.
| BTN_POINTER_A|Left mouse button, or first finger touch.
| BTN_POINTER_ANY|Any finger touch, left, right, or middle mouse button.
| BTN_POINTER_B|Right mouse button.
| BTN_POINTER_C|Middle mouse button, or third finger touch
| BTN_POINTER_D|The forth finger touch
| BTN_RIGHT|Right D-pad button on gamepad.
| BTN_RS|Right shoulder button on gamepad.
| BTN_SHOUDLER|Any shoulder button on gamepad.
| BTN_SYSTEM|System button on any gamepad
| BTN_UP|Up D-pad button on gamepad.
| BTN_X|X button on gamepad.
| BTN_Y|Y button on gamepad.
| FLIP_H|Flip sprite horizontally
| FLIP_V|Flip sprite vertically
| NO_ESCAPE_CODES|Ignore all RetroBlit string escape codes
| NO_INLINE_COLOR|Ignore any inline color changes when printing text
| PIXEL_BUFFER_UNCHANGED|Pixel buffer is unchanged
| PLAYER_ANY|Any player input flag.
| PLAYER_FOUR|Player four input flag.
| PLAYER_ONE|Player one input flag.
| PLAYER_THREE|Player three input flag.
| PLAYER_TWO|Player two input flag.
| ROT_180_CCW|Rotate sprite 180 degrees counter-clockwise.
| ROT_180_CW|Rotate sprite 180 degrees clockwise.
| ROT_270_CCW|Rotate sprite 270 degrees counter-clockwise.
| ROT_270_CW|Rotate sprite 270 degrees clockwise.
| ROT_90_CCW|Rotate sprite 90 degrees counter-clockwise.
| ROT_90_CW|Rotate sprite 90 degrees clockwise
| SPRITE_EMPTY|An empty sprite index, use this to clear a tile in a tilemap
| SPRITE_INVALID|Invalid sprite
| TEXT_OVERFLOW_CLIP|Clip text to given rectangular area
| TEXT_OVERFLOW_WRAP|Wrap text to the next line when it overflows

##**ENUMS**

- *Post-processing effect type*


**Effect.Scanlines**
- Retro CRT scanline effect

**Effect.Noise**
- Retro CRT screen noise

**Effect.Desaturation**
- Desaturate colors

**Effect.Curvature**
- Retro CRT screen curvature

**Effect.Slide**
- Slide display in or out from given direction

**Effect.Wipe**
- Wipe display out from given direction

**Effect.Shake**
- Shake the display

**Effect.Zoom**
- Zoom display in or out

**Effect.Rotation**
- Rotate display by given angle

**Effect.ColorFade**
- Fade the screen to given color

**Effect.ColorTint**
- Apply a tint of given color

**Effect.Negative**
- Turn colors to negative

**Effect.Pixelate**
- Pixelate effect

**Effect.Pinhole**
- Pinhole

**Effect.InvertedPinhole**
- Inverted pinhole

**Effect.Fizzle**
- Fizzle out

##**PixelStyle**
- *Display pixel style*


**PixelStyle.Square**
- Normal square pixels

**PixelStyle.Wide**
- Wide pixels

**PixelStyle.Tall**
- Tall pixels


##**Tween function**
- **Tween.Linear**
- **Tween.SineIn**
- **Tween.SineOut**
- **Tween.SineInOut**
- **Tween.QuadIn**
- **Tween.QuadOut**
- **Tween.QuadInOut**
- **Tween.CubicIn**
- **Tween.CubicOut**
- **Tween.CubicInOut**
- **Tween.QuarticIn**
- **Tween.QuarticOut**
- **Tween.QuarticInOut**
- **Tween.QuanticIn**
- **Tween.QuanticOut**
- **Tween.QuanticInOut**
- **Tween.ExpoIn**
- **Tween.ExpoOut**
- **Tween.ExpoInOut**
- **Tween.CircIn**
- **Tween.CircOut**
- **Tween.CircInOut**
- **Tween.BackIn**
- **Tween.BackOut**
- **Tween.BackInOut**
- **Tween.ElasticIn**
- **Tween.ElasticOut**
- **Tween.ElasticInOut**
- **Tween.BounceIn**
- **Tween.BounceOut**
- **Tween.BounceInOut**


##**Types**

* Rect2i(x,y,w,h)

* Vector2i(x,y)

* Color32(r,g,b,a)

* FastString(length)

##**RETRO:Color32**

- **Color32 = Color32(byte r, byte g, byte b, byte a)**
    - *create colot from rgba bytes*
- **Color32 = Color32:Lerp(Color32 a, Color32 b, float t)**
    - *linear interpolation*
- **Color32 = Color32:LerpUnclamped(Color32 a, Color32 b, float t)**
    - *unclamped linear interpolation*
- **string = Color32:ToString()**
    - *convert color to string*
- **string = Color32:ToString(string format)**
    - *convert to formated string*

    


##**RETRO:Rect2i**

- **Rect2i Rect2i:Set(int x, int y, int width, int height)**
    - *Set x,y,w,h*
- **Rect2i:set_Item(int index, int value)**
    - *set value at idx 0=x, 1=y, 2=w,3=h*
- **bool Rect2i:op_Equality(Rect2i a, Rect2i b)**
    - *comparison*
- **bool Rect2i:op_Inequality(Rect2i a, Rect2i b)**
    - *comparison*
- **string Rect2i:ToString()**
    - *convert to string*
- **string Rect2i:ToString(string format)**
    - *convert to formated string*
- **Rect2i Rect2i:Expand(int amount)**
    - *Expand the rectangular area vertically and horizontally by the given amount.*
- **Rect2i Rect2i:Expand(int widthAmount, int heightAmount)**
    - *Expand the rectangular area by the given width and height. Negative values effectively shrink the rectangular area.*
- **bool Rect2i:Contains(Vector2i point)**
    - *Return true if the given point is contained within the rectangle, or on its boundary.*
- **bool Rect2i:Intersects(Rect2i rect)**
    - *Checks if there is an intersections with another rectangle*
- **Vector2i Rect2i:IntersectionDepth(Rect2i rect)**
    - *Calculates how far another rectangle intersects into this rectangle. The returned depth represents how much the rectangle would have to be offset so that it no longer collides. This method is useful in collision resolution.*
- **Rect2i Rect2i:Intersect(Rect2i rect)**
    - *Get a rect representing the intersection area with another rectangle. In other words, the returned rectangle
 represents the overlapping area between two rectangles*
- **Rect2i Rect2i:Offset(Vector2i pos)**
    - *Returns a copy of the rectangle offset by given position. Does not change the original rectangle*


##**RETRO:Vector2i**

- **Vector2i Vector2i:Copy()**
    - *vector copy*
- **Vector2i Vector2i:op_Addition(Vector2i a, Vector2i b)**
    - *v3 = v1 + v2*
- **Vector2i Vector2i:op_Subtraction(Vector2i a, Vector2i b)**
    - *v3 = v1 - v2*
- **Vector2i Vector2i:op_Multiply(Vector2i a, int d)**
    - *v3 = v1 + int*
- **Vector2i Vector2i:op_Multiply(int scalar, Vector2i vector)**
    - *v3 = int + v2*
- **Vector2i Vector2i:op_Division(Vector2i vector, int scalar)**
    - *v3 = v1 / v2*
- **Vector2i Vector2i:op_Multiply(Vector2i vector, float scalar)**
    - *v3 = v1 * float*
- **Vector2i Vector2i:op_Multiply(float scalar, Vector2i vector)**
    - *v3 = float * v2*
- **Vector2i Vector2i:op_Division(Vector2i vector, float scalar)**
    - *v3 = v1 / float*
- **bool Vector2i:op_Equality(Vector2i a, Vector2i b)**
    - *comparison v1==v2*
- **bool Vector2i:op_Inequality(Vector2i a, Vector2i b)**
    - *comparison v1~=v2*
- **float Vector2i:Magnitude()**
    - *vector magnitude*
- **Vector2i Vector2i:Set(int x, int y)**
    - *set vector*
- **int Vector2i:SqrMagnitude()**
    - *calc sqrt agnitude*
- **string Vector2i:ToString()**
    - *convert to string*
- **string Vector2i:ToString(string format)**
    - *convert to formated string*

##**RETRO:FastString**
- **string FastString:Append(int|float|Color32|Rect2i|Vector2i)**
    - *convert to fast string*
- **string FastString:Clear()**
    - *clear fast string*    
- **string FastString:ToLower()**
     - *convert to lower chars*
- **string FastString:ToUpper()**
     - *convert to upper chars*

## **DATA:**
    - object for store data to JSON file format.
    - store data by name in curent type
    - data with same name are overide

- **DATA:Clear()**
    - *Clear data*
- **DATA:SetObject(string name, Metatable value)**
    - *store metatable with name to DATA object*    
- **DATA:SetFloat(string name, float value)**
    - *store float value with name to DATA object*
- **DATA:SetInt(string name, int value)**
    - *store int value with name to DATA object*
- **DATA:SetString(string name, string value)**
    - *store string value with name to DATA object*
- **DATA:SetVector2i(string name, Vector2i value)**
    - *store vector value with name to DATA object*
- **DATA:SetRect2i(string name, Rect2i value)**
    - *store rect value with name to DATA object*
- **DATA:Delete(string name)**
    - *delete stored value with name in DATA object*
- **int DATA:GetAsInt(string name)**
    - *get stored int value with name from DATA object*
- **Metatable DATA:GetAsObject(string name)*
    - *get stored metaobject  with name from DATA object*
- **float DATA:GetAsFloat(string name)**
    - *get stored float value with name from DATA object*
- **string DATA:GetAsString(string name)**
    - *get stored string value with name from DATA object*
- **DATA:Save()**
    - *save data to file | name is same as game folder name with extension .gamedata*
- **DATA:Load()**
    - *load data from file | name is same as game folder name with extension .gamedata*

## **TWEEN:**

- **float TWEEN:Value(int _func, float t)**
    - *Get a float value transformed by an easing function specified by*

- **int TWEEN:Interpolate(int _func, int start, int end, float t)**
    - *Interpolate a INT value from the "start" value to the "end" value by time "t" where at t = 0.0 the value is "start" and at t = 1.0 the value is "end"*
- **byte TWEEN:Interpolate(int _func, byte start, byte end, float t)**
    - *Interpolate a byte value from the "start" value to the "end" value by time "t" where at t = 0.0 the value is "start" and at t = 1.0 the value is "end"*
- **float TWEEN:Interpolate(int _func, float start, float end, float t)**
    - *Interpolate a float value from the "start" value to the "end" value by time "t" where at t = 0.0 the value is "start" and at t = 1.0 the value is "end"*
- **Vector2i TWEEN:Interpolate(int _func, Vector2i start, Vector2i end, float t)**
    - *Interpolate a Vector2i value from the "start" value to the "end" value by time "t" where at t = 0.0 the value is "start" and at t = 1.0 the value is "end"*
- **Vector4 TWEEN:Interpolate(int _func, Vector4 start, Vector4 end, float t)**
    - *Interpolate a Vector4 value from the "start" value to the "end" value by time "t" where at t = 0.0 the value is "start" and at t = 1.0 the value is "end"*
- **Rect2i TWEEN:Interpolate(int _func, Rect2i start, Rect2i end, float t)**
    - *Interpolate a Rect2i value from the "start" value to the "end" value by time "t" where at t = 0.0 the value is "start" and at t = 1.0 the value is "end"*
- **Color32 TWEEN:Interpolate(int _func, Color32 start, Color32 end, float t)**
    - *Interpolate a Color32 value from the "start" value to the "end" value by time "t" where at t = 0.0 the value is "start" and at t = 1.0 the value is "end"*

## **RETRO:**

---

     Set display mode to given resolution and pixel style. Note that this sets only the RetroBlit pixel resolution, and does not affect the native
     window size. To change the native window size you can use the Unity Screen.SetResolution() API.
     
   - *arg: 'resolution' - Resolution*
   - *arg: 'pixelStyle' - Pixel style, one of "PixelStyle.Square", "PixelStyle.Wide", "PixelStyle.Tall"*
   - *ret: True if mode was successfully set, false otherwise*

**bool DisplayModeSet(Vector2i resolution, PixelStyle pixelStyle = PixelStyle.Square)*
---

     Get Sprite size of the current sprite sheet.
     
   - *ret: Sprite size*

**Vector2i = RETRO:SpriteSize()**
---

     Get Sprite size of the given sprite sheet.
     
   - *arg: 'index' - Spritesheet index*
   - *ret: Sprite size*

**Vector2i = RETRO:SpriteSize(int index)**
---

     Get Sprite sheet size of the current sprite sheet.
     
   - *ret: Sprite sheet size*

**Vector2i = RETRO:SpriteSheetSize()**
---

     Get size of the given sprite sheet.
     
   - *arg: 'index' - Spritesheet index*
   - *ret: Return sprite sheet size*

**Vector2i = RETRO:SpriteSheetSize(int index)**
---

     Clear the current target.
     
   - *arg: 'color' - Color to clear with**
   
**RETRO:Clear(Color32 color)**
---

     Clear a region of the current target. Useful for clearing sprite sheet areas to alpha 0.
     
   - *arg: 'color' - Color to clear with*
   - *arg: 'rect' - Region to clear*
   
**RETRO:Clear(Color32 color, Rect2i rect)**
---

     Helper function for calculating sprite index given sprite sheet column and row.
     
     There is no bounds checking performed, invalid column/row will produce invalid sprite index
   - *arg: 'column' - Column*
   - *arg: 'row' - Row*
   - *ret: Sprite index*

**int = RETRO:SpriteIndex(int column, int row)**
---

     Helper function for calculating sprite index given sprite sheet column and row.
     
     There is no bounds checking performed, invalid column/row will produce invalid sprite index
   - *arg: 'spriteSheetIndex' - Spritesheet for which to get sprite index for*
   - *arg: 'column' - Column*
   - *arg: 'row' - Row*
   - *ret: Sprite index*

**int = RETRO:SpriteIndex(int spriteSheetIndex, int column, int row)**
---

     Helper function for calculating sprite index given sprite sheet column and row
     
     There is no bounds checking performed, invalid column/row will produce invalid sprite index
   - *arg: 'spriteSheetIndex' - Spritesheet for which to get sprite index for*
   - *arg: 'cell' - Cell in sprite sheet where "Vector2i.x" is the column and "Vector2i.y" is the row.*
   - *ret: Sprite index*

**int = RETRO:SpriteIndex(int spriteSheetIndex, Vector2i cell)**
---

     Load a sprite sheet, sprite size will be set to default of 16 x 16.
     
     The sprite size is used by tilemaps to layout tiles, and when using
     "DrawSprite" APIs. It is also possible to use a sprite sheet with a variety of sprite sizes and use the "DrawCopy"
   - *     APIs to render them.arg: 'index' - Sprite sheet slot index to load into*
   - *arg: 'filename' - Filename of the sprite sheet file, mu*st be within a Resources folder*
   
**RETRO:SpriteSheetSetup(int index, string filename)**
---

     Load a sprite sheet and define the size of the sprites in it.
     
     The sprite size is used by tilemaps to layout tiles, and when using
     "DrawSprite" APIs. It is also possible to use a sprite sheet with a variety of sprite sizes and use the "DrawCopy"
     APIs to render them.
   - *arg: 'index' - Sprite sheet slot index to load into*
   - *arg: 'filename' - Filename of the sprite sheet file, must be within a Resources folder*
   - *arg: 'spriteSize' - The size of sprites in this sprite sheet*
   
**RETRO:SpriteSheetSetup(int index, string filename, Vector2i spriteSize)**
---

     Setup a blank sprite sheet, which can be used as an offscreen surface for rendering.
     
   - *arg: 'index' - Sprite sheet slot index to load into*
   - *arg: 'size' - Size of the sprite sheet*
   
**RETRO:SpriteSheetSetup(int index, Vector2i size)**
---

     Setup a blank sprite sheet, which can be used as an offscreen surface for rendering
     
     The sprite size is used by tilemaps to layout tiles, and when using
     "DrawSprite" APIs. It is also possible to use a sprite sheet with a variety of sprite sizes and use the "DrawCopy"
     APIs to render them.
   - *arg: 'index' - Sprite sheet slot index to load into*
   - *arg: 'size' - Size of the sprite sheet*
   - *arg: 'spriteSize' - The size of sprites in this sprite sheet*
   
**RETRO:SpriteSheetSetup(int index, Vector2i size, Vector2i spriteSize)**
---

     Delete the given sprite sheet, freeing up GPU resources
     
   - *arg: 'index' - Sprite sheet slot index to delete*
   
**RETRO:SpriteSheetDelete(int index)**
---

     Switch to the given sprite sheet.
     
     All sprite rendering from this point on will use this sprite sheet until a different sprite sheet is chosen.
   - *arg: 'index' - Sprite sheet slot index to switch to.*
   
**RETRO:SpriteSheetSet(int index)**
---

     Gets the index of the current sprite sheet.
     
   - *ret: Index of the current sprite sheet*
**int SpriteSheetGet()**
---

     Draw a sprite with a given sprite index from the sprite sheet.
     
   - *arg: 'spriteIndex' - Sprite index*
   - *arg: 'pos' - Position on display*
   
**RETRO:DrawSprite(int spriteIndex, Vector2i pos)**
---

     Draw a sprite with a given sprite index from the sprite sheet, and a destination rectangle.
     
   - *arg: 'spriteIndex' - Sprite index*
   - *arg: 'destRect' - Destination rectangle*
   
**RETRO:DrawSprite(int spriteIndex, Rect2i destRect)**
---

     Draw a sprite with a given sprite index from the sprite sheet.
     
   - *arg: 'spriteIndex' - Sprite index*
   - *arg: 'pos' - Position on display*
   - *arg: 'flags' - Any combination of flags: "FLIP_H", "FLIP_V",*
     "ROT_90_CW", "ROT_180_CW", "ROT_270_CW",
     "ROT_90_CCW", "ROT_180_CCW", "ROT_270_CCW".
   
**RETRO:DrawSprite(int spriteIndex, Vector2i pos, int flags = 0)**
---

     Draw a sprite with a given sprite index from the sprite sheet, and a destination rectangle.
     
   - *arg: 'spriteIndex' - Sprite index*
   - *arg: 'destRect' - Destination rectangle*
   - *arg: 'flags' - Any combination of flags: "FLIP_H", "FLIP_V",*
     "ROT_90_CW", "ROT_180_CW", "ROT_270_CW",
     "ROT_90_CCW", "ROT_180_CCW", "ROT_270_CCW".
   
**RETRO:DrawSprite(int spriteIndex, Rect2i destRect, int flags = 0)**
---

     Draw a sprite with a given sprite index from the sprite sheet, a position, a pivot point and a rotation in degrees.
     
   - *arg: 'spriteIndex' - Sprite index*
   - *arg: 'pos' - Position on display*
   - *arg: 'pivot' - Rotation pivot point, specified as an offset from the sprites top left corner*
   - *arg: 'rotation' - Rotation in degrees*
   
**RETRO:DrawSprite(int spriteIndex, Vector2i pos, Vector2i pivot, float rotation)**
---

     Draw a sprite with a given sprite index from the sprite sheet, a destination rectangle, a pivot point and a rotation in degrees.
     
   - *arg: 'spriteIndex' - Sprite index*
   - *arg: 'destRect' - Position on display*
   - *arg: 'pivot' - Rotation pivot point, specified as an offset from the destination rectangle's top left corner*
   - *arg: 'rotation' - Rotation in degrees*
   
**RETRO:DrawSprite(int spriteIndex, Rect2i destRect, Vector2i pivot, float rotation)**
---

     Draw a sprite with a given sprite index from the sprite sheet, a position, a pivot point and a rotation in degrees.
     
   - *arg: 'spriteIndex' - Sprite index*
   - *arg: 'pos' - Position on display*
   - *arg: 'pivot' - Rotation pivot point, specified as an offset from the sprites top left corner*
   - *arg: 'rotation' - Rotation in degrees*
   - *arg: 'flags' - Any combination of flags: "FLIP_H", "FLIP_V",*
     "ROT_90_CW", "ROT_180_CW", "ROT_270_CW",
     "ROT_90_CCW", "ROT_180_CCW", "ROT_270_CCW".
   
**RETRO:DrawSprite(int spriteIndex, Vector2i pos, Vector2i pivot, float rotation, int flags = 0)**
---

     Draw a sprite with a given sprite index from the sprite sheet, a destination rectangle, a pivot point and a rotation in degrees.
     
   - *arg: 'spriteIndex' - Sprite index*
   - *arg: 'destRect' - Position on display*
   - *arg: 'pivot' - Rotation pivot point, specified as an offset from the destination rectangle's top left corner*
   - *arg: 'rotation' - Rotation in degrees*
   - *arg: 'flags' - Any combination of flags: "FLIP_H", "FLIP_V",*
     "ROT_90_CW", "ROT_180_CW", "ROT_270_CW",
     "ROT_90_CCW", "ROT_180_CCW", "ROT_270_CCW".
   
**RETRO:DrawSprite(int spriteIndex, Rect2i destRect, Vector2i pivot, float rotation, int flags = 0)**
---

     Copy a rectangular region from the sprite sheet to the given position.
     
   - *arg: 'srcRect' - Source rectangle on the sprite sheet*
   - *arg: 'pos' - Position*
   
**RETRO:DrawCopy(Rect2i srcRect, Vector2i pos)**
---

     Copy a rectangular region from the sprite sheet to the given position.
     
   - *arg: 'srcRect' - Source rectangle on the sprite sheet*
   - *arg: 'pos' - Position*
   - *arg: 'flags' - Any combination of flags: "FLIP_H", "FLIP_V",*
     "ROT_90_CW", "ROT_180_CW", "ROT_270_CW",
     "ROT_90_CCW", "ROT_180_CCW", "ROT_270_CCW".
   
**RETRO:DrawCopy(Rect2i srcRect, Vector2i pos, int flags = 0)**
---

     Copy a rectangular region from the sprite sheet to the given position, a pivot point and a rotation in degrees.
     
   - *arg: 'srcRect' - Source rectangle on the sprite sheet*
   - *arg: 'pos' - Position*
   - *arg: 'pivot' - Rotation pivot point, specified as an offset from the rectangles top left corner*
   - *arg: 'rotation' - Rotation in degrees*
   
**RETRO:DrawCopy(Rect2i srcRect, Vector2i pos, Vector2i pivot, float rotation)**
---

     Copy a rectangular region from the sprite sheet to the given position, a pivot point and a rotation in degrees.
     
   - *arg: 'srcRect' - Source rectangle on the sprite sheet*
   - *arg: 'pos' - Position*
   - *arg: 'pivot' - Rotation pivot point, specified as an offset from the rectangles top left corner*
   - *arg: 'rotation' - Rotation in degrees*
   - *arg: 'flags' - Any combination of flags: "FLIP_H", "FLIP_V",*
     "ROT_90_CW", "ROT_180_CW", "ROT_270_CW",
     "ROT_90_CCW", "ROT_180_CCW", "ROT_270_CCW".
   
**RETRO:DrawCopy(Rect2i srcRect, Vector2i pos, Vector2i pivot, float rotation, int flags = 0)**
---

     Copy a rectangular region from the sprite sheet to a destination rectangle.
     
   - *arg: 'srcRect' - Source rectangle on the sprite sheet*
   - *arg: 'destRect' - Destination rectangle*
   
**RETRO:DrawCopy(Rect2i srcRect, Rect2i destRect)**
---

     Copy a rectangular region from the sprite sheet to a destination rectangle.
     
   - *arg: 'srcRect' - Source rectangle on the sprite sheet*
   - *arg: 'destRect' - Destination rectangle*
   - *arg: 'flags' - Any combination of flags: "FLIP_H", "FLIP_V",*
     "ROT_90_CW", "ROT_180_CW", "ROT_270_CW",
     "ROT_90_CCW", "ROT_180_CCW", "ROT_270_CCW".
   
**RETRO:DrawCopy(Rect2i srcRect, Rect2i destRect, int flags = 0)**
---

     Copy a rectangular region from the sprite sheet to a destination rectangle, with the given pivot point and rotation in degrees.
     
   - *arg: 'srcRect' - Source rectangle on the sprite sheet*
   - *arg: 'destRect' - Destination rectangle*
   - *arg: 'pivot' - Rotation pivot point, specified as an offset from the destination rectangle's top left corner*
   - *arg: 'rotation' - Rotation in degrees*
   
**RETRO:DrawCopy(Rect2i srcRect, Rect2i destRect, Vector2i pivot, float rotation)**
---

     Copy a rectangular region from the sprite sheet to a destination rectangle, with the given pivot point and rotation in degrees.
     
   - *arg: 'srcRect' - Source rectangle on the sprite sheet*
   - *arg: 'destRect' - Destination rectangle*
   - *arg: 'pivot' - Rotation pivot point, specified as an offset from the destination rectangle's top left corner*
   - *arg: 'rotation' - Rotation in degrees*
   - *arg: 'flags' - Any combination of flags: "FLIP_H", "FLIP_V",*
     "ROT_90_CW", "ROT_180_CW", "ROT_270_CW",
     "ROT_90_CCW", "ROT_180_CCW", "ROT_270_CCW".
   
**RETRO:DrawCopy(Rect2i srcRect, Rect2i destRect, Vector2i pivot, float rotation, int flags = 0)**
---

     Draw a nine-slice sprite. Only need to pass one corner, one side, and middle, the rest is mirrored.
     
   - *arg: 'destRect' - Destination rectangle*
   - *arg: 'srcTopLeftCornerRect' - Source rectangle of the top left corner*
   - *arg: 'srcTopSideRect' - Source rectangle of the top side*
   - *arg: 'srcMiddleRect' - Source rectangle of the middle*
   
**RETRO:DrawNineSlice(Rect2i destRect, Rect2i srcTopLeftCornerRect, Rect2i srcTopSideRect, Rect2i srcMiddleRect)**
---

     Draw a nine-slice sprite.
     
   - *arg: 'destRect' - Destination rectangle*
   - *arg: 'nineSlice' - NineSlice defining the parts of the nine-slice image*
   
**RETRO:DrawNineSlice(Rect2i destRect, NineSlice nineSlice)**
---

     Draw a pixel.
     
   - *arg: 'pos' - Position*
   - *arg: 'color' - Color*
   
**RETRO:DrawPixel(Vector2i pos, Color32 color)**
---

     Draw a triangle outline
     
   - *arg: 'p0' - First point of the triangle*
   - *arg: 'p1' - Second point of the triangle*
   - *arg: 'p2' - Third point of the triangle*
   - *arg: 'color' - Color*
   
**RETRO:DrawTriangle(Vector2i p0, Vector2i p1, Vector2i p2, Color32 color)**
---

     Draw a triangle outline with a pivot point and rotation in degrees
     
   - *arg: 'p0' - First point of the triangle*
   - *arg: 'p1' - Second point of the triangle*
   - *arg: 'p2' - Third point of the triangle*
   - *arg: 'color' - Color*
   - *arg: 'pivot' - Rotation pivot point, specified as an offset from the rectangle's top left corner*
   - *arg: 'rotation' - Rotation in degrees*
   
**RETRO:DrawTriangle(Vector2i p0, Vector2i p1, Vector2i p2, Color32 color, Vector2i pivot, float rotation)**
---

     Draw a filled triangle
     
   - *arg: 'p0' - First point of the triangle*
   - *arg: 'p1' - Second point of the triangle*
   - *arg: 'p2' - Third point of the triangle*
   - *arg: 'color' - Color*
   
**RETRO:DrawTriangleFill(Vector2i p0, Vector2i p1, Vector2i p2, Color32 color)**
---

     Draw a filled triangle with a pivot point and rotation in degrees
     
   - *arg: 'p0' - First point of the triangle*
   - *arg: 'p1' - Second point of the triangle*
   - *arg: 'p2' - Third point of the triangle*
   - *arg: 'color' - Color*
   - *arg: 'pivot' - Rotation pivot point, specified as an offset from the rectangle's top left corner*
   - *arg: 'rotation' - Rotation in degrees*
   
**RETRO:DrawTriangleFill(Vector2i p0, Vector2i p1, Vector2i p2, Color32 color, Vector2i pivot, float rotation)**
---

     Draw a rectangle outline
     
   - *arg: 'rect' - Rectangular area*
   - *arg: 'color' - Color*
   
**RETRO:DrawRect(Rect2i rect, Color32 color)**
---

     Draw a rectangle outline with a pivot point and rotation in degrees
     
   - *arg: 'rect' - Rectangular area*
   - *arg: 'color' - Color*
   - *arg: 'pivot' - Rotation pivot point, specified as an offset from the rectangle's top left corner*
   - *arg: 'rotation' - Rotation in degrees*
   
**RETRO:DrawRect(Rect2i rect, Color32 color, Vector2i pivot, float rotation)**
---

     Draw a filled rectangle
     
   - *arg: 'rect' - Rectangular area*
   - *arg: 'color' - Color*
   
**RETRO:DrawRectFill(Rect2i rect, Color32 color)**
---

     Draw a filled rectangle with a pivot point and rotation in degrees
     
   - *arg: 'rect' - Rectangular area*
   - *arg: 'color' - Color*
   - *arg: 'pivot' - Rotation pivot point, specified as an offset from the rectangle's top left corner*
   - *arg: 'rotation' - Rotation in degrees*
   
**RETRO:DrawRectFill(Rect2i rect, Color32 color, Vector2i pivot, float rotation)**
---

     Draw a line between two points.
     
   - *arg: 'p0' - One end of the line*
   - *arg: 'p1' - The other end of the line*
   - *arg: 'color' - Color*
   
**RETRO:DrawLine(Vector2i p0, Vector2i p1, Color32 color)**
---

     Draw a line between two points, with a pivot point and rotation in degrees.
     
   - *arg: 'p0' - One end of the line*
   - *arg: 'p1' - The other end of the line*
   - *arg: 'color' - Color*
   - *arg: 'pivot' - Pivot point*
   - *arg: 'rotation' - Rotation in degrees*
   
**RETRO:DrawLine(Vector2i p0, Vector2i p1, Color32 color, Vector2i pivot, float rotation)**
---

     Draw an ellipse outline.
     
   - *arg: 'center' - Center position*
   - *arg: 'radius' - Radius*
   - *arg: 'color' - Color*
   
**RETRO:DrawEllipse(Vector2i center, Vector2i radius, Color32 color)**
---

     Draw a filled ellipse.
     
   - *arg: 'center' - Center position*
   - *arg: 'radius' - Radius*
   - *arg: 'color' - Color*
   
**RETRO:DrawEllipseFill(Vector2i center, Vector2i radius, Color32 color)**
---

     Draw an inversely filled ellipse. The fill covers the area outside of the ellipse, while leaving
     the inside of the ellipse empty.
     
   - *arg: 'center' - Center position*
   - *arg: 'radius' - Radius*
   - *arg: 'color' - Color*
   
**RETRO:DrawEllipseInvertedFill(Vector2i center, Vector2i radius, Color32 color)**
---

     Draw the given map layer to the display.
     
   - *arg: 'layer' - Layer number to draw*
   
**RETRO:DrawMapLayer(int layer)**
---

     Draw the given map layer to the display with an offset.
     
   - *arg: 'layer' - Layer number to draw*
   - *arg: 'pos' - Offset*
   
**RETRO:DrawMapLayer(int layer, Vector2i pos)**
---

     Set the alpha transparency value for drawing.
     
   - *arg: 'a' - A value between 0 (invisible) to 255 (solid)*
   
**RETRO:AlphaSet(byte a)**
---

     Get the current alpha transparency value
     
   - *ret: Transparency*

**byte = RETRO:AlphaGet()**
---

     Set the tint color for drawing.
     
   - *arg: 'tintColor' - Tint color*
   
**RETRO:TintColorSet(Color32 tintColor)**
---

     Get the current tint color.
     
   - *ret: Tint color*
**Color32 RETRO:TintColorGet()**
---

     Set the current camera position for drawing
     
   - *arg: 'pos' - Position*
   
**RETRO:CameraSet(Vector2i pos)**
---

     Reset the camera position back to 0, 0. This is equivalent to "CameraSet"(0, 0).
     
   
**RETRO:CameraReset()**
---

     Get the current camera position
     
   - *ret: Camera position*

**Vector2i = RETRO:CameraGet()**
---

     Set a rectangular clipping region. All drawing outside of this region will be clipped away. By default the clipping
     region covers the entire display.
     
   - *arg: 'rect' - Rectangular clip region*
   
**RETRO:ClipSet(Rect2i rect)**
---

     Reset the clipping region back to covering the entire render surface, be it the display, or current offscreen target.
     
   
**RETRO:ClipReset()**
---

     Get the current clipping region.
     
   - *ret: Clipping region*

**Rect2i = RETRO:ClipGet()**
---

     Enable clip region debugging by drawing rectangles around the clip regions with the given color index. Subsequent
     calls to ClipDebugEnable will change the color for subsequent calls to <ref>RetroBlit.ClipSet</ref>. This debug state is reset at the
     start of each frame.
     
   - *arg: 'color' - RGBA color*
   
**RETRO:ClipDebugEnable(Color32 color)**
---

     Disable clip region debugging, will not draw clip region outlines for subsequent calls to <ref>RetroBlit.ClipSet</ref>.
     
   
**RETRO:ClipDebugDisable()**
---

     Enable a batch debugging overlay which shows how many draw batches are being used
     
   - *arg: 'fontColor' - Font color to use*
   - *arg: 'backgroundColor' - Background color to use*
   
**RETRO:BatchDebugEnable(Color32 fontColor, Color32 backgroundColor)**
---

     Disable batch debugging overlay
     
   
**RETRO:BatchDebugDisable()**
---

     Switch to drawing to the a sprite sheet surface. All subsequent drawing calls will target this sprite sheet
     
   - *arg: 'spriteSheetIndex' - SpriteSheet to switch to*
   
**RETRO:Offscreen(int spriteSheetIndex)**
---

     Switch to drawing to the display.
     
   
**RETRO:Onscreen()**
---

     Set the tilemap sprite index at the given tile position, with optional flags.
     
   - *arg: 'layer' - Map layer*
   - *arg: 'tilePos' - Tile position*
   - *arg: 'sprite' - Sprite index*
   - *arg: 'flags' - Sprite flags*
   
**RETRO:MapSpriteSet(int layer, Vector2i tilePos, int sprite, int flags = 0)**
---

     Set the tilemap sprite index at the given tile position, with color tint and optional flags.
     
   - *arg: 'layer' - Map layer*
   - *arg: 'tilePos' - Tile position*
   - *arg: 'sprite' - Sprite index*
   - *arg: 'tintColor' - Tint color*
   - *arg: 'flags' - Sprite flags*
   
**RETRO:MapSpriteSet(int layer, Vector2i tilePos, int sprite, Color32 tintColor, int flags = 0)**
---

     Get the sprite index at the given tile position
     
   - *arg: 'layer' - Map layer*
   - *arg: 'tilePos' - Tile position*
   - *ret: Sprite index*
**int = RETRO:MapSpriteGet(int layer, Vector2i tilePos)**
---

     Set user data for the tilemap at the given tile position
          
   - *arg: 'layer' - Tilemap layer*
   - *arg: 'tilePos' - Tile position*
   - *arg: 'data' - Data*
   
**RETRO:MapDataSet(int layer, Vector2i tilePos, metatable)**
---

     Get user data for the tilemap at the given tile position
     
     <typeparam name="T' - Type of data</typeparam>
   - *arg: 'layer' - Tilemap layer*
   - *arg: 'tilePos' - Tile position*
   - *ret: Data*

**metatable = RETRO:MapDataGet(int layer, Vector2i tilePos)**
---

     Clear the entire tilemap, on all layers.
     
   
**RETRO:MapClear()*
---

     Clear only the given tilemap layer.
     
   - *arg: 'layer' - Layer to clear*
   
**RETRO:MapClear(int layer)**
---
     Set the sprite sheet to be used by the given tilemap layer.
     
     Each layer can use a different sprite sheet, and therefore each layer can have different tile sizes
     that match it's sprite sheet's sprite size.
   - *arg: 'mapLayer' - Map layer number*
   - *arg: 'spriteSheetIndex' - Sprite sheet slot index to use*
   
**RETRO:MapLayerSpriteSheetSet(int mapLayer, int spriteSheetIndex)**
---

     Check if a map chunk at the given position is empty/unloaded. A chunk can become empty if its been shifted out
     (see "MapShiftChunks(int, Vector2i)", or has been released internally because it has not been visible
     for some time.
     
   - *arg: 'layer' - Chunk layer*
   - *arg: 'pos' - Offset of the chunk in tile coordinates*
   - *ret: True if empty, false otherwise*
   
**bool = RETRO:MapChunkEmpty(int layer, Vector2i pos)**
---

     Shift the tilemap chunks by the given amount chunks in the X and Y direction. This method is particularly useful
     while loading infinite maps chunk by chunk.
     
     In an infinite map you will typically monitor the player position and when they move out of a chunk
     you can shift the entire map in the direction opposite to the movement, and load new chunks in the newly vacated
     map chunks.
   - *arg: 'layer' - Map layer*
   - *arg: 'shiftChunks' - Shift amount in chunk numbers in the x and y direction.*
   
**RETRO:MapShiftChunks(int layer, Vector2i shiftChunks)**
---

     Print text to display using custom font at the given position.
     In the arg: 'text' string the "@" character is an escape character, and it enables the following options:
      
     "@@" - Print @
     
     "@######" - Color change in the format RRGGBB, where each color channel has a hex value between 00 and FF
     
     "@-" - Revert back to the color specified in the arg: '"color" parameter.
     
     "@w###" - Apply a wavy text effect in the format APS (wave amplitude, period, and speed), where each
     parameter has a value between 0 and 9. Default is "@w000"
     
     "@s#" - Apply a shaky text effect in the format M (magnitude), where M has a value between 0 and 9.
     Default is "@s0"
     
     "@g##" - Change the font to the given 2 digit font index. Default is "@g99" which is a special value
     indicating built-in system font.
     
   - *arg: 'pos' - Position*
   - *arg: 'color' - Color*
   - *arg: 'text' - Text*
   
**RETRO:Print(Vector2i pos, Color32 color, string text)**
---

     Print text to display using custom font at the given position.
     In the arg: 'text' string the "@" character is an escape character, and it enables the following options:
      
     "@@" - Print @
     
     "@######" - Color change in the format RRGGBB, where each color channel has a hex value between 00 and FF
     
     "@-" - Revert back to the color specified in the arg: '"color" parameter.
     
     "@w###" - Apply a wavy text effect in the format APS (wave amplitude, period, and speed), where each
     parameter has a value between 0 and 9. Default is "@w000"
     
     "@s#" - Apply a shaky text effect in the format M (magnitude), where M has a value between 0 and 9.
     Default is "@s0"
     
     "@g##" - Change the font to the given 2 digit font index. Default is "@g99" which is a special value
     indicating built-in system font.
     
   - *arg: 'pos' - Position*
   - *arg: 'color' - Color*
   - *arg: 'flags' - Optional flag "NO_INLINE_COLOR"*
   - *arg: 'text' - Text*
   
**RETRO:Print(Vector2i pos, Color32 color, int flags, string text)**
---

     Print text to display using custom font at the given position.
     In the arg: 'text' string the "@" character is an escape character, and it enables the following options:
      
     "@@" - Print @
     
     "@######" - Color change in the format RRGGBB, where each color channel has a hex value between 00 and FF
     
     "@-" - Revert back to the color specified in the arg: '"color" parameter.
     
     "@w###" - Apply a wavy text effect in the format APS (wave amplitude, period, and speed), where each
     parameter has a value between 0 and 9. Default is "@w000"
     
     "@s#" - Apply a shaky text effect in the format M (magnitude), where M has a value between 0 and 9.
     Default is "@s0"
     
     "@g##" - Change the font to the given 2 digit font index. Default is "@g99" which is a special value
     indicating built-in system font.
     
   - *arg: 'rect' - Rectangular area to print to*
   - *arg: 'color' - Color*
   - *arg: 'alignFlags' - Any combination of flags: "ALIGN_H_LEFT", "ALIGN_H_RIGHT",*
     "ALIGN_H_CENTER", "ALIGN_V_TOP", "ALIGN_V_BOTTOM",
     "ALIGN_V_CENTER", "TEXT_OVERFLOW_CLIP", "TEXT_OVERFLOW_WRAP".
   - *arg: 'text' - Text*
   
**RETRO:Print(Rect2i rect, Color32 color, int alignFlags, string text)**
---

      Print text to display using custom font at the given position.
     In the arg: 'text' string the "@" character is an escape character, and it enables the following options:
      
     "@@" - Print @
     
     "@######" - Color change in the format RRGGBB, where each color channel has a hex value between 00 and FF
     
     "@-" - Revert back to the color specified in the arg: '"color" parameter.
     
     "@w###" - Apply a wavy text effect in the format APS (wave amplitude, period, and speed), where each
     parameter has a value between 0 and 9. Default is "@w000"
     
     "@s#" - Apply a shaky text effect in the format M (magnitude), where M has a value between 0 and 9.
     Default is "@s0"
     
     "@g##" - Change the font to the given 2 digit font index. Default is "@g99" which is a special value
     indicating built-in system font.
     
   - *arg: 'pos' - Position*
   - *arg: 'color' - Color*
   - *arg: 'text' - Text*
   
**RETRO:Print(Vector2i pos, Color32 color, FastString text)**
---

     Print text to display using custom font at the given position.
     In the arg: 'text' string the "@" character is an escape character, and it enables the following options:
      
     "@@" - Print @
     
     "@######" - Color change in the format RRGGBB, where each color channel has a hex value between 00 and FF
     
     "@-" - Revert back to the color specified in the arg: '"color" parameter.
     
     "@w###" - Apply a wavy text effect in the format APS (wave amplitude, period, and speed), where each
     parameter has a value between 0 and 9. Default is "@w000"
     
     "@s#" - Apply a shaky text effect in the format M (magnitude), where M has a value between 0 and 9.
     Default is "@s0"
     
     "@g##" - Change the font to the given 2 digit font index. Default is "@g99" which is a special value
     indicating built-in system font.
     
   - *arg: 'pos' - Position*
   - *arg: 'color' - Color*
   - *arg: 'flags' - Optional flag "NO_INLINE_COLOR"*
   - *arg: 'text' - Text*
   
**RETRO:Print(Vector2i pos, Color32 color, int flags, FastString text)**
---

     Print text to display using custom font at the given position.
     In the arg: 'text' string the "@" character is an escape character, and it enables the following options:
      
     "@@" - Print @
     
     "@######" - Color change in the format RRGGBB, where each color channel has a hex value between 00 and FF
     
     "@-" - Revert back to the color specified in the arg: '"color" parameter.
     
     "@w###" - Apply a wavy text effect in the format APS (wave amplitude, period, and speed), where each
     parameter has a value between 0 and 9. Default is "@w000"
     
     "@s#" - Apply a shaky text effect in the format M (magnitude), where M has a value between 0 and 9.
     Default is "@s0"
     
     "@g##" - Change the font to the given 2 digit font index. Default is "@g99" which is a special value
     indicating built-in system font.
     
   - *arg: 'rect' - Rectangular area to print to*
   - *arg: 'color' - Color*
   - *arg: 'alignFlags' - Any combination of flags: "ALIGN_H_LEFT", "ALIGN_H_RIGHT",*
     "ALIGN_H_CENTER", "ALIGN_V_TOP", "ALIGN_V_BOTTOM",
     "ALIGN_V_CENTER", "TEXT_OVERFLOW_CLIP", "TEXT_OVERFLOW_WRAP".
   - *arg: 'text' - Text*
   
**RETRO:Print(Rect2i rect, Color32 color, int alignFlags, FastString text)**
---

     Measure a text string without printing it, using system font.
     
   - *arg: 'text' - Text*
   - *ret: Dimensions*

**Vector2i RETRO:PrintMeasure(string text)**
---

     Measure a text string without printing it, using system font.
     
   - *arg: 'rect' - Rectangular area to print to*
   - *arg: 'alignFlags' - Any combination of flags: "ALIGN_H_LEFT", "ALIGN_H_RIGHT",*
     "ALIGN_H_CENTER", "ALIGN_V_TOP", "ALIGN_V_BOTTOM",
     "ALIGN_V_CENTER", "TEXT_OVERFLOW_CLIP", "TEXT_OVERFLOW_WRAP".
   - *arg: 'text' - Text*
   - *ret: Dimensions*

**Vector2i RETRO:PrintMeasure(Rect2i rect, int alignFlags, string text)**
---

     Measure a text string without printing it, using system font.
     
   - *arg: 'text' - Text*
   - *ret: Dimensions*

**Vector2i RETRO:PrintMeasure(FastString text)**
---

     Measure a text string without printing it, using system font.
     
   - *arg: 'rect' - Rectangular area to print to*
   - *arg: 'alignFlags' - Any combination of flags: "ALIGN_H_LEFT", "ALIGN_H_RIGHT",*
     "ALIGN_H_CENTER", "ALIGN_V_TOP", "ALIGN_V_BOTTOM",
     "ALIGN_V_CENTER", "TEXT_OVERFLOW_CLIP", "TEXT_OVERFLOW_WRAP".
   - *arg: 'text' - Text*
   - *ret: Dimensions*

**Vector2i RETRO:PrintMeasure(Rect2i rect, int alignFlags, FastString text)**
---

     Print text to display using custom font at the given position.
     In the arg: 'text' string the "@" character is an escape character, and it enables the following options:
      
     "@@" - Print @
     
     "@######" - Color change in the format RRGGBB, where each color channel has a hex value between 00 and FF
     
     "@-" - Revert back to the color specified in the arg: '"color" parameter.
     
     "@w###" - Apply a wavy text effect in the format APS (wave amplitude, period, and speed), where each
     parameter has a value between 0 and 9. Default is "@w000"
     
     "@s#" - Apply a shaky text effect in the format M (magnitude), where M has a value between 0 and 9.
     Default is "@s0"
     
     "@g##" - Change the font to the given 2 digit font index. Default is "@g99" which is a special value
     indicating built-in system font.
     
   - *arg: 'fontIndex' - Font index*
   - *arg: 'pos' - Position*
   - *arg: 'color' - Color*
   - *arg: 'text' - Text*
   
**RETRO:Print(int fontIndex, Vector2i pos, Color32 color, string text)**
---

     Print text to display using custom font at the given position.
     In the arg: 'text' string the "@" character is an escape character, and it enables the following options:
      
     "@@" - Print @
     
     "@######" - Color change in the format RRGGBB, where each color channel has a hex value between 00 and FF
     
     "@-" - Revert back to the color specified in the arg: '"color" parameter.
     
     "@w###" - Apply a wavy text effect in the format APS (wave amplitude, period, and speed), where each
     parameter has a value between 0 and 9. Default is "@w000"
     
     "@s#" - Apply a shaky text effect in the format M (magnitude), where M has a value between 0 and 9.
     Default is "@s0"
     
     "@g##" - Change the font to the given 2 digit font index. Default is "@g99" which is a special value
     indicating built-in system font.
     
   - *arg: 'fontIndex' - Font index*
   - *arg: 'pos' - Position*
   - *arg: 'color' - Color*
   - *arg: 'flags' - Optional flag "NO_INLINE_COLOR"*
   - *arg: 'text' - Text*
   
**RETRO:Print(int fontIndex, Vector2i pos, Color32 color, int flags, string text)**
---

     Print text to display using custom font at the given position.
     In the arg: 'text' string the "@" character is an escape character, and it enables the following options:
      
     "@@" - Print @
     
     "@######" - Color change in the format RRGGBB, where each color channel has a hex value between 00 and FF
     
     "@-" - Revert back to the color specified in the arg: '"color" parameter.
     
     "@w###" - Apply a wavy text effect in the format APS (wave amplitude, period, and speed), where each
     parameter has a value between 0 and 9. Default is "@w000"
     
     "@s#" - Apply a shaky text effect in the format M (magnitude), where M has a value between 0 and 9.
     Default is "@s0"
     
     "@g##" - Change the font to the given 2 digit font index. Default is "@g99" which is a special value
     indicating built-in system font.
     
   - *arg: 'fontIndex' - Font index*
   - *arg: 'rect' - Rectangular area to print to*
   - *arg: 'color' - Color*
   - *arg: 'alignFlags' - Any combination of flags: "ALIGN_H_LEFT", "ALIGN_H_RIGHT",*
     "ALIGN_H_CENTER", "ALIGN_V_TOP", "ALIGN_V_BOTTOM",
     "ALIGN_V_CENTER", "TEXT_OVERFLOW_CLIP", "TEXT_OVERFLOW_WRAP".
   - *arg: 'text' - Text*
   
**RETRO:Print(int fontIndex, Rect2i rect, Color32 color, int alignFlags, string text)**
---

     Measure a text string without printing it, using custom font.
     
   - *arg: 'fontIndex' - Font index*
   - *arg: 'text' - Text*
   - *ret: Dimensions*

**Vector2i RETRO:PrintMeasure(int fontIndex, string text)**
---

     Measure a text string without printing it, using custom font.
     
   - *arg: 'fontIndex' - Font index*
   - *arg: 'rect' - Rectangular area to print to*
   - *arg: 'alignFlags' - Any combination of flags: "ALIGN_H_LEFT", "ALIGN_H_RIGHT",*
     "ALIGN_H_CENTER", "ALIGN_V_TOP", "ALIGN_V_BOTTOM",
     "ALIGN_V_CENTER", "TEXT_OVERFLOW_CLIP", "TEXT_OVERFLOW_WRAP".
   - *arg: 'text' - Text*
   - *ret: Dimensions*

**Vector2i RETRO:PrintMeasure(int fontIndex, Rect2i rect, int alignFlags, string text)**
---

     Print text to display using custom font at the given position.
     In the arg: 'text' string the "@" character is an escape character, and it enables the following options:
      
     "@@" - Print @
     
     "@######" - Color change in the format RRGGBB, where each color channel has a hex value between 00 and FF
     
     "@-" - Revert back to the color specified in the arg: '"color" parameter.
     
     "@w###" - Apply a wavy text effect in the format APS (wave amplitude, period, and speed), where each
     parameter has a value between 0 and 9. Default is "@w000"
     
     "@s#" - Apply a shaky text effect in the format M (magnitude), where M has a value between 0 and 9.
     Default is "@s0"
     
     "@g##" - Change the font to the given 2 digit font index. Default is "@g99" which is a special value
     indicating built-in system font.
     
   - *arg: 'fontIndex' - Font index*
   - *arg: 'pos' - Position*
   - *arg: 'color' - Color*
   - *arg: 'text' - Text*
   
**RETRO:Print(int fontIndex, Vector2i pos, Color32 color, FastString text)**
---

     Print text to display using custom font at the given position.
     In the arg: 'text' string the "@" character is an escape character, and it enables the following options:
      
     "@@" - Print @
     
     "@######" - Color change in the format RRGGBB, where each color channel has a hex value between 00 and FF
     
     "@-" - Revert back to the color specified in the arg: '"color" parameter.
     
     "@w###" - Apply a wavy text effect in the format APS (wave amplitude, period, and speed), where each
     parameter has a value between 0 and 9. Default is "@w000"
     
     "@s#" - Apply a shaky text effect in the format M (magnitude), where M has a value between 0 and 9.
     Default is "@s0"
     
     "@g##" - Change the font to the given 2 digit font index. Default is "@g99" which is a special value
     indicating built-in system font.
     
   - *arg: 'fontIndex' - Font index*
   - *arg: 'pos' - Position*
   - *arg: 'color' - Color*
   - *arg: 'flags' - Optional flag "NO_INLINE_COLOR"*
   - *arg: 'text' - Text*
   
**RETRO:Print(int fontIndex, Vector2i pos, Color32 color, int flags, FastString text)**
---

     Print text to display using custom font at the given position.
     In the arg: 'text' string the "@" character is an escape character, and it enables the following options:
      
     "@@" - Print @
     
     "@######" - Color change in the format RRGGBB, where each color channel has a hex value between 00 and FF
     
     "@-" - Revert back to the color specified in the arg: '"color" parameter.
     
     "@w###" - Apply a wavy text effect in the format APS (wave amplitude, period, and speed), where each
     parameter has a value between 0 and 9. Default is "@w000"
     
     "@s#" - Apply a shaky text effect in the format M (magnitude), where M has a value between 0 and 9.
     Default is "@s0"
     
     "@g##" - Change the font to the given 2 digit font index. Default is "@g99" which is a special value
     indicating built-in system font.
   - *arg: 'fontIndex' - Font index*
   - *arg: 'rect' - Rectangular area to print to*
   - *arg: 'color' - Color*
   - *arg: 'alignFlags' - Any combination of flags: "ALIGN_H_LEFT", "ALIGN_H_RIGHT",*
     "ALIGN_H_CENTER", "ALIGN_V_TOP", "ALIGN_V_BOTTOM",
     "ALIGN_V_CENTER", "TEXT_OVERFLOW_CLIP", "TEXT_OVERFLOW_WRAP".
   - *arg: 'text' - Text*
   
**RETRO:Print(int fontIndex, Rect2i rect, Color32 color, int alignFlags, FastString text)**
---

     Measure a text string without printing it, using custom font.
     
   - *arg: 'fontIndex' - Font index*
   - *arg: 'text' - Text*
   - *ret: Dimensions*

**RETRO:Vector2i PrintMeasure(int fontIndex, FastString text)*
---

     Measure a text string without printing it, using custom font.
     
   - *arg: 'fontIndex' - Font index*
   - *arg: 'rect' - Rectangular area to print to*
   - *arg: 'alignFlags' - Any combination of flags: "ALIGN_H_LEFT", "ALIGN_H_RIGHT",*
     "ALIGN_H_CENTER", "ALIGN_V_TOP", "ALIGN_V_BOTTOM",
     "ALIGN_V_CENTER", "TEXT_OVERFLOW_CLIP", "TEXT_OVERFLOW_WRAP".
   - *arg: 'text' - Text*
   - *ret: Dimensions*

**Vector2i RETRO:PrintMeasure(int fontIndex, Rect2i rect, int alignFlags, FastString text)**
---

     Setup a custom font from the sprite sheet.
     
     The glyphs in your sprite sheet should be organized into a grid, with each cell size being the same. If arg: '"monospaced" is false then RetroBlit will automatically trim any
     horizontal empty space on either side of the glyph. If arg: '"monospaced" is true then the empty space is retained.
   - *arg: 'fontIndex' - Font index*
   - *arg: 'asciiStart' - First ascii character in the font*
   - *arg: 'asciiEnd' - Last ascii character in the font*
   - *arg: 'srcPos' - Top left corner of the set of glyphs in the sprite sheet*
   - *arg: 'spriteSheetIndex' - The index of the sprite sheet containing the font*
   - *arg: 'glyphSize' - Dimensions of a single glyph*
   - *arg: 'glyphsPerRow' - Amount of glyphs per row in the sprite sheet*
   - *arg: 'characterSpacing' - Spacing between characters*
   - *arg: 'lineSpacing' - Line spacing between lines of text*
   - *arg: 'monospaced' - True if font is monospaced*
   
**RETRO:FontSetup(int fontIndex, int asciiStart, int asciiEnd, Vector2i srcPos, int spriteSheetIndex, Vector2i glyphSize, int glyphsPerRow, int characterSpacing, int lineSpacing, bool monospaced)**
---

     Return true if any of the given button(s) are held down.
     
   - *arg: 'button' - A bitmask of one or multiple buttons.*
   - *arg: 'player' - Player to check, or "PLAYER_ANY" to check any player. Defaults to "PLAYER_ONE"*
   - *ret: True if button(s) held down*

**bool RETRO:ButtonDown(int button, int player = PLAYER_ONE)**
---

     Return true if any of the given button(s) went from an up to down state since last "IRetroBlitGame.Update" call.
     
   - *arg: 'button' - A bitmask of one or multiple buttons.*
   - *arg: 'player' - Player to check, or "PLAYER_ANY" to check any player. Defaults to "PLAYER_ONE"*
   - *ret: True if button(s) pressed*

**bool RETRO:ButtonPressed(int button, int player = PLAYER_ONE)**
---

     Return true if any of the given button(s) went from a down to up state since last "IRetroBlitGame.Update" call.
     
   - *arg: 'button' - A bitmask of one or multiple buttons.*
   - *arg: 'player' - Player to check, or "PLAYER_ANY" to check any player. Defaults to "PLAYER_ONE"*
   - *ret: True if button(s) released*

**bool RETRO:ButtonReleased(int button, int player = PLAYER_ONE)**
---

     Return true if given key is held down.
     
   - *arg: 'keyCode' - Key code*
   - *ret: True if key held down*

**bool RETRO:KeyDown(KeyCode keyCode)**
---

     Return true if given key went from an up to down state since last "IRetroBlitGame.Update" call.
     
   - *arg: 'keyCode' - Key code*
   - *ret: True if key pressed*

**bool RETRO:KeyPressed(KeyCode keyCode)**
---

     Return true if given key went from a down to up state since last "IRetroBlitGame.Update" call.
     
   - *arg: 'keyCode' - Key code*
   - *ret: True if key released*

**bool RETRO:KeyReleased(KeyCode keyCode)**
---

     Returns of string of characters entered since last "IRetroBlitGame.Update" call. Normally this string
     will be 0 or 1 characters long, but it is possible that the user may quickly perform two key strokes within the
     spawn of a single game loop.
     
   - *ret: Character string*

**string RETRO:InputString()**
---

     Get the current pointer position. If there is a mouse detected then the position is the position of the mouse pointer in
     game display coordinates. If there is a touch device then the position is the current touch position. If there is no
     mouse connected, and there are no active touches then the position is undefined. See "PointerPosValid" for checking
     if the pointer position is valid.
     
   - *ret: Pointer position*

**Vector2i = RETRO:PointerPos()**
---

     Returns true if the pointer position is valid. A pointer position may be undefined if there is no mouse connected, and there are no
     current touches.
     
   - *ret: True if pointer position is valid*

**bool = RETRO:PointerPosValid()**
---

     Get the delta of the mouse scroll position since last "IRetroBlitGame.Update" call. The delta is always 0 if there
     is no mouse connected.
     
   - *ret: Delta position*
**float = RETRO:PointerScrollDelta()**
---

     Provide a delegate for overriding RetroBlit button mapping. The delegate implementation takes a button and returns true if the button
     is held down, or false otherwise. How the button state is determined is entirely up to the delegate implementation. Delegate should
     set the "handled" out parameter to true if it was able to determine the state of the button, or false if it wants to fallback on
     RetroBlit using its default mapping for this button.
     
   - *arg: 'overrideMethod' - Input override delegate*
   
**RETRO:InputOverride(InputOverrideMethod overrideMethod)**
---

     Setup sound clip at the given sound slot index.
     
   - *arg: 'sfx_name' - Sound name*
   - *arg: 'fileName' - Filename of the sound file, must be within a Resources folder*
   - *ret: 'slotIndex' - slot id in SFX list*
**int slotIndex = RETRO:SoundSetup(string sfx_name, string fileName)**
---

     Remove sound clip from the given slot index, freeing up resources.
     
   - *arg: 'slotIndex' - Sound slot index*
   
**RETRO:SoundDelete(int slotIndex)**
---

     Play the sound at the given sound slot index. This function returns the "SoundReference" of the playing
     sound, which can then be used to adjust the playback of the sound.
     
   - *arg: 'slotIndex' - Sound slot index*
   - *arg: 'volume' - Volume to play at where 0 is silent, 1 is the original clip volume and values beyond 1 indicate amplification beyond the recorded volume. Defaults to 1*
   - *arg: 'pitch' - Pitch to play at, where 1 is the original sound pitch, values less than 1 indicate lower pitch, and values greater than 1 indicate higher pitch. Defaults to 1*
   - *ret: Sound reference*

**SoundReference SoundPlay(int slotIndex, float volume = 1.0f, float pitch = 1.0f)**
**SoundReference SoundPlay(string sfx_name, float volume = 1.0f, float pitch = 1.0f)**
---

     Check if a sound is playing by using its "SoundReference".
     If a sound is no longer playing it's reference is considered no longer valid and can be disposed of.
     
   - *arg: 'soundReference' - Sound reference*
   - *ret: True if still playing, false otherwise.*

**bool RETRO:SoundIsPlaying(SoundReference soundReference)**
---

     Set the volume of the currently playing sound by using its "SoundReference"
     
   - *arg: 'soundReference' - Sound reference*
   - *arg: 'volume' - New volume to play at where 0 is silent, 1 is the original clip volume and values beyond 1 indicate amplification beyond the recorded volume*
   
**RETRO:SoundVolumeSet(SoundReference soundReference, float volume)**
---

     Set the pitch of the currently playing sound by using its "SoundReference"
     
   - *arg: 'soundReference' - Sound reference*
   - *arg: 'pitch' - New pitch to play at, where 1 is the original sound pitch, values less than 1 indicate lower pitch, and values greater than 1 indicate higher pitch*
   
**RETRO:SoundPitchSet(SoundReference soundReference, float pitch)**
---

     Get the volume of the currently playing sound by using its "SoundReference"
     
   - *arg: 'soundReference' - Sound reference*
   - *ret: Volume*

**float = RETRO:SoundVolumeGet(SoundReference soundReference)**
---

     Get the pitch of the currently playing sound by using its "SoundReference"
     
   - *arg: 'soundReference' - Sound reference*
   - *ret: Pitch*
**float = RETRO:SoundPitchGet(SoundReference soundReference)**
---

     Stop the sound currently playing by using its "SoundReference". Once the sound is stopped it can no longer be resumed and the specified "SoundReference" is
     no longer valid.
     
   - *arg: 'soundReference' - Sound reference*
   
**RETRO:SoundStop(SoundReference soundReference)**
---

     Specify whether the currently playing sound specified by "SoundReference" should keep looping.
     
   - *arg: 'soundReference' - Sound reference*
   - *arg: 'loop' - True if sound should loop*
   
**RETRO:SoundLoopSet(SoundReference soundReference, bool loop)**
---

     Setup music at the given music slot index.
     
   - *arg: 'slotIndex' - Music slot index*
   - *arg: 'fileName' - Filename of the music file, must be within a Resources folder*
   
**RETRO:MusicSetup(int slotIndex, string fileName)**
---

     Remove music clip from the given slot index, freeing up resources.
     
   - *arg: 'slotIndex' - Music slot index*
   
**RETRO:MusicDelete(int slotIndex)**
---

     Play music stored at the given slot index. If there already is music playing then it is cross-faded to the newly specified music.
     
   - *arg: 'slotIndex' - Music slot index*
   
**RETRO:MusicPlay(int slotIndex)**
---

     Stop currently playing music.
     
   
**RETRO:MusicStop()**
---

     Set the volume of music.
     
   - *arg: 'volume' - New volume to play at where 0 is silent, 1 is the original music volume and values beyond 1 indicate amplification beyond the recorded volume*
   
**RETRO:MusicVolumeSet(float volume = 1.0f)**
---

     Set the pitch of music.
     
   - *arg: 'pitch' - New pitch to play at, where 1 is the original music pitch, values less than 1 indicate lower pitch, and values greater than 1 indicate higher pitch*
   
**RETRO:MusicPitchSet(float pitch = 1.0f)**
---

     Get the current music volume.
     
   - *ret: Volume*

**float = RETRO:MusicVolumeGet()**
---

     Get the current music pitch.
     
   - *ret: Pitch*

**float = RETRO:MusicPitchGet()**
---

     Set values for the given post processing effect. Setting arg: '"intensity" to 0 turns off the effect entirely.
     
   - *arg: 'type' - Effect type*
   - *arg: 'intensity' - Intensity*
   - *arg: 'parameters' - Additional parameters*
   - *arg: 'color' - Color*
   
**RETRO:EffectSet(Effect type, float intensity, Vector2i parameters, Color32 color)**
---

     Set intensity for the given post processing effect. Setting arg: '"intensity" to 0 turns off the effect entirely.
     
   - *arg: 'type' - Effect type*
   - *arg: 'intensity' - Intensity*
   
**RETRO:EffectSet(Effect type, float intensity)**
---

     Set parameters for the given post processing effect. The effect is not yet active if its intensity is 0.
     
   - *arg: 'type' - Effect type*
   - *arg: 'parameters' - Additional parameters*
   
**RETRO:EffectSet(Effect type, Vector2i parameters)**
---

     Set color for the given post processing effect. The effect is not yet active if its intensity is 0.
     
   - *arg: 'type' - Effect type*
   - *arg: 'color' - Color*
   
**RETRO:EffectSet(Effect type, Color32 color)**
---

     Set a custom post-processing effect shader. Note that some RetroBlit built-in shaders may not work if
     a custom shader is specified. For loading shaders see "ShaderSetup"
     
   - *arg: 'shaderIndex' - Shader index*
   
**RETRO:EffectShader(int shaderIndex)**
---

     Specify texture filtering to use with custom post-processing effect shader, see "EffectShader".
     Default filter is "Filter.Nearest".
     
   - *arg: 'filter' - "Filter.Nearest" or "Filter.Linear"*
   
**RETRO:EffectFilter(Filter filter)**
---

     Reset all post-processing effect back to default/off state.
     
   
**RETRO:EffectReset()**
---

     Apply post-processing effects at this point. This is useful if you don't want to apply effects to all layers, for
     example you may want your GUI to not be affected by post processing effects. After "EffectApplyNow" you
     will likely want to change your effects, or call "EffectReset". "EffectApplyNow" is called
     automatically at the end of "IRetroBlitGame.Render".
     
   
**RETRO:EffectApplyNow()**
---

     Load a shader into the given shader slot, from the given filename.
     
   - *arg: 'shaderIndex' - Shader index*
   - *arg: 'filename' - Shader filename, must be within a Resources folder*
   
**RETRO:ShaderSetup(int shaderIndex, string filename)**
---

     Set the current shader
     
   - *arg: 'shaderIndex' - Shader index*
   
**RETRO:ShaderSet(int shaderIndex)**
---

     Apply shader now, this causes an implicit flush of the rendering pipeline. You may want to call "ShaderApplyNow" if
     you want the current shader parameters to apply to earlier Draw calls before you make further changes to the shader parameters.
     
   
**RETRO:ShaderApplyNow()**
---

     Reset the shader back to the default RetroBlit shader.
     
   
**RETRO:ShaderReset()**
---

     Get a unique ID of a shader property as specified in a shader file. It is more efficient to pass around a shader ID then its string name.
     
   - *arg: 'name' - Name of the property*
   - *ret: Unique ID*

**int RETRO:ShaderPropertyID(string name)**
---

     Set a shader color property
     
   - *arg: 'shaderIndex' - Shader index*
   - *arg: 'name' - Property name*
   - *arg: 'color' - Color*
   
**RETRO:ShaderColorSet(int shaderIndex, string name, Color32 color)**
---

     Set a shader color property
     
   - *arg: 'shaderIndex' - Shader index*
   - *arg: 'propertyID' - Property ID*
   - *arg: 'color' - Color*
   
**RETRO:ShaderColorSet(int shaderIndex, int propertyID, Color32 color)**
---

     Set a shader color array
     
   - *arg: 'shaderIndex' - Shader index*
   - *arg: 'name' - Property name*
   - *arg: 'colorArray' - Color list*
   
**RETRO:ShaderColorArraySet(int shaderIndex, string name, List(Color32) colorArray)**
---

     Set a shader color array
     
   - *arg: 'shaderIndex' - Shader index*
   - *arg: 'propertyID' - Property ID*
   - *arg: 'colorArray' - Color list*
   
**RETRO:ShaderColorArraySet(int shaderIndex, int propertyID, List(Color32) colorArray)**
---

     Set a shader color array
     
   - *arg: 'shaderIndex' - Shader index*
   - *arg: 'name' - Property name*
   - *arg: 'colorArray' - Color array*
   
**RETRO:ShaderColorArraySet(int shaderIndex, string name, Color32[] colorArray)**
---

     Set a shader color array
     
   - *arg: 'shaderIndex' - Shader index*
   - *arg: 'propertyID' - Property ID*
   - *arg: 'colorArray' - Color array*
   
**RETRO:ShaderColorArraySet(int shaderIndex, int propertyID, Color32[] colorArray)**
---

     Set a shader float property
     
   - *arg: 'shaderIndex' - Shader index*
   - *arg: 'name' - Property name*
   - *arg: 'value' - Float value*
   
**RETRO:ShaderFloatSet(int shaderIndex, string name, float value)**
---

     Set a shader float property
     
   - *arg: 'shaderIndex' - Shader index*
   - *arg: 'propertyID' - Property ID*
   - *arg: 'value' - Float value*
   
**RETRO:ShaderFloatSet(int shaderIndex, int propertyID, float value)**
---

     Set a shader float array
     
   - *arg: 'shaderIndex' - Shader index*
   - *arg: 'name' - Property name*
   - *arg: 'values' - Float array*
   
**RETRO:ShaderFloatArraySet(int shaderIndex, string name, float[] values)**
---

     Set a shader float array
     
   - *arg: 'shaderIndex' - Shader index*
   - *arg: 'propertyID' - Property ID*
   - *arg: 'values' - Float array*
   
**RETRO:ShaderFloatArraySet(int shaderIndex, int propertyID, float[] values)**
---

     Set a shader float array
     
   - *arg: 'shaderIndex' - Shader index*
   - *arg: 'name' - Property name*
   - *arg: 'values' - Float list*
   
**RETRO:ShaderFloatArraySet(int shaderIndex, string name, List(float) values)**
---

     Set a shader float array
     
   - *arg: 'shaderIndex' - Shader index*
   - *arg: 'propertyID' - Property name*
   - *arg: 'values' - Float list*
   
**RETRO:ShaderFloatArraySet(int shaderIndex, int propertyID, List(float) values)**
---

     Set a shader integer property
     
   - *arg: 'shaderIndex' - Shader index*
   - *arg: 'name' - Property name*
   - *arg: 'value' - Integer value*
   
**RETRO:ShaderIntSet(int shaderIndex, string name, int value)**
---

     Set a shader integer property
     
   - *arg: 'shaderIndex' - Shader index*
   - *arg: 'propertyID' - Property ID*
   - *arg: 'value' - Integer value*
   
**RETRO:ShaderIntSet(int shaderIndex, int propertyID, int value)**
---

     Set a shader matrix
     
   - *arg: 'shaderIndex' - Shader index*
   - *arg: 'name' - Property name*
   - *arg: 'matrix' - Matrix*
   
**RETRO:ShaderMatrixSet(int shaderIndex, string name, Matrix4x4 matrix)**
---

     Set a shader matrix
     
   - *arg: 'shaderIndex' - Shader index*
   - *arg: 'propertyID' - Property ID*
   - *arg: 'matrix' - Matrix*
   
**RETRO:ShaderMatrixSet(int shaderIndex, int propertyID, Matrix4x4 matrix)**
---

     Set a shader matrix array
     
   - *arg: 'shaderIndex' - Shader index*
   - *arg: 'name' - Property name*
   - *arg: 'matrices' - Matrix array*
   
**RETRO:ShaderMatrixArraySet(int shaderIndex, string name, Matrix4x4[] matrices)**
---

     Set a shader matrix array
     
   - *arg: 'shaderIndex' - Shader index*
   - *arg: 'propertyID' - Property ID*
   - *arg: 'matrices' - Matrix array*
   
**RETRO:ShaderMatrixArraySet(int shaderIndex, int propertyID, Matrix4x4[] matrices)**
---

     Set a shader matrix array
     
   - *arg: 'shaderIndex' - Shader index*
   - *arg: 'name' - Property name*
   - *arg: 'matrices' - Matrix list*
   
**RETRO:ShaderMatrixArraySet(int shaderIndex, string name, List(Matrix4x4) matrices)**
---

     Set a shader matrix array
     
   - *arg: 'shaderIndex' - Shader index*
   - *arg: 'propertyID' - Property ID*
   - *arg: 'matrices' - Matrix list*
   
**RETRO:ShaderMatrixArraySet(int shaderIndex, int propertyID, List(Matrix4x4) matrices)**
---

     Set a shader vector property
     
   - *arg: 'shaderIndex' - Shader index*
   - *arg: 'name' - Property name*
   - *arg: 'vector' - Vector*
   
**RETRO:ShaderVectorSet(int shaderIndex, string name, Vector4 vector)**
---

     Set a shader vector property
     
   - *arg: 'shaderIndex' - Shader index*
   - *arg: 'propertyID' - Property ID*
   - *arg: 'vector' - Vector*
   
**RETRO:ShaderVectorSet(int shaderIndex, int propertyID, Vector4 vector)**
---

     Set a shader vector array
     
   - *arg: 'shaderIndex' - Shader index*
   - *arg: 'name' - Property name*
   - *arg: 'vectors' - Vector array*
   
**RETRO:ShaderVectorArraySet(int shaderIndex, string name, Vector4[] vectors)**
---

     Set a shader vector array
     
   - *arg: 'shaderIndex' - Shader index*
   - *arg: 'propertyID' - Property ID*
   - *arg: 'vectors' - Vector array*
   
**RETRO:ShaderVectorArraySet(int shaderIndex, int propertyID, Vector4[] vectors)**
---

     Set a shader vector array
     
   - *arg: 'shaderIndex' - Shader index*
   - *arg: 'name' - Property name*
   - *arg: 'vectors' - Vector list*
   
**RETRO:ShaderVectorArraySet(int shaderIndex, string name, List(Vector4) vectors)**
---

     Set a shader vector array
     
   - *arg: 'shaderIndex' - Shader index*
   - *arg: 'propertyID' - Property ID*
   - *arg: 'vectors' - Vector list*
   
**RETRO:ShaderVectorArraySet(int shaderIndex, int propertyID, List(Vector4) vectors)**
---

     Set a shader spritesheet texture
     
   - *arg: 'shaderIndex' - Shader index*
   - *arg: 'name' - Property name*
   - *arg: 'spriteSheetIndex' - Spritesheet index*
   
**RETRO:ShaderSpriteSheetTextureSet(int shaderIndex, string name, int spriteSheetIndex)**
---

     Set a shader offscreen texture
     
   - *arg: 'shaderIndex' - Shader index*
   - *arg: 'propertyID' - Property ID*
   - *arg: 'spriteSheetIndex' - Spritesheet index*

   
**RETRO:ShaderSpriteSheetTextureSet(int shaderIndex, int propertyID, int spriteSheetIndex)**
---

     Set an spritesheet texture filter to be used by the shader. The default filter is "Filter.Nearest".
     
   - *arg: 'shaderIndex' - Shader index*
   - *arg: 'spriteSheetIndex' - Spritesheet index*
   - *arg: 'filter' - "Filter.Nearest" or "Filter.Linear"*

   
**RETRO:ShaderSpriteSheetFilterSet(int shaderIndex, int spriteSheetIndex, Filter filter)**
---
