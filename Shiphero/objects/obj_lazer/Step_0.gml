/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_ship_father)){
	x = obj_ship_father.x;
	y = obj_ship_father.y;
	image_angle = obj_ship_father.image_angle;
	
}

// Colisão com inimigo
var _collision = instance_place(x,y,obj_meteors_father);
if(_collision){			
	instance_destroy(_collision);		
	// aumentando combo
	if(global.combo <= 2){
		global.combo ++;
	}
}

//efeito
if(global.time % 3 == 0){
	if(instance_exists(obj_controller_skills)){
		var _lazerlvl = obj_controller_skills.lazerlvl;
	}
	var _cor = scr_skill_collor1(_lazerlvl);
	var _cor1 = choose(_cor,c_white);
	part_type_color2(global.particle_lazer,_cor1,_cor);
	
	part_type_orientation(global.particle_lazer, image_angle, image_angle, 0, 1, 1);
	part_emitter_region(global.sys_particle_lazer, global.emit_particle_lazer, x, x, y, y, ps_shape_line, ps_distr_gaussian);
	part_emitter_burst(global.sys_particle_lazer, global.emit_particle_lazer, global.particle_lazer, 1 + (_lazerlvl/2));
}	

//tremer tela
if(!instance_exists(obj_shake)){
	var _shake = instance_create_layer(x,y,"Instances",obj_shake);
	_shake.shake = 15;
}
