///gamepad_get_device()
// Checks if a gamepad is connected and returns the ID.
/*
   ID 0  > Xbox 360 / XInput Devices
   ID 4  > Dualshock / DInput Devices
   ID -1 > No Devices.
   
   We count Joysticks (3rd party gamepads) as Dualshocks.
   
*/

   // Check which kind of controller is connected:
   if(gamepad_is_connected(0)){
      return 0;
   }else if(!gamepad_is_connected(0) && gamepad_is_connected(4)){   
      return 4;  
   }else if(!gamepad_is_connected(0) && !gamepad_is_connected(4) &&  joystick_exists(1)){     
      return 4;
   }else if(!gamepad_is_connected(0) && !gamepad_is_connected(4) && !joystick_exists(1)){
      return -1;
   }
   


