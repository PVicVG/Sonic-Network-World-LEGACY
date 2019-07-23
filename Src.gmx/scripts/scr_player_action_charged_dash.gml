if (Action == ActionNormal || ActionJump || ActionSpring) && KeySpecial_Pressed && can_dash=true
{
Action=ActionCharge
}

if Action==ActionCharge{

if XSpeed>0{XSpeed-=1}
if XSpeed<0{XSpeed+=1}
if KeySpecial_Released
{
XSpeed=0;
YSpeed=0;
if KeyRight
{
XSpeed=dashspd
}

if KeyLeft
{
XSpeed=-dashspd
}
/*
if KeyDown && Ground==false
{
YSpeed=dashspd
}*/

if KeyDown && Ground==false
{
YSpeed=dashspd/2
}

if KeyUp && Ground==true
{
Ground=false
YSpeed=-dashspd
Ground=false
}



if !KeyRight && !KeyLeft && !KeyUp && !KeyDown{XSpeed=dashspd*AnimationDirection}
sound_play(snd_character_spindash_release)
instance_create(x,y,obj_fade_in_white)
can_dash=false; 
Action=ActionJump
}
}

if Ground==true
{
can_dash=true
}
