/// @description Insert description here
// You can write your code in this editor

vsp = 0;
hsp = 0;
grv = 0.2;
done = 0;

image_speed = 0;
image_index = 0;

ScreenShake(6,60);
audio_play_sound(snDeath,10,false);
game_set_speed(30,gamespeed_fps);

with(oCamera) folow = other.id;