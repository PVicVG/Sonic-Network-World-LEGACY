 ///scr_character_collision(x, y, layer);
// Returns whether or not we collide with a defined object/parent:

   // Check for solid tiles:
   if (place_meeting(argument0, argument1, par_collision_solid)) {
        return true;
   }
      
   // Check for Platforms:
   if (Ground == true){      
        if(place_meeting(argument0, argument1, par_collision_platform)){
            if(PlatformCheck == false){
               if(Angle = 0){ 
                  PlatformCheck = true;
                  return true 
               }
            }else{   
               return true;        
            }
        }  
   }
   
   // Check for Collapsing tiles:
   if (Ground == true){      
        if(place_meeting(argument0, argument1, par_collision_collapse)){
            return true;
        }       
   }   
         
   // Check for obstacles:
   if (place_meeting(argument0, argument1, par_collision_obstacles)){
        return true;
   }

   // Check for Layers:
   if (argument2 == 0){
        return place_meeting(argument0, argument1, par_collision_layer_low);
   }
   if (argument2 == 1){
        return place_meeting(argument0, argument1, par_collision_layer_high);
   }
   
