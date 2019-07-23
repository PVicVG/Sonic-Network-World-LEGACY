///scr_character_handle_launch_sensor()
// When you collide with this sensor, launch the character up in the air. This is needed for specific slopes.
 
   // Find the Sensor:
   Sensor = instance_nearest(x, y, par_collision_launch_sensor);
     
   // Launch the Character:
   if(scr_character_collision_bottom_object(x, y, Angle, spr_mask_large, Sensor) && Ground && (Action != ActionJump)){
      if(abs(XSpeed) >= 1 && Launched == 0){  
     
         // Launch up:
            if(Sensor.Direction == 1){
               if(XSpeed >= 1 && FloorMode = 1){
                  Launched      =  1;                                  
                  Ground        =  false;                          
                  GSpeed        = XSpeed;             
                  YSpeed        = -(dsin(RelativeAngle) * GSpeed+1)                           
                  Angle         =  0;                    
                  XSpeed        =  0;                                                                                  
                  LaunchedTimer =  3;                
               }else if(XSpeed < 1 && FloorMode != 1){
                        YSpeed = -.5;
                        Ground = false;
                        Angle  = 0;
               }
            }
           
            if(Sensor.Direction == -1){
               if(XSpeed <= -1 && FloorMode = 3){
                  Launched      =  1;                                  
                  Ground        =  false;              
                  GSpeed        = XSpeed;             
                  YSpeed        = -(dsin(RelativeAngle) * GSpeed+1)                           
                  Angle         =  0;
                  XSpeed        =  0;                                                                                  
                  LaunchedTimer =  3;                
               }else if(XSpeed > -1 && FloorMode != 3){
                        YSpeed = -.5;
                        Ground = false;
                        Angle  = 0;
               }
            }            
                     
      }
 
   }
   
   // Disable any kind of horizontal force:
      if(LaunchedTimer > 0){
         LaunchedTimer -= 1;
         XSpeed = 0;
      }else{
         LaunchedTimer = 0;
      }
     
   // Disable the Launch flag:
      if(Launched == 1 && YSpeed == 0){
         Launched  = 0;
      }
      
