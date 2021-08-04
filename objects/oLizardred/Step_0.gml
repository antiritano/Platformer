
vsp = vsp + grv;



//Dont walk off ledges
if (grounded) && (afraidofheights) && (!place_meeting(x+hsp,y+1,oWall))
{
hsp = -hsp	
}

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
	grounded = false
	
}
else
{
	grounded = true;
}

if (hsp == 0) 
{
sprite_index = sLizard;
}
else
{
sprite_index = sLizardR;	
}
if (hp <= 0)
{
instance_change(oDead,true)
}


 
if (hsp !=0) image_xscale = sign(hsp);




