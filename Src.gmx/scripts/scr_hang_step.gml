if triggered==true
{
global.main_player.x=floor(x);
global.main_player.y=floor(y);
global.main_player.XSpeed=0;
global.main_player.YSpeed=0;
global.main_player.Action=ActionHang;
if keyboard_check_pressed(ord('A'))
{
triggered=false;
global.main_player.Action=ActionJump;
canbetriggered=false;
global.main_player.ground=false;
global.main_player.YSpeed=-4;
global.main_player.XSpeed=4*global.main_player.AnimationDirection
sound_play(snd_character_jump)
}


}


if canbetriggered==false 
{
if instance_exists(global.main_player)
{
if global.main_player.ground==true{
canbetriggered=true;
}
}

}
