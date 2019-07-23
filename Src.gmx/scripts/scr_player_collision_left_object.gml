/*
*       scr_player_collision_left_object( x, y, angle, mask, object );
*
*   =============================================
*
*   This functions returns if the left sensors has collided
*
*/

    // Store the actual mask for setting it up later
    temporal_mask   =   mask_index;
    mask_index      =   argument3;

    // Transform angle to radians and precalculate cosine and sine
    argument2   = degtorad(argument2);
    cosine      = cos(argument2);
    sine        = sin(argument2);

    // Test collision
    collision_test  =   instance_place( floor(argument0 - cosine * 11),
                                        floor(argument1 + sine * 11),
                                        argument4 );

    // Set to the old mask
    mask_index      =   temporal_mask;
    
    // Calculate the direction
    return  collision_test;
