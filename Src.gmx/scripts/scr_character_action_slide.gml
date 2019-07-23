/// scr_character_action_slide()
// Script for Knuckles slide.

   if(Action = ActionSlide){
   
      // Slide sound:
         if(CheckSound(snd_character_slide) == false){
            LoopSound(snd_character_slide, global.SFXVolume, 1);
         }
         
      // Decelerate:
         if(XSpeed > 0){
            XSpeed = max(XSpeed-0.125, 0)
         }else if(XSpeed < 0){
            XSpeed = min(XSpeed+0.125, 0)
         }
         
      // Dust Effect:
         if(FramesCount mod 5 == 0 && XSpeed != 0){
            instance_create(x, y+13, obj_skid_dust);  
         }  
               
      // Get up:
         if(XSpeed == 0){
           if(AnimationFrame == 0){
              AnimationFrame = 1;
           }
           if(AnimationFrame < 2){
              AnimationFrame += 0.10;
           }else{
              Action = ActionNormal;
           }
         }
         
      // Cancel if we're no longer on ground. 
         if(!Ground){
            Action = ActionRolling;
         }
             
   }
   
// Stop Sound.   
   if(Action != ActionSlide && CheckSound(snd_character_slide) == true){
      StopSound(snd_character_slide);
   }

