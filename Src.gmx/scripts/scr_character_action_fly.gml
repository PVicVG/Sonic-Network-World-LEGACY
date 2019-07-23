///scr_character_action_fly()
// Script to perform Miles flying ability.

   if(Action != ActionTransform){
   
   if(Action == ActionFly){
    
      // Set the Flight timer:
         FlightTimer = min(FlightTimer+1, FlightDuration);
         if(FlightTimer == FlightDuration){
            Action        = ActionFlydrop;
            if(YSpeed == 0 || YSpeed < 0){
               YSpeed = 0.03125;
            }
            YAcceleration = 0.03125;
         }

      // Fly up:
         if(Action != ActionFlydrop){
            if(KeyAction_Pressed && YSpeed > -1){
               YAcceleration = -0.125;
            }else if(YSpeed < -1){
               YAcceleration = 0.03125;
            }
         }
         
      // Fix getting stuck on terrain:
         if(scr_character_collision_top(x, y, Angle, spr_mask_main) == true && YSpeed == 0){
            YAcceleration = 0.03125;
         }
         
   }else{
   
      // Trigger Flying:
         if(!Ground && (Animation == "ROLL") && KeyAction_Pressed && ShieldUsable == true){
            Action        = ActionFly;
            FlightTimer   = 0;
            YAcceleration = 0.03125;
         }
      
   }
     
   // Sounds:
      if(Action = ActionFly && !Underwater){
         if(CheckSound(snd_character_flying) == false){
            LoopSound(snd_character_flying, global.SFXVolume, 1);
         }
         if(CheckSound(snd_character_flying_fall) == true){
            StopSound(snd_character_flying_fall);
         }
      }
      if(Action = ActionFlydrop && !Underwater){
         if(CheckSound(snd_character_flying_fall) == false){
            LoopSound(snd_character_flying_fall, global.SFXVolume, 1);
         }
         if(CheckSound(snd_character_flying) == true){
            StopSound(snd_character_flying);
         }
      }
      if((Action != ActionFly && Action != ActionFlydrop) || Underwater){
         if(CheckSound(snd_character_flying) == true){
            StopSound(snd_character_flying);
         }
         if(CheckSound(snd_character_flying_fall) == true){
            StopSound(snd_character_flying_fall);
         }         
      }
      
   }

