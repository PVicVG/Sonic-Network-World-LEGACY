///find(asset, inRoom)
/* 
   Finds a game asset and returns it.
   If argument1 is set to true, it will only return true if the asset exists somewhere in the room.
   If argument1 is set to false, it will return it even if the asset doesn't exist in the room.    
*/
   if(argument1 == false){
      Asset = asset_get_index(argument0);
      if(Asset = asset_unknown){
         return -1;
      }else{
         return Asset;
      }
   }else if(argument1 == true){
      Asset = asset_get_index(argument0);
      if(Asset = asset_unknown){      
         return -1
      }else if(Asset != asset_unknown && instance_exists(Asset)){
         return Asset;
      }else{
         return -1;
      }
   }
   
   
