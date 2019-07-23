///scr_dummy_effect(sprite, image speed, x, y, loop times, OPTIONAL! Depth of Dummy)

//Variables for the Dummy:
_sprite_     = argument0; // Effects Sprite.
_speed_      = argument1; // Frames speed of the Effect.
_x_          = argument2; // X Position to Draw.
_y_          = argument3; // Y Position to Draw.
_loop_times_ = argument4; // How many times the Dummy loops the effect until it gets destroyed.
_depth       = argument5;
 //Create Dummy with our Variables:
 dummy = instance_create(_x_, _y_, obj_dummy){
         dummy.sprite_index =     _sprite_;
         dummy.image_speed  =      _speed_;    
         dummy.loop_timer   = _loop_times_;    
         dummy.depth        = _depth;              
 };
 
 ////Set Depth:
 if(argument5){
    dummy.depth = argument5;
 };
