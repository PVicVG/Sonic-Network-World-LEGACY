///scr_character_action_ringtoss();
// Script to trigger the ring toss action.
// Credits to TPot.
 
   // Get the amount of rings, angle and speed:
      Ring_Total = min(global.Rings, 32);
      Ring_Angle = 101.25;
      Ring_Speed = 4;
      
   // Toss each ring:
      while(Ring_Total){
            RING             = instance_create(x, y-4, obj_ring)
            RING.RingTimer   = 300;
            RING.YSpeed      = -sin(degtorad(Ring_Angle))*Ring_Speed
            RING.XSpeed      = -cos(degtorad(Ring_Angle))*Ring_Speed
            RING.InMotion    = true;                 
 
            if(Ring_Total mod 2 != 0){
               Ring_Angle += 22.5;
               RING.XSpeed *= -1;               
            }
            
            Ring_Total -= 1;
            
            if(Ring_Total == 16){
               Ring_Speed  = 2;
               Ring_Angle  = 101.25;
            }
            
      }
 
   // Play the Ring Shattering Sound:
      PlaySound(snd_character_ring_drop, global.SFXVolume, 1, 1);
   
   // Set the ring variable to zero:
      global.Rings = 0;
       

