/// @description 
var _xcentro = x;
var _ycentro = y;
var _region = sprite_width/2;

if(parts){
	image_angle = scr_wave(0,360,60,0);
}

switch(sprite_index){
    case spr_sol:
    case spr_mercurio:
    case spr_venus:
		if(global.time % 10 == 0){
	        part_emitter_region(global.sys_particle_planets, global.emit_particle_planets, _xcentro-_region, _xcentro+_region, _ycentro-_region, _ycentro+_region, ps_shape_ellipse, ps_distr_linear);
			part_emitter_burst(global.sys_particle_planets, global.emit_particle_planets, global.particle_planets_flame, 3);
		}
    break;
	
	case spr_terra:
	case spr_lua:
	case spr_marte:
	case spr_saturno:
		if(global.time % 10 == 0){
	        part_emitter_region(global.sys_particle_planets, global.emit_particle_planets, _xcentro-_region, _xcentro+_region, _ycentro-_region, _ycentro+_region, ps_shape_ellipse, ps_distr_linear);
			part_emitter_burst(global.sys_particle_planets, global.emit_particle_planets, global.particle_planets_cloud, 3);
		}
	break;
	
	//case spr_jupiter:
	//case spr_urano:
	//case spr_netuno:
	default:
		if(global.time % 10 == 0){
			//cloud
			part_emitter_region(global.sys_particle_planets, global.emit_particle_planets, _xcentro-_region, _xcentro+_region, _ycentro-_region, _ycentro+_region, ps_shape_ellipse, ps_distr_linear);
			part_emitter_burst(global.sys_particle_planets, global.emit_particle_planets, global.particle_planets_cloud, 2);
			//raios
	        part_emitter_region(global.sys_particle_planets, global.emit_particle_planets, _xcentro-_region, _xcentro+_region, _ycentro-_region, _ycentro+_region, ps_shape_ellipse, ps_distr_linear);
			part_emitter_burst(global.sys_particle_planets, global.emit_particle_planets, global.particle_planets_raios, 2);
		}	
	break;
}
if( x >= room_width + sprite_width || y >= room_height + sprite_height){
	instance_destroy();	
}

