///scr_character_action_glide()
// Script to perform Knuckles glide.

   // Stop Gliding:
      if(KeyAction_Released && Action = ActionGlide){
         
         // Multiply XXSpeed by 0.25
         XSpeed = XSpeed*0.25;
         
         // Set the Action to Glide Drop.
         Action = ActionGlidedrop;
         
         // Reset Values:
         GlideTurn_S = 0;
         GlideTurn_A = 0;
         
      }
      
   // Finish drop.
      if(Action == ActionGlidedrop && Ground){
         if((Angle >= 0 && Angle < 25) || (Angle <= 360 && Angle > 345)){
            XSpeed     = 0;
            if(Animation != "CROUCH"){
               PlaySound(snd_character_land, global.SFXVolume, 1, 1);
            }
            Animation = "CROUCH";
            if(GlideCrouchTimer > 0){
               GlideCrouchTimer--
            }else{
               Action           = ActionNormal;
               GlideCrouchTimer = 25;
            }
         }else{
            Action           = ActionNormal;
            GlideCrouchTimer = 25;         
         }
      }

   // Trigger Glide:
     if(Ground == false && (Animation = "ROLL") && KeyAction_Pressed && Action != ActionTransform){
         
         // Set the Action to Glide:
         Angle  = 0;
         Action = ActionGlide;
                  
         // Set the init. horizontal XSpeed to 4.
         XSpeed = AnimationDirection*4;
         
         // Stop vertical force if it's below 0.
         if(YSpeed < 0){
            YSpeed = 0;
         }
         
      }
               
   // Gravity while Gliding:
      if(Action = ActionGlide){
         if(YSpeed < 0.5) { YSpeed += GlideGravity };   
         if(YSpeed > 0.5) { YSpeed -= GlideGravity };   
      }  
      
   // Glide Turn:
      if(Action = ActionGlide && !Ground){
         if(GlideTurn_S <= 0.0){
            XSpeed += 0.015625*AnimationDirection
         }
         if(AnimationDirection == 1 && KeyLeft && GlideTurn_S == 0){
            GlideTurn_S = abs(XSpeed);
            if(AnimationDirection == 1){
              GlideTurn_A = 0;
            }else{
                GlideTurn_A = 180;
            }
         }else if(KeyRight && GlideTurn_S != 0 && GlideTurn_A < 180){
                  GlideTurn_A = 360-GlideTurn_A;
         }else if(AnimationDirection == -1 && KeyRight && GlideTurn_S == 0){
                 GlideTurn_S = abs(XSpeed);
                 if(AnimationDirection == 1){
                    GlideTurn_A = 0;
                 }else{
                    GlideTurn_A = 180;
                 }
         }else if(KeyLeft && GlideTurn_S != 0 && GlideTurn_A > 180){
                  GlideTurn_A = 360-GlideTurn_A;
         }
         if(GlideTurn_S != 0){
            GlideTurn_A = floor(scr_character_wrap_angle(GlideTurn_A+3.8125));
            XSpeed = GlideTurn_S*cos(degtorad((GlideTurn_A))); 
            
            if(abs(cos(degtorad((GlideTurn_A)))) >= 1){
               AnimationFrame = 0;
            }else if(abs(cos(degtorad(GlideTurn_A))) >= 0.6 && abs(cos(degtorad((GlideTurn_A)))) < 1){
                     AnimationFrame = 1;
            }else if(abs(cos(degtorad((GlideTurn_A)))) >= 0 && abs(cos(degtorad((GlideTurn_A)))) < 0.6){
                     AnimationFrame = 2;
            }
            
            if(GlideTurn_A == 90){
               AnimationDirection *= -1;
            }else if(GlideTurn_A == 270){
                     AnimationDirection *= -1;
            }
            
            if(GlideTurn_A == 0 || GlideTurn_A == 180){
               GlideTurn_S    = 0;
               AnimationFrame = 0; 
            }
         }                                
      }
      
   // Grab onto a wall:
      if(Action = ActionGlide){
         if((Angle == 0 && XSpeed >= 0 && scr_character_collision_right(x, y, 0, spr_mask_big) && scr_character_collision_right(x, y, 0, spr_mask_climb_ledge)) && !scr_character_collision_right_object(x, y, 0, spr_mask_big, obj_monitor) && !scr_character_collision_right_object(x, y, 0, spr_mask_big, par_spike))
         ||((Angle == 0 && XSpeed <= 0 &&  scr_character_collision_left(x, y, 0, spr_mask_big) &&  scr_character_collision_left(x, y, 0, spr_mask_climb_ledge)) &&  !scr_character_collision_left_object(x, y, 0, spr_mask_big, obj_monitor) &&  !scr_character_collision_left_object(x, y, 0, spr_mask_big, par_spike))
      
         {

               // Set Climb OX variable:
                  ClimbOX = x;  
                             
               // Change Action:
                  Action = ActionClimb;
                  
               // If we're hyper, do a earthquake and destroy near enemies:
                  if(CharacterState == CharacterHyper){
                  
                     with(obj_camera){
                          Camera_ShakeScreen   = true;
                          Camera_ShakeDuration = 30;
                          Camera_ShakeForce    = 5;
                          Camera_ShakeSound    = snd_object_crumble;
                     }       
                     
                     with(par_enemy){
                          if(rectangle_in_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, view_xview[0], view_yview[0], view_xview[0] + view_wview[0], view_yview[0] + view_hview[0])) {
                             instance_destroy();
                          }
                     }       
                                                           
                  }                  
                                                                                
               // Reset Keys:
                  KeyAction         = false;
                  KeyAction_Pressed = false;
                  KeyAction_Released = false;
                  
               // Reset Values.
                  XSpeed      = 0;
                  YSpeed      = 0;
                  GlideTurn_S = 0;
                  GlideTurn_A = 0;
                  Angle       = 0;
                                                                      
               // Play Sound:
                  PlaySound(snd_character_hang, global.SFXVolume, 1, 1); 
                  
            }
                                 
      }
            
   // Slide:
      if(Action = ActionGlide && Ground == true && Angle == 0){       
         // Change Actions:        
            Action = ActionSlide;
            
         // Reset Keys:
            KeyAction         = false;
            KeyAction_Pressed = false;
            KeyAction_Released = false;         
      }else if(Action = ActionGlide && Ground == true && Angle != 0){
               Action = ActionNormal;
      }
             
   // If our angle changes, exit:
      if(Action = ActionGlide && Angle != 0){
         Action = ActionNormal;
      }
     
   // Reset Values:
      if(Action != ActionGlide){
         GlideTurn_S = 0;
         GlideTurn_A = 0;
      }

