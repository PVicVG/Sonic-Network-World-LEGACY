/// scr_character_action_hammer()
//  Script to perform a Hammer attacks. (Amy only)

    // Trigger one of 3 attacks:
       if(AmyHammerAttack == 0){
       
          // Hammer Punch:
             if(Ground == true && (Action == ActionNormal || Action = ActionLookup) && Animation != "EDGEWOBBLE" && (abs(XSpeed) < 5 or KeyUp = true ) && KeySpecial_Pressed){
                if(not (Angle > 45 && Angle < 310)){
                   if(Action != ActionNormal){
                      Action  = ActionNormal;
                   }                
                   AmyHammerAttack = 1;
                }
             }
                                      
          // Hammer Spin:
             if(Ground == true && Action == ActionNormal && abs(XSpeed) >= 5 && KeyUp = false && KeySpecial_Pressed){
                if(not (Angle > 45 && Angle < 310)){             
                   AmyHammerAttack = 2;
                }                
             }
             
                                      
          // Hammer Air Dash:
             if(Ground == false && Action == ActionJump && KeySpecial_Pressed){
                Action          = ActionNormal;
                Animation       = "HAMMER_AIR"; 
                AmyHammerAttack = 3;
                if(KeyUp == true && KeyDown == false){
                   if(PhysicMode != "Underwater"){
                      YSpeed = -6;
                   }else{
                      YSpeed = -4;
                   }
                   AmyDashDirection = 1;
                }
                if(KeyUp == false && KeyDown == true){
                   YSpeed = 8;
                   AmyDashDirection = 2;                   
                }     
                if(KeyUp == true && KeyDown == true){
                   if(PhysicMode != "Underwater"){
                      YSpeed = -6;
                   }else{
                      YSpeed = -4;
                   }
                   AmyDashDirection = 1;
                }           
                if(KeyRight == true && KeyLeft == false){ 
                   AnimationDirection = 1;
                   if(XSpeed < 5){
                      XSpeed = 5
                   }
                }
                if(KeyRight == false && KeyLeft == true){ 
                   AnimationDirection = -1;
                   if(XSpeed > -5){
                      XSpeed = -5
                   }
                } 
                if(KeyRight == true && KeyLeft == true){ 
                   if(abs(XSpeed) < 5){
                      AnimationDirection = choose(1, -1);
                      XSpeed             = AnimationDirection*5
                   }
                }    
                PlaySound(snd_shield_use_insta, global.SFXVolume, 1.2, true);                            
             }             
      
       }
       
    // Stop Attacks/Perform secondary attack:
       if(AmyHammerAttack != 0){
       
         // End hammer punch:
            if(AmyHammerAttack == 1){
               if((Animation == "HAMMER_PUNCH" && AnimationFrame > 8) || (Angle > 45 && Angle < 310) || Action != ActionNormal ){
                     AmyHammerAttack = 0;
                     PlaySound(snd_object_bump, global.SFXVolume, 1.2, true);
                     // Create Hearts:
                        for(i = 0; i < 4; i++){
                            Heart = instance_create(floor(x+AnimationDirection*18), floor(y), obj_amy_heart);
                            switch(i){
                                   case 0: { Heart.Direction =   0; break; }
                                   case 1: { Heart.Direction = 180; break; }
                                   case 2: { Heart.Direction = 225; break; }
                                   case 3: { Heart.Direction = 315; break; }                                                                                                
                            }
                        }  
                     if(KeyUp = true){
                        Ground          = false;
                        AmyHammerAttack = 0;                 
                        Animation       = "HAMMER_AIR";           
                        PlaySound(snd_character_jump, global.SFXVolume, 1.2, 1);  
                        if(PhysicMode != "Underwater"){         
                           if(KeySpecial){
                              YSpeed = -8
                           }else{
                              YSpeed = -5;
                           }     
                        }else{
                           if(KeySpecial){
                              YSpeed = -5
                           }else{
                              YSpeed = -3;
                           }  
                        } 
                        // Create Hearts:
                           for(i = 0; i < 4; i++){
                               Heart = instance_create(floor(x+AnimationDirection*18), floor(y), obj_amy_heart);
                               switch(i){
                                      case 0: { Heart.Direction =   0; break; }
                                      case 1: { Heart.Direction = 180; break; }
                                      case 2: { Heart.Direction = 225; break; }
                                      case 3: { Heart.Direction = 315; break; }                                                                                                
                               }
                           } 
                        PlaySound(snd_object_bump, global.SFXVolume, 1.2, true);                                                     
                     }                                          
                  }
            }
            
         // Stop Spinning:
            if(AmyHammerAttack == 2){
               if(Ground == false || abs(XSpeed) < 5 || (Angle > 45 && Angle < 310) || Action != ActionNormal || KeySpecial == false){
                  if(Action = ActionNormal && AnimationFrame = 0){
                     AmyHammerAttack = 0;
                  }else if(Action != ActionNormal){
                           AmyHammerAttack = 0;
                  }
                  if(Ground == false && Action != ActionJump){
                     Action = ActionRolling;
                  }else if(Ground == false && Action = ActionJump){
                     AmyRollJump = true;
                  }
               } 
            }
            
         // Stop Dash:
            if((Ground && AmyHammerAttack == 3) || Action != ActionNormal){
               if(KeyDown == true && AmyDashDirection = 2 && abs(XSpeed) < 8){
                  PlaySound(snd_character_roll, global.SFXVolume, 1.1, 1);
                  if(PhysicMode != "Underwater"){
                     XSpeed = AnimationDirection*8;
                  }else{
                     XSpeed = AnimationDirection*4;                  
                  }            
                  Action           = ActionNormal;

               }       
                  AmyDashDirection = 0;          
                  AmyHammerAttack  = 0; 
            }
         
       }


