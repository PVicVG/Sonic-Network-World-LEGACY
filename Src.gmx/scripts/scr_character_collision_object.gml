///scr_character_collision_object(x, y, object);
// Returns if the main sensor has collided with a object.
   
   // Setup temporal masks:
      TempMask   = (mask_index);
      mask_index = (spr_mask_main);
      
   // Test the Collision:
      ColTest    = instance_place(floor(argument0), floor(argument1), argument2);
      
   // Return to the old mask:
      mask_index = TempMask;
   
   // Return:
      return (ColTest);
        

