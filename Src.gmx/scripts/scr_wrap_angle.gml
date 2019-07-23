/* Wrap the Angle */
var temp;
temp = argument0;
while(temp < 0.0)     temp += 360;
while(temp >= 360.0)  temp -= 360;
return temp;
