//scr_textbox("text")
if !instance_exists(obj_messagein){
instance_create(x,y,obj_messagein)
obj_messagein.varmsg = argument0;
}
