/// @description 
event_inherited();
randomize();
//effect_create_above(ef_firework,x-20,y-10,1,c_purple);
//effect_create_above(ef_firework,x+10,y-30,0,c_purple);
//effect_create_above(ef_firework,x,y-40,2,c_purple);
instance_create_layer(x,y,"Instances",obj_shake);

//part_type_speed(global.particle7,0,2,.5,1);
//part_type_direction(global.particle7,0, 359 , 0, 1);
//part_type_life(global.particle7, 10, 30);
//part_type_color3(global.particle7, c_yellow, c_yellow, c_yellow);
//part_emitter_region(global.part_sys_atk, global.em_atk, x, x, y, y,ps_shape_diamond, ps_distr_invgaussian);
//part_emitter_burst(global.part_sys_atk, global.em_atk, global.particle7, 3);

obj_shake.shake = 20;

// alarm chamado pelo father voltando status normal
if(global.lvl_shoot <= global.max_lvl_shoot){
	obj_ship_father.currentlvlshoot = global.lvl_shoot + 1;
	global.lvl_shoot = irandom_range(global.lvl_shoot, 100);
}

// mostrando quanto ganhou de status
//if(instance_exists(obj_draw)){
//	var _xx = obj_draw.xspr_topright_PU;
//	var _yy = obj_draw.yspr_topright_PU_lvlshoot;
//}
//var show_text = instance_create_layer(_xx,_yy,"Instances",obj_show_text);
//show_text.text = pontos;
//show_text.positive = true; // mostrar o + na frente do numero
//show_text.critical = true; // critical quer dizer mostrar maior
//show_text.color = c_yellow;	

audio_play_sound(snd_pulvlshoot,1,false);