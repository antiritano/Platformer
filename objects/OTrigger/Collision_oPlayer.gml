/// @description Move to Next Room

with (oPlayer)
{
	if (hascontrol)
	{
		hascontrol = false

		SlideTransition(TRANS_MODE.NEXT);
	}
instance_destroy(oDrone)
instance_destroy(oPlayer)
}
