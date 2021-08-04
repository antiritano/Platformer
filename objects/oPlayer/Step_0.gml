//Player Input

if (hascontrol)
{
key_left = keyboard_check (ord("A")) || keyboard_check(ord("J"));
key_right = keyboard_check (ord("D")) || keyboard_check(ord("L"));
key_jump = keyboard_check_pressed (vk_space);
 
}
else
{
	key_right= 0
	key_left = 0
	key_jump = 0
}
//Movement


var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;



//jumping
canjump -= 1;
if (canjump > 0) && (key_jump)
{
 vsp = -8;	
 canjump = 0;
}

//Horizontal Collision
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);	
	}
	hsp = 0;
}
x = x  + hsp;

//Vertical Collision


if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);	
	}
	vsp = 0;
}

y = y  + vsp;





//Animation


if (!place_meeting(x,y+1,oWall)) 
{
	sprite_index = sPlayerA;
	image_speed = 1;
}
else
 {
	 canjump = 10;
	 
if (sprite_index == sPlayerA) audio_play_sound(Landing,4,false)
    if (hsp == 0) 
    {
	sprite_index = sPlayer;
    }
else
{
	
sprite_index = sPlayerR;



}
	
	
}
 
if (hsp !=0) image_xscale = sign(hsp);

if (sprite_index==sPlayerR) and (counter_footsteps==0)
{
    audio_play_sound(choose(Stepmetal1,Stepmetal2),8, false);
    counter_footsteps = 20; // number of steps to wait before trying to play the sound again
}
else if (counter_footsteps>0) counter_footsteps--;

if (Ohealthbar.hp <= 0)
{
	instance_destroy(Ohealthbar)
	instance_destroy(oPlayer)
	room_restart()
}
	
