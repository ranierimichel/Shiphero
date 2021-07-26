/// @description Insert description here
// You can write your code in this editor
var _angle1 = scr_wave(0,360,50,0);
var _angle2 = scr_wave(0,360,45,0);
var _angle3 = scr_wave(0,360,40,0);
var _angle4 = scr_wave(0,360,35,0);
if(parts){
	draw_sprite_ext(part01,0,x,y,1,1,_angle1,-1,image_alpha);
	draw_self();
	draw_sprite_ext(part02,0,x,y,1,1,_angle2,-1,image_alpha);
	draw_sprite_ext(part03,0,x,y,1,1,_angle3,-1,image_alpha);
	draw_sprite_ext(part04,0,x,y,1,1,_angle4,-1,image_alpha);
} else {
	draw_self();
}