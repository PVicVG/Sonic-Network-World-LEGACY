///scr_keyboard_setup(uses mouse?)

if argument0 == false{
  global.Key_UP       = (vk_up);
      global.Key_DOWN     = (vk_down);
      global.Key_LEFT     = (vk_left);
      global.Key_RIGHT    = (vk_right);
      global.Key_ACTION   = (ord("A"));
      global.Key_SPECIAL  = (ord("S"));
      global.Key_ENTER    = (vk_enter);          
}

if argument0 == true{
  global.Key_UP       = (ord('W'));
      global.Key_DOWN     = (ord('S'));
      global.Key_LEFT     = (ord('A'));
      global.Key_RIGHT    = (ord('D'));
      global.Key_ACTION   = (vk_space);
      global.Key_SPECIAL  = (vk_shift);
      global.Key_ENTER    = (vk_escape);          
}


global.Key_ACTION_HeldTimer = 0;
