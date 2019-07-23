///scr_character_action_skid();
// Script to perform Skidding/Sliding.

    // When the input is locked, disable skidding
    if (InputLock_L || InputLock_R)
    {
        if (Action == ActionSkid) Action = ActionNormal;
        exit;
    }
    
    // Trigger skidding
    if (Ground == true && InputLock_S == 0 && Action == ActionNormal && InputAlarm <= 0)
    {
        if (RelativeAngle < 45 || RelativeAngle > 315)
        {
            if ((XSpeed <= -4.5 && KeyRight) or (XSpeed >= 4.5 && KeyLeft) && sign(XSpeed) == AnimationDirection)
            {
                if (Action != ActionSkid)
                {
                    Action = ActionSkid;
                    SkidDirection = sign(XSpeed);
                    Animation = "SKID";
                    PlaySound(snd_character_skidding, global.SFXVolume, 1, 1);
                }
            }
        }
    }
 
    // While skidding, check some stuff
    if (Action == ActionSkid)
    {
        // Return to the normal state
        if (Animation == "SKIDTURN" && AnimationFlagsFinished == true) 
        {
            if (!KeyLeft && !KeyRight) 
            {
                Action = ActionNormal;
                InputAlarm = 10;
            }
        }
        if (SkidDirection == 1)
        {
            if (KeyLeft)
            {
                if (XSpeed > 0){ 
                    XSpeed -= XAcceleration*6;
                    if(FramesCount mod 5 == 0){
                       instance_create(x, y+13, obj_skid_dust);  
                    }
                }              
                else
                {
                    XSpeed = 0;
                    AnimationDirection = -SkidDirection;
                    Action = ActionNormal;
                }
            }
            else if (KeyRight)
            {
                Action = ActionNormal;
                InputAlarm = 10;
            }
        }
        if (SkidDirection == -1)
        {
            if (KeyRight)
            {
                if (XSpeed < 0){
                    XSpeed += XAcceleration*6;
                    if(FramesCount mod 5 == 0){
                       instance_create(x, y+13, obj_skid_dust);  
                    }
                }  
                else
                {
                    XSpeed = 0;
                    AnimationDirection = SkidDirection;
                    Action = ActionNormal;
                }
            }
            else if (KeyLeft)
            {
                Action = ActionNormal;
                InputAlarm = 10;
            }
        }
        
        if (Ground == false){
            Action = ActionNormal;            
        }
     }

