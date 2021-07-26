/// @description Insert description here
// You can write your code in this editor

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
if(global.time % 3 == 0 ){
	if(instance_exists(obj_controller_skills)){
		var _explosionlvl = obj_controller_skills.explosionlvl;
	}
	var _cor = scr_skill_collor1(_explosionlvl);
	var _cor1 = choose(_cor,c_white);
	part_type_color2(global.particle_explosion,_cor1,_cor);
	
	part_emitter_region(global.sys_particle_shock, global.emit_particle_shock, x, x, y, y, ps_shape_diamond, ps_distr_gaussian);
	part_emitter_burst(global.sys_particle_shock, global.emit_particle_shock, global.particle_explosion, 1 + (_explosionlvl/3));
}

//tremer tela
if(!instance_exists(obj_shake)){
	var _shake = instance_create_layer(x,y,"Instances",obj_shake);
	_shake.shake = 20;
}
