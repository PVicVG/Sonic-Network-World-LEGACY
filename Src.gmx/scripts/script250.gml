 // Idle animation
    animation_idle_start  = 0;
    animation_idle_end    = 0;
    animation_idle_loop   = 0;
    animation_idle_speed  = 0.005;
    animation_idle_repeat = false;
    animation_idle_linked_to = "idle_wait";
    
    // Idle Wait animation
    animation_idle_wait_start  = 0;
    animation_idle_wait_end    = 6;
    animation_idle_wait_loop   = 5;
    animation_idle_wait_speed  = 0.055;
    animation_idle_wait_repeat_times = 4;
    animation_idle_wait_repeat = false;
    animation_idle_wait_linked_to = "idle_wait_2";
    
    // Idle Wait 2 animation
    animation_idle_wait_2_start  = 130;
    animation_idle_wait_2_end    = 133;
    animation_idle_wait_2_loop   = 131;
    animation_idle_wait_2_speed  = 0.055;
    animation_idle_wait_2_repeat_times = 6;      
    animation_idle_wait_2_repeat = false;
    animation_idle_wait_2_linked_to = "idle";
    
    // Walking animation
    animation_walking_start  = 7;
    animation_walking_end    = 14;
    animation_walking_loop   = 7;
    animation_walking_speed  = 0.125;
    animation_walking_repeat = true;
    animation_walking_linked_to = "(none)";
    
    // Running animation
    animation_running_start  = 15;
    animation_running_end    = 18;
    animation_running_loop   = 15;
    animation_running_speed  = 0.125;
    animation_running_repeat = true;
    animation_running_linked_to = "(none)";
    
    // Jumping animation
    animation_jumping_start  = 19;
    animation_jumping_end    = 26;
    animation_jumping_loop   = 19;
    animation_jumping_speed  = 0.2;
    animation_jumping_repeat = true;
    animation_jumping_linked_to = "(none)";
    
    // Crouching animation
    animation_crouch_start  = 30;
    animation_crouch_end    = 31;
    animation_crouch_loop   = 30;
    animation_crouch_speed  = 0.15;
    animation_crouch_repeat = false;
    animation_crouch_linked_to = "(none)";
    
    // Look up animation
    animation_lookup_start  = 28;
    animation_lookup_end    = 29;
    animation_lookup_loop   = 29;
    animation_lookup_speed  = 0.15;
    animation_lookup_repeat = false;
    animation_lookup_linked_to = "(none)";
    
    // Rolling animation
    animation_rolling_start  = 19;
    animation_rolling_end    = 26;
    animation_rolling_loop   = 19;
    animation_rolling_speed  = 0.2;
    animation_rolling_repeat = true;
    animation_rolling_linked_to = "(none)";
    
    // Spindash animation
    animation_spindash_start  = 32;
    animation_spindash_end    = 41;
    animation_spindash_loop   = 32;
    animation_spindash_speed  = 1;
    animation_spindash_repeat = true;
    animation_spindash_linked_to = "(none)";
    
    // Spring animation
    animation_spring_start  = 27;
    animation_spring_end    = 27;
    animation_spring_loop   = 27;
    animation_spring_speed  = 0;
    animation_spring_repeat = true;
    animation_spring_linked_to = "(none)";
    
    // Balance Out animation
    animation_balance_out_start  = 65;
    animation_balance_out_end    = 67;
    animation_balance_out_loop   = 65;
    animation_balance_out_speed  = 0.1;
    animation_balance_out_repeat = true;
    animation_balance_out_linked_to = "(none)";
    
    // Balance in animation
    animation_balance_in_start  = 68;
    animation_balance_in_end    = 69;
    animation_balance_in_loop   = 68;
    animation_balance_in_speed  = 0.05;
    animation_balance_in_repeat = true;
    animation_balance_in_linked_to = "(none)";
    
    // Skidding animation
    animation_skid_start  = 42;
    animation_skid_end    = 43;
    animation_skid_loop   = 42;
    animation_skid_speed  = 0.125;
    animation_skid_repeat = false;
    animation_skid_repeat_times = 1; 
    animation_skid_linked_to = "walking";
    
    // Hurt animation
    animation_hurt_start  = 44;
    animation_hurt_end    = 45;
    animation_hurt_loop   = 44;
    animation_hurt_speed  = 0.10;
    animation_hurt_repeat = true;
    animation_hurt_linked_to = "(none)";    
    
    // Pushing animation
    animation_push_start  = 61;
    animation_push_end    = 64;
    animation_push_loop   = 61;
    animation_push_speed  = 0.03125;
    animation_push_repeat = true;
    animation_push_linked_to = "(none)";        
    
    // Corkscrew animation
    animation_corkscrew_start  = 46;
    animation_corkscrew_end    = 57;
    animation_corkscrew_loop   = 46;
    animation_corkscrew_speed  = 0.20;
    animation_corkscrew_repeat = true;
    animation_corkscrew_repeat_times = -1;
    animation_corkscrew_linked_to = "(none)";        
    
    // Peel Out animation
    animation_peelout_start  = 70;
    animation_peelout_end    = 73;
    animation_peelout_loop   = 70;
    animation_peelout_speed  = 0.5;
    animation_peelout_repeat = true;
    animation_peelout_linked_to = "(none)";         
    
    // Breathing animation
    animation_breathing_start  = 60;
    animation_breathing_end    = 60;
    animation_breathing_loop   = 60;
    animation_breathing_speed  = 0;
    animation_breathing_repeat = true;
    animation_breathing_linked_to = "(none)";     
    
    // Transforming animation
    animation_transform_start  = 75;
    animation_transform_end    = 85;
    animation_transform_loop   = 85;
    animation_transform_speed  = 0.2;
    animation_transform_repeat = false;
    animation_transform_linked_to = "rolling";         
    
    // Light Dash animation
    animation_lightdash_start  = 74;
    animation_lightdash_end    = 74;
    animation_lightdash_loop   = 74;
    animation_lightdash_speed  = 0;
    animation_lightdash_repeat = false;
    animation_lightdash_linked_to = "(none)";  
    
     // Winning Animation
    animation_win_start = 58;
    animation_win_end = 59;
    animation_win_loop = 58;
    animation_win_speed = 0.10;
    animation_win_repeat = true;
    animation_win_blinked_to = "(none)";  
    
     // Falling animation
    animation_falling_start     = 86;
    animation_falling_end       = 87;
    animation_falling_loop      = 86;
    animation_falling_speed     = 0.20;
    animation_falling_repeat    = true;
    animation_falling_linked_to = "(none)";
    
    // Charge animation
    animation_charge_start  = 97;
    animation_charge_end    = 100;
    animation_charge_loop   = 99;
    animation_charge_speed  = 0.20;
    animation_charge_repeat = true;
    animation_charge_linked_to = "(none)";     
    
        // Hangina animation
    animation_hang_start     = 88;
    animation_hang_end       = 88;
    animation_hang_loop      = 88;
    animation_hang_speed     = 0.15;
    animation_hang_repeat    = true;
    animation_hang_linked_to = "(none)"; 
    
    // Sliding animation
    animation_sliding_start  = 101;
    animation_sliding_end    = 101;
    animation_sliding_loop   = 101;
    animation_sliding_speed  = 0.01;
    animation_sliding_repeat = true;  
    animation_sliding_repeat_times = -1;
    animation_sliding_linked_to = "(none)";

    // Sliding jump animation
    animation_sliding_jump_start  = 102;
    animation_sliding_jump_end    = 104;
    animation_sliding_jump_loop   = 104;
    animation_sliding_jump_speed  = 0.1;
    animation_sliding_jump_repeat = true;  
    animation_sliding_jump_repeat_times = -1;
    animation_sliding_jump_linked_to = "(none)";    
    
    // Between Walk and Run
    animation_betwr_start  = 105;
    animation_betwr_end    = 112;
    animation_betwr_loop   = 105;
    animation_betwr_speed  = 0.2;
    animation_betwr_repeat = true;
    animation_betwr_linked_to = "(none)";        
    
    // Diagonal Spring Animations
    animation_diagspring_start = 113;
    animation_diagspring_end = 113;
    animation_diagspring_loop = 113;
    animation_diagspring_speed = 0;
    animation_diagspring_repeat = true;
    animation_diagspring_linked_to = "(none)";
    
    // DropDash animation
    animation_dropdash_start  = 122;
    animation_dropdash_end    = 129;
    animation_dropdash_loop   = 122;
    animation_dropdash_speed  = 0.2;
    animation_dropdash_repeat = true;
    animation_dropdash_linked_to = "(none)";
