///scr_character_action_lookup();
// Script to perform the characters look up state.

   // Look up when the character is quiet on the ground and pressing down:
    if(Ground && AmyHammerAttack = 0 && XSpeed == 0 && YSpeed == 0 && Action = ActionNormal && AllowLookUp && KeyUp){
        FramesCount = 0;      
        TimerUp     = 0;
        Action      = ActionLookup;
    }  
      
    if(Action == ActionLookup){
        TimerUp++;
      
        // Otherwise, stop looking up:
        if(Ground && !KeyUp){
            Action      = ActionNormal;
            TimerUp     = 0;
            FramesCount = 0;            
        }
    }

