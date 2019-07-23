var back, width, height, xx, yy, left, right, bottom, index, i, j;
back    = argument0;
xx      = argument1;
yy      = argument2;
xscale  = argument3;
yscale  = argument4;
rot     = argument5;
color   = argument6;
a_trans = argument7;
index   = argument8;
width   = background_get_width(back);
height  = background_get_height(back);
left    = -1;
right   = view_xview[view_current]/width+view_wview[view_current]/width+1;
top     = 1;
bottom  = view_yview[view_current]/height+view_hview[view_current]/height+1;

if (view_enabled) {
    if (background_vtiled[index] == false) {
        for (i=left; i<right; i+=1) {
            draw_background_ext(back,xx mod width+width*i,yy,xscale, yscale, rot, color, a_trans);
        }
    }
    else {
        for (i=left; i<right; i+=1) {
            draw_background_ext(back,xx mod width+width*i,yy,xscale, yscale, rot, color, a_trans);
        }
        for (i=left; i<right; i+=1)
        for (j=top; j<bottom; j+=1) {
            draw_background_ext(back,xx mod width+width*i,yy mod height+height*j,xscale, yscale, rot, color, a_trans);
        }
    }
}
else {
    if (background_vtiled[index] == false) {
        for (i=-1; i<right; i+=1) {
            draw_background_ext(back,xx mod width+width*i,yy,xscale, yscale, rot, color, a_trans);
        }
    }
    else {
        for (i=-1; i<right; i+=1) {
            draw_background_ext(back,xx mod width+width*i,yy,xscale, yscale, rot, color, a_trans);
        }
        for (i=-1; i<right; i+=1)
        for (j=1; j<bottom; j+=1) {
            draw_background_ext(back,xx mod width+width*i,yy mod height+height*j,xscale, yscale, rot, color, a_trans);
        }
    }
}
