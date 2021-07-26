/// @description Animação
event_inherited();

instance_destroy(obj_button_acquire_father);

image_index = 0;

global.hp += buttonPUPoints.hp;

// efeito
if(instance_exists(obj_ship_father)){
	var _xx = obj_ship_father.x;
	var _yy = obj_ship_father.y;
	part_type_color1(global.particle_pu,c_lime);
	part_type_life(global.particle_pu, 80, 100);
	part_emitter_region(global.sys_particle_pu, global.emit_particle_pu, _xx, _xx, _yy, _yy, ps_shape_ellipse, ps_distr_invgaussian);
	part_emitter_burst(global.sys_particle_pu, global.emit_particle_pu, global.particle_pu, 5);	
}

//global.gem -= buttonPUCost.hp;

instance_destroy();

// mostrando quanto ganhou de status
//if(instance_exists(obj_draw)){
//	var _xx = obj_draw.xspr_topright_PU;
//	var _yy = obj_draw.yspr_topright_PU_hp;
//}
//var show_text = instance_create_layer(_xx,_yy,"Instances",obj_show_text);
//show_text.text = buttonPUPoints.hp;
//show_text.positive = true; // mostrar o + na frente do numero
//show_text.critical = true; // critical quer dizer mostrar maior
//show_text.color = c_lime;

// mostrando quanto gastou
//if(instance_exists(obj_ship_father))
//{
//	var _xx = 50;
//	var _yy = 50;
	
//	var show_text = instance_create_layer(_xx,_yy,"Instances",obj_show_text);
//	show_text.text = buttonPUCost.hp;
//	show_text.critical = true; // critical quer dizer mostrar maior
//	show_text.color = c_yellow;
//}

audio_play_sound(snd_puhp,1,false);