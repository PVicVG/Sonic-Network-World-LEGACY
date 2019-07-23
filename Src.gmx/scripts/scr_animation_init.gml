///scr_animation_init();
// Init. various variables we need in order to play a animation:

   Animation              = "IDLE";          // Character's animation. This is the one you have to change.
   AnimationSprite        = spr_mask_dot;    // The Sprite the animation uses. 
   AnimationDirection     = 1;               // The Direction the character is facing.
   AnimationPrevious      = 0;               // Checks if the animation has changed.
   AnimationFrame         = 0;               // Current frame (sprite index) of the animation.
   AnimationStart         = 0;               // Starting frame for the animation.
   AnimationEnd           = 0;               // Ending frame of teh animation.
   AnimationLoop          = 0;               // The looping frame of the animation.
   AnimationSpeed         = 0;               // How fast a frame changes in the animation.
   AnimationRepeat        = 0;               // Checks whether the animation should repeat. (-1 == Infinite)
   AnimationRepeatTimer   = 0;               // Number of times the animation is supposed to repeat.
   AnimationLinkedTo      = 0;               // If not 0, the current animation will change to this one once it ended.
   AnimationFlagsChanged  = 0;               // Checks whether the animation has changed.
   AnimationFlagsFinished = 0;               // Checks whether the animation has finished.
   AnimationOffsetX       = 0;               // To adjust the X position of a animation.
   AnimationOffsetY       = 0;               // To adjust the Y position of a animation.

// Character Specific:
   TailSprite    = spr_miles_tail_1; // Used to draw Miles tail.
   TailFrame     = 0;                // The frame of the tail.
   TailSpeed     = 0;                // How fast the tail animates
   TailX         = 0;                // Used to set the position of the tail.
   TailY         = 0;                // Used to set the position of the tail.
   TailAngle     = 0;                // Used to change the tail angle.
   TailDirection = 1;                // Used to change the direction of the tail.
