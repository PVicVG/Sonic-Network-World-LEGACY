// ==== FUNCTION =================================================================
// scrOutView
// ===============================================================================
  
if (argument1<view_xview[argument0] or argument2<view_yview[argument0] or
       argument2>view_yview[argument0]+view_hview[argument0] or
       argument1>view_xview[argument0]+view_wview[argument0])
   return true
   else
   return false
