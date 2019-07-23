///scr_character_collision_right_edge(x, y, angle); 
// Returns when the right sensor has collided with a edge.
   
   // Setup temporal variables:
      TempMask     = (mask_index);
      TempSpr      = (sprite_index);
      TempSprI     = (image_index);
      mask_index   = (spr_mask_lines);
      sprite_index = (spr_mask_lines);
      image_index  = (floor(argument2));
      
   // Test the Collision:
      ColTest      = scr_character_collision(floor(argument0 + cos(degtorad(argument2)) * 8  + sin(degtorad(argument2)) * 11),
                                             floor(argument1 - sin(degtorad(argument2)) * 11 + cos(degtorad(argument2)) * 11),
                                             Layer);
      
   // Return to the old mask:
      mask_index   = TempMask;
      sprite_index = TempSpr;
      image_index  = TempSprI;
    
   // Return:
      return (ColTest);


