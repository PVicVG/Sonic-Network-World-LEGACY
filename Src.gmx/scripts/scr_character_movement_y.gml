///scr_character_movement_Y();
// Handle a part of the Y/Vertical Movement.

   // Exit if we don't allow the manipulating of the vertical/y speed.
      if(Allow_YMovement == false)
         exit;
         
   // Return to a normal state after the character was jumping/falling...
      if(Ground){
      
         // Make sure to set the Y Speed to zero first:
            YSpeed = 0;
            
            if(Action = ActionJump  || Action = ActionHurt || Action = ActionSpring){
               if(Action = ActionHurt){
                  XSpeed = 0;
                  Action = ActionNormal;
               }
                  Action = ActionNormal;
            } 
         
         // Check if the character is really on ground:
            if(scr_character_collision_bottom(x, y, Angle, spr_mask_big) == false){
               Ground = false;
               scr_character_angle(global.GravityAngle);
            }   
      }
      
      //...Otherwise, add Gravity: 
      if(!Ground){
      
          // Add Acceleration:
             YSpeed += YAcceleration;
           
          // Check if for some reason we landed:     
             if(YSpeed >= 0 && scr_character_collision_bottom(x, y, Angle, spr_mask_big) == true){
             
                // We grounded:
                   Ground = true;
                   
                // Return to a normal state:
                   if(Action = ActionJump || Action = ActionFly || Action = ActionFlydrop || Action = ActionHurt || Action = ActionSpring){                 
                      if(Action = ActionHurt){
                         XSpeed = 0;
                         Action = ActionNormal;                         
                      }
                         Action = ActionNormal;
                      }            
             }   
                                     
                // Check if we're in the air but collided with the ceiling:
                   if(YSpeed < 0 && scr_character_collision_top(x, y, Angle, spr_mask_big) == true){
                      ShieldUsable = true;
                      YSpeed       = 0;
                      if(Action = ActionNormal && XSpeed = 0 && YSpeed = 0){
                         Action = ActionRolling;
                      }       
                   }              
      }
      
      // Reset X Speed after getting hit:
         if(YSpeed >= 0 && scr_character_collision_bottom(x, y, Angle, spr_mask_main) == true){
            if(Action = ActionHurt){
               XSpeed = 0;
               Action = ActionNormal;
            }
         }
      
     // Disable the jump lock: (after we performed a spindash or rolled)   
        if(Action != ActionJump) { JumpLock = false }
        
     // Disable roll jump and hammer jump check for amy:
        if(Action != ActionJump) { AmyRollJump = false }

