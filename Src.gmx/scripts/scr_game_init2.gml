global.blockon = true //true = red; false = blue;
global.assets_dir = string(working_directory);
global.show_names = true;
global.enable_surfaces = false;
global.pvp = false;
global.chat = true; 
global.main_player = noone;
global.tracking = noone;
global.Font_Chat = font_add_sprite(spr_font_chat      , ord("!"), true , 1);
global.gravity_angle = 0;

global.network_tokens = 0; 
global.squad = 1;

global.fnt_hud        = font_add_sprite(spr_s2_font, ord("0"), false, 0);
global.fnt_title_card = font_add_sprite(spr_s2_font_title_card, ord("A"), true, 0);
global.fnt_lifes_hud  = font_add_sprite(spr_s2_font_lifes, ord("0"), false, 0);
global.fnt_abc_main   = font_add_sprite(spr_font_main, ord("!"), true, 1);
global.fnt_credits    = font_add_sprite(spr_s2_font_credits, ord('A'), true, 0); 
global.fnt_data       = font_add_sprite(spr_data_font, ord("0"), false, 0);

global.first_zone = rm_test_zone
global.save_char  = 0;                       //This will be used to save the main character
global.save_cpu   = 2;                       //This will be used to save the CPU character
global.save_zone  = global.first_zone;       //This will be used to save the stage/zone that the player is on.
global.data_select_icon = 1;                 //To correctly display the level preview.
global.used_level_select = false;            //Checks if we used the level select.
global.save_lives = 0;                       //This will be used to save how many lives the player has 
global.save_chaos = 0;                       //This will be used to save how many Chaos Emeralds the player has collected
global.save_slot  = 0;                       //This is what save slot you are playing from. "0" means a "NOSAVE" run.

