/// scr_character_handle_springs();
//  Script to handle one of the main features in Sonic games. Springs!
             
    // Find nearest spring:
       Spring     = scr_instance_nth_nearest(x, y, par_spring, 1);

    // Check if we collide with a spring:
       if (Spring != noone){
   
          // Upwards launching spring:
             if(Spring.Direction == 0){
        
                // Check if we collide with it:
                   if(scr_character_collision_bottom_object(x, y, Angle, spr_mask_large, Spring) && YSpeed >= 0){                                        
                      Spring.Frame = 1;                   
                      scr_character_angle(global.GravityAngle);
                      Ground = false;
                      if(HomingUsed == true){
                         HomingUsed  = false;
                         XSpeed      = 0;
                      }                       
                      YSpeed = -Spring.Strength;
                      Action = ActionSpring;
                      PlaySound(snd_object_spring, global.SFXVolume, 1, 1);
                   }                            
                                                               
             }
   
          // Downwards launching spring:
             if(Spring.Direction == 1){
        
                // Check if we collide with it on the side while the angle isn't 0:
                   if(Ground && Angle > 45 && scr_character_collision_left_object(x, y, Angle, spr_mask_main, Spring)){
                      Spring.Frame = 1;
                      InputAlarm = 10;                   
                      XSpeed             = Spring.Strength;
                      if(Action != ActionRolling){
                        AnimationDirection = -AnimationDirection;
                      }
                      PlaySound(snd_object_spring, global.SFXVolume, 1, 1);                      
                   }
                   if(Ground && Angle < -45 && scr_character_collision_right_object(x, y, Angle, spr_mask_main, Spring)){     
                      Spring.Frame = 1;
                      InputAlarm = 10;                   
                      XSpeed = -Spring.Strength;
                      if(Action != ActionRolling){
                        AnimationDirection = -AnimationDirection;
                      }          
                      PlaySound(snd_object_spring, global.SFXVolume, 1, 1);                      
                   }             
             
                // Check if we collide with it:                   
                   if(scr_character_collision_top_object(x, y, Angle, spr_mask_big, Spring)){
                      if(Ground == false){
                         Spring.Frame = 1;                        
                         YSpeed = Spring.Strength;
                         if(Action != ActionRolling){
                            AnimationDirection = -AnimationDirection;
                         }            
                         PlaySound(snd_object_spring, global.SFXVolume, 1, 1);                         
                      }
                   }                          
             }

          // Left launching spring:
             if(Spring.Direction == 2) {
        
                // Check if we collide with it:
                   if( !scr_character_collision_top_object(x, y, Angle, spr_mask_main, Spring)
                   && scr_character_collision_right_object(x, y, Angle, spr_mask_big, Spring)){
                      Spring.Frame = 1;                     
                      scr_character_angle(global.GravityAngle);
                      InputLock_S        = 1;
                      LockTimer          = 16;                        
                      XSpeed             = -Spring.Strength;
                      AnimationDirection = -1;                 
                      PlaySound(snd_object_spring, global.SFXVolume, 1, 1);                  
                   }
                                                               
             }             
   
          // Right launching spring:
             if(Spring.Direction == 3) {
        
                // Check if we collide with it:
                   if( !scr_character_collision_top_object(x, y, Angle, spr_mask_main, Spring)
                   && scr_character_collision_left_object(x, y, Angle, spr_mask_big, Spring)) {
                      Spring.Frame = 1;                     
                      scr_character_angle(global.GravityAngle);
                      InputLock_S        = 1;
                      LockTimer          = 16;                       
                      XSpeed             = Spring.Strength;
                      AnimationDirection = 1;                        
                      PlaySound(snd_object_spring, global.SFXVolume, 1, 1);        
                   }
                                                               
             }       
                                   
       }
       

    // Find nearest diagonal spring:
       SpringDiagonal = scr_instance_nth_nearest(x, y, par_spring_diagonal, 1);

    // Check if we collide with a spring:       
       if (SpringDiagonal != noone){
   
          // Diagonal Up Right:
             if(SpringDiagonal.Direction == 0){
        
                // Check if we collide with it:
                   if((scr_character_collision_bottom_object(x, y, Angle, spr_mask_large, SpringDiagonal) && YSpeed >= 0) or (scr_character_collision_left_object(x, y, Angle, spr_mask_big, SpringDiagonal) && XSpeed <= 0)){                                        
                      SpringDiagonal.alarm[0] = 5;            
                      scr_character_angle(global.GravityAngle);
                      Ground = false;
                      XSpeed =  SpringDiagonal.Strength;
                      YSpeed = -SpringDiagonal.Strength;
                      Action = ActionSpring;
                      PlaySound(snd_object_spring, global.SFXVolume, 1, 1);
                   }                            
                                                               
             }    
                
          // Diagonal Up Left:
             if(SpringDiagonal.Direction == 1){
        
                // Check if we collide with it:
                   if((scr_character_collision_bottom_object(x, y, Angle, spr_mask_large, SpringDiagonal) && YSpeed >= 0) or (scr_character_collision_right_object(x, y, Angle, spr_mask_big, SpringDiagonal) && XSpeed <= 0)){                                        
                      SpringDiagonal.alarm[0] = 5;            
                      scr_character_angle(global.GravityAngle);
                      Ground = false;
                      XSpeed = -SpringDiagonal.Strength;
                      YSpeed = -SpringDiagonal.Strength;
                      Action = ActionSpring;
                      PlaySound(snd_object_spring, global.SFXVolume, 1, 1);
                   }                            
                                                               
             }              
                
          // Diagonal Down Right:
             if(SpringDiagonal.Direction == 2){
        
                // Check if we collide with it:
                   if((scr_character_collision_top_object(x, y, Angle, spr_mask_large, SpringDiagonal) && YSpeed >= 0) or (scr_character_collision_left_object(x, y, Angle, spr_mask_big, SpringDiagonal) && XSpeed <= 0)){                                        
                      SpringDiagonal.alarm[0] = 5;            
                      scr_character_angle(global.GravityAngle);
                      Ground = false;
                      XSpeed = SpringDiagonal.Strength;
                      YSpeed = SpringDiagonal.Strength;
                      Action = ActionSpring;
                      PlaySound(snd_object_spring, global.SFXVolume, 1, 1);
                   }                            
                                                               
             } 
                
          // Diagonal Down Left:
             if(SpringDiagonal.Direction == 3){
        
                // Check if we collide with it:
                   if((scr_character_collision_top_object(x, y, Angle, spr_mask_large, SpringDiagonal) && YSpeed >= 0) or (scr_character_collision_right_object(x, y, Angle, spr_mask_big, SpringDiagonal) && XSpeed <= 0)){                                        
                      SpringDiagonal.alarm[0] = 5;            
                      scr_character_angle(global.GravityAngle);
                      Ground = false;
                      XSpeed = -SpringDiagonal.Strength;
                      YSpeed =  SpringDiagonal.Strength;
                      Action = ActionSpring;
                      PlaySound(snd_object_spring, global.SFXVolume, 1, 1);
                   }                            
                                                               
             } 
                                       
        }
