/// scr_character_handle_tunnel_locks()
 // Script to handle tunnel locks!

    // If our XSpeed is 0 while we're in a tunnel, set the XSpeed to 4, else keep his action state as rolling:
       if(Ground && LockTunnel = 1){
          if(XSpeed != 0){
             Action  = ActionRolling;
          }else{
             Action  = ActionRolling;          
             XSpeed  = 4; 
          }
       }
       
    // Trigger the Tunnel Lock:
       if(Ground){
          if(scr_character_collision_object(x, y, obj_sensor_lock_tunnel_right) && XSpeed > 0.0){
             if(LockTunnel == 0){
                LockTunnel  = 1;
                if(Action != ActionRolling){
                   PlaySound(snd_character_roll, global.SFXVolume, 1, 1);
                }
                if(XSpeed == 0) { XSpeed = 4 }
             }
          }else
          if(scr_character_collision_object(x, y, obj_sensor_lock_tunnel_left) && XSpeed < 0.0){
             if(LockTunnel == 0){
                LockTunnel  = 1;
                if(Action != ActionRolling){
                   PlaySound(snd_character_roll, global.SFXVolume, 1, 1);
                }
                if(XSpeed == 0) { XSpeed = -4 }
             }
          }          
       }
       
    // Disable the Tunnel Lock:
       if(LockTunnel = 1){
          if(scr_character_collision_object(x, y, obj_sensor_lock_tunnel_right) && XSpeed < 0.0){
             LockTunnel = 0;
             Action     = ActionRolling;
          }else
          if(scr_character_collision_object(x, y, obj_sensor_lock_tunnel_left) && XSpeed > 0.0){
             LockTunnel = 0;
             Action     = ActionRolling;
          }          
       }
 

