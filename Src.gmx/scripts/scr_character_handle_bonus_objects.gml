///scr_character_handle_bonus_objects()
// Script to handle objects in Bonus Stages.

   /* Gumball Machine: */
   ///////////////////////////////////////////////////////////////////////////
   
   if(room = rm_bonus_gumball){
   
   // Bumper:
      Bumper = scr_character_collision_object(x, y, obj_bonus_gumball_bumper);
      if(Bumper != noone && YSpeed != -6){
         Action = ActionSpring;
         XSpeed = Bumper.image_xscale*3;
         YSpeed = -6;   
         with(Bumper){
              instance_destroy()
              PlaySound(snd_object_spring, global.SFXVolume, 1, 1);
         }  
      }
      
   // Machine Rod:   
      Rod  = scr_character_collision_object(x, y, obj_bonus_gumball_rod);
      if(Rod != noone){
         if(Rod.image_index = 0 && Rod.Triggered == false && Rod.alarm[0] = -1){
            Rod.Triggered = true;
            PlaySound(snd_object_machine_rod, global.SFXVolume, 1, 1);
         }
      }
      
   // Gumball:   
      Gumball  = scr_character_collision_object(x, y, obj_bonus_gumball);
      if(Gumball != noone){
         if(Gumball.image_index != 1){
            with(Gumball){
                 Collected = 1;
                 instance_destroy();
            }
         }else{
            if(YSpeed > 0 || YSpeed < 3){
               PlaySound(snd_object_bump, global.SFXVolume, 1, 1);
               YSpeed = -6;
            }
         }
      }      
      
      
   }
   
   ///////////////////////////////////////////////////////////////////////////
