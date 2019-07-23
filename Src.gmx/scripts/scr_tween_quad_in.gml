///scr_tween_quad_in(time, start, change, duration)
// time     - The current time (frames, seconds, years) of the tween. Increase this until it reaches duration.
// start    - The start value of the tween. ex: a point on a grid (x/ y), or an alpha variable.
// change   - Change between the start and end values. end - start = change
// duration - Length in time (frames, seconds, milliseconds, w/e) the tween lasts.

    argument0 /= argument3;
    return argument2 * argument0 * argument0 + argument1;
