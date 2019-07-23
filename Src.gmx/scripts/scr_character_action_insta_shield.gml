/// scr_character_action_insta_shield()
//  Script to exeucte the insta shield.

   // Only run if we have no shield:
      if(Shield == ShieldDefault && CharacterState = CharacterNormal && Invincibility == 0 && Action = ActionJump){
         if(ShieldUsable == true){
            if(KeyAction_Pressed){
               ShieldUsable = false;
               INSTA = instance_create(floor(x), floor(y), obj_insta_shield)
               INSTA . Parent = id;

            }
         }
      }
