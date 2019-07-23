//if hit == false
//{

with(other){
  if(Action = ActionJump or Action = ActionRolling or Action = ActionGlide or Action = ActionShield or Action==ActionSpindash or Action==ActionHoming){
 var boss;
 boss=instance_nearest(x,y,parBoss);
 
 
 angle_to_boss = degtorad(round(scr_wrap_angle(point_direction(x, y, boss.x, boss.y)-90)/22.5)*24);
  var bounce_strength;
  bounce_strength = 4; //1.5
  speed_x = sin(scr_wrap_angle(angle_to_boss-global.gravity_angle))*bounce_strength; 
  speed_y = cos(scr_wrap_angle(angle_to_boss-global.gravity_angle))*bounce_strength;   
  ground  = false;
if boss.hit==false{  boss.hp +=-1;
  boss.hit=true;
  sound_play(snd_enemy_boss_hit);
  
  if boss.hp>0
{
boss.alarm[11]=40
}
  
  }
 }else if(Action != ActionHurt && Action != ActionDie && !ai_flag){
   scr_player_hurt();
   };
  };



//}

if hp<1
{
instance_destroy()
}


