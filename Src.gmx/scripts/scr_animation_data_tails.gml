/// scr_animation_data_tails()
//  All of Tails' Animations are stored here:
 
  // Idle Animation (Standing)
     if(Animation = "IDLE"){
        AnimationSprite      = spr_miles_idle;
        AnimationStart       = 0;
        AnimationEnd         = 0;
        AnimationLoop        = 0;
        AnimationSpeed       = 0;
        AnimationRepeat      = 0;
        AnimationRepeatTimes = 0;
        AnimationLinkedTo    = "NONE";   
     } 
        
  // Idle Animation (Blink)      
     if(Animation = "IDLE_2"){
        AnimationSprite      = spr_miles_idle;     
        AnimationStart       = 0;
        AnimationEnd         = 3;
        AnimationLoop        = 0;
        AnimationSpeed       = 0.2;
        AnimationRepeat      = 0;
        AnimationRepeatTimes = 0;
        AnimationLinkedTo    = "IDLE";       
     }  
     
  // Idle Animation (Yawn)      
     if(Animation = "IDLE_3"){
        AnimationSprite      = spr_miles_idle;     
        AnimationStart       = 4;
        AnimationEnd         = 7;
        AnimationLoop        = 6;
        AnimationSpeed       = 0.15;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";       
     }       
        
  // Lookup Animation   
     if(Animation = "LOOK_UP"){
        AnimationSprite      = spr_miles_lookup;     
        AnimationStart       = 0;
        AnimationEnd         = 0;
        AnimationLoop        = 0;
        AnimationSpeed       = 0;
        AnimationRepeat      = 0;
        AnimationRepeatTimes = 0;
        AnimationLinkedTo    = "NONE";       
     } 
        
  // Crouch Animation   
     if(Animation = "CROUCH"){
        AnimationSprite      = spr_miles_crouch;     
        AnimationStart       = 0;
        AnimationEnd         = 0;
        AnimationLoop        = 0;
        AnimationSpeed       = 0;
        AnimationRepeat      = 0;
        AnimationRepeatTimes = 0;
        AnimationLinkedTo    = "NONE";       
     }  
             
  // Walk Animation            
     if(Animation = "WALK"){
        AnimationSprite      = spr_miles_walk;
        AnimationStart       = 0;
        AnimationEnd         = 7;
        AnimationLoop        = 0;
        AnimationSpeed       = 0.10;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";       
     }
     
  // Run Animation            
     if(Animation = "RUN"){
        AnimationSprite      = spr_miles_run;         
        AnimationStart       = 0;
        AnimationEnd         = 2;
        AnimationLoop        = 0;
        AnimationSpeed       = 0.125;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";               
     }
     
  // Push Animation            
     if(Animation = "PUSH"){
        AnimationSprite      = spr_miles_push;         
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
        AnimationSprite      = spr_miles_roll;         
        AnimationStart       = 0;
        AnimationEnd         = 2;
        AnimationLoop        = 0;
        AnimationSpeed       = 0.2;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE"; 
     }  
          
  // Spindash Animation            
     if(Animation = "SPINDASH"){
        AnimationSprite      = spr_miles_spindash;         
        AnimationStart       = 0;
        AnimationEnd         = 2;
        AnimationLoop        = 0;
        AnimationSpeed       = 0.5;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";       
     }   
           
  // Peelout Animation:
     if(Animation = "PEELOUT"){
        AnimationSprite      = spr_miles_run;         
        AnimationStart       = 0;
        AnimationEnd         = 2;
        AnimationLoop        = 0;
        AnimationSpeed       = 0;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";       
     }     

  // Skidding Animation            
     if(Animation = "SKID"){
        AnimationSprite      = spr_miles_skid;         
        AnimationStart       = 0;
        AnimationEnd         = 1;
        AnimationLoop        = 1;
        AnimationSpeed       = 0.15;
        AnimationRepeat      = 0;
        AnimationRepeatTimes = 3;
        AnimationLinkedTo    = "SKIDTURN";
     }
          
  // Skid Turn:
     if(Animation = "SKIDTURN"){
        AnimationSprite      = spr_miles_skid;         
        AnimationStart       = 0;
        AnimationEnd         = 1;
        AnimationLoop        = 0;
        AnimationSpeed       = 0.15;
        AnimationRepeat      = 0;
        AnimationRepeatTimes = 1;
        AnimationLinkedTo    = "NONE";
     }    
                    
  // Rotation 1:
     if(Animation = "ROTATION_1"){
        //AnimationSprite      = spr_miles_rotation_1;         
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
        AnimationSprite      = spr_miles_spring;         
        AnimationStart       = 0;
        AnimationEnd         = 1;
        AnimationLoop        = 0;
        AnimationSpeed       = 0.1;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";
     }
           
  // Edge wobble 1 Animation            
     if(Animation = "EDGEWOBBLE_1"){
        AnimationSprite      = spr_miles_edge_balance;         
        AnimationStart       = 0;
        AnimationEnd         = 1;
        AnimationLoop        = 0;
        AnimationSpeed       = 0.15;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";
     }
           
  // Edge wobble 2 Animation            
     if(Animation = "EDGEWOBBLE_2"){
        AnimationSprite      = spr_miles_edge_balance;         
        AnimationStart       = 0;
        AnimationEnd         = 1;
        AnimationLoop        = 0;
        AnimationSpeed       = 0.15;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";
     }                          
    
  // Hurt Animation            
     if(Animation = "HURT"){
        AnimationSprite      = spr_miles_hurt;         
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
        AnimationSprite      = spr_miles_goal;         
        AnimationStart       = 0;
        AnimationEnd         = 2;
        AnimationLoop        = 1;
        AnimationSpeed       = 0.10;
        AnimationRepeat      = 0;
        AnimationRepeatTimes = 0;
        AnimationLinkedTo    = "NONE";
     }
       
  // Breath Animation            
     if(Animation = "BREATH"){
        AnimationSprite      = spr_miles_breath ;         
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
        AnimationSprite      = spr_miles_die;     
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
                          
  // Fly Animation            
     if(Animation = "FLY"){
        AnimationSprite      = spr_miles_fly;     
        AnimationStart       = 0;        
        AnimationEnd         = 4;
        AnimationLoop        = 0;
        AnimationSpeed       = 0.25;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;    
        AnimationLinkedTo    = "NONE";
     }  
                          
  // Fly exhausted Animation            
     if(Animation = "FLY_EXHAUSTED"){
        AnimationSprite      = spr_miles_fly_exhausted;     
        AnimationStart       = 0;        
        AnimationEnd         = 4;
        AnimationLoop        = 0;
        AnimationSpeed       = 0.045;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;    
        AnimationLinkedTo    = "NONE";
     }         
                          
  // Swim Animation            
     if(Animation = "SWIM"){
        AnimationSprite      = spr_miles_swim;     
        AnimationStart       = 0;        
        AnimationEnd         = 3;
        AnimationLoop        = 0;
        AnimationSpeed       = 0.25;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;    
        AnimationLinkedTo    = "NONE";
     }  
                          
  // Swim exhausted Animation            
     if(Animation = "SWIM_EXHAUSTED"){
        AnimationSprite      = spr_miles_swim_exhausted;     
        AnimationStart       = 0;        
        AnimationEnd         = 2;
        AnimationLoop        = 0;
        AnimationSpeed       = 0.10;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;    
        AnimationLinkedTo    = "NONE";
     }    
                                      
  // Transforming:
     if(Animation = "TRANSFORM"){
        AnimationSprite      = spr_miles_transform;         
        AnimationStart       = 0;
        AnimationEnd         = 3;
        AnimationLoop        = 3;
        AnimationSpeed       = 0.18;
        AnimationRepeat      = 1;
        AnimationRepeatTimes = -1;
        AnimationLinkedTo    = "NONE";        
     }             
