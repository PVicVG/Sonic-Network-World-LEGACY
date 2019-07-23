/* Checks if ID is inside the view. */
if (bbox_right  > view_xview
 && bbox_left   < view_xview + view_wview
 && bbox_bottom > view_yview
 && bbox_top    < view_yview + view_hview){
    return  true;
}
