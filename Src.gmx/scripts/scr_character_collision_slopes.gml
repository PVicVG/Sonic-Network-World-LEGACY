///scr_character_collision_slopes(x, y, angle, mask);
// Returns if a slope sensor has collided.

   // Setup temporal masks:
      TempMask   = (mask_index);
      mask_index = (argument3);
      
   // Test the collision:
      ColTest    = scr_character_collision(floor(argument0 + sin(degtorad(argument2)) * 23),
                                           floor(argument1 + cos(degtorad(argument2)) * 23),
                                           Layer);
   
   // Return the old mask:
      mask_index = TempMask;
      
   // Return the calculated direction:
      return (ColTest);


