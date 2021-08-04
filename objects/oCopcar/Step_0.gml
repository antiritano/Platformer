/// @description Insert description here
// You can write your code in this editor
//Horizontal Collision
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);	
	}
	hsp = -hsp;
}
x = x  + hsp;


if (hsp !=0) image_xscale = sign(hsp);