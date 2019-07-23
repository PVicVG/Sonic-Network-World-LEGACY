///scr_character_collision_bottom_object(x, y, angle, mask, object); 
// Returns when the bottom sensor has collided with a object.
   
   // Setup temporal masks:
      TempMask   = (mask_index);
      mask_index = (argument3);
      
   // Transform the angle to radians and precalculate cosine and sine.
      argument2  = degtorad(argument2);
      Cosine     = cos(argument2);
      Sine       = sin(argument2);
   
   // Test the Collision:
      ColTest    = instance_place(floor(argument0 + Sine * 11), 
                                  floor(argument1 + Cosine * 11), 
                                  argument4);
      
   // Return to the old mask:
      mask_index = TempMask;
   
   // Return:
      return (ColTest);

