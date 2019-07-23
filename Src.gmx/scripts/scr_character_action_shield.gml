///scr_character_action_shield()
// Handles each shield ability!
   
   // Cool Down:              
      if(ShieldCoolDown > 0)
      {
         ShieldCoolDown--;
      }
      
   // Stop Electro spam:
      if(Shield == ShieldElectricity)
      {
         if(instance_exists(obj_electricity_spark) && YSpeed >= 0){
            ShieldUsable = false;
         }   
      }   
               
   // Only run if we're not invincible:
      if(Invincibility < 1.5){
   
   // Destroy a shield if hurt:
      if(Action = ActionHurt && Shield != ShieldDefault){
         Shield = ShieldDefault;
         with(ShieldChild){
              instance_destroy();
         }
      }
      
   // Destroy the Fire or Electricity shield in water.
      if(global.BonusShield == 0){
         if(Underwater == true){
            if(Shield == ShieldFlames or Shield = ShieldElectricity){
               if(alarm[1] = -1){
                  alarm[1] = 5;
               }
            }
         }
      }
      
   // Create a Shield:
      if(Shield != ShieldDefault){
      
      // Bubble:
         if(Shield == ShieldBubble){            
            if(instance_exists(obj_shield_bubble) == false){ 
               ShieldChild = instance_create(x, y, obj_shield_bubble);      ShieldChild.Parent = id; }
         }
         
      // Flame:         
         if(Shield == ShieldFlames){
            if(instance_exists(obj_shield_flame) == false){ 
               ShieldChild = instance_create(x, y, obj_shield_flame);       ShieldChild.Parent = id; }
         }
         
      // Electro:         
         if(Shield == ShieldElectricity){
            if(instance_exists(obj_shield_electricity) == false){ 
               ShieldChild = instance_create(x, y, obj_shield_electricity); ShieldChild.Parent = id; }
         }       
                  
      }
      
   
   // Shield Attack:
      if(ShieldUsable == true && CharacterID == CharacterSonic && global.BonusStage == false){
         if(!Ground && Animation = "ROLL" && KeyAction_Pressed){
         
            // ----------------------------------------------------------------------------------- //        
                           
            // Flame Shield:
               if(Shield == ShieldFlames){
               
                  // Set the Shield to Dashing:
                     ShieldChild.Shield_State = "dash";
                     ShieldChild.image_xscale = 0;
                     ShieldUsable             = false;
                  
                  // Play Shield sound:  
                     PlaySound(snd_shield_use_flame, global.SFXVolume, -1, true); 
                  
                  // Set the X Speed and Y Speed:
                     XSpeed = AnimationDirection*8;
                     YSpeed = 0;
                                    
                  // Camera Lag:
                     obj_camera.Cam_Lag = 140;
                     
                  // Enable the Attack flag:
                     ShieldAttack = 1;
                         
               }
               
            // ----------------------------------------------------------------------------------- //              
                     
            // Electro Shield:
               if(Shield == ShieldElectricity){  
               
                  // Set the Y Speed.
                     YSpeed = -5.5;
                     
                  // Prevent that we can trigger shields again:
                     ShieldUsable = false;
                     
                  // Play Shield sound:  
                     PlaySound(snd_shield_use_electricity, global.SFXVolume, -1, true)
                     
                  // Set Cooldown:
                     ShieldCoolDown = 15;
                     
                  // Create Electric Sparks:
                     for(i = 0; i < 4; i++){
                         Spark = instance_create(floor(x-3), floor(y), obj_electricity_spark);
                         switch(i){
                                case 0: { Spark.Direction =   0; break; }
                                case 1: { Spark.Direction = 180; break; }
                                case 2: { Spark.Direction = 225; break; }
                                case 3: { Spark.Direction = 315; break; }                                                                                                
                         }
                     }   
                     
               }

            // ----------------------------------------------------------------------------------- //                           
                     
            // Bubble Shield:
               if(Shield == ShieldBubble){  
               
                  // Set the Y Speed.
                     XSpeed = 0;
                     YSpeed = 8;
                     
                  // Prevent that we can trigger shields again:
                     ShieldUsable = false;
                       
                  // Set the Init. Frame of the Shield:
                     ShieldChild.image_index = 5;
                     ShieldChild.Shield_State = "bounce";
                     ShieldChild.BubbleAnimate = false;
                                    
                  // Enable the Attack flag:
                     ShieldAttack = 1;
                                       
               }
               
            // ----------------------------------------------------------------------------------- //              
                                          
         }
      }
      
   // Change the Shield state when grounded:
      if(Ground){
         
         // Disable the Attack Flag:
            ShieldAttack = 0;
            
         // Stop the flame shield dash:
            if(Shield == ShieldFlames){
               if(ShieldChild.Shield_State == "dash") { ShieldChild.Shield_State = "default"; }
            }
        
         // Bounce when we land on ground with the bubble shield!
            if(Shield == ShieldBubble){                   
               if(ShieldChild.Shield_State == "bounce" && ShieldUsable == false) { 
                  if(ShieldChild.sprite_index != spr_shield_bubble_action){      
                     ShieldChild.sprite_index  = spr_shield_bubble_action;
                     ShieldChild.image_index   = 3;                                           
                     ShieldChild.BounceAnimate = true;
                  }               
                  if(PhysicMode != "Underwater"){
                     if(KeyAction && global.Key_ACTION_HeldTimer > 4){
                        YSpeed = -7.5
                        ShieldAttack = 1;
                     }else{
                        YSpeed = -3.75;
                        ShieldAttack = 1;                        
                     }
                     XSpeed =  (cos(degtorad(RelativeAngle)) * XSpeed) + (sin(degtorad(RelativeAngle)) * YSpeed );    
                  }else{
                     if(KeyAction == true){
                        YSpeed = -3.75
                        ShieldAttack = 1;                         
                     }else{
                        YSpeed = -1.875;
                        ShieldAttack = 1;                         
                     }
                     XSpeed =  (cos(degtorad(RelativeAngle)) * XSpeed) + (sin(degtorad(RelativeAngle)) * YSpeed );                               
                  }
                  Ground = false;
                  RenderingSpeed = 0.25;       
                  AnimationSpeed = 0.25;
                  ShieldUsable = true;         
                  PlaySound(snd_shield_use_bubble, global.SFXVolume, -1, true)
               }else
               if(ShieldChild.Shield_State == "bounce" && ShieldUsable == true) {
                  ShieldChild.Shield_State = "default";
               }                
            }
                             
      }
      
   // Should we hit a spring...
      if(Action = ActionSpring){
      
         // Don't bounce with the bubble shield:
            if(Shield = ShieldBubble){
               if(ShieldChild.Shield_State == "bounce"){
                  Shield_Usable = true;
                  ShieldChild.Shield_State = "default";
               }
            }
            
         // Stop dashing with the flame shield:        
            if(Shield = ShieldFlames){
               if(ShieldChild.Shield_State == "dash"){
                  ShieldChild.Shield_State = "default";
               }
            }         
      }    
      
      }
      
              
