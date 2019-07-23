/// scr_character_action_transform()
//  Script to handlet he Transforming Action.
   
    // Check if we can Transform:
       if(Action != ActionTransform && Action = ActionJump && CharacterState == CharacterNormal && Shield = ShieldDefault && Invincibility == 0 && AllowTransformation == 1 && Action != ActionFly && Action != ActionFlydrop){
          if((global.Emeralds == 7 || global.Emeralds = 14) && global.Rings >= 50 && KeyAction_Pressed){
             Action = ActionTransform;
             Invincibility =  2;
             InvTimer      = -3;
             PlaySound(snd_character_transform, global.SFXVolume, 1, 1);
             with(obj_camera){
                  Camera_ShakeScreen   = true;
                  Camera_ShakeDuration = 40;
                  Camera_ShakeForce    = 6;
                  Camera_ShakeSound    = snd_object_crumble;
             }             
          }
       }
       
    // Transform into the Super Form:
       if(Action = ActionTransform){
          XSpeed = 0;
          YSpeed = 0;
          if(AnimationFrame >= 3){
             if(TransformTimer != 0){
                TransformTimer--
             }else{
                if(global.Emeralds == 7){
                   CharacterState = CharacterSuper;
                }else if(global.Emeralds == 14){
                         CharacterState = CharacterHyper;
                }
                Action         = ActionJump;
             }
          }
       }      
       
    // Decrease the Ring Counter and Transform back into our normal state.
       if(CharacterState == CharacterSuper or CharacterState == CharacterHyper){
          if(global.Rings != 0){
             if(alarm[0] == -1){
                alarm[0] = 60;
             }
          }else{
            // Make sure to not run the alarm event:
               alarm[0] = -1;
            // Palette fade:
               if((CharacterID = CharacterSonic) || (CharacterID == CharacterTails) || (CharacterID == CharacterKnuckles && CharacterState == CharacterHyper)){
                  TransformEnded  = 1;    
                  if(CharacterID != CharacterSonic){
                     PalettePosition = 1;       
                  }else{
                     PalettePosition = 0;
                  }
               }                  
            // Reset the Characters state:
               CharacterState = CharacterNormal;                
            // Change the animation to "BLANK" to make sure that the current animation is being reloaded.
               Animation      = "BLANK";
            // Reset the Transform Timer:
               if(CharacterID != CharacterKnuckles){
                  TransformTimer = 15;
               }else{
                  TransformTimer = 3;
               }
            // Again, change the animation to "BLANK" to make sure that the current animation is being reloaded properly.
               Animation      = "BLANK AGAIN";            
          }
       }

