/* Script to execute the Light Dash! */

 //Trigger Lightdash:
 if( KeySpecial_Pressed ) {
  if( distance_to_object(obj_lightdash_ring) < 50 && using_lightdash == false ) {
   using_lightdash = true;
  };
 };
 
 //Start Lightdash:
 if( distance_to_object(obj_lightdash_ring) < 65 ) {
  if(using_lightdash == true){
   light_target = instance_nearest(x,y,obj_lightdash_ring);
   
   //Set Direction:
   var dash_dir;
   dash_dir = floor(point_direction(x,y,light_target.x,light_target.y));
   
   //Set Speed/Gravity:
   XSpeed =  cos(pi/180*dash_dir) * 15;
   YSpeed = -sin(pi/180*dash_dir) * 15; 
     
   if(XSpeed > 0) {
    Animation_Direction = 1;
   }; 
   else {
   Animation_Direction = -1;
   };
  
   //Set Action:
   Action    = ActionLightdash;
   Animation = "lightdash";
      
  };
 };
 else if(using_lightdash == true) {
 using_lightdash = false;
 Action     = ActionRolling;
 Animation  = "ROLL";
 exit;
 };


