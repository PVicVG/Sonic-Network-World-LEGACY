if distance_to_object(par_character)<32 && par_character.XSpeed == 0 && par_character.YSpeed == 0 && par_character.Ground && keyboard_check_pressed(vk_up) && !gms_chat_istyping() && global.main_player.LockControl == false && !instance_exists(obj_text_box){
return true;
}else{
return false;
}
