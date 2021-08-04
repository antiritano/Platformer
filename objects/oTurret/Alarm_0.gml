/// @description Insert description here
// You can write your code in this editor
if instance_exists (oPlayer)
{
    if distance_to_object(oPlayer) < 350
    { 



var bullet = instance_create_layer(x, y,"Bullet",oEbullet); 
with (bullet)
{
	
	audio_play_sound(Enemybullet,5,false)
   direction = point_direction(x, y, oPlayer.x, oPlayer.y); // Give the bullet a direction
   speed = 4;
}


	}
}
alarm[0] = room_speed * 1.5;