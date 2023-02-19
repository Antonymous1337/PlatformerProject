/// @description Insert description here
// You can write your code in this editor



// inputs
// movement
// collisions
// animation







if (hascontrol) {
	leftPress = keyboard_check(ord("A"));
	rightPress = keyboard_check(ord("D"));
	jumpPress = keyboard_check_pressed(vk_space);
} else {
	leftPress = 0;
	rightPress = 0;
	jumpPress = 0;
}

var move = rightPress - leftPress;

hsp = move * walksp;

vsp += grv;

if (place_meeting(x, y+1, oWall) && jumpPress) {
	vsp = -7;
}

if (place_meeting(x+hsp, y, oWall)) {
	while (!place_meeting(x+sign(hsp), y, oWall)) {
		x = x+sign(hsp);
	}
	hsp = 0;
}
x = x+hsp;


if (place_meeting(x, y+vsp, oWall)) {
	while (!place_meeting(x, y+sign(vsp), oWall)) {
		y = y+sign(vsp);
	}
	vsp = 0;
}
y = y+vsp;


// animation

if (!place_meeting(x, y+1, oWall)) {
	sprite_index = sPlayerA;
	image_speed = 0;
	if (vsp > 0) image_index = 1; else image_index = 0;
} else {
	if(sprite_index == sPlayerA) {
		audio_sound_pitch(snLanding, choose(0.8,1,1.2));
		audio_play_sound(snLanding,4,false);
	}
	image_speed = 1;
	if (hsp == 0) {
		sprite_index = sPlayer;
	} else {
		sprite_index = sPlayerR;
	}
}

if (hsp != 0) image_xscale = sign(hsp);

