/// @description Update camera

//update destination

if instance_exists(follow)
{
//	xTo = follow.x;
//	yTo = follow.y;	
	x = follow.x;
	y = follow.y;
}



#region //update position obj_camera
//x += (xTo - x)/10;
//y += (yTo - y)/10;

x = clamp(x,view_w_half,room_width- view_w_half);
y = clamp(y,view_h_half,room_height- view_h_half);



//update camera position
camera_set_view_pos(cam,x - view_w_half ,y - view_h_half);
#endregion