Harmful_Main = self.id;
   
         if(Shield == ShieldDefault){
            if(instance_exists(obj_insta_shield) != 1 && Action != ActionHurt && Invincibility == 0 && Action != ActionTransform && Action != ActionFly && Action != ActionGlide){
               scr_character_action_hit(Harmful_Main, false);
            }
         }else{
            if(Invincibility < 1.5){
               var NewSpeed =         sqrt(sqr(Harmful_Main.hspeed) + sqr(Harmful_Main.vspeed));
               var NewAngle =         point_direction(id.x, id.y, Harmful_Main.x, Harmful_Main.y);
               Harmful_Main.hspeed =  dcos(NewAngle) * NewSpeed;
               Harmful_Main.vspeed = -dsin(NewAngle) * NewSpeed;
            } } 
