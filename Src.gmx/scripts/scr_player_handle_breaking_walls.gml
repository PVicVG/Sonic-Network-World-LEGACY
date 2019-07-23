/* Script to Handle Breaking walls. */

//Normal Breakable Walls:
if(Action == ActionRolling){
   // Get if a Wall has collided with the player while rolling:
   if (XSpeed <= 3) wall_handle = scr_player_collision_left_object  (x, y, Angle, maskBlock, par_break_walls);
   if (XSpeed >= 3) wall_handle = scr_player_collision_right_object (x, y, Angle, maskBlock, par_break_walls);
   
    
    // Destroy
    if(wall_handle != noone){
    /* Play Destroy Sounds: */
         sound_stop(snd_sfx_collapse)
         sound_play(snd_sfx_collapse)
         with(wall_handle) instance_destroy();
     };
}
    
//Destroy with Bubble Shield:
/*if(CharacterID == CharacterSonic && Action = ActionShield && shield = 4){
  // Get if a Wall has collided with the player while using the Bubble Shield:
  if (YSpeed > 0) bubble_handle = scr_player_collision_bottom_object (x, y, Angle, maskBlock, par_break_walls);
  
    // Destroy
    if(bubble_handle != noone){
 
         sound_stop(snd_sfx_collapse)    
         sound_play(snd_sfx_collapse)
         with(bubble_handle) instance_destroy();
     };  
};
*/
//Knuckles & Super Form:
if(CharacterID = CharacterKnuckles or CharacterState = CharacterSuper){
if(Action == ActionNormal || Action = ActionGlide || Action = ActionSlide){
   if (XSpeed <= 0) special_handle = scr_player_collision_left_object  (x, y, Angle, maskBlock, par_break_walls);
   if (CharacterID >= 0) special_handle = scr_player_collision_right_object (x, y, Angle, maskBlock, par_break_walls);
   
    
    // Destroy
    if(special_handle != noone){
    /* Play Destroy Sounds: */
         sound_stop(snd_sfx_collapse)    
         sound_play(snd_sfx_collapse)
         with(special_handle) instance_destroy();
     };
};
};

//Knuckles only:
if(CharacterID = CharacterKnuckles){
if(Action == ActionNormal || Action = ActionGlide || Action = ActionSlide){
   // Get if a Wall has collided with the player while rolling:
   if (XSpeed <= 0) knux_handle = scr_player_collision_left_object  (x, y, Angle, maskBlock, par_break_walls_knux);
   if (XSpeed >= 0) knux_handle = scr_player_collision_right_object (x, y, Angle, maskBlock, par_break_walls_knux);
   
    
    // Destroy
    if(knux_handle != noone){
    /* Play Destroy Sounds: */
         sound_stop(snd_sfx_collapse)    
         sound_play(snd_sfx_collapse)
         with(knux_handle) instance_destroy();
     };
 };
};
