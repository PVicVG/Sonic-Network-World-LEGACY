///scr_character_collision_bottom(x, y, angle, mask); 
// Returns when the bottom sensor has collided.
   
   // Setup temporal masks:
      TempMask   = (mask_index);
      mask_index = (argument3);
      
   // Test the Collision:
      ColTest    = scr_character_collision(floor(argument0 + sin(degtorad(argument2)) * 11), 
                                           floor(argument1 + cos(degtorad(argument2)) * 11), 
                                           Layer);
                                           
   // Special case: if the normal collision test failed, check for collision within platforms:
      if(!ColTest && !Ground && YSpeed >= 0){
          ColTest = place_meeting(floor(argument0 + sin(degtorad(argument2)) * 11),
                                  floor(argument1 + cos(degtorad(argument2)) * 11),
                                  par_collision_platform) && 
                   !place_meeting(floor(argument0), floor(argument1), 
                                  par_collision_platform);
      }

   
   // Return to the old mask:
      mask_index = TempMask;
   
   // Return:
      return (ColTest);


