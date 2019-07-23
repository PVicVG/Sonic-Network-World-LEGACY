///scr_character_rotate_towards(destination, source, step)
// Rptate the character towards a destination.

    var Angle_Differece;
    Angle_Differece = argument0-argument1;

    // -------------------------------------------------------------------------------------
    if (Angle_Differece == 0) return argument0;
    
    if (abs(Angle_Differece) < 180)
    {
        if ((Angle_Differece) < 0)
        {
            argument1 -= argument2;
            if (argument1 <= argument0) argument1 = argument0;
        }
        else
        {
            argument1 += argument2;
            if (argument1 >= argument0) argument1 = argument0;
        }
    }
    else
    {
        if ((Angle_Differece) < 0)  argument1 += argument2;
        else                        argument1 -= argument2;    
    }
    
    return scr_character_wrap_angle(argument1);

    
    
