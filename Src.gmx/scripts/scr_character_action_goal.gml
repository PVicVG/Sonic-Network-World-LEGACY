///scr_character_action_goal()
// Script for the winning/goal action.

   if(Ground && GoalState == 1){
      Action       = ActionNormal;
      XSpeed       = 0;
      YSpeed       = 0;
      LockControl  = 1;
      DropDashFlag = 0;
      Animation    = "GOAL";
   }   

