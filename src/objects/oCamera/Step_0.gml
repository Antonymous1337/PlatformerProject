/// @description Update Camera

if (instance_exists(follow)) {
	xTo = follow.x;
	yTo = follow.y;
	
	if (follow.object_index == oPDead) {
		x = xTo;
		y = yTo;
	}
}

x += (xTo - x) / 25;
y += (yTo - y) / 25;

x = clamp(x,halfCamWidth+buff,room_width-halfCamWidth-buff);
y = clamp(y,halfCamHeight+buff,room_height-halfCamHeight-buff);

x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain-((1/shake_length)*shake_magnitude)); 

camera_set_view_pos(cam, x-halfCamWidth, y-halfCamHeight);

if (mountainidExists) {
	layer_x(mountainid,x/2);
}

if (treeidExists) {
	layer_x(treeid, x/4);
}
