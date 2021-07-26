// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Setup:
function scr_cleanUP(){
	// Destruindo systemas
	part_system_destroy(global.sys_particle_meteor);
	part_system_destroy(global.sys_particle_planets);
	part_system_destroy(global.sys_particle_ship);
	part_system_destroy(global.sys_particle_shoot);
	part_system_destroy(global.sys_particle_shock);
	part_system_destroy(global.sys_particle_lazer);
	part_system_destroy(global.sys_particle_pu);
	part_system_destroy(global.sys_particle_background1);
	part_system_destroy(global.sys_particle_background2);
	part_system_destroy(global.sys_particle_background3);
	part_system_destroy(global.sys_particle_background4);
	//part_system_destroy(global.sys_particle_shootexplosion);
	
	//Destruindo emitters
	part_emitter_destroy(global.sys_particle_meteor, global.emit_particle_meteor01);
	part_emitter_destroy(global.sys_particle_meteor, global.emit_particle_meteor02);
	part_emitter_destroy(global.sys_particle_meteor, global.emit_particle_meteor03);
	part_emitter_destroy(global.sys_particle_meteor, global.emit_particle_meteor04);
	part_emitter_destroy(global.sys_particle_meteor, global.emit_particle_meteor05);
	part_emitter_destroy(global.sys_particle_meteor, global.emit_particle_meteor06);
	part_emitter_destroy(global.sys_particle_meteor, global.emit_particle_meteor07);
	part_emitter_destroy(global.sys_particle_meteor, global.emit_particle_meteor08);
	part_emitter_destroy(global.sys_particle_planets, global.emit_particle_planets);
	part_emitter_destroy(global.sys_particle_ship, global.emit_particle_ship_jet);
	part_emitter_destroy(global.sys_particle_pu, global.emit_particle_pu);
	part_emitter_destroy(global.sys_particle_shock, global.emit_particle_shock);
	part_emitter_destroy(global.sys_particle_lazer, global.emit_particle_lazer);
	part_emitter_destroy(global.sys_particle_shoot, global.emit_particle_shoot);
	part_emitter_destroy(global.sys_particle_background1, global.emit_particle_background1);
	part_emitter_destroy(global.sys_particle_background2, global.emit_particle_background2);
	part_emitter_destroy(global.sys_particle_background3, global.emit_particle_background3);
	part_emitter_destroy(global.sys_particle_background4, global.emit_particle_background4);	
	//part_emitter_destroy(global.sys_particle_shootexplosion, global.emit_particle_shootexplosion);

	// Destruindo particulas
	part_type_destroy(global.particle_meteor01);
	part_type_destroy(global.particle_meteor02);
	part_type_destroy(global.particle_meteor03);
	part_type_destroy(global.particle_meteor04);
	part_type_destroy(global.particle_meteor05);
	part_type_destroy(global.particle_meteor06);
	part_type_destroy(global.particle_meteor07);
	part_type_destroy(global.particle_meteor08);
	part_type_destroy(global.particle_planets_flame);
	part_type_destroy(global.particle_planets_cloud);
	part_type_destroy(global.particle_planets_raios);
	part_type_destroy(global.particle_meteor_collision);
	part_type_destroy(global.particle_ship_jet);
	part_type_destroy(global.particle_pu);
	part_type_destroy(global.particle_shock);
	part_type_destroy(global.particle_explosion);
	part_type_destroy(global.particle_background_cloud);
	part_type_destroy(global.particle_background_stars1);
	part_type_destroy(global.particle_background_stars2);
	part_type_destroy(global.particle_background_stars3);
	part_type_destroy(global.particle_lazer);
	part_type_destroy(global.particle_shoots);
	part_type_destroy(global.particle_shoots_explosion);
	//part_type_destroy(global.particle_shootexplosion);
}