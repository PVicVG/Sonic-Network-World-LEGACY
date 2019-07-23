///scr_character_handle_harmful()
// Handels Harmful objects:

   // Find a enemy:
      Harmful_Enemy = scr_character_collision_object(x, y, par_enemy);
   
   // Get Hit by a enemy:
      if(Harmful_Enemy != noone){
         if(instance_exists(obj_insta_shield) != 1 && ShieldAttack != 1 && ( (Action != ActionJump && CharacterID != CharacterAmy) || (AmyRollJump != true && CharacterID = CharacterAmy) ) 
         && Action != ActionRolling && Action != ActionSpindash && Action != ActionHurt && Invincibility == 0 && Action != ActionTransform && AmyHammerAttack == 0 && Action != ActionGlide && Action != ActionHoming){
            if not (Action == ActionFly && YSpeed < 0){ 
               scr_character_action_hit(Harmful_Enemy, false);
            }
         }
      }

   // Find something harmful:
      Harmful_Main = scr_character_collision_object(x, y, par_harmful);
   
   // Get Hit or deflect a projectile:
      if(Harmful_Main != noone){
         if(Shield == ShieldDefault){
            if(instance_exists(obj_insta_shield) != 1 && Action != ActionHurt && Invincibility == 0 && Action != ActionTransform && Action != ActionFly && Action != ActionGlide && Action = ActionHoming){
               scr_character_action_hit(Harmful_Main, false);
            }
         }else{
            if(Invincibility < 1.5){
               var NewSpeed =         sqrt(sqr(Harmful_Main.hspeed) + sqr(Harmful_Main.vspeed));
               var NewAngle =         point_direction(id.x, id.y, Harmful_Main.x, Harmful_Main.y);
               Harmful_Main.hspeed =  dcos(NewAngle) * NewSpeed;
               Harmful_Main.vspeed = -dsin(NewAngle) * NewSpeed;
            }            
         }
      }      
      
   // Deflect projectiles while flying:
      if(Action == ActionFly || Action = ActionGlide){
         if(Harmful_Main != noone){
            AngleToChar         = degtorad(round(scr_character_wrap_angle(point_direction(x, y, id.x, id.y)-90)/22.5)*24);
            Harmful_Main.hspeed = sin(scr_character_wrap_angle(AngleToChar))*4;
            Harmful_Main.vspeed = cos(scr_character_wrap_angle(AngleToChar))*4; 
         }
      }
   
   // Find something harmful that is on fire:
      Harmful_Fire = scr_character_collision_object(x, y, par_harmful_fire);
   
   // Get Hit:
      if(instance_exists(obj_insta_shield) != 1 && Harmful_Fire != noone && Shield != ShieldFlames && Action != ActionTransform){
         if(Action != ActionHurt && Invincibility == 0){
            scr_character_action_hit(Harmful_Fire, false);
         }
      }            

