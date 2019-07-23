var afterimage;
 afterimage = instance_create(floor(x),floor(y),obj_afterimage)
 afterimage.sprite_index = AnimationSprite;
 afterimage.image_index = floor(AnimationFrame);
 afterimage.image_speed = 0;
afterimage.image_angle = AnimationAngle; 
afterimage.image_alpha = 1; 
afterimage.image_xscale = AnimationDirection; 

