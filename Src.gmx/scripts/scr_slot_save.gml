// call this script to save the stuff/game
if (file_exists("gmate_save"+string(argument0)+".sav")) file_delete("gmate_save"+string(argument0)+".sav");
ini_open("gmate_save"+string(argument0)+".sav");

 //Before we can save the slot, we must turn them into strings, for encrypting
 /*
  var save_zone              = base64_encode(string(global.save_zone));
 var save_lives             = base64_encode(string(global.save_lives));
 var save_chaos             = base64_encode(string(global.save_chaos));
 var save_char              = base64_encode(string(global.save_char));
 var save_cpu               = base64_encode(string(global.save_cpu));
 var save_icon              = base64_encode(string(global.data_select_icon));
 */
 
 var save_zone              = global.save_zone;
 var save_lives             = global.save_lives;
 var save_chaos             = global.save_chaos;
 var save_char              = global.save_char;
 var save_cpu               = global.save_cpu;
 var save_icon              = global.data_select_icon;


 
 //Save/Write Save Slot
 if(global.used_level_select == false)
 {
 ini_write_real("SLOT"+string(argument0),"ZONE",save_zone);
 ini_write_real("SLOT"+string(argument0),"ICON",save_icon);
 }
 if(global.used_level_select)
 {
 ini_write_real("SLOT"+string(argument0),"ICON", game_is_completed); 
 }
 ini_write_real("SLOT"+string(argument0),"LIVES",save_lives); 
 ini_write_real("SLOT"+string(argument0),"CHAOS",save_chaos); 
 ini_write_real("SLOT"+string(argument0),"CHAR",save_char); 
 ini_write_real("SLOT"+string(argument0),"CPU",save_cpu); 


ini_close();
