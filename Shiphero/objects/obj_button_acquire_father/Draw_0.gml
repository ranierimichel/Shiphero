/// @description Insert description here
// You can write your code in this editor

draw_self();

var _angle1 = scr_wave(0,720,10,0);

var _angle2 = scr_wave(680,0,6,0);

draw_sprite_ext(spr_btn_fundo1,0,x,y,image_xscale,image_yscale,_angle1,image_blend,image_alpha);
draw_sprite_ext(spr_btn_fundo2,0,x,y,image_xscale,image_yscale,_angle2,image_blend,image_alpha);