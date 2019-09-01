///scr_animation_data();
// Set and read the data for each animation.

  /*** Sonic's Animation:  ***/
  if(CharacterID = CharacterSonic && CharacterState = CharacterNormal){
    
  ///Handle Sonic's Normal State Skins
     
   ///Default Skin
     scr_animation_data_sonic();
     
     if global.skin == SkinSonic3{
     scr_animation_data_sonic3();}
     
      if global.skin == SkinSonicEB{
     scr_animation_data_soniceb();}
     
  }
  if(CharacterID = CharacterSonic && (CharacterState = CharacterSuper or CharacterState = CharacterHyper)){
 
     scr_animation_data_supersonic();
     
  }  
  
  /*** Tails' Animation:   ***/ 
  if(CharacterID = CharacterTails){
 
     scr_animation_data_tails();
     
     if global.skin == SkinSonic3{
     scr_animation_data_tails3();}
  }   
  
  /*** Knuckles Animation: ***/    
  if(CharacterID == CharacterKnuckles){
    
     scr_animation_data_knuckles();
     
  }
  
  /*** Amy Animation: ***/      
  if(CharacterID = CharacterAmy){
 
     scr_animation_data_amy();
     
  }  
  /*** Shadow Animation: ***/      
  if(CharacterID = CharacterShadow){
 
     scr_animation_data_shadow();
     
  }
  /*** Shadow Animation: ***/      
  if(CharacterID = CharacterMetal){
 
     scr_animation_data_metal();
     
  }
  /*** Shadow Animation: ***/      
  if(CharacterID = CharacterMighty){
 
     scr_animation_data_mighty();
     
  }
  /*** Modern Animation: ***/      
  if(CharacterID = CharacterModern){
 
     scr_animation_data_modern();
     
  }
  
  /*** Robotnik Animation: ***/      
  if(CharacterID = CharacterRobotnik){
 
     scr_animation_data_robotnik();
     
  }
