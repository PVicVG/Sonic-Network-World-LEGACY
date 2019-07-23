/// scr_character_handle_monitors(Collision Type);
//  Script to handle one of the main features in Sonic games. Monitors!
      
    // Check if we collide with it after jumping:
       if(argument0 == "Top"){
          Monitor = scr_character_collision_bottom_object(x, y, Angle, spr_mask_big, obj_monitor);
          if((Monitor && YSpeed >= 0 && ((Action = ActionJump && CharacterID != CharacterAmy || CharacterID == CharacterAmy && AmyHammerAttack = 3) || Action = ActionRolling || Action = ActionNormal && Animation == "ROLL"))){
                                 
             // Destroy the Monitor:
                Monitor.DestroyParent = id;
                with(Monitor) { instance_destroy(); }
                             
             // Rebound:
                if(KeyAction){
                   if(HomingUsed == true){
                      HomingUsed  = false;                    
                      XSpeed      = 0;
                   }                
                   YSpeed  *= -1; 
                   Ground  = false;
                   JumpHeightMod = false;                   
                }else{   
                   if(HomingUsed == true){
                      HomingUsed  = false;                   
                      XSpeed      = 0;
                   }                              
                   YSpeed  = max(-4, YSpeed*-1); 
                   Ground  = false;     
                   JumpHeightMod = false;                                   
                }   
                
             // If we used a shield attack deactivate it:
                if(Shield == ShieldBubble){
                   ShieldUsable = true;
                   ShieldChild.Shield_State = "default";
                }
          }            
                                       
       }
     
    // Destroy Monitors while standing on them with Amy:
       if(CharacterID == CharacterAmy){
          if((AmyHammerAttack = 1 && AnimationFrame >= 5)){
             Monitor = scr_character_collision_object(x, y, obj_monitor);
             if(Monitor != noone){

             // Destroy the Monitor:
                Monitor.DestroyParent = id;
                with(Monitor) { instance_destroy(); }  
                                        
             }
          }
       } 
                     
    // Check if we collide with it after rolling:
       if(argument0 == "Side"){       
          Monitor = instance_nearest(x, y, obj_monitor)
          if(Monitor != noone && (Action = ActionRolling || ((AmyHammerAttack == 1 && AnimationFrame > 5) || (AmyHammerAttack > 1 )) || Shield = ShieldFlames && ShieldAttack || HomingUsed == true || Action = ActionGlide || Action = ActionSlide) && (scr_character_collision_left_object(x, y, Angle, spr_mask_big, Monitor) || scr_character_collision_right_object(x, y, Angle, spr_mask_big, Monitor)  )){
             // Destroy the Monitor:
                Monitor.DestroyParent = id;
                with(Monitor) { instance_destroy(); }          
          }
                    
       }
                     
    // Check if we collide with the bottom:   
       Monitor = instance_nearest(x, y, obj_monitor)
       if(Monitor != noone && (YSpeed != 0) && (scr_character_collision_top_object(x, y, 0, spr_mask_big, Monitor))){
          if(AmyHammerAttack = 0){
             Monitor.Bump   = true;
             Monitor.YSpeed = -2;      
             Angle          = 0;
             YSpeed         = 0;
          }else{
             // Destroy the Monitor:
                Monitor.DestroyParent = id;
                with(Monitor) { instance_destroy(); }                     
          }
       }
       
       
            
       
       
