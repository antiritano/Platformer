firingdelay = firingdelay -1;
recoil = max(0,recoil-1);

if (Rapidfire = true)
{
rapid = 10
timer -= 1
}
if (timer = room_speed*sound) && (Rapidfire = true)
{
	audio_play_sound(power_up_timer,2,false)
	sound -=1
}

if (timer < 0)
{
	sound = 5
	Rapidfire = false
}

if (Rapidfire = false)
{
	rapid = 0
}

if (mouse_check_button(mb_left)) && (firingdelay < 0) 
{
		recoil = 4;
		firingdelay = 20 - rapid;
		with (instance_create_layer(x,y,"Bullet",oBullet))
		{
			speed = 15;
			direction = other.image_angle + random_range(-3,3)
			image_angle = direction;
			
		}
}




x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);

if (image_angle > 90) && (image_angle < 270)
{
		image_yscale = -1
}
else
{
	image_yscale = 1;
}


	if (Rapidfire = true)
	{
		sprite_index = sDroneIR
	}
else 
{
	sprite_index = sDroneI

}