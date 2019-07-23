///scr_character_collision_main(x, y);
// Returns if the main sensor has collided:

   // Setup temporal masks:
      TempMask   = (mask_index);
      mask_index = (spr_mask_main);
      
   // Test the Collision:
      ColTest    = scr_character_collision(floor(argument0), floor(argument1), Layer);
      
   // Return to the old mask:
      mask_index = TempMask;
   
   // Return:
      return (ColTest);

