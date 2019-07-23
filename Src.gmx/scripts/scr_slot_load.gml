// call this script to load the save lot
//FYI, "argument0" represents the slot number.

if (file_exists("gmate_save"+string(argument0)+".sav"))
{
ini_open("gmate_save"+string(argument0)+".sav");

 //Before we can load options, we must decrypt them.
 //Decrypt Save Slot 1
 var save_zone           = ini_read_real("SLOT"+string(argument0),"ZONE",global.first_zone);
 var save_icon           = ini_read_real("SLOT"+string(argument0),"ICON",1); 
 var save_lives          = ini_read_real("SLOT"+string(argument0),"LIVES",3);
 var save_chaos          = ini_read_real("SLOT"+string(argument0),"CHAOS",0);
 var save_char           = ini_read_real("SLOT"+string(argument0),"CHAR",1);
 var save_cpu            = ini_read_real("SLOT"+string(argument0),"CPU",0);
  

 //Load Save Slot 1
 
 slot_zone        = save_zone
 slot_icon        = save_icon; 
 slot_lives       = save_lives;
 slot_chaos       = save_chaos;
 slot_char        = save_char;
 slot_cpu         = save_cpu;
 
 empty = false; //the slot is not empty

ini_close();

}

else
{
empty = true; //if no save data exists, the slot is empty
}
