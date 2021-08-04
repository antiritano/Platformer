/// @description Move to Next Room

with (oPlayer)
{
	if (hascontrol)
	{
		hascontrol = false
		SlideTransition(TRANS_MODE.GOTO,Room1);
	}
	
}