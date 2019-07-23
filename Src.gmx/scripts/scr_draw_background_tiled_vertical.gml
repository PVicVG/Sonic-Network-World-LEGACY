// ==== FUNCTION ====================================================================
// scr_draw_background_tiled_vertical(Background, x, y)
// ==================================================================================

    var BackgroundStart, BackgroundEnd, BackgroundStep;
    
    // Retrieve background properties        
    BackgroundStep  = background_get_height(argument0);
    BackgroundStart = view_yview[view_current]+((argument2-view_yview[view_current]) mod BackgroundStep)-BackgroundStep;
    BackgroundEnd   = view_yview[view_current]+view_hview[view_current]+BackgroundStep;
        
    repeat((BackgroundEnd-BackgroundStart)/BackgroundStep) {
        draw_background(argument0, argument1, BackgroundStart);
        BackgroundStart += BackgroundStep;
    }
