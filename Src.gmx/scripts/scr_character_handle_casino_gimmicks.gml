/// scr_character_handle_casino_gimmicks()
//  Script that handles each casino gimmick.

    // Set Bumper handle:
       BumperHandle = scr_character_collision_object(x, y, obj_casino_bumper);
 
    // Normal Bumper:
       if(BumperHandle != noone){
          if(Action       = ActionJump){
             Action       = ActionRolling;
             ShieldUsable = false;
          }                    
          AngleToBumper = degtorad(round(scr_character_wrap_angle(point_direction(x, y, BumperHandle.x, BumperHandle.y)-90)/22.5)*24);        
          if(Underwater == false){
             if(Action != ActionGlide){
                XSpeed = sin(scr_character_wrap_angle(AngleToBumper-global.GravityAngle))*8;
             }
                YSpeed = cos(scr_character_wrap_angle(AngleToBumper-global.GravityAngle))*8;
          }else{
             if(Action != ActionGlide){          
                XSpeed = sin(scr_character_wrap_angle(AngleToBumper-global.GravityAngle))*4;
             }
                YSpeed = cos(scr_character_wrap_angle(AngleToBumper-global.GravityAngle))*4;                  
          }
          Ground        = false;    
          if(Action == ActionFly || Action == ActionFlydrop){
             // Check if the vertical speed is way too much:
                if(YSpeed < -3){
                   YSpeed = -3;
                }
          }  
          if(BumperHandle.BumperState == 0){
             BumperHandle.BumperState = 1;  
             if(BumperHandle.ScoreGiven != 10){          
                with(instance_create(BumperHandle.x, BumperHandle.y, obj_effect_score)){               
                     image_index   =  0;
                }                       
             }        
          }
       }
    

