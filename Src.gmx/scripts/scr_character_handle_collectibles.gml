/// scr_character_handle_collectibles()
//  Script to handle objects like rings.


    // Rings --------------------------------------------------------------- /
    
       Ring = scr_character_collision_object(x, y, obj_ring);
       if(Ring && Action != ActionHurt){
        
          // Collect the Ring:
             with(Ring) { IsCollected = true; instance_destroy() }
             global.Rings += 1;
          
          // Ring Stereo Sound:
             if(global.RingStereo == 1){
                if(global.RingStereoID == 1){
                   PlaySound(snd_object_ring_left, global.SFXVolume, 1, 1); 
                   global.RingStereoID  = 2;
                }else
                if(global.RingStereoID == 2){
                   PlaySound(snd_object_ring_right, global.SFXVolume, 1, 1); 
                   global.RingStereoID  = 1;
                }                
             }else{ // Play the Ring sound in both ears:
                       PlaySound(snd_object_ring, global.SFXVolume, 1, 1);                  
             }
             
       }
    
    // --------------------------------------------------------------------- /
    /// scr_character_handle_collectibles()
//  Script to handle objects like rings.


    // Rings --------------------------------------------------------------- /
    
       Ring = scr_character_collision_object(x, y, obj_lightdash_ring);
       if(Ring && Action != ActionHurt){
        
          // Collect the Ring:
             with(Ring) { IsCollected = true; instance_destroy() }
             global.Rings += 1;
          
          // Ring Stereo Sound:
             if(global.RingStereo == 1){
                if(global.RingStereoID == 1){
                   PlaySound(snd_object_ring_left, global.SFXVolume, 1, 1); 
                   global.RingStereoID  = 2;
                }else
                if(global.RingStereoID == 2){
                   PlaySound(snd_object_ring_right, global.SFXVolume, 1, 1); 
                   global.RingStereoID  = 1;
                }                
             }else{ // Play the Ring sound in both ears:
                       PlaySound(snd_object_ring, global.SFXVolume, 1, 1);                  
             }
             
       }
    
    // --------------------------------------------------------------------- /
