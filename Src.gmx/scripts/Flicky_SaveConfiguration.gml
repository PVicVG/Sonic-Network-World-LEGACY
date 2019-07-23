///Flicky_SaveConfiguration()
// Saves the configuration. (Game Settings, Controller, etc)
  
   ini_open("Flicky.config"){
            // Main Settings:
               ini_write_real("Flicky Main",    "ScreenSize", global.ScreenSize);           
               ini_write_real("Flicky Main",   "ScreenWidth", global.ScreenWidth);
               ini_write_real("Flicky Main",  "ScreenHeight", global.ScreenHeight);    
               ini_write_real("Flicky Main", "ScreenShaders", global.Shaders);       
               ini_write_real("Flicky Main",   "VolumeMusic", global.BGMVolume);  
               ini_write_real("Flicky Main",   "VolumeSound", global.SFXVolume);  
                                                                         
            // Keyboard Settings:
               ini_write_real("Flicky Keyboard",      "Up", global.Key_UP);     
               ini_write_real("Flicky Keyboard",    "Down", global.Key_DOWN);
               ini_write_real("Flicky Keyboard",    "Left", global.Key_LEFT);
               ini_write_real("Flicky Keyboard",   "Right", global.Key_RIGHT);  
               ini_write_real("Flicky Keyboard",  "Action", global.Key_ACTION);
               ini_write_real("Flicky Keyboard", "Special", global.Key_SPECIAL);
               ini_write_real("Flicky Keyboard",   "Enter", global.Key_ENTER);   
                                                  
            // Controller Settings: 
               ini_write_real("Flicky Controller", "Connected", global.Controller_Input_Found)          
               ini_write_real("Flicky Controller",        "Up", global.Controller_Up);     
               ini_write_real("Flicky Controller",      "Down", global.Controller_Down);
               ini_write_real("Flicky Controller",      "Left", global.Controller_Left);
               ini_write_real("Flicky Controller",     "Right", global.Controller_Right);  
               ini_write_real("Flicky Controller",    "Action", global.Controller_Action);
               ini_write_real("Flicky Controller",   "Special", global.Controller_Special);
               ini_write_real("Flicky Controller",     "Enter", global.Controller_Enter);               
   }
   ini_close();
