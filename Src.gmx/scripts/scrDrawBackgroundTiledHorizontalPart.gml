// ==== FUNCTION ====================================================================
// scrDrawBackgroundTiledHorizontalPart(background, left, top, width, height, x, y, sep)
// ==================================================================================

    var BackgroundStart, BackgroundEnd, BackgroundStep;
    
    // Retrieve background properties        
    BackgroundStep  = argument3+argument7;
    BackgroundStart = view_xview[view_current]+((argument5-view_xview[view_current]) mod BackgroundStep)-BackgroundStep;
    BackgroundEnd   = view_xview[view_current]+view_wview[view_current]+BackgroundStep;
        
    repeat((BackgroundEnd-BackgroundStart)/BackgroundStep) {
        draw_background_part(argument0, argument1, argument2, argument3, argument4, floor(BackgroundStart), floor(argument6));   
        BackgroundStart += BackgroundStep;
    }
