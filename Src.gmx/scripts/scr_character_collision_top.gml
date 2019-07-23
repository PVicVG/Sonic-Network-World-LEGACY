///scr_character_collision_top(x, y, angle, mask); 
// Returns when the top sensor has collided.
   
   // Setup temporal masks:
      TempMask   = (mask_index);
      mask_index = (argument3);
      
   // Test the Collision:
      ColTest    = scr_character_collision(floor(argument0 - sin(degtorad(argument2)) * 11), 
                                           floor(argument1 - cos(degtorad(argument2)) * 11), 
                                           Layer);
      
   // Return to the old mask:
      mask_index = TempMask;
   
   // Return:
      return (ColTest);

