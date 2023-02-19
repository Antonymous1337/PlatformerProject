/// @description Set up camera
cam = view_camera[0];
follow = oPlayer;
halfCamWidth = camera_get_view_width(cam)*0.5;
halfCamHeight = camera_get_view_height(cam)*0.5;
xTo = xstart;
yTo = ystart;

shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
buff = 32;

mountainidExists = false;
mountainid = 0;
if (layer_exists("Mountains")) {
	mountainidExists = true;
	mountainid = layer_get_id("Mountains");
}

treeidExists = false;
treeid = 0
if (layer_exists("Trees")) {
	treeidExists = true;
	treeid = layer_get_id("Trees");
}