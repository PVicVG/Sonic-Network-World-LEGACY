 //If the player is moving up
    if (YSpeed < 0)
    && (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_top,obj_solid,1,0))  {
        
        //Prevent the player's head from getting stuck on a ceiling.
        //if (state > 1) {
    
            while (collision_rectangle(bbox_left,bbox_top+1,bbox_right,bbox_top+1,obj_solid,1,0))
                      y+=1;
    //    }
        
        //Stop vertical speed
        YSpeed = 0;
        
        //Check if there's a block on the way.
        var block = collision_rectangle(bbox_left,bbox_top-2,bbox_right,bbox_top,obj_blockparent,1,0);
        
        //If there's a block on the way.
        if (block) {
            
            //If the block has NOT been hit.
            if (block.ready == 0) {
        
                //Trigger block events
                with (block) {
                
                    //Block is hit
                    ready = 1;
                    
                    //Set vertical speed
                    vspeed = -2;
                    alarm[0] = 4;
                    
                    //Block specific events
                    event_user(0);
                }
            }
        }
        
        //If the player does not have either the frog and penguin suit, and it's not climbing.
    /*    if (!noisy)
        && (state < 3) {
        
            //Max out the bee flying timer
            if (global.powerup == cs_bee) {
    
                beefly = 128;
            }
            
            //Stop variable jumping
            jumpnow = 2;        
            
            //Play 'Bump' sound
            if (!audio_is_playing(snd_bump))        
                audio_play_sound(snd_bump, 0, false);        
        }*/
    }
