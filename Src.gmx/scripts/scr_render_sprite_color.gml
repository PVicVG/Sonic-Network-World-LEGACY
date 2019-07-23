/*
scr_render_sprite_color(sprite,color,image index,xscale,yscale,angle,alpha)
renders a sprite in a specific color.
*/
d3d_set_fog(true,argument1,0,0);
{
draw_sprite_ext(argument0, floor(argument2), floor(x), floor(y), argument3, argument4, argument5, c_white, argument6);
}
d3d_set_fog(false,c_black,0,0);

