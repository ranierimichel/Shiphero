/// @description
//if(room == rm_game){
//	image_blend = global.particle_color1;
//} else {
//	image_blend = scr_corShips();	
//}
if(!drag){
	image_alpha = scr_wave(.3,.8,1,0);
}

//if(image_alpha > 0){
//	//shock
//	part_type_speed(global.particle_shock, 0, 0, 0, 0);
//	part_emitter_region(global.sys_particle_shock, global.emit_particle_shock, x, x , y , y , ps_shape_rectangle, ps_distr_invgaussian);
//	part_emitter_burst(global.sys_particle_shock, global.emit_particle_shock, global.particle_shock, 1);
//}