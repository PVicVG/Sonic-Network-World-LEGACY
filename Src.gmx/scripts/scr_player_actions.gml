
  // Goal State:
     scr_character_action_goal();
                
  // Transforming (Has to be triggered before the jump script.)
     if(CharacterID != CharacterAmy){
        if(CharacterID != CharacterTails){
           scr_character_action_transform();
        }else if(CharacterID == CharacterTails){
                 if(global.Emeralds == 14){
                    scr_character_action_transform(); 
                 }
        }
     }
          
  // Shields (Has to be triggered before the jump script.)
     scr_character_action_shield();

     //Mighty's hammer drop
     if (CharacterID == CharacterMighty){
     scr_character_action_hammer_drop()
     }
     
  // Insta Shield (Has to be triggered before the jump script.)
     if(CharacterID == CharacterSonic){
        scr_character_action_insta_shield()
     }
                            
  // Drop Dash (Has to be triggered before the jump script.)
     if(CharacterID == CharacterSonic){  
        scr_character_action_drop_dash();
     }
  
  // Hyper Dash (Has to be triggered before the jump script.)
     if(CharacterID == CharacterSonic){  
        scr_character_action_hyper_dash();
     }
  
  // Miles Fly/Drop Action (Has to be triggered before the jump script.)
     if(CharacterID == CharacterTails or CharacterID == CharacterRobotnik){
        scr_character_action_fly();
     }
      
     ///Robotnik's Charged Dash
     if (CharacterID == CharacterRobotnik){
     scr_player_action_charged_dash()
     } 
     
     
  // Knuckles gliding and climbing ability (Has to be triggered before the jump script.)
     if(CharacterID == CharacterKnuckles){ 
        scr_character_action_glide();
        scr_character_action_climb();
        scr_character_action_slide();
     }
       
  // Amy Hammer attacks 
     if(CharacterID == CharacterAmy){
        scr_character_action_hammer();
     }     

                 
   // Collapsing tiles have to be handled differently to prevent that the Character gets stuck or gets pushed away.
   // This is why the following code exists here. Anywhere else, we'll just get stuck and won't be able to Jump.
    if(place_meeting(x, y + YSpeed, par_collision_collapse_tiles)){
       while(!place_meeting(x, y + sign(YSpeed), par_collision_collapse_tiles)){
              y += sign(YSpeed);
       }
       Ground = true;   
    }         
                     
  // Jump:
     scr_character_action_jump();  
     
  // Look up:     
     scr_character_action_lookup();    
           
  // Crouch:
     scr_character_action_crouch();      
     
  // Spindash:   
     scr_character_action_spindash();   
           
  // Push:
     scr_character_action_push();  
     
  // Peelout:
     if(CharacterID == CharacterSonic or CharacterID == CharacterModern){
        if(AbilityPeelout == 1){
           scr_character_action_peelout();
        }
     }
     //Mighty's hammer drop
     if (CharacterID == CharacterModern or CharacterID == CharacterShadow){
     scr_player_action_homing();
     scr_player_action_lightdash();
     }
        
  // Skidding:
     scr_character_action_skid();
     
