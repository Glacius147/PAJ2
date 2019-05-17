/// @description Update camera

//update destination

if instance_exists(follow)
{
	xTo = follow.x;
	yTo = follow.y;	
}



#region //update position obj_camera
x += (xTo - x)/10;
y += (yTo - y)/10;

x = clamp(x,view_w_half,room_width- view_w_half);
y = clamp(y,view_h_half,room_height- view_h_half);



//update camera position
var _x = min(max(x - view_w_half,0),room_width - 2* view_w_half);
var _y = min(max(y - view_h_half,0),room_height - 2* view_h_half);

camera_set_view_pos(cam,_x,_y);
#endregion