// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// Setup:
function scr_particles(){
	
	// criando systemas
	// Sistema dos meteoros
	global.sys_particle_meteor = part_system_create();
	// Sistema da nave
	global.sys_particle_ship = part_system_create();
	// Sistema dos tiros
	global.sys_particle_shoot = part_system_create();
	// Sistema shock escudo
	global.sys_particle_shock = part_system_create();
	// Sistema shock escudo
	global.sys_particle_lazer = part_system_create();
	// Sistema Power ups
	global.sys_particle_pu = part_system_create();
	// Sistema planetas
	global.sys_particle_planets = part_system_create();
	// Sistema Background
	global.sys_particle_background1 = part_system_create();
	global.sys_particle_background2 = part_system_create();
	global.sys_particle_background3 = part_system_create();
	global.sys_particle_background4 = part_system_create();
	// Sistema explosão dos tiros
	//global.sys_particle_shootexplosion = part_system_create();
	
	//setando a layer
	part_system_layer(global.sys_particle_meteor,"Effect_meteor");
	part_system_layer(global.sys_particle_ship,"Effect_ship");
	part_system_layer(global.sys_particle_shoot,"Effect_ship");
	part_system_layer(global.sys_particle_shock,"Effect_ship");
	part_system_layer(global.sys_particle_lazer,"Effect_ship");
	part_system_layer(global.sys_particle_pu,"Effect_ship");
	part_system_layer(global.sys_particle_planets,"Planets");
	part_system_layer(global.sys_particle_background1,"Background_effects1");
	part_system_layer(global.sys_particle_background2,"Background_effects2");
	part_system_layer(global.sys_particle_background3,"Background_effects3");
	part_system_layer(global.sys_particle_background4,"Background_effects4");
	//part_system_layer(global.sys_particle_shootexplosion,"Effect_ship");

	// criando emitters
	global.emit_particle_meteor01 = part_emitter_create(global.sys_particle_meteor);	
	global.emit_particle_meteor02 = part_emitter_create(global.sys_particle_meteor);
	global.emit_particle_meteor03 = part_emitter_create(global.sys_particle_meteor);
	global.emit_particle_meteor04 = part_emitter_create(global.sys_particle_meteor);
	global.emit_particle_meteor05 = part_emitter_create(global.sys_particle_meteor);
	global.emit_particle_meteor06 = part_emitter_create(global.sys_particle_meteor);
	global.emit_particle_meteor07 = part_emitter_create(global.sys_particle_meteor);
	global.emit_particle_meteor08 = part_emitter_create(global.sys_particle_meteor);
	global.emit_particle_ship_jet = part_emitter_create(global.sys_particle_ship);
	global.emit_particle_pu = part_emitter_create(global.sys_particle_pu);
	global.emit_particle_shock = part_emitter_create(global.sys_particle_shock);
	global.emit_particle_lazer = part_emitter_create(global.sys_particle_lazer);
	global.emit_particle_shoot = part_emitter_create(global.sys_particle_shoot);
	global.emit_particle_planets = part_emitter_create(global.sys_particle_planets);
	global.emit_particle_background1 = part_emitter_create(global.sys_particle_background1);
	global.emit_particle_background2 = part_emitter_create(global.sys_particle_background2);
	global.emit_particle_background3 = part_emitter_create(global.sys_particle_background3);
	global.emit_particle_background4 = part_emitter_create(global.sys_particle_background4);
	//global.emit_particle_shootexplosion = part_emitter_create(global.sys_particle_shootexplosion);
	
	// Criando particulas
	// shoot explosion
	//var _p = part_type_create();
	//part_type_shape(_p, pt_shape_flare);
	//part_type_size(_p, 10, 20, 0, 0);
	//part_type_scale(_p, 2, 2);
	//part_type_color3(_p, global.particle_color1, global.particle_color2, global.particle_color3);
	//part_type_alpha3(_p, 0, 1, 0); 
	//part_type_speed(_p, 5, 10, 0, 0); // *
	//part_type_direction(_p, 0, 360, 1, 0);
	//part_type_gravity(_p, 0, 0);
	//part_type_orientation(_p, 0, 360, 5, 1, 0);
	//part_type_blend(_p, 1);
	//part_type_life(_p, 50, 100);
	//global.particle_shootexplosion = _p;
	
	// Ship jet
	var _p = part_type_create();
	part_type_sprite(_p,pt_ship_jet,1,1,0);
	//part_type_shape(_p, pt_shape_flare);
	part_type_size(_p, 0, 1, .1, .05);
	part_type_scale(_p, 1, 1);
	part_type_colour3(_p, global.particle_color1 , global.particle_color2, global.particle_color3);
	part_type_alpha3(_p,0, 1, 0);
	part_type_speed(_p, 1, 2, .1, 0);
	//part_type_direction(particle1, dir-20, dir+20, 0, 0); está sendo setado no step
	part_type_gravity(_p, 0, 0);
	part_type_orientation(_p, 0, 0, 0, 0, 1);
	part_type_blend(_p, 1);
	part_type_life(_p, 15, 25);
	global.particle_ship_jet = _p;
	
	// shoots
	var _p = part_type_create();
	part_type_sprite(_p,pt_flame,1,1,1);
	//part_type_shape(_p, pt_shape_flare);
	part_type_size(_p, .5, 1, 0, 0);
	part_type_scale(_p, 1, 1);
	part_type_color3(_p, global.particle_color1, global.particle_color2, global.particle_color3);
	part_type_alpha3(_p, .1, .1, .1); // atualizando no create do tiro father
	part_type_speed(_p, 0, 1, 0, 0); // *
	part_type_direction(_p, 0, 360, 1, 0);
	part_type_gravity(_p, 0, 0);
	part_type_orientation(_p, 0, 360, 5, 1, 0);
	part_type_blend(_p, 1);
	part_type_life(_p, 5, 10);
	global.particle_shoots = _p;
	
	// Meteoro 1
	var _p = part_type_create();
	part_type_sprite(_p,pt_flame,1,1,1);
	//part_type_shape(_p, pt_shape_flare);
	part_type_size(_p, .5, 1, .1, 0);
	part_type_scale(_p, .5, .5);
	part_type_color3(_p, global.particle_color1, global.particle_color2, global.particle_color3);
	part_type_alpha3(_p, 0, 1, 0);
	part_type_speed(_p, 0, 0, 0, 0); // *
	part_type_direction(_p, 0, 0, 0, 0);
	part_type_gravity(_p, 0, 0);
	part_type_orientation(_p, 0, 360, 0, 0, 1);
	part_type_blend(_p, 1);
	part_type_life(_p, 20, 30);
	global.particle_meteor01 = _p;
	
	// Meteoro 2
	var _p = part_type_create();
	part_type_sprite(_p,pt_flame,1,1,1);
	//part_type_shape(_p, pt_shape_flare);
	part_type_size(_p, .5, 1, .1, 0);
	part_type_scale(_p, 1, 1);
	part_type_color3(_p, global.particle_color1, global.particle_color2, global.particle_color3);
	part_type_alpha3(_p, 0, 1, 0);
	part_type_speed(_p, 0, 0, 0, 0); // *
	part_type_direction(_p, 0, 0, 0, 0);
	part_type_gravity(_p, 0, 0);
	part_type_orientation(_p, 0, 360, 0, 0, 1);
	part_type_blend(_p, 1);
	part_type_life(_p, 20, 30);
	global.particle_meteor02 = _p;
	
	// Meteoro 3
	var _p = part_type_create();
	part_type_sprite(_p,pt_flame,1,1,1);
	//part_type_shape(_p, pt_shape_flare);
	part_type_size(_p, .5, 1, .1, 0);
	part_type_scale(_p, 1.5, 1.5);
	part_type_color3(_p, global.particle_color1, global.particle_color2, global.particle_color3);
	part_type_alpha3(_p, 0, 1, 0);
	part_type_speed(_p, 0, 0, 0, 0); // *
	part_type_direction(_p, 0, 0, 0, 0);
	part_type_gravity(_p, 0, 0);
	part_type_orientation(_p, 0, 360, 0, 0, 1);
	part_type_blend(_p, 1);
	part_type_life(_p, 20, 30);
	global.particle_meteor03 = _p;
	
	// Meteoro 4
	var _p = part_type_create();
	part_type_sprite(_p,pt_flame,1,1,1);
	//part_type_shape(_p, pt_shape_flare);
	part_type_size(_p, .5, 1, .1, 0);
	part_type_scale(_p, 2, 2);
	part_type_color3(_p, global.particle_color1, global.particle_color2, global.particle_color3);
	part_type_alpha3(_p, 0, 1, 0);
	part_type_speed(_p, 0, 0, 0, 0); // *
	part_type_direction(_p, 0, 0, 0, 0);
	part_type_gravity(_p, 0, 0);
	part_type_orientation(_p, 0, 360, 0, 0, 1);
	part_type_blend(_p, 1);
	part_type_life(_p, 20, 30);
	global.particle_meteor04 = _p;
	
	// Meteoro 5
	var _p = part_type_create();
	part_type_sprite(_p,pt_flame,1,1,1);
	//part_type_shape(_p, pt_shape_flare);
	part_type_size(_p, .5, 1, .1, 0);
	part_type_scale(_p, 2.5, 2.5);
	part_type_color3(_p, global.particle_color1, global.particle_color2, global.particle_color3);
	part_type_alpha3(_p, 0, 1, 0);
	part_type_speed(_p, 0, 0, 0, 0); // *
	part_type_direction(_p, 0, 0, 0, 0);
	part_type_gravity(_p, 0, 0);
	part_type_orientation(_p, 0, 360, 0, 0, 1);
	part_type_blend(_p, 1);
	part_type_life(_p, 20, 30);
	global.particle_meteor05 = _p;
	//// Death explosion
	//var _pd = part_type_create();
	//part_type_shape(_pd, pt_shape_spark);
	//part_type_life(_pd, 0, 20);
	//part_type_size(_pd, 0, 1, 0, 0);
	//part_type_alpha3(_pd, 0, 1, 0);
	//part_type_color3(_pd, global.particle_color1, global.particle_color2, global.particle_color3);
	//global.particle_meteor05_death = _pd;
	//part_type_death(global.particle_meteor05,1,global.particle_meteor05_death);
	
	// Meteoro 6
	var _p = part_type_create();
	part_type_sprite(_p,pt_flame,1,1,1);
	//part_type_shape(_p, pt_shape_flare);
	part_type_size(_p, .5, 1, .1, 0);
	part_type_scale(_p, 3, 3);
	part_type_color3(_p, global.particle_color1, global.particle_color2, global.particle_color3);
	part_type_alpha3(_p, 0, 1, 0);
	part_type_speed(_p, 0, 0, 0, 0); // *
	part_type_direction(_p, 0, 0, 0, 0);
	part_type_gravity(_p, 0, 0);
	part_type_orientation(_p, 0, 360, 0, 0, 1);
	part_type_blend(_p, 1);
	part_type_life(_p, 20, 30);
	global.particle_meteor06 = _p;
	// Death explosion
	//var _pd = part_type_create();
	//part_type_shape(_pd, pt_shape_spark);
	//part_type_life(_pd, 0, 20);
	//part_type_size(_pd, 0, 1, 0, 0);
	//part_type_alpha3(_pd, 0, 1, 0);
	//part_type_color3(_pd, global.particle_color1, global.particle_color2, global.particle_color3);
	//global.particle_meteor06_death = _pd;
	//part_type_death(global.particle_meteor06,1,global.particle_meteor06_death);
	
	// Meteoro 7
	var _p = part_type_create();
	part_type_sprite(_p,pt_flame,1,1,1);
	//part_type_shape(_p, pt_shape_flare);
	part_type_size(_p, 3.5,3.5, .1, 0);
	part_type_scale(_p, 1, 1);
	part_type_color3(_p, global.particle_color1, global.particle_color2, global.particle_color3);
	part_type_alpha3(_p, 0, 1, 0);
	part_type_speed(_p, 0, 0, 0, 0); // *
	part_type_direction(_p, 0, 0, 0, 0);
	part_type_gravity(_p, 0, 0);
	part_type_orientation(_p, 0, 360, 0, 0, 1);
	part_type_blend(_p, 1);
	part_type_life(_p, 20, 30);
	global.particle_meteor07 = _p;
	// Death explosion
	//var _pd = part_type_create();
	//part_type_shape(_pd, pt_shape_ring);
	//part_type_life(_pd, 0, 20);
	//part_type_size(_pd, 0, 1, 0, 0);
	//part_type_alpha3(_pd, 0, 1, 0);
	//part_type_color3(_pd, global.particle_color1, global.particle_color2, global.particle_color3);
	//global.particle_meteor07_death = _pd;
	//part_type_death(global.particle_meteor07,1,global.particle_meteor07_death);
	
	// Meteoro 8
	var _p = part_type_create();
	part_type_sprite(_p,pt_flame,1,1,1);
	//part_type_shape(_p, pt_shape_flare);
	part_type_size(_p, .5, 1, .1, 0);
	part_type_scale(_p, 4, 4);
	part_type_color3(_p, global.particle_color1, global.particle_color2, global.particle_color3);
	part_type_alpha3(_p, 0, 1, 0);
	part_type_speed(_p, 0, 0, 0, 0); // *
	part_type_direction(_p, 0, 0, 0, 0);
	part_type_gravity(_p, 0, 0);
	part_type_orientation(_p, 0, 360, 0, 0, 1);
	part_type_blend(_p, 1);
	part_type_life(_p, 20, 30);
	global.particle_meteor08 = _p;
	// Death explosion
	//var _pd = part_type_create();
	//part_type_shape(_pd, pt_shape_star);
	//part_type_life(_pd, 0, 20);
	//part_type_size(_pd, 0, 1, 0, 0);
	//part_type_alpha3(_pd, 0, 1, 0);
	//part_type_color3(_pd, global.particle_color1, global.particle_color2, global.particle_color3);
	//global.particle_meteor08_death = _pd;
	//part_type_death(global.particle_meteor08,1,global.particle_meteor08_death);
	
	// Meteoro Collision
	var _p = part_type_create();
	part_type_sprite(_p,pt_flame,1,0,0);
	//part_type_shape(_p, pt_shape_flare);
	part_type_size(_p, .5, 1, .1, 0);
	part_type_scale(_p, 1, 1);
	part_type_color3(_p, global.particle_color1, global.particle_color2, global.particle_color3);
	part_type_alpha3(_p, 0, 1, 0);
	part_type_speed(_p, 0, 2, 0, 0); // *
	part_type_direction(_p, 0, 359, 0, 0);
	part_type_gravity(_p, 0, 0);
	part_type_orientation(_p, 0, 360, 0, 0, 1);
	part_type_blend(_p, 1);
	part_type_life(_p, 5, 15);
	global.particle_meteor_collision = _p;
	
	// Shoot explosion
	var _p = part_type_create();
	part_type_sprite(_p,pt_flame,1,0,0);
	//part_type_shape(_p, pt_shape_flare);
	part_type_size(_p, .5, 1, .1, 0);
	part_type_scale(_p, 1, 1);
	part_type_color3(_p, global.particle_color1, global.particle_color2, global.particle_color3);
	part_type_alpha3(_p, 0, 1, 0);
	part_type_speed(_p, 1, 4, .5, 0); // *
	part_type_direction(_p, 0, 359, 0, 0);
	part_type_gravity(_p, 0, 0);
	part_type_orientation(_p, 0, 360, 0, 0, 1);
	part_type_blend(_p, 1);
	part_type_life(_p, 5, 15);
	global.particle_shoots_explosion = _p;
	
	// Shock
	var _p = part_type_create();
	part_type_sprite(_p,pt_shock,1,1,1);
	//part_type_shape(_p, pt_shape_flare);
	part_type_size(_p, .5, 1, .1, 0);
	part_type_scale(_p, 1, 1.5);
	part_type_color3(_p, global.particle_color1, global.particle_color2, global.particle_color3);
	part_type_alpha3(_p, 0, 1, 0);
	part_type_speed(_p, 0, 0, 0, 0);
	part_type_direction(_p, 0, 0, 0, 0);
	part_type_gravity(_p, 0, 0);
	part_type_orientation(_p, 0, 360, 0, 0, 1);
	part_type_blend(_p, 1);
	part_type_life(_p, 10, 15);
	global.particle_shock = _p;
	
	// Lazer
	var _p = part_type_create();
	part_type_sprite(_p,pt_lazer,1,1,1);
	//part_type_shape(_p, pt_shape_flare);
	part_type_size(_p, .5, 1, .1, 1);
	part_type_scale(_p, 5.2, 2);
	part_type_color3(_p, global.particle_color1, global.particle_color2, global.particle_color3);
	part_type_alpha3(_p, 0, 1, 0);
	part_type_speed(_p, 0, 0, 0, 0);
	part_type_direction(_p, 0, 0, 0, 0);
	part_type_gravity(_p, 0, 0);
	part_type_orientation(_p, 0, 0, 0, 0, 0);
	part_type_blend(_p, 1);
	part_type_life(_p, 20, 30);
	global.particle_lazer = _p;
		
	//explosion
	var _p = part_type_create();
	part_type_sprite(_p,pt_shock,1,1,1);
	//part_type_shape(_p, pt_shape_cloud);
	part_type_size(_p, 5, 10, .1, 1);
	part_type_scale(_p, 1, 1);
	part_type_color3(_p, global.particle_color1, global.particle_color2, global.particle_color3);
	part_type_alpha3(_p, 0, 1, 0);
	part_type_speed(_p, 0, 0, 0, 0); // *
	part_type_direction(_p, 0, 0, 0, 0);
	part_type_gravity(_p, 0, 0);
	part_type_orientation(_p, 0, 360, 0, 0, 1);
	part_type_blend(_p, 1);
	part_type_life(_p, 20, 30);
	global.particle_explosion = _p;
	
	// Power up
	var _p = part_type_create();
	part_type_sprite(_p,pt_pu,1,1,1);
	//part_type_shape(_p, pt_shape_flare);
	part_type_size(_p, .5, 1, .1, 0);
	part_type_scale(_p, .2, .2);
	part_type_color3(_p, global.particle_color1, global.particle_color2, global.particle_color3);
	part_type_alpha3(_p, 0, 1, 0);
	part_type_speed(_p, 0, 0, 0, 0); // *
	part_type_direction(_p, 0, 0, 0, 0);
	part_type_gravity(_p, 0, 0);
	part_type_orientation(_p, 0, 360, 3, 1, 1);
	part_type_blend(_p, 1);
	part_type_life(_p, 80, 100);
	global.particle_pu = _p;
	
	// Planetas
	//flame
	var _p = part_type_create();
	part_type_sprite(_p,pt_flame,1,1,1);
	//part_type_shape(_p, pt_shape_flare);
	part_type_size(_p, 1, 3, .1, 0);
	part_type_scale(_p, 1, 1);
	part_type_color3(_p, global.particle_color1, global.particle_color2, global.particle_color3);
	part_type_alpha3(_p, 0, 1, 0);
	part_type_speed(_p, 0, 0, 0, 0); // *
	part_type_direction(_p, 0, 0, 0, 0);
	part_type_gravity(_p, 0, 0);
	part_type_orientation(_p, 0, 360, 0, 0, 1);
	part_type_blend(_p, 1);
	part_type_life(_p, 35, 40);
	global.particle_planets_flame = _p;
	
	//cloud
	var _p = part_type_create();
	//part_type_sprite(_p,pt_flame,1,1,1);
	part_type_shape(_p, pt_shape_cloud);
	part_type_size(_p, 1, 3, .1, 0);
	part_type_scale(_p, 1, 1);
	part_type_color3(_p, global.particle_color1, global.particle_color2, global.particle_color3);
	part_type_alpha3(_p, 0, 1, 0);
	part_type_speed(_p, 0, 0, 0, 0); // *
	part_type_direction(_p, 0, 0, 0, 0);
	part_type_gravity(_p, 0, 0);
	part_type_orientation(_p, 0, 360, 0, 0, 1);
	part_type_blend(_p, 1);
	part_type_life(_p, 35, 40);
	global.particle_planets_cloud = _p;
	
	//raios
	var _p = part_type_create();
	part_type_sprite(_p,pt_shock,1,1,1);
	//part_type_shape(_p, pt_shape_cloud);
	part_type_size(_p, 2, 2, 0, 0);
	part_type_scale(_p, 2, 2);
	part_type_color3(_p, global.particle_color1, global.particle_color2, global.particle_color3);
	part_type_alpha3(_p, 0, 1, 0);
	part_type_speed(_p, 0, 0, 0, 0); // *
	part_type_direction(_p, 0, 0, 0, 0);
	part_type_gravity(_p, 0, 0);
	part_type_orientation(_p, 0, 360, 0, 0, 1);
	part_type_blend(_p, 1);
	part_type_life(_p, 20, 30);
	global.particle_planets_raios = _p;
	
	// Background1
	var _p = part_type_create();
	part_type_shape(_p, pt_shape_cloud);
	part_type_size(_p, 1.5, 3, .001, 0);
	part_type_scale(_p, 5, 5);
	part_type_color3(_p, global.particle_color1, global.particle_color2, global.particle_color3);
	part_type_alpha3(_p, 0, .2, 0);
	part_type_speed(_p, .5, 4, 0, 0); // *
	part_type_direction(_p, 290, 330, 0, 0);
	part_type_gravity(_p, 0, 0);
	part_type_orientation(_p, 0, 360, 0, 0, 1);
	part_type_blend(_p, 0);
	part_type_life(_p, 600, 700);
	global.particle_background_cloud = _p;
	
	// Estrelas1
	var _p = part_type_create();
	part_type_shape(_p, pt_shape_spark);
	part_type_size(_p, .005, .01, .001, 1);
	part_type_scale(_p, .1, .1);
	part_type_color3(_p, global.particle_color1, global.particle_color2, global.particle_color3);
	part_type_alpha3(_p, 1, 1, 1);
	part_type_speed(_p, .2, .8, 0, 0); // *
	part_type_direction(_p, 300, 320, 0, 0);
	part_type_gravity(_p, 0, 0);
	part_type_orientation(_p, 0, 360, 50, 1, 1);
	part_type_blend(_p, 1);
	part_type_life(_p,  1500, 1500);
	global.particle_background_stars1 = _p;
	
	// Estrelas2
	var _p = part_type_create();
	part_type_shape(_p, pt_shape_spark);
	part_type_size(_p, .005, .01, .001, 1);
	part_type_scale(_p, .2, .2);
	part_type_color3(_p, global.particle_color1, global.particle_color2, global.particle_color3);
	part_type_alpha3(_p, 1, 1, 1);
	part_type_speed(_p, 2, 3, 0, 0); // *
	part_type_direction(_p, 300, 320, 0, 0);
	part_type_gravity(_p, 0, 0);
	part_type_orientation(_p, 0, 360, 50, 1, 1);
	part_type_blend(_p, 1);
	part_type_life(_p, 1500, 1500);
	global.particle_background_stars2 = _p;
	
	// Estrelas3
	var _p = part_type_create();
	part_type_shape(_p, pt_shape_spark);
	part_type_size(_p, .005, .01, .001, 1);
	part_type_scale(_p, .3, .3);
	part_type_color3(_p, global.particle_color1, global.particle_color2, global.particle_color3);
	part_type_alpha3(_p, 1, 1, 1);
	part_type_speed(_p, 3, 4, 0, 0); // *
	part_type_direction(_p, 300, 320, 0, 0);
	part_type_gravity(_p, 0, 0);
	part_type_orientation(_p, 0, 360, 50, 1, 1);
	part_type_blend(_p, 1);
	part_type_life(_p, 1500, 1500);
	global.particle_background_stars3 = _p;
	
	//setando cores
	scr_particles_collors();	
	
}