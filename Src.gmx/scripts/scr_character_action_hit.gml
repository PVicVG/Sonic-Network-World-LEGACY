///scr_character_action_hit(Hurt handler, Spike?)
// Script to execute the Characters hurt state.

   // Only run if the following is true
      if(Action != ActionHurt || Action != ActionDie || Invincibility = 0 || !instance_exists(obj_insta_shield)){

   // Init. Object that hurt us:
      var HurtHandler;
          HurtHandler = argument0;
          
   // If we have rings, get hurt and create a ring drop:
      if(global.Rings > 0 || Shield != ShieldDefault){
         
          // Set the state to Hurt:
             Action        = ActionHurt;
             Invincibility =  1;
             InvTimer      = -1;
             
          // Rebound off the hurtable:
             if(Underwater == false){
                YSpeed = -4;
                Ground = false;
                XSpeed = 2*sign(x-HurtHandler.x)   
             }else{
                YSpeed = -2;
                Ground = false;
                XSpeed = 1*sign(x-HurtHandler.x)
             }
              
          // Play Hurt Sound:
             if(argument1 != false){
                PlaySound(snd_character_hit_spike, global.SFXVolume, 1, 1);
             }else{
                PlaySound(snd_character_hurt, global.SFXVolume, 1, 1);
             }
          
          // Create Ring Drop (f we have no shield):
             if(Shield == ShieldDefault){
                scr_character_action_ringtoss();
             }          
             
      }else{
       AmyHammerAttack = 0;
       Action = ActionDie;
      }
      
      }

      


