/// @description Background1

part_emitter_region(global.sys_particle_background1, global.emit_particle_background1, -500, x, -500, y, ps_shape_rectangle, ps_distr_linear);
//Cloud
if(instance_exists(obj_planet)){
	var _cloud = obj_planet.parts;	
}
if(room == rm_game && !_cloud){	
	part_emitter_burst(global.sys_particle_background1, global.emit_particle_background1, global.particle_background_cloud, 5);
}

//stars1
part_emitter_burst(global.sys_particle_background1, global.emit_particle_background1, global.particle_background_stars1, 50);	

alarm[0] = 10 * room_speed;

