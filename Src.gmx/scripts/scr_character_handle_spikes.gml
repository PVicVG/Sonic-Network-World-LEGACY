///scr_character_handle_spikes()
// Handels Spikes:

   // Find a Spike that hurts you on the top:
      Harmful_Spike_Up = scr_character_collision_bottom_object(x, y, 0, spr_mask_big, obj_spike_up);
   
   // Get Hit by the Spike:
      if(Harmful_Spike_Up != noone && Ground){
         if(Action != ActionHurt && Invincibility == 0 && Action != ActionTransform){
            scr_character_action_hit(Harmful_Spike_Up, true);
         }
      }

   // Find a Spike that hurts you on the bottom:
      Harmful_Spike_Down = scr_character_collision_top_object(x, y, 0, spr_mask_big, obj_spike_down);
   
   // Get Hit by the Spike:
      if(Harmful_Spike_Down != noone){
         if(Action != ActionHurt && Invincibility == 0 && Action != ActionTransform){
            scr_character_action_hit(Harmful_Spike_Down, true);
         }
      }      

   // Find a Spike that hurts you on the left:
      Harmful_Spike_Left = scr_character_collision_right_object(x, y, 0, spr_mask_big, obj_spike_left);
   
   // Get Hit by the Spike:
      if(Harmful_Spike_Left != noone){
         if(Action != ActionHurt && Invincibility == 0 && Action != ActionTransform){
            scr_character_action_hit(Harmful_Spike_Left, true);
         }
      }

   // Find a Spike that hurts you on the bottom:
      Harmful_Spike_Right = scr_character_collision_left_object(x, y, 0, spr_mask_big, obj_spike_right);
   
   // Get Hit by the Spike:
      if(Harmful_Spike_Right != noone){
         if(Action != ActionHurt && Invincibility == 0 && Action != ActionTransform){
            scr_character_action_hit(Harmful_Spike_Right, true);
         }
      }         
