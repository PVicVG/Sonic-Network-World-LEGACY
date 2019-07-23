///scr_character_calculate_angle(x, y, angle);
// Return the angle of the surface given at the position & angle:

   // Setup temporal masks:
      TempMask   = (mask_index);
      mask_index = (spr_mask_dot);
      
   // Limit the angle we are using from 360 directions to 36.
   // in order to prevent thickering. (Especially on slopes) 
      argument2  = (round(argument2 / 10) * 10);
      
   // Set the starting position of each sensor (depends on the given angle)
      x_point[1] = (argument0 - cos(degtorad(argument2)) * 7);
      x_point[2] = (argument0 + cos(degtorad(argument2)) * 7);
      y_point[1] = (argument1 + sin(degtorad(argument2)) * 7);
      y_point[2] = (argument1 - sin(degtorad(argument2)) * 7);
   
   // Once we set the sensors, perform the checking. Push down the sensors in order
   // to know the angle, we repeat this for a limited amount of times:
      repeat(25){
             if(scr_character_collision(floor(x_point[1]), floor(y_point[1]), Layer) == false){
                x_point[1] +=  sin(degtorad(argument2));
                y_point[1] +=  cos(degtorad(argument2));                
             }
             if(scr_character_collision(floor(x_point[2]), floor(y_point[2]), Layer) == false){
                x_point[2] +=  sin(degtorad(argument2));
                y_point[2] +=  cos(degtorad(argument2));                
             }          
      }
   
   // Return to the old mask:
      mask_index = TempMask;
   
   // Return the calculated angle:
      return (floor(point_direction(x_point[1], y_point[1], x_point[2], y_point[2])));
      

