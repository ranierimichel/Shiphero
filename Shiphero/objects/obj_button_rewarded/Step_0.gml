/// @description 

event_inherited();
//image_blend = scr_corShips();

//shock
part_type_speed(global.particle_shock, 0, 0, 0, 0);
part_emitter_region(global.sys_particle_shock, global.emit_particle_shock, x-70, x+70, y-50 , y+50 , ps_shape_rectangle, ps_distr_invgaussian);
part_emitter_burst(global.sys_particle_shock, global.emit_particle_shock, global.particle_shock, 1);