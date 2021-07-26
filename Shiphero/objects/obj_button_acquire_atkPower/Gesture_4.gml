/// @description Animação
event_inherited();

image_index = 0;

global.atk_power += buttonPUPoints.atkpower;

//global.gem -= buttonPUCost.atkpower;

// efeito
if(instance_exists(obj_ship_father)){
	var _xx = obj_ship_father.x;
	var _yy = obj_ship_father.y;
	instance_create_layer(_xx,_yy,"Instances",obj_pu_atkpower);
	part_type_color1(global.particle_pu,c_red);
	part_type_life(global.particle_pu, 80, 100);
	part_emitter_region(global.sys_particle_pu, global.emit_particle_pu, _xx, _xx, _yy, _yy, ps_shape_ellipse, ps_distr_invgaussian);
	part_emitter_burst(global.sys_particle_pu, global.emit_particle_pu, global.particle_pu, 5);
	
}

instance_destroy();

// mostrando quanto ganhou de status
//if(instance_exists(obj_draw)){
//	var _xx = obj_draw.xspr_topright_PU;
//	var _yy = obj_draw.yspr_topright_PU_atkpower;
//}
//var show_text = instance_create_layer(_xx,_yy,"Instances",obj_show_text);	
//show_text.text = buttonPUPoints.atkpower;
//show_text.positive = true; // mostrar o + na frente do numero
//show_text.critical = true; // critical quer dizer mostrar maior
//show_text.color = c_red;


// mostrando quanto gastou
//if(instance_exists(obj_ship_father))
//{
//	var _xx = 50;
//	var _yy = 50;
	
//	var show_text = instance_create_layer(_xx,_yy,"Instances",obj_show_text);
//	show_text.text = buttonPUCost.atkpower;
//	show_text.critical = true; // critical quer dizer mostrar maior
//	show_text.color = c_yellow;
//}

audio_play_sound(snd_puatkpower,1,false);