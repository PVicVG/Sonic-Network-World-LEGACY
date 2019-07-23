/// scr_character_handle_bosses()
//  Script to handle each boss.

    // Set F.Breather handle:
    if(instance_exists(obj_npc_sth3_firebreather)){
    
       FireBreather   = scr_character_collision_object(x, y, obj_npc_sth3_firebreather);
       FBreatherFlame = scr_character_collision_object(x, y, obj_npc_sth3_firebreather_flame);
       
    // Hit/Destroy Breather:
       if(FireBreather != noone && (Action != ActionHurt && Action != ActionDie)){
          if(FireBreather.Boss_State != 'Defeated'){
          
          // Bounce:
             if(Action = ActionJump || Action = ActionRolling || (Action = ActionFly && YSpeed < 0) || Action = ActionGlide) && !FireBreather.Boss_Harmful{
                Action       = ActionRolling;
                ShieldUsable = false;
                    
             AngleToBoss = degtorad(round(scr_character_wrap_angle(point_direction(x, y, FireBreather.x, FireBreather.y)-90)/22.5)*24);        
             if(Underwater == false){
                XSpeed        = sin(scr_character_wrap_angle(AngleToBoss-global.GravityAngle))*4;
                YSpeed        = cos(scr_character_wrap_angle(AngleToBoss-global.GravityAngle))*3;  
             }else{
                XSpeed        = sin(scr_character_wrap_angle(AngleToBoss-global.GravityAngle))*2;
                YSpeed        = cos(scr_character_wrap_angle(AngleToBoss-global.GravityAngle))*1.5;           
             }
             Ground        = false;    
            
             if(Action == ActionFly){
                // Check if the vertical speed is way too much:
                   if(YSpeed < -3){
                      YSpeed = -3;
                   }
             }  
          
          // Hurt Boss:
             with(FireBreather){
                  if(Boss_HP != 0 && Boss_State == 'Normal'){
                     Boss_State = 'Hit';   
                     Boss_HP--;        
                     PlaySound(snd_object_destroy, global.SFXVolume, 1, 1);       
                  }
             }
             
             }else if(Action != ActionHurt && Action != ActionDie && Invincibility == 0){
                      scr_character_action_hit(FireBreather, false);             
             }   
             
          }           
       }
       // Get Hurt by Flames:
          if(FBreatherFlame != noone && (Action != ActionHurt && Action != ActionDie && Invincibility == 0 && Shield != ShieldFlames)){      
             scr_character_action_hit(FBreatherFlame, false);
          } 
       
    }

    // Set the Knuckles handle:
    if(instance_exists(obj_npc_sth3_knuckles)){
           
       Knux[1] = scr_character_collision_bottom_object(x, y, Angle, spr_mask_big, obj_npc_sth3_knuckles);          
       Knux[2] =   scr_character_collision_left_object(x, y, Angle, spr_mask_big, obj_npc_sth3_knuckles);
       Knux[3] =  scr_character_collision_right_object(x, y, Angle, spr_mask_big, obj_npc_sth3_knuckles);          
       Knux[4] =    scr_character_collision_top_object(x, y, Angle, spr_mask_big, obj_npc_sth3_knuckles); 
       Knux[5] = scr_character_collision_object(x, y, obj_npc_sth3_knuckles);
                                              
    // Hurt Knuckles:   
       if(Action = ActionJump && (Knux[1] != noone || Knux[4] != noone) && (Knux[2] == noone && Knux[3] == noone)){
              
          with(obj_npc_sth3_knuckles){
          
            // Hurt Knuckles:
               if(Knuckles_State != 'Hurt' && Knuckles_InvTime == 60){
                  Knuckles_State  = 'Hurt';
                  Knuckles_HP--
          
               // Hurt Sound:
                  PlaySound(snd_character_hurt, global.SFXVolume, 1, 1);                      
               }
           
          }
      
       }
       
    // Get Hurt:
       if(Knux[1] == noone && (Knux[2] != noone || Knux[3] != noone) && (Action != ActionHurt && Action != ActionDie && Invincibility == 0)){
          if(obj_npc_sth3_knuckles.Knuckles_State != "Spindash" && obj_npc_sth3_knuckles.Knuckles_State != "Roll" && obj_npc_sth3_knuckles.Knuckles_State != "Glide" 
          && obj_npc_sth3_knuckles.Knuckles_InvTime == 60 && obj_npc_sth3_knuckles.Knuckles_State != "Hurt" && (Action == ActionJump)){   
             // Bounce:
                AngleToBoss = degtorad(round(scr_character_wrap_angle(point_direction(x, y, obj_npc_sth3_knuckles.x, obj_npc_sth3_knuckles.y)-90)/22.5)*24);        
                if(Underwater == false){
                   XSpeed        = sin(scr_character_wrap_angle(AngleToBoss-global.GravityAngle))*4;
                   YSpeed        = cos(scr_character_wrap_angle(AngleToBoss-global.GravityAngle))*4;  
                }else{
                   XSpeed        = sin(scr_character_wrap_angle(AngleToBoss-global.GravityAngle))*2.5;
                   YSpeed        = cos(scr_character_wrap_angle(AngleToBoss-global.GravityAngle))*2.5;           
               }
                   Ground        = false;             
           }else{
            if(obj_npc_sth3_knuckles.Knuckles_State != "Hurt"){
               scr_character_action_hit(obj_npc_sth3_knuckles, false);
            }
          }
       } 
    
   // Hurt knuckles when Super/Hyper.
      if(Knux[5] != noone && CharacterState != CharacterNormal){
         // Hurt Knuckles:
            if(obj_npc_sth3_knuckles.Knuckles_State != 'Hurt' && obj_npc_sth3_knuckles.Knuckles_InvTime == 60){
               obj_npc_sth3_knuckles.Knuckles_State  = 'Hurt';
               obj_npc_sth3_knuckles.Knuckles_HP--
          
               // Hurt Sound:
                  PlaySound(snd_character_hurt, global.SFXVolume, 1, 1);                      
            }      
      }
             
    }

    
