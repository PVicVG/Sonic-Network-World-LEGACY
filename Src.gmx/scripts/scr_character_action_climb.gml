///scr_character_action_climb()
// Script to perform Knuckles climb ability.

   // Only run if we're climbing (we define this in scr_character_action_glide())
      if(Action == ActionClimb){               
          
         // Make sure to add no horizontalforce:
            XSpeed = 0;

         // If the X Position doesn't match ClimbOX, stop climbing, do the same if we collide with ground below us or the angle is not 0:
            if(x != ClimbOX || Ground == true || Angle != 0){
               if(Ground){
                  Action = ActionNormal;
               }else{
                  Action         = ActionGlidedrop;
                  AnimationFrame = 1;
               }
               ClimbOX = 0;
            }   
            
         // If we're not grabbing onto anything, fall:
            if(!scr_character_collision_right(x, y, Angle, spr_mask_big))
            &&(! scr_character_collision_left(x, y, Angle, spr_mask_big)){
               if(!Ground){
                  Action         = ActionGlidedrop;
                  AnimationFrame = 1;
               }
            }
            
         // If we're grabbing onto a ledge, climb it up.
            if((AnimationDirection == 1 && YSpeed <= 0) && !scr_character_collision_right(x, y, Angle, spr_mask_climb_ledge) && IsLedgeGrabbing == 0){
               YSpeed          = 0;              
               IsLedgeGrabbing = 1;   
               AnimationFrame  = 0;
               KeyUp           = false;                
               //y               = yprevious;                         
            }
            if((AnimationDirection == -1 && YSpeed <= 0) && !scr_character_collision_left(x, y, Angle, spr_mask_climb_ledge) && IsLedgeGrabbing == 0){
               YSpeed          = 0;              
               IsLedgeGrabbing = 1;   
               AnimationFrame  = 0; 
               KeyUp           = false;                
               //y               = yprevious;                                    
            } 
            
            
         // Ledge Climb Animation / Position change.
            if(IsLedgeGrabbing == true){
               if(floor(AnimationFrame) > 2){
                  if(AnimationDirection == 1){
                     Action          = ActionNormal;
                     KeyUp           = false; 
                     IsLedgeGrabbing = false;
                     y              -= 22;
                     x              += 24;  
                  }else{
                     Action          = ActionNormal;
                     KeyUp           = false;                     
                     IsLedgeGrabbing = false;
                     y              -= 22;
                     x              -= 24;  
                  }
               }
            }
                     
         // When we press Up, move Knuckles and animate him.
            if(IsLedgeGrabbing == 0){
               if(KeyUp && !scr_character_collision_top(x, y, Angle, spr_mask_main)){
                  if(CharacterState == CharacterNormal){
                     YSpeed = -ClimbSpeed
                  }else{
                     YSpeed = -(ClimbSpeed+1);
                  }
                  if(ClimbFrameTimer > 0){
                     ClimbFrameTimer--
                  }else{
                     ClimbFrameTimer = 6;
                     if(AnimationFrame != 5){
                        AnimationFrame++
                     }else{
                        AnimationFrame=0;
                     }
                  }
               }else if(KeyUp && scr_character_collision_top(x, y, Angle, spr_mask_main)){
                        if(YSpeed < 0){
                           YSpeed = 0;
                        }
               }
            
            // When we press down, move Knuckles and animate him.
               if(KeyDown){
                  if(CharacterState == CharacterNormal){
                     YSpeed = ClimbSpeed
                  }else{
                     YSpeed = (ClimbSpeed+1);
                  }
                  if(ClimbFrameTimer > 0){
                     ClimbFrameTimer--
                  }else{
                     ClimbFrameTimer = 6;
                     if(AnimationFrame != 0){
                        AnimationFrame--
                     }else{
                        AnimationFrame=5;
                     }
                  }
               }      
            
            // Stop movement.
               if(!KeyUp && !KeyDown){
                  YSpeed = 0;
               }  
            }   
            
            // Jump off the wall:
               if(KeyAction_Pressed){
                  if(Action = ActionClimb && IsLedgeGrabbing != 1){
                     Action = ActionJump;
                     if(Underwater == false){
                        XSpeed = AnimationDirection*-4
                        YSpeed = -4;  
                     }else{
                        XSpeed = AnimationDirection*-2;
                        YSpeed = -2;
                     }               
                     AnimationDirection = -AnimationDirection;
                     PlaySound(snd_character_jump, global.SFXVolume, 1, 1);
                  }
               }   
         
      }
