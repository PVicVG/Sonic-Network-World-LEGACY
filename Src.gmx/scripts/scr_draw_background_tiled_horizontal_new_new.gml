// ==== FUNCTION ====================================================================
// scr_draw_background_tiled_horizontal(Background, x, y)
// ==================================================================================

    var BackgroundStart, BackgroundEnd, BackgroundStep;

    // Retrieve background properties

    BackgroundStep  = background_get_width(argument0);
    BackgroundStart = view_xview[view_current]+((argument1-view_xview[view_current]) mod BackgroundStep)-BackgroundStep;
    BackgroundEnd   = view_xview[view_current]+view_wview[view_current]+BackgroundStep;
        
    repeat((BackgroundEnd-BackgroundStart)/BackgroundStep) {
        draw_background(argument0, BackgroundStart, argument2);   
        BackgroundStart += BackgroundStep;
    }
    
    
