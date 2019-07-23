///scr_character_movement_gspeed()
// Returns the Ground speed.

if (abs(XSpeed) <= abs(YSpeed)) {
   GSpeed = YSpeed * -dsin(Angle);
} else {
   GSpeed = XSpeed;
}
