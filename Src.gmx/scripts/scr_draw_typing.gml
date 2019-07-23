/// scr_draw_typing(string, position, x, y);
 // Draw a text using the typing effect.
 
    StringToDraw = string(argument0);
    StringToCopy = string_copy(StringToDraw, 1, argument1);
    
    draw_text(argument2, argument3, StringToCopy)

