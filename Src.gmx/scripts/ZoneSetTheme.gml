/// ZoneSetTheme(Zone, Theme, Sample Rate, Loop Start, Loop End)
//  Used to play the correct zone theme!

    if(room = argument0){
       if(CheckSound(argument1) == true){   
          StopSound(argument1);
          LoopSound(argument1, global.BGMVolume, 1)
          SampleRate          = argument2;
          if(argument3 != -1 && argument4 != -1){
             global.BGMLoopStart = argument3/SampleRate;
             global.BGMLoopEnd   = argument4/SampleRate;   
          }else{
             global.BGMLoopStart = -1;
             global.BGMLoopEnd   = -1;
          }           
       }else{      
          LoopSound(argument1, global.BGMVolume, 1);
          ZoneBGM             = argument1;
          SampleRate          = argument2;
          if(argument3 != -1 && argument4 != -1){
             global.BGMLoopStart = argument3/SampleRate;
             global.BGMLoopEnd   = argument4/SampleRate;   
          }else{
             global.BGMLoopStart = -1;
             global.BGMLoopEnd   = -1;
          }              
       }
    }
