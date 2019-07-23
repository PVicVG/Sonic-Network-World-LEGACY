///scr_screen_shake_default(type (0 - low 1 - medium 2 - strong)

if argument0 == 0{
with(obj_camera){
                  Camera_ShakeScreen   = true;
                  Camera_ShakeDuration = 20;
                  Camera_ShakeForce    = 3;
                  Camera_ShakeSound    = snd_object_crumble;
             } 
             }

if argument0 == 1{
 with(obj_camera){
                    Camera_ShakeScreen   = true;
                    Camera_ShakeDuration = 30;
                    Camera_ShakeForce    = 5;
                    Camera_ShakeSound    = snd_object_crumble;
               }
}

if argument0 == 2{
with(obj_camera){
                  Camera_ShakeScreen   = true;
                  Camera_ShakeDuration = 40;
                  Camera_ShakeForce    = 6;
                  Camera_ShakeSound    = snd_object_crumble;
             } 
             }
