///LoopSound(audio id, audio volume, audio pitch);
// Script to play and loop a sound.

   // Exit if we already play the audio:
      if(audio_is_playing(argument0) == true){
         audio_stop_sound(argument0);
      }
      
   // Play the audio:
      global.BGMID = audio_play_sound(argument0, 1, true);
      
   // Set the Volume:
      audio_sound_gain(argument0, argument1, 0);
                 
   // Modify the pitch:
      if(argument2 != -1){
         if(argument2 < 0) { argument2 = 0 }
         audio_sound_pitch(argument0, argument2);
      }
      
      
