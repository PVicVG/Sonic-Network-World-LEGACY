/* Script to handle Sonic's boosting ability */
with(global.main_player){
if( allow_boosting == true ) /* Make sure we can only boost if we have modern abilitys enabled! */
{    
 
 if( Action == ActionNormal || Action == ActionJump )
 {
       // Initial boost force.
       if(KeySpecial && Ground && boosting_power != 0 )
        {        
          boosting = true;
          audio_play_sound(snd_shield_use_flame,1,false)
        };
         else if(KeySpecial && ShieldUsable == true && !Ground  && boosting_power >= 10) /* Air Boost. */
          {
           shield_usable = false;
           Action = ActionJump;
           XSpeed     = (XSpeed_max * Animation_Direction);
           boosting_power -= 5;
          };
       
       //Keep Boosting.
       if(KeySpecial  && boosting && Ground )
        {
          if(boosting_power != 0)
           {
            boosting_power -= 0.25;
            XSpeed     = (XSpeed_Max * Animation_Direction);
           }
           else
           if( boosting_power <= 1 )
            {
             boosting_power = 0;
             boosting = false;
            };
        };
        else {boosting = false};      
      };
   
     //Disable Boosting when changing direction.
     if( boosting_power != 0 && KeySpecial  && boosting )
     {
       if( Animation_Direction == 1 && Key_Left ) {boosting = false};
        else if( Animation_Direction == -1 && Key_Right ) {boosting = false};
     };
 
};    
 
/* Create Boost Aura: */
if( boosting == true )
{
 if( instance_exists(obj_boost_aura) == false ) { instance_create(x,y,obj_boost_aura) };
};
else if( boosting == false )
{
 if( instance_exists(obj_boost_aura) == true )  { with(obj_boost_aura) {instance_destroy()} };
};
 
/* Limit Boost Power: */
if( boosting_power >= 100 )
{
 boosting_power = 100;
};
else if( boosting_power <= 0)
{
 boosting_power = 0;
};
 
/* Disable Boost */
 if not ( ( Action == ActionNormal || Action == ActionJump ) )
 {
  boosting = false;
 };
};
 
   
/* Hobber's backup if shiro broke everything again ^^
        if (action == ConActNormal || action == ConActJump || action == ConActRoll || action == ConActPeelOut)
    {
        // Initial boost force.
        if (key_action_b_pressed)
        {
            if (action == ConActRoll || action == ConActPeelOut)
            {
                action = ConActNormal;
            }
            boosting    = true;
            sound_play(snd_shield_action_flame);
        }
       
        if (key_action_b && boosting)
        {
            speed_x     = (speed_x_max * animation_direction);
        }else
        {
            boosting = false;
        }
    }else
    {
        boosting = false;
    }
