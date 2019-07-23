///scr_game_init();
// Inits. local and global variables before the actual game starts.
// Use this for loading fonts, assing global variables and load extensions/dlls.

   // Create global game manager/modifier:
      instance_create(0, 0, obj_global_manager);
      pal_swap_init_system(shd_pal_swapper);
      
   // Input Keys:
   // These will be modified by loading a save file later so 
   // any change on this will require you to remove your save file (if it exists) 
scr_keyboard_setup(false)
      
   // Gamepad Input:
      global.Controller_Input_Found = (gamepad_get_device()) 
      global.Controller_Up          = (gp_padu);
      global.Controller_Down        = (gp_padd); 
      global.Controller_Left        = (gp_padl);          
      global.Controller_Right       = (gp_padr);         
      global.Controller_Action      = (gp_face1);
      global.Controller_Special     = (gp_face3); 
      global.Controller_Enter       = (gp_start);
      global.Controller_Vibration   = (true);
      global.Controller_Deadzone    = (0.9);
         
   // World Variables:
   // You shouldn't modify any of this if you have no idea what they do.
      global.Rings        = 0; // How many rings do we have?
      global.Score        = 0; // How's the score?
      global.Time         = 0; // Current time.   
      global.Lives        = 3; // Current amount of lives.
      global.Emeralds     = 0; // How many emeralds we have collected.  
      global.Ring100Check = 1; // Used to gain a life after 100 rings.
      global.Ring100Check_Deactivate = 0; // When 1, the check does not reset back to 1 upon respawning. Used for Special/Bonus Stages.
      global.GravityAngle = 0; // The main gravity angle. Values above 0 can break gameplay!
      global.CharControl  = 0; // Whether we can control the character.      
      global.DoTime       = 0; // Whether the game timer can run.            
      global.GameTime     = 0; // Global game timer. Will reset everytime a room starts.    (Used for ingame timer and events)
      global.ObjectTime   = 0; // Global object timer. Will reset everytime a room starts.  (Used for animations and events)
      global.ZoneName     = 0; // The Zone Name to display on the title card.
      global.ZoneAct      = 0; // The Zone Act to display on the title card. 
      global.BonusStage   = 0; // Checks if a room is a Bonus Stage.
      global.BonusRings   = 0; // How many Rings we got in a Bonus Stage.
      global.BonusShield  = 0; // Shield we got in a Bonus Stage.
      global.PreviousRoom = 0; // Set the previous room, used for Bonus Stages.     
      global.WaterSurfacePosition = -1; // If above -1, this will draw the water surface on this position. 
      global.DeathHeight  = noone;      // If not set to noone, this will be used for the Characters death height. (if you go beyond this position, the char will die)
      global.CheckpointX  = -1; // X Position to respawn after a checkpoint.
      global.CheckpointY  = -1; // Y Position to respawn after a checkpoint.
      global.CheckpointT  =  0; // Stores the current time.
      global.Cheats       =  1; // Do we allow cheats?
      global.use_light      =    0; /* Is the Lightdash Enabled? */
      
   // Rendering Variables:
      global.Character_1  = noone; // Who's the main character?
      global.Character_2  = noone; // Who's the ai player?
      global.ScreenSize   = 1;     // Sets the Screen size.
      global.ScreenWidth  = 512 ;   // The Screen's width.
      global.ScreenHeight = 288;   // The Screen's height.     
      global.Shaders      = 1;     // Whether or not we can use shaders.
      global.AngleMode    = 360;   // The Angle rotation mode the character uses. 360 and 8 can be used. (A value above/below 8/360 will render a error.)
      
   // Sound Variables:
      global.BGMVolume    = 1;    // Sets/Gets the volume of the background music.
      global.MaxBGMV      = 1;    // Keeps the volume we set. Used when the other variables are being changed and we have to reset it.      
      global.SFXVolume    = 1;    // Sets/Gets the volume of a sound effect.
      global.MaxSFXV      = 1;    // Keeps the volume we set. Used when the other variables are being changed and we have to reset it.
      global.RingStereo   = 1;    // If not -1. We allow the Ring sound to be played in either the left or right headphone ear/speaker.
      global.RingStereoID = 1;    // What sound to play. If 1 = Ring in the left ear, if 2 = Ring in the right ear.
      global.BGMID        = 0;    // Required for looping and checking the background music.      
      global.BGMLoopStart = -1;   // Start of the Background music loop.
      global.BGMLoopEnd   = -1;   // End of the Background music loop. 
      global.BGMLoopDelay = 0.00; // Loop Delay. You might need to change this.
      
   // Fonts:
      global.Font_Card    = font_add_sprite(spr_font_title_card, ord("A"), true , 0);   
      global.Font_Letters = font_add_sprite(spr_font_letters   , ord("!"), true , 1);
      global.Font_HUD     = font_add_sprite(spr_font_main_hud  , ord("0"), false, 0);
      global.Font_Life    = font_add_sprite(spr_font_life_hud  , ord("0"), false, 0);
      global.Font_Credits = font_add_sprite(spr_font_credits   , ord("!"), true , 1);  
      global.Font_Menu    = font_add_sprite(spr_font_menu      , ord("!"), true , 1);            
      
   // Load Configuration:
      Flicky_LoadConfiguration()

        global.ScreenWidth  = 512 ;   // The Screen's width.
      global.ScreenHeight = 288;   // The Screen's height.     
     
      
   // Our device can't handle shaderd, so deactivate them:
      if(!shader_is_compiled(shd_pal_swapper)){
          global.Shaders = 0;
      }  
      global.use_homing     =    true; /* Is the Homing Attack Enabled? */
      
                                      
   // Modify the Screen size:
      switch(global.ScreenSize){
             case 1:{ window_set_size(global.ScreenWidth,   global.ScreenHeight);   window_set_fullscreen(0); obj_global_manager.alarm[0] = 1; break }
             case 2:{ window_set_size(global.ScreenWidth*2, global.ScreenHeight*2); obj_global_manager.alarm[0] = 1; break }
             case 3:{ window_set_size(global.ScreenWidth*3, global.ScreenHeight*3); obj_global_manager.alarm[0] = 1; break }           
             case 4:{ window_set_size(global.ScreenWidth,   global.ScreenHeight);   obj_global_manager.alarm[0] = 1; window_set_fullscreen(1); break }                         
      }
      
      scr_game_init2()


