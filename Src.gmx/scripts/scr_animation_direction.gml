///scr_animation_direction();
// To correctly change the direction!

   // Change the direction if the correct key and speed is applied to the character:
      if(Action != ActionSpindash && Action != ActionLookup  && Action != ActionCrouch  &&
         Action != ActionRolling  && Action != ActionSkid    && Action != ActionJump    &&
         Action != ActionFly      && Action != ActionFlydrop && Action != ActionClimb   &&          
         Action != ActionClimb    && Action != ActionPeelout && Action != ActionHoming  &&
         Action != ActionHurt     && Rotation_Animation != 1                           ){
      
         // Change the direction if the left key is held and the speed is below 0:
            if(KeyLeft && XSpeed <=  0)  { AnimationDirection = -1 }
            
         // Change the directiong if the right key is held and the speed is above 0:
            if(KeyRight && XSpeed >= 0)  { AnimationDirection =  1 }
         
      }
         
   
   // Change the rolling direction:
      if(Action = ActionRolling){
         
         // Change the direction if we're rolling to the right:
            if(XSpeed > 0 && KeyRight) { AnimationDirection =  1 }
         
         // Change the direction if we're rolling to the left:
            if(XSpeed < 0 && KeyLeft)  { AnimationDirection = -1 }
            
      } 
         
   // Set the Jumping direction:
      if(Action = ActionJump && !JumpLock or Action = ActionSpring){
         
         // If the right key is held, change the direction:
            if(KeyRight) { AnimationDirection =  1 }
         
         // If the left key is held, change the direction:
            if(KeyLeft)  { AnimationDirection = -1 }
            
         // If both, left and right is held, keep the current direction:
            if(KeyRight && KeyLeft) { AnimationDirection = AnimationDirection }
      
      }
   
   // Set the Flying direction:      
      if((Action = ActionFly || Action = ActionFlydrop) && XSpeed != 0){
       
         // Change direction if the speed is above 0:
            if(KeyRight)   { AnimationDirection =  1 }
            if(KeyLeft)    { AnimationDirection = -1 }
         
      }
      
  // Change the direction in the air:
     if(!Ground && Action = ActionNormal){
         
         // If the right key is held, change the direction:
            if(KeyRight) { AnimationDirection =  1 }
         
         // If the left key is held, change the direction:
            if(KeyLeft)  { AnimationDirection = -1 }      
             
     }

