/// @description Efeito

// Efeito:
part_emitter_region(global.sys_particle_meteor, global.emit_particle_meteor01, x, x, y, y, ps_shape_ellipse, ps_distr_invgaussian);
part_emitter_burst(global.sys_particle_meteor, global.emit_particle_meteor01, global.particle_meteor01, 1);	

alarm[3] = 10;