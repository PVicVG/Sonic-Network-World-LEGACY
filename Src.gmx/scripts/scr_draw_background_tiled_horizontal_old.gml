/// scr_draw_background_tiled_horizontal(back,x,y)
  
 var Back, Width, XX, YY, Left, Right, I;
 
 Back  = argument0;
 Width = sprite_get_width(Back);
 XX    = argument1;
 YY    = argument2;
 Left  = -1;
 Right = view_xview[view_current]/Width+view_wview[view_current]/Width+1;
 for(i=Left; i<Right; i++){
     draw_sprite(Back, -1, XX mod Width+Width*i, YY);
 }
