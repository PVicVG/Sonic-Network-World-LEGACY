/// scr_character_handle_watersurface();
 // Script to handle the water surface. (Sets/Modifies the speed)

    if(y > global.WaterSurfacePosition && PreviousY < global.WaterSurfacePosition){
       // Entering the water.
          XSpeed *= 0.5;
          YSpeed *= 0.25;
    }else{
       if(y < global.WaterSurfacePosition && PreviousY > global.WaterSurfacePosition){
          // Leaving the water.
             if(YSpeed > -5){
                YSpeed *= 2;
             }
       }
    }
