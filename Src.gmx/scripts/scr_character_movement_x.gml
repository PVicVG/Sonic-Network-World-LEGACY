///scr_character_movement_x();
// Handle a part of the X/Horizontal Movement.

   // Exit if we don't allow the manipulating of the horizontal/x speed.
      if(Allow_XMovement == false)
         exit;
         
   // Decelerate on slopes:
      if(Action != ActionSlide){
      if(Action = ActionRolling && Ground){
         // The Character is rolling up a slope:
            if((RelativeAngle < 180 && XSpeed > 0) || (RelativeAngle > 180 && XSpeed < 0)){
               XSpeed -= sin(degtorad(RelativeAngle)) * Rolling_Deceleration_Up;
            }else{
         // The Character is rolling down a slope:  
               XSpeed -= sin(degtorad(RelativeAngle)) * Rolling_Deceleration_Down;
            }
      }else{      
      // Deaccelerate normally:
         if(Ground && ((RelativeAngle > 45-10 && RelativeAngle < 320+10) || round(XSpeed) != 0 || InputAlarm != 0)){
            XSpeed -= sin(degtorad(RelativeAngle)) * 0.125;
         }
      }
      }
   
   // Only continue if we're in one of the following states:
      if((Action == ActionNormal || Action = ActionSkid || (Action = ActionJump && JumpLock == false) || Action = ActionFly || Action = ActionFlydrop || Action = ActionSpring || Action = ActionGlidedrop) && (Action != ActionGlide && Action != ActionClimb && Action != ActionSlide)){
      
         // Handle Accel/Deceleration.
            if(Ground && InputAlarm <= 0){
               if(KeyLeft == true){
                  if(XSpeed > 0)
                     XSpeed -= _Decel;
                  else
                  if(XSpeed > -XSpeed_Top)
                     XSpeed -= _Accel;
               }else
               if(KeyRight == true){
                  if(XSpeed < 0)
                     XSpeed += _Decel;
                  else
                  if(XSpeed < XSpeed_Top)
                     XSpeed += _Accel;
               }else { XSpeed -= min(abs(XSpeed), _Fric)*sign(XSpeed); }
               /* Friction / Deceleration when no key is pressed:
                  if(!KeyRight && !KeyLeft){
                      XSpeed = max(abs(XSpeed) - _Fric, 0) * sign(XSpeed);
                  } */            
                               
            }else{         
               
               // Air Cap:
                  if(YSpeed > 16){ 
                     YSpeed = 16
                  }
                  
               // Air Acceleration:
                  if(KeyRight){
                     // When you're flying with Miles:
                        if(Action == ActionFly || Action == ActionFlydrop || Action = ActionGlidedrop){
                           if(XSpeed < 0){
                              XSpeed += _Accel;
                           }else if(XSpeed < XSpeed_Top){
                                    XSpeed += AirAccel;
                           }
                        }else{
                          XSpeed += AirAccel;
                        }
                  }
               
                  if(KeyLeft){
                     // When you're flying with Miles:
                        if(Action == ActionFly || Action == ActionFlydrop || Action = ActionGlidedrop){
                           if(XSpeed > 0){
                              XSpeed -= _Accel;
                           }else if(XSpeed > -XSpeed_Top){
                                    XSpeed -= AirAccel;
                           }
                        }else{
                          XSpeed -= AirAccel;
                        }
                  }
                  
               // When we're Super and in air, limit the horizontal speed so we don't break the game...
                  if(CharacterState = CharacterSuper or CharacterState = CharacterHyper){
                     if(XSpeed > 16 ){
                        XSpeed = 16
                     }
                     if(XSpeed < -16 ){
                        XSpeed = -16
                     }                     
                  }    
                        
            }
                                      
      }  

   // Fall if there isn't enough Speed:   
      if(RelativeAngle > 45 && RelativeAngle <= 315 && Ground && abs(XSpeed) < 2.5 && LockTunnel = 0){
         if(RelativeAngle >= 90 && RelativeAngle <= 270){
            YSpeed = -sin(degtorad(RelativeAngle))*XSpeed;
            XSpeed =  cos(degtorad(RelativeAngle))*XSpeed;
            Ground = false;
         }else{
               InputAlarm     = 40;
               if(AlarmDirection = 0){
                  AlarmDirection = AnimationDirection;
               }
         }
      } 
      

   // Get new Angle:
      if(Ground &&  scr_character_collision_left_edge(x, y, Angle)
                && scr_character_collision_right_edge(x, y, Angle)){
         scr_character_angle(scr_character_calculate_angle(x, y, Angle));
      }else{
         scr_character_angle(global.GravityAngle);
      }
    
   // Full stop when we're colliding with a wall:
      if(XSpeed > 0 && scr_character_collision_right(x, y, Angle, spr_mask_big)){
         XSpeed = 0;
      }
      if(XSpeed < 0 && scr_character_collision_left(x, y, Angle, spr_mask_big)){
         XSpeed = 0;
      }   
      
