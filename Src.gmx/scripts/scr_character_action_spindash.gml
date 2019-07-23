///scr_character_action_spindash();
// Script to perform the characters spindash. Also rolling!

   // Check if we're spindashing:
      if(Action = ActionSpindash){
         // If the character doesn't hold down anymore, roll:
            if(!KeyDown && Ground){
            
                // Start Rolling:
                   if(CharacterID != CharacterAmy){
                      Action = ActionRolling;
                   }else{
                      Action = ActionNormal;
                   }
                   
                // Set the horizontal speed to the accumulator speed.
                   XSpeed = SpindashAccumulator*AnimationDirection;
                   
                // Camera Lag:
                   obj_camera.Cam_Lag = 140;
                
                // Stop the charging sound and play the dashing sound:
                   if(!audio_is_playing(snd_character_spindash_release)){
                       StopSound(snd_character_spindash_charge);
                       PlaySound(snd_character_spindash_release, global.SFXVolume, 1, 1);
                   }
            }
            
         // Disable Shield usage:
            ShieldUsable = false;
            
         // Make sure that there's no horizontal force.
            if(Action = ActionSpindash && Ground){
               if(XSpeed != 0){
                  XSpeed  = 0;
               }
            }
            
         // If the character presses (action) again, add power to the spindash accumulator.
            if(KeyAction_Pressed){
            
                 SpindashAccumulator = min( SpindashAccumulator + 2, SpindashAccumMax );
                         
               // Play Charging sound:
                  if(SpindashPitch !=    1){
                     SpindashPitch += 0.10;
                  }
                  PlaySound(snd_character_spindash_charge, global.SFXVolume, 1+SpindashPitch, 1); 
                  
               // Reset the animation:
                  if(CharacterID != CharacterAmy){
                     AnimationFrame = AnimationLoop; 
                  }
            
            }else{
            
               // Decrease power:
                 
                 if(SpindashAccumulator > SpindashAccumMin){
                    //SpindashAccumulator -= 0.10      
                    SpindashAccumulator -= (SpindashAccumulator / 1.25 )/256     
                 }else{
                    SpindashAccumulator = SpindashAccumMin;
                 }
                 
               // Reset pitch if the charging sound stopped:  
                  if(!audio_is_playing(snd_character_spindash_charge)){
                      SpindashPitch = -0.10;
                  }
                  
            }
      }
  
  // Perform the Spindash:
     if(Action = ActionCrouch && KeyAction_Pressed){
        Action              = ActionSpindash;
        SpindashAccumulator = SpindashAccumMin;         // Reset the accumulator.
        SpindashPitch       = 0;                        // Reset the pitch.
        PlaySound(snd_character_spindash_charge, global.SFXVolume, 1, 1)  // Play charging sound.
     }
  
  // When we're rolling:
     if(Action = ActionRolling && Ground){
            
        // Disable Shield usage:
           ShieldUsable = false;
                    
        // First, check the direction of the movement:
           if(XSpeed > 0){
           
              // Deaccelerate depeding on what you're pressing:
                 if(KeyLeft)  { XSpeed -= RollDecStrong+RollDecLight }
                 else
                 if(KeyRight) { XSpeed -= RollDecLight }
                 else         { XSpeed -= RollDecLight }
                 
              // Set XSpeed to 0 if we're lower than 0.
                 if(XSpeed < 0) { XSpeed = 0 }
                 
           }else
           if(XSpeed < 0){
           
              // Deaccelerate depeding on what you're pressing:
                 if(KeyLeft)  { XSpeed += RollDecLight }
                 else
                 if(KeyRight) { XSpeed += RollDecStrong+RollDecLight }
                 else         { XSpeed += RollDecLight }
                 
              // Set XSpeed to 0 if we're lower than 0.
                 if(XSpeed > 0) { XSpeed = 0 }
                 
           }

           // If the speed reached 0, stop rolling:
              if(abs(XSpeed) < .5 && LockTunnel == 0){
                 Action = ActionCrouch;
              }          
              
     }else
     if(Action = ActionRolling && !Ground){
     
        // Change the action state to jumping:
           Action        = ActionJump;      
           AmyRollJump   = true;
           JumpHeightMod = false;           
           
     }
     
  // If the character is running, on the ground and presses down, roll!
     if(Action = ActionNormal && Ground && abs(XSpeed) >= 1.03125 && KeyDown && !KeyLeft && !KeyRight){
     
        // Change the action:
           Action = ActionRolling;
       
        // Play the rolling sound:
           PlaySound(snd_character_roll, global.SFXVolume, 1, 1); 
           
        // Stop the Peelout sound:
           if(CheckSound(snd_character_peelout_release) == 1){
              StopSound(snd_character_peelout_release)
           }   
           
     }
     
  // Stop the Peelout sound while rolling:
     if(Action = ActionRolling){
                
        // Stop the Peelout sound:
           if(CheckSound(snd_character_peelout_release) == 1){
              StopSound(snd_character_peelout_release)
           }   
           
     }

     
