/// scr_animation_apply_tail()
//  Script to apply the correct tail sprite for Miles.

    // Default:
    if(CharacterID == CharacterTails){
       switch(Animation){
              case "IDLE":
              case "IDLE_2":
              case "IDLE_3":
              case "LOOK_UP":
              case "CROUCH":
              case "SKID":
              case "SKIDTURN":
              case "PUSH":
              case "GOAL": 
              case "EDGEWOBBLE_1":
              case "EDGEWOBBLE_2":{
                    if(Animation != "GOAL"){
                       TailSprite    = spr_miles_tail_1;
                       if(Animation == "EDGEWOBBLE_1" || Animation == "EDGEWOBBLE_2"){
                          TailX      = AnimationDirection*4;
                          TailY      = -2;
                       }else{
                          TailX      = 0;
                       }
                       TailY         = 0;
                       TailDirection = AnimationDirection; 
                       TailSpeed     = 0.14;
                    }else{
                       if(AnimationFrame < 2){
                          TailSprite    = spr_miles_tail_1;
                          TailDirection = AnimationDirection;
                          TailX         = 0;
                          TailY         = 0;
                       }else{
                          TailSprite = noone;
                       }
                    }
                    break;
              }
              case "ROLL":{
                    TailSprite    = spr_miles_tail_2;
                    TailAngle     = 0;
                    TailX         = 0;
                    TailY         = 0;
                    TailDirection = sign(XSpeed);               
                   break;
              }
              case "SPINDASH":{
                    TailSprite = spr_miles_tail_2;
                    TailSpeed  = 0.50;
                    TailAngle  = 0;
                    TailX      = AnimationDirection*6;
                    TailY      = 4;                                 
                    break;
              }
              case "FLY":
              case "FLY_EXHAUSTED":{
                    TailSprite    = spr_miles_tail_3;
                    TailX         = 0;
                    TailY         = 0;
                    TailDirection = AnimationDirection;     
                    TailSpeed     = 0.25;     
                    break;          
              }
              case "RUN":{
                    if(abs(XSpeed) < 8){
                       if(TailSprite != spr_miles_tail_4){
                          TailAngle = AnimationAngle;
                       }
                       TailSprite    = spr_miles_tail_4;
                       TailX         = 0;
                       TailY         = 0;
                       TailDirection = AnimationDirection;
                    }else{
                       if(TailSprite != spr_miles_tail_5){
                          TailAngle = AnimationAngle;
                       }                    
                       TailSprite    = spr_miles_tail_5;
                       TailX         = 0;
                       TailY         = 0;
                       TailDirection = AnimationDirection;                 
                    }
                    break;
              }
              default:{
                    TailSprite = noone;
                    TailX      = 0;
                    TailY      = 0;
                    TailSpeed  = 0;
                    break;                   
              }
       }       
    }else{
       TailSprite = noone;
    }
