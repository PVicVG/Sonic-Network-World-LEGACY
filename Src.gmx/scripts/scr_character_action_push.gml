///scr_character_action_push();
// Script to perform the characters pushing action.

   // Create collision variables:
      var PushCol_Right;
      var PushCol_Left;
      var PushCol_RightSpecial;
      var PushCol_LeftSpecial;      
          PushCol_Right        =        scr_character_collision_right(x, y, Angle, spr_mask_big);
          PushCol_Left         =        scr_character_collision_left (x, y, Angle, spr_mask_big);          
          PushCol_RightSpecial = scr_character_collision_right_object(x, y, Angle, spr_mask_big, par_collision_pushable);
          PushCol_LeftSpecial  =  scr_character_collision_left_object(x, y, Angle, spr_mask_big, par_collision_pushable);
          
   // Stop Pushing:
      if(Action = ActionPush){
         if((( PushCol_Left && !KeyLeft && !PushCol_Right) || (PushCol_Right && !KeyRight && !PushCol_Left) || (!PushCol_Right && !PushCol_Left))){
            Action        = ActionNormal;
            Pushing_Timer = 0;
         } 
      }
          
   // Trigger Pushing:
      if(Ground && YSpeed == 0){
         if(Action != ActionSpindash && Action != ActionLookup && Action != ActionCrouch){
            if(Pushing_Timer >= Pushing_Timer_Max){
               AnimationSpeed = 0.15;            
               Action         = ActionPush;
            }else{
               if(PushCol_Right && KeyRight) { Pushing_Timer += 0.50; }
               if(PushCol_Left  && KeyLeft)  { Pushing_Timer += 0.50; }               
            }
         }
      }    

   // Move a pushable block:
      if(PushCol_RightSpecial && Action = ActionPush && AnimationFrame > 1){
         
         XSpeed = PushCol_RightSpecial.PushSpeed;                     
         with(PushCol_RightSpecial){
              if(place_meeting(x+1, y, par_collision_solid) == false){
                 x+=PushCol_RightSpecial.PushSpeed;
              }
         }           
      }
      if(PushCol_LeftSpecial && Action = ActionPush && AnimationFrame > 1){
         XSpeed = -PushCol_LeftSpecial.PushSpeed;            
         with(PushCol_LeftSpecial){
              if(place_meeting(x-1, y, par_collision_solid) == false){
                 x-=PushCol_LeftSpecial.PushSpeed;
              }
         }          
      }
           
   // Change the Pushing Animation:
      if(Action = ActionPush && AnimationFrame > 1){
         if(CharacterID != CharacterSonic && (CharacterState != CharacterSuper or CharacterState != CharacterHyper)){
            if(AnimationSpeed != 0.05){
               AnimationSpeed  = 0.05;
            }
         }else{
            if(AnimationSpeed != 0.10){
               AnimationSpeed  = 0.10;
            }               
         }
      }
