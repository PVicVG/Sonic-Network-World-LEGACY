///scr_tween_quad_inout(time, start, change, duration)
// time     - The current time (frames, seconds, years) of the tween. Increase this until it reaches duration.
// start    - The start value of the tween. ex: a point on a grid (x/ y), or an alpha variable.
// change   - Change between the start and end values. end - start = change
// duration - Length in time (frames, seconds, milliseconds, w/e) the tween lasts.

    argument0 /= argument3 / 2;
    if (argument0 < 1) 
    { 
        return argument2 / 2 * argument0 * argument0 + argument1;
    }
    argument0 -= 1;
    return -argument2 / 2 * (argument0 * (argument0 - 2) - 1) + argument1;
