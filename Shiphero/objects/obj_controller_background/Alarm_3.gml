/// @description Background4
part_emitter_region(global.sys_particle_background4, global.emit_particle_background4, -500, x, -500, y, ps_shape_rectangle, ps_distr_linear);
if(instance_exists(obj_planet)){
	var _cloud = obj_planet.parts;	
}
if(room == rm_game && !_cloud){
	part_emitter_burst(global.sys_particle_background4, global.emit_particle_background4, global.particle_background_cloud, 5);
}

alarm[3] = 10 * room_speed;