/* Script to execute the Homing Attack Action! */

    if (Action == ActionHoming)
    {
        // Find nearest enemy object.
        var _dummy;
        //_dummy  = instance_nearest(x, y, par_enemy);
        if (AnimationDirection == 1)
        {
            _dummy = scr_instance_nearest_dir_x(x, y, par_enemy, ">=")
        }else
        {
            _dummy = scr_instance_nearest_dir_x(x, y, par_enemy, "<=");
        }
        
        if(_dummy)
        {
            if (homing_id == noone || !instance_exists(homing_id)) { homing_id = _dummy; } // Home on to one enemy at a time. Prevents changing targets mid-homing attack.
 
            var _dir, _dist;
            _dir  = point_direction(x, y, homing_id.x, homing_id.y);
            _dist = distance_to_object(homing_id);
           
            if (_dist < homing_dist && !collision_line(x, y, homing_id.x, homing_id.y, par_terrain, true, false) &&
                                       !collision_line(x, y, homing_id.x, homing_id.y, par_layer_low, true, false) &&
                                       !collision_line(x, y, homing_id.x, homing_id.y, par_layer_high, true, false) 
               )
            {
                XSpeed = lengthdir_x(homing_speed, _dir);
                YSpeed = lengthdir_y(homing_speed, _dir);
                exit;
            }else
            {
                homing_id = noone; // Reset homing object in case something happens to the target.
            }
       
        }
          
        // No enemy, jump dash.
        if(Underwater == 0){
        XSpeed = XSpeed_Top * AnimationDirection;
        }else{XSpeed = XSpeed_Top*2 * AnimationDirection;};
        YSpeed = 0;  
        Action = ActionJump; 
              
    }else
    if (!Ground && (Action == ActionNormal || Action == ActionJump)){
        // Perform homing attack or jump dash.
        if (use_homing == true && KeyAction_Pressed && (Shield == 0 || Shield == 1) && Animation = "ROLL"){
            Action = ActionHoming;
            use_homing = false;
            audio_play_sound(snd_character_spindash_release,1,false);
            scr_player_action_homing(); // Call this script again to run the homing attack portion.
        }
    }else
    if (Ground)
    {
        use_homing = true;   
    }
 
