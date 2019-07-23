///scr_character_action_peelout();
// Script to perform the characters peelout.

   // Check if we can perform a peelout:
      if(AbilityPeelout == 1){
       
         // Get Ready to peelout:
            if(XSpeed == 0 && YSpeed == 0 && KeyUp && KeyAction_Pressed && Action != ActionPeelout){
               Action = ActionPeelout;
               PlaySound(snd_character_peelout_charge, global.SFXVolume, -1, true);                 
            }
      
         // Increase the Peelout timer:
            if(Action = ActionPeelout && Ground){
               if(PeeloutTimer < 12){
                  PeeloutTimer += 0.25;
               }else{
                  PeeloutTimer = 12;
               }
            } 

         // Perform the Peelout:
            if(Action = ActionPeelout && !KeyUp && PeeloutTimer == 12){
               Action       = ActionNormal;
               XSpeed       = AnimationDirection*12;
               PeeloutFlag  = 1;
               PeeloutTimer = 0;
               PlaySound(snd_character_peelout_release, global.SFXVolume, -1, true);        
               StopSound(snd_character_spindash_release);                          
            }
            
         // Don't trigger the Peelout:
            if(Action = ActionPeelout && !KeyUp && PeeloutTimer < 12){
               Action       = ActionNormal;
               PeeloutTimer = 0;
            }
             
      }

  // Check if the peelout flag is enabled even though we're not performing one:
     if((PeeloutFlag = 1 && abs(XSpeed) < 7) or (PeeloutFlag = 1 && Action != ActionNormal)){
        PeeloutFlag = 0;
     }
