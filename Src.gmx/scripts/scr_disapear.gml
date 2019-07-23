global.disapear_sprite_ind=sprite_index;
global.disapear_image_ind=image_index;

with instance_create(x,y,obj_dummy_disappear){
sprite_index=global.disapear_sprite_ind;
image_index=global.disapear_image_ind;
image_speed=0;
}
