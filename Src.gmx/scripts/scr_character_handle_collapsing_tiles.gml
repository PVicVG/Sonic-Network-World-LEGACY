/// scr_character_handle_collapsing_tiles()
 // Script to handle collapsing tiles!
  

        _ObjectHandle = instance_nearest(x, y, par_collision_collapse);
        if(scr_character_collision_bottom_object(x, y - YSpeed, Angle, spr_mask_block_small, _ObjectHandle)){
           if(_ObjectHandle.alarm[0] = -1){
              _ObjectHandle.alarm[0] = 45;
           }
        }

