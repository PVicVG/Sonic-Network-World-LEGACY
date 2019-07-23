/// room_goto_bonus()
//  Goes to a random Bonus stage.

    var BonusRoom;
        BonusRoom = choose(1, 2, 3)
        
    switch(BonusRoom){
           case 1:{
            room_goto(rm_bonus_gumball);
            break;
           }
           case 2:{
            //room_goto(rm_bonus_casino);            
            room_goto(rm_bonus_gumball);           
            break;
           }
           case 3:{
            //room_goto(rm_bonus_spheres);            
            room_goto(rm_bonus_gumball);            
            break;
           }
    }
