///scr_character_action_crouch();
// Script to perform the characters crouching.

    // Crouch down when the character is quiet on the ground and pressing down:
    if((Ground && AmyHammerAttack = 0 && XSpeed == 0 && YSpeed == 0 && (Action == ActionNormal || Action = ActionGlidedrop) && AllowLookDown && KeyDown)){
        FramesCount = 0;  
        TimerDown   = 0;    
        Action      = ActionCrouch;
        XSpeed      = 0;
    }      
     
    if(Action == ActionCrouch){
        TimerDown++;

        if(XSpeed != 0){
           XSpeed  = 0;
           Action  = ActionNormal;
        }
        if(YSpeed < 0){
           Action = ActionNormal;
        }
        if(YSpeed > 0 && AnimationFrame < 1){
           Action = ActionRolling;
        }

        // Otherwise, stop crouching:
        if(Ground && !KeyDown){
            Action      = ActionNormal;  
            TimerDown   = 0;
            FramesCount = 0;       
        }
                
    }
     
