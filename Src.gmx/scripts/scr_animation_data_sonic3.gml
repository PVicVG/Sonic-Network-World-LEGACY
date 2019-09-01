/// scr_animation_data_sonic()
//  All of Sonics Animations are stored here:
 
  // Idle Animation (Standing)
     if(Animation = "IDLE"){
        AnimationSprite      = spr_sonic_idle_new;
        AnimationStart       = 0;
        AnimationEnd         = 0;
        AnimationLoop        = 0;
        AnimationSpeed       = 0;
        AnimationRepeat      = 0;
        AnimationRepeatTimes = 0;
        AnimationLinkedTo    = "NONE";      
     } 
        
  // Idle Animation (Foot tapping)      
     if(Animation = "IDLE_2"){
        AnimationSprite      = spr_sonic_idle_new;     
        AnimationStart       = 0;
        AnimationEnd         = 4;
        AnimationLoop        = 3;  
        AnimationSpeed       = 0.10;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";       
     }  
        
  // Lookup Animation   
     if(Animation = "LOOK_UP"){
        AnimationSprite      = spr_sonic_lookup_new;     
        AnimationStart       = 0;
        AnimationEnd         = 1;
        AnimationLoop        = 1;
        AnimationSpeed       = 0.15;
        AnimationRepeat      = 0;
        AnimationRepeatTimes = 0;
        AnimationLinkedTo    = "NONE";       
     } 
        
  // Crouch Animation   
     if(Animation = "CROUCH"){
        AnimationSprite      = spr_sonic_crouch_new;     
        AnimationStart       = 0;
        AnimationEnd         = 1;
        AnimationLoop        = 1;
        AnimationSpeed       = 0.15;
        AnimationRepeat      = 0;
        AnimationRepeatTimes = 0;
        AnimationLinkedTo    = "NONE";       
     }  
             
  // Walk Animation            
     if(Animation = "WALK"){
        AnimationSprite      = spr_sonic_walk_new;
        AnimationStart       = 0;
        AnimationEnd         = 7;
        AnimationLoop        = 0;
        AnimationSpeed       = 0.125;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";       
     }
     
  // Run Animation            
     if(Animation = "RUN"){
        AnimationSprite      = spr_sonic_run_new;         
        AnimationStart       = 0;
        AnimationEnd         = 3;
        AnimationLoop        = 0;
        AnimationSpeed       = 0;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";               
     }
     
  // Push Animation            
     if(Animation = "PUSH"){
        AnimationSprite      = spr_sonic_push_new;         
        AnimationStart       = 0;
        AnimationEnd         = 4;
        AnimationLoop        = 1;
        AnimationSpeed       = .12; // Changing this won't do much for you, check the pushing script.
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";       
     }
                    
  // Jump/Roll Animation            
     if(Animation = "ROLL"){
        AnimationSprite      = spr_sonic_roll_new;         
        AnimationStart       = 0;
        AnimationEnd         = 7;
        AnimationLoop        = 0;
        AnimationSpeed       = 0.2;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE"; 
     }  
          
  // Spindash Animation            
     if(Animation = "SPINDASH"){
        AnimationSprite      = spr_sonic_spindash_new;         
        AnimationStart       = 0;
        AnimationEnd         = 5;
        AnimationLoop        = 0;
        AnimationSpeed       = 0.8;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";       
     }   
           
  // Peelout Animation:
     if(Animation = "PEELOUT"){
        AnimationSprite      = spr_sonic_peelout_new;         
        AnimationStart       = 0;
        AnimationEnd         = 4;
        AnimationLoop        = 0;
        AnimationSpeed       = 0.8;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";       
     }     

  
  // Skidding Animation            
     if(Animation = "SKID"){
        AnimationSprite      = spr_sonic_skid_new;         
        AnimationStart       = 0;
        AnimationEnd         = 2;
        AnimationLoop        = 2;
        AnimationSpeed       = 0.50;
        AnimationRepeat      = 0;
        AnimationRepeatTimes = 3;
        AnimationLinkedTo    = "SKIDTURN";
     }
          
  // Skid Turn:
     if(Animation = "SKIDTURN"){
        AnimationSprite      = spr_sonic_skid_new;         
        AnimationStart       = 3;
        AnimationEnd         = 3;
        AnimationLoop        = 3;
        AnimationSpeed       = 0.50;
        AnimationRepeat      = 0;
        AnimationRepeatTimes = 1;
        AnimationLinkedTo    = "NONE";
     }    
          
  // Hanging:
     if(Animation = "HANG"){
        AnimationSprite      = spr_sonic_hang_new;         
        AnimationStart       = 0;
        AnimationEnd         = 0;
        AnimationLoop        = 0;
        AnimationSpeed       = 0;
        AnimationRepeat      = 0;
        AnimationRepeatTimes = 0;
        AnimationLinkedTo    = "NONE";
     }    
                    
  // Rotation 1:
     if(Animation = "ROTATION_1"){
        AnimationSprite      = spr_sonic_rotation_1_new;         
        AnimationStart       = 0;
        AnimationEnd         = 11;
        AnimationLoop        = 0;
        AnimationSpeed       = 0.50;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";        
     }
  
  // Spring Animation            
     if(Animation = "SPRING"){
        AnimationSprite      = spr_sonic_spring_new;         
        AnimationStart       = 0;
        AnimationEnd         = 0;
        AnimationLoop        = 0;
        AnimationSpeed       = 0;
        AnimationRepeat      = 0;
        AnimationRepeatTimes = 0;
        AnimationLinkedTo    = "NONE";
     }
           
  // Edge wobble 1 Animation            
     if(Animation = "EDGEWOBBLE_1"){
        AnimationSprite      = spr_sonic_edge_balance_new;         
        AnimationStart       = 0;
        AnimationEnd         = 2;
        AnimationLoop        = 0;
        AnimationSpeed       = 0.15;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";
     }
           
  // Edge wobble 2 Animation            
     if(Animation = "EDGEWOBBLE_2"){
        AnimationSprite      = spr_sonic_edge_balance_new;         
        AnimationStart       = 3;
        AnimationEnd         = 5;
        AnimationLoop        = 3;
        AnimationSpeed       = 0.12;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";
     }                          
    
  // Hurt Animation            
     if(Animation = "HURT"){
        AnimationSprite      = spr_sonic_hurt_new;         
        AnimationStart       = 0;
        AnimationEnd         = 1;
        AnimationLoop        = 0;
        AnimationSpeed       = 0.10;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = 0;
        AnimationLinkedTo    = "NONE";
     }
    
  // Goal Animation            
     if(Animation = "GOAL"){
        AnimationSprite      = spr_sonic_goal_new;         
        AnimationStart       = 0;
        AnimationEnd         = 4;
        AnimationLoop        = 1;
        AnimationSpeed       = 0.10;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";
     }
    
  // Goal (Finish) Animation            
     if(Animation = "GOAL_FINISH"){
        AnimationSprite      = spr_sonic_goal_finish_new;         
        AnimationStart       = 0;
        AnimationEnd         = 4;
        AnimationLoop        = 1;
        AnimationSpeed       = 0.10;
        AnimationRepeat      = 0;
        AnimationRepeatTimes = 0;
        AnimationLinkedTo    = "IDLE";
     }       
  // Breath Animation            
     if(Animation = "BREATH"){
        AnimationSprite      = spr_sonic_breath_new ;         
        AnimationStart       = 0;
        AnimationEnd         = 0;
        AnimationLoop        = 0;
        AnimationSpeed       = 0;
        AnimationRepeat      = 0;
        AnimationRepeatTimes = 0;
        AnimationLinkedTo    = "NONE";
     }
                          
  // Die Animation            
     if(Animation = "DIE"){
        AnimationSprite      = spr_sonic_die_new;     
        if(HasDrowned == false){   
           AnimationStart       = 0;        
           AnimationEnd         = 0;
           AnimationLoop        = 0;
           AnimationSpeed       = 0;
           AnimationRepeat      = 0;
           AnimationRepeatTimes = 0; 
        }else{
           AnimationStart       = 1;
           AnimationEnd         = 1;
           AnimationLoop        = 1;
           AnimationSpeed       = 0;
           AnimationRepeat      = 0;
           AnimationRepeatTimes = 0;        
        }       
        AnimationLinkedTo    = "NONE";
     }
                              
  // Drop Dash Animation            
     if(Animation = "DROPDASH"){
        AnimationSprite      = spr_sonic_drop_dash_new;         
        AnimationStart       = 0;
        AnimationEnd         = 5;
        AnimationLoop        = 0;
        AnimationSpeed       = 0.6;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";       
     }  
                                
  // Transforming:
     if(Animation = "TRANSFORM"){
        AnimationSprite      = spr_sonic_transform_new;         
        AnimationStart       = 0;
        AnimationEnd         = 4;
        AnimationLoop        = 3;
        AnimationSpeed       = 0.18;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";        
     }             
