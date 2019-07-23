/// scr_character_action_drop_dash()
//  Script to exeucte the drop dash from Sonic Mania!

   // Only run if we have no shield:
      if(instance_exists(obj_insta_shield) == false && Action != ActionTransform){

   // If we land on ground, and we are performing the drop dash, it's time to go fast! (has to be executed first here)
      if(Ground && DropDashFlag == 2){
         instance_create(x-6*AnimationDirection, y+13, obj_skid_dust);  
         Action        = ActionRolling;          
         DropDashFlag  = 0;
         DropDashTimer = 15;
         obj_camera.Cam_Lag = 140; 
                           
         if((!KeyLeft && !KeyRight) or (KeyRight && KeyLeft)){
            XSpeed        = AnimationDirection*DropDashSpeed;
         }else{
            if(KeyLeft){
               XSpeed  = -DropDashSpeed-(CharacterState != CharacterNormal)*3;
            }else{
               XSpeed  =  DropDashSpeed+(CharacterState != CharacterNormal)*3;
            }
         }
         Action        = ActionRolling;          
         PlaySound(snd_character_spindash_release, global.SFXVolume, 1, 1);
         StopSound(snd_character_dropdash);
         
         // If we're Super or hyper, do a quick earthquake:
            if(CharacterState != CharacterNormal){
               with(obj_camera){
                    Camera_ShakeScreen   = true;
                    Camera_ShakeDuration = 30;
                    Camera_ShakeForce    = 5;
                    Camera_ShakeSound    = snd_object_crumble;
               }             
            }
      }
         
   // Exit this if we are not in our Jumping state:
      if(Action == ActionJump || (!Ground && Animation = "ROLL")){
      
      // Check if we can perform a drop dash:
         if(AbilityDropDash == 1 && !Ground && DropDashFlag == 0){
         
            // Check if we press the Special button at least once.
               if(KeySpecial_Pressed){
            
                  // Set the Drop Dash flag to 1.
                     DropDashFlag = 1;
                     
                  // Set Action to Jump:
                     Action = ActionJump;
                  
               }
            
         }
      
      // If the drop dash flag is set to 1, check if we hold the special button.
         if(AbilityDropDash == 1 && !Ground && DropDashFlag = 1){
      
            // Count down the frames required to perform a Drop Dash:
               if(DropDashTimer != 0){
                  DropDashTimer--
               }
                                 
            // If we hit 0, perform the drop dash!
               if(DropDashTimer = 0){
                  JumpLock = false;
                  DropDashFlag  = 2;
                  DropDashSpeed = abs(XSpeed)/2 + 8;
                  PlaySound(snd_character_dropdash, global.SFXVolume, 1, 1);
                  // Limit the Drop Dash Strength:
                     if(DropDashSpeed > 13+(CharacterState != CharacterNormal)*3){
                        DropDashSpeed = 13+(CharacterState != CharacterNormal)*3;
                     } 
                  // Make sure to ACTUALLY change the animation, in case it won't trigger.
                     if(Animation != "DROPDASH"){
                        Animation  = "DROPDASH";
                     }                                                    
               }      
            
         }
      
      }else{
        // Reset Values:
           DropDashTimer = 15;
           DropDashFlag  = 0;
      }

      
   // If for some reason the flag is wrong, make sure to reset it:
      if(Animation == "DROPDASH" && DropDashFlag == 0){
         DropDashFlag  = 2;
         DropDashTimer = 0;
      }      
      
   // If we release the Special button in air, stop the drop dash.
      if(AbilityDropDash == 1 && DropDashFlag != 0){
      
       // Reset Values.
          if(!KeySpecial){
             DropDashFlag  = 0;
             DropDashTimer = 15;
             DropDashSpeed = 0;       
             if(Animation != "ROLL"){
                Animation  = "ROLL";
             }           
             StopSound(snd_character_dropdash);       
          }
         
      }
      
      }
      

