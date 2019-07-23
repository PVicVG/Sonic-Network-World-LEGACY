///Flicky_LoadConfiguration()
// Loads the configuration. (Game Settings, Controller, etc)

   ini_open("Flicky.config"){   
            // Main Settings:
               global.ScreenSize   = ini_read_real("Flicky Main",    "ScreenSize", 1);
               global.ScreenWidth  = ini_read_real("Flicky Main",   "ScreenWidth", global.ScreenWidth);
               global.ScreenHeight = ini_read_real("Flicky Main",  "ScreenHeight", global.ScreenHeight);
               global.Shaders      = ini_read_real("Flicky Main", "ScreenShaders", 1);
               global.MaxBGMV      = ini_read_real("Flicky Main",   "VolumeMusic", 1); 
               global.BGMVolume    = ini_read_real("Flicky Main",   "VolumeMusic", 1); 
               global.MaxSFXV      = ini_read_real("Flicky Main",   "VolumeSound", 1);                   
               global.SFXVolume    = ini_read_real("Flicky Main",   "VolumeSound", 1);          
   
            // Keyboard Settings:
        //       global.Key_UP       = ini_read_real("Flicky Keyboard",      "Up", vk_up); 
        //       global.Key_DOWN     = ini_read_real("Flicky Keyboard",    "Down", vk_down);
          //     global.Key_LEFT     = ini_read_real("Flicky Keyboard",    "Left", vk_left);
            //   global.Key_RIGHT    = ini_read_real("Flicky Keyboard",   "Right", vk_right);
              // global.Key_ACTION   = ini_read_real("Flicky Keyboard",  "Action", ord("Z"));
               //global.Key_SPECIAL  = ini_read_real("Flicky Keyboard", "Special", ord("X"));
               //global.Key_ENTER    = ini_read_real("Flicky Keyboard",   "Enter", vk_enter);            
   
            // Controller Settings:
      //         global.Controller_Input_Found = ini_read_real("Flicky Controller", "Connected", gamepad_get_device());          
       //        global.Controller_Up          = ini_read_real("Flicky Controller",        "Up", gp_padu);
        //       global.Controller_Down        = ini_read_real("Flicky Controller",      "Down", gp_padd);
      //         global.Controller_Left        = ini_read_real("Flicky Controller",      "Left", gp_padl);
         //      global.Controller_Right       = ini_read_real("Flicky Controller",     "Right", gp_padr);
        //       global.Controller_Action      = ini_read_real("Flicky Controller",    "Action", gp_face1);
         //      global.Controller_Special     = ini_read_real("Flicky Controller",   "Special", gp_face3);
             //  global.Controller_Enter       = ini_read_real("Flicky Controller",     "Enter", gp_start);                                  
   }
   ini_close();   

   
