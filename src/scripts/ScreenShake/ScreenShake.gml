/// @desc ScreenShake(Magnityde,frames)
/// @args Magnitude sets the strength of the shake (radius in pixels)
/// @args frames sets the length of the shake in frames

with (oCamera) {
	if (argument0 > shake_remain) { // emphasize bigger shake
		shake_magnitude = argument0;
		shake_remain = argument0
		shake_length = argument1;
	}
}