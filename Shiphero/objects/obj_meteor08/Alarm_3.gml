/// @description Efeito

// Efeito:
//var _region = 85;
if(room == rm_game){
part_emitter_region(global.sys_particle_meteor, global.emit_particle_meteor08, x, x, y, y, ps_shape_ellipse, ps_distr_invgaussian);
part_emitter_burst(global.sys_particle_meteor, global.emit_particle_meteor08, global.particle_meteor08, 1);
}

alarm[3] = 10;