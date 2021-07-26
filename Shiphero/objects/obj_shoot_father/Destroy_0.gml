/// @description Insert description here
// You can write your code in this editor
randomize();

// se o combo n tiver zerado abaixa
if(global.combo > 1){
	global.combo -= .1;
} else {
	global.combo = 1;
}

////setando cores efeitos
//scr_particles_collors();

//Efeito
//part_type_scale(global.particle_meteor_collision, 1, 1);

// variavel para controlar quantidade e life dos efeitos de explosão
var _partvar = (global.combo) + (global.atk_power*.05) + (global.critical*.05);
part_type_life(global.particle_shoots_explosion,_partvar,_partvar+10);
part_emitter_region(global.sys_particle_meteor, global.emit_particle_meteor01, x, x, y, y, ps_shape_ellipse, ps_distr_invgaussian);
part_emitter_burst(global.sys_particle_meteor, global.emit_particle_meteor01, global.particle_shoots_explosion, _partvar);

