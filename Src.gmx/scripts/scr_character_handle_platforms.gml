/// scr_character_handle_platforms()
 // Script to handle moving platforms!
 
OnSwing    = scr_character_collision_bottom_object(x, y, Angle, spr_mask_big, par_collision_swing);
OnMoving   = scr_character_collision_bottom_object(x, y, Angle, spr_mask_big, par_collision_moving);

