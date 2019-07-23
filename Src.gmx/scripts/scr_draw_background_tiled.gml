
var b, w, w_, h, h_, i, j;
b = argument0;
l = 0;
t = 0;
w_ = background_get_width(b);
w = w_;
h_ = background_get_height(b);
h = h_;
for ( j = 0; j < view_yview[view_current] + view_hview + background_get_height(argument0); j += h_ )
{
    h = min(view_yview[view_current] + view_hview + background_get_height(argument0) - j, h_);
    for ( i = 0; i < view_xview[view_current] + view_wview + background_get_width(argument0); i += w_ )
    {
        w = min(view_xview[view_current] + view_wview + background_get_width(argument0) - i, w_);
        draw_background_part(b, l, t, w, h, floor(argument1) + i, floor(argument2) + j);
    }
}
