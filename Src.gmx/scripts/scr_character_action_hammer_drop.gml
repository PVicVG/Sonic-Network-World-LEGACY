    //Stomp
            if (Action == ActionJump || Action==ActionSpring) && (KeyAction_Pressed && Ground == false && stomping == false )
        {
            XSpeed = 0;                
            YSpeed = max(12,abs(YSpeed)+3);
            Action = ActionJump;        
            stomp_bouncing=false;
          stomping=true             
        }
        
        if stomping == true
        {
    scr_afterimage()
         XSpeed = 0;                //Do not move while stomping
            YSpeed = max(12,abs(YSpeed)+3); //Stomp
          stomp_bouncing=false;
            
             //Bounce  
         if (Action!=ActionJump || Ground == true)
           { 
    scr_screen_shake_default(0)
                  Ground=false;
                 /* while the player isn't crouching down or spindashing, jump */
           YSpeed = (-(sin(degtorad(Angle)) * XSpeed) + (cos(degtorad(Angle)) * JumpStrength - 1));
           XSpeed =  (cos(degtorad(Angle)) * XSpeed) + (sin(degtorad(Angle)) * JumpStrength * 3);  
    
        /* Disable the Ground variable so the y speed gets changed! */
        Angle = 0;
      //  Ground = false;
      sound_stop(snd_shield_use_bubble)
sound_play(snd_shield_use_bubble)
        //   Action=ActionJump
              Action  =            ActionSpring;
       Angle   =                       0;  
   
        //  spring_ani_cork  = false;
      
            stomping=false;
           stomp_bouncing=true;
           } 
               
        }
        
        
        if stomp_bouncing == true{
        
        if Ground==true{
        stomp_bouncing=false
        }
        
        }

/*if Action == ActionJump && KeySpecial_Pressed{
YSpeed = 12;
HDropFlag = true;
}

if Ground == true && HDropFlag == true{
HDropFlag = false;
Ground = false;
YSpeed = -8;
}
