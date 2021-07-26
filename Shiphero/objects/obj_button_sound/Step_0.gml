/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(room == rm_game){
	image_blend = choose(global.particle_color1,global.particle_color2,global.particle_color3);
} else {
	image_blend = -1;	
}