///scr_string_number_format(Number, Places)
// Places a Number in places.
  
    var String, NumPlace;
        String   = string(argument0);
        NumPlace = argument1-string_length(String);
        
        while(NumPlace){
              String    = "0" + String;
              NumPlace -= 1;
        }

        return String;

         
