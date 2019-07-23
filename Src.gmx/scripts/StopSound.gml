///StopSound(sound id);
// Stops a audio from playing.
   
   // Check if the audio we want to stop is actually playing:
      if(audio_is_playing(argument0) == true){
         // Stop the sound:
            audio_stop_sound(argument0);
      }
