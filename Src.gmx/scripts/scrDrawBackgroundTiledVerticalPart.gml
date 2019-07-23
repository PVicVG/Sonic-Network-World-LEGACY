// ==== FUNCTION ====================================================================
// scrDrawBackgroundTiledVerticalPart(background, left, top, width, height, x, y);
// ==================================================================================

    var BackgroundStart, BackgroundEnd, BackgroundStep;
 
    // Retrieve background properties 
    BackgroundStep  = argument4+argument7;
    BackgroundStart = view_yview[view_current]+((argument6-view_yview[view_current]) mod BackgroundStep)-BackgroundStep;
    BackgroundEnd   = view_yview[view_current]+view_hview[view_current]+BackgroundStep;
    
    repeat((BackgroundEnd-BackgroundStart)/BackgroundStep) {
        draw_background_part(argument0, argument1, argument2, argument3, argument4, floor(argument5), floor(BackgroundStart));   
        BackgroundStart += BackgroundStep;
    }
