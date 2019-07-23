///scr_character_action_hyper_dash()
// Script to perform the Hyper Dash.

   if(CharacterState == CharacterHyper && Action = ActionJump && ShieldUsable == true){
      if(KeyAction_Pressed){
       
         // Change Flags:
         XSpeed        = 0;
         YSpeed        = 0;
         ShieldUsable  = false;
         JumpHeightMod = false;
         
         // Destroy all near enemies:
         with(par_enemy){
              if(rectangle_in_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, view_xview[0], view_yview[0], view_xview[0] + view_wview[0], view_yview[0] + view_hview[0])) {
                 instance_destroy();
              }
         }
                 
         // Sound:
         PlaySound(snd_shield_use_insta, global.SFXVolume, 1, 1);
         
         // Create Screenflash:
         with(instance_create(x, y, obj_effect_screenflash)){
              flash_color = c_white;
         }
      
         // Directions:
         if(!KeyRight && !KeyLeft && !KeyUp && !KeyDown){
            XSpeed =  AnimationDirection*8;
            YSpeed =  0;
         }
                  
         if(KeyRight && !KeyLeft && !KeyUp && !KeyDown){
            XSpeed = 8;
            YSpeed = 0;
         }
         
         if(KeyRight && !KeyLeft && KeyUp && !KeyDown){
            XSpeed =  8;
            YSpeed = -8;
         }
         
         if(KeyRight && !KeyLeft && !KeyUp && KeyDown){
            XSpeed = 8;
            YSpeed = 8;
         }
         
         if(!KeyRight && KeyLeft && !KeyUp && !KeyDown){
            XSpeed = -8;
            YSpeed =  0;
         }
                  
         if(!KeyRight && KeyLeft && KeyUp && !KeyDown){
            XSpeed = -8;
            YSpeed = -8;
         }
         
         if(!KeyRight && KeyLeft && !KeyUp && KeyDown){
            XSpeed = -8;
            YSpeed =  8;
         }
                  
         if(!KeyRight && !KeyLeft && KeyUp && !KeyDown){
            XSpeed =  0;
            YSpeed = -8;
         }
         
         if(!KeyRight && !KeyLeft && !KeyUp && KeyDown){
            XSpeed = 0;
            YSpeed = 8;
         }
                                    
      }
   }
