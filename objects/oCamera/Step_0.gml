/// @description Update Camera

//update destination

if (instance_exists(follow))
{
	xTO = follow.x;
	yTO = follow.y;
}

//update object position

x += (xTO - x) / 25
y += (yTO - y) / 25

x = clamp(x,view_w_half,room_width-view_w_half);
y = clamp(y,view_h_half,room_height-view_h_half);


//update camera view

camera_set_view_pos(cam,x-view_w_half,y-view_h_half)

if (layer_exists("Building_"))
{
		layer_x("Building_",x/8);
}

window_set_cursor(cr_none)
cursor_sprite = sCursor