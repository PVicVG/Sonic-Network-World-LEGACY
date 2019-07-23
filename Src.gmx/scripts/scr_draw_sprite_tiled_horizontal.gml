/// scr_draw_sprite_tiled_horizontal(sprite, image, x, y);
 // Draw a sprite horizontally tiled. 

    var SpriteStart, SpriteEnd, SpriteCurrent, SpriteStep;

    // Retrieve sprite properties        
       SpriteStep  = sprite_get_width(argument0);
       SpriteStart = view_xview[view_current]+((argument2-view_xview[view_current]) mod SpriteStep)-SpriteStep;
       SpriteEnd   = view_xview[view_current]+view_wview[view_current]+SpriteStep;
        
       for (SpriteCurrent = SpriteStart; SpriteCurrent <= SpriteEnd; SpriteCurrent += SpriteStep)
            draw_sprite(argument0, argument1, SpriteCurrent, argument3);
