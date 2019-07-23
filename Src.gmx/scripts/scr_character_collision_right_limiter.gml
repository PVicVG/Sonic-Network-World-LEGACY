///scr_character_collision_right_limiter(angle);
// Test a collision within the right limiter.

   // Temp. Vars:
      var ColOffset_X, ColOffset_Y, ColTest;
      
   // Change collision mask:
      sprite_index = (spr_mask_lines);
      image_index  = (floor(argument0/10));
      argument0    = scr_character_wrap_angle(floor(argument0));
      
   // Calculate the position based on the offset: 
      ColOffset_X = x+cos(floor(argument0))*8+sin(floor(argument0))*10;
      ColOffset_Y = y-sin(floor(argument0))*8+cos(floor(argument0))*10;
      ColTest     = scr_character_collision(ColOffset_X, ColOffset_Y, par_collision_solid)
                  &&         !place_meeting(ColOffset_X, ColOffset_Y, par_collision_obstacles); 

                  
   // Revert changes:
      sprite_index = spr_mask_main;
      
   // Return the test:
      return (ColTest);                           
    

