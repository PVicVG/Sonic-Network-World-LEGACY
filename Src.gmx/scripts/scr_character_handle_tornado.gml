/// scr_character_handle_tornado();
//  Script to handle the Tornado. (Tails' plane)

    // Check if the plane exists:;
       PlaneHandle = scr_character_collision_bottom_object(x, y, Angle, spr_mask_main, obj_tornado);
       
    // Lock the character to the plane:   
       //if(PlaneHandle != noone){
       //   PlaneHandle.x += floor(XSpeed);
       //}

