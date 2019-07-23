///scr_animation_core();
// The actual core of the animation system.

    /* This is the actual core of the animation system. Here we check if the
    ** animation has changed, and if then, put the new animation.
    **
    ** Thanks to the nature of the actual system this part is rather
    ** simple, thanks to how powerful is Gamemaker :D
    */
    
    // Set changed flag to false
       AnimationFlagsChanged = false;
    
    // First check if the actual animation has changed
    if ( Animation != AnimationPrevious ){
    
        // If the animation was changed, set previous to the new one
           AnimationPrevious = Animation; 
        
        // Now is when we get the data of the new animation. Since the
        // animation is handled using an string, we need to get
        // the animation local variable acording to that string.
        //
        // For this, we use the function variable_local_get(), wich
        // returns the value of the local variable string passed.
        
           if(Animation != "NONE"){
              scr_animation_data();
           }

        
        // Easy huh? We only had to concatenate some strings to get the final names.
        // Now that we have all the basic information, set the actual frame to
        // the start
           AnimationFrame = AnimationStart;

        
        // Set flags
           AnimationFlagsChanged  = true;    // Set the changed flag to true
           AnimationFlagsFinished = false;   // Set to false the finished flag
    }
    
    // And now the rest is easy. Add the speed to the frame and then
    // check if the animation reached to the end.
    if ( AnimationFlagsFinished == false ){
    
        AnimationFrame += AnimationSpeed;
        
        if ( floor(AnimationFrame) > AnimationEnd ){
            if ( AnimationRepeat == true ){
            
                // Loop back to the loop frame
                   AnimationFrame = AnimationLoop;
                   
            }else{
            
                // check the number of repeats the animation has to perform
                if ( AnimationRepeatTimes > 0 ){
                
                    // loop back
                    AnimationFrame = AnimationLoop;
                    AnimationRepeatTimes -= 1;
                    
                }else{
                
                    // the animation ends here, go to linked if exists
                       AnimationFrame          = AnimationEnd;               
                       if ( AnimationLinkedTo != "NONE" ) Animation = AnimationLinkedTo;
                       else 
                        // Set to true the animation finished flag
                           AnimationFlagsFinished = true;
                }
            }
        } 
    }
    
    // Tail frame speed.
       if(TailSpeed != 0){
          TailFrame += TailSpeed;
       }

