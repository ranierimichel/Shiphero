/// @description Comportamento Enimies
randomize();

if(direction < 220 || direction > 320 || direction == 180){
	direction = random_range(220,320);
}
//image_blend = global.particle_color1;

if(instance_exists(obj_planet)){
	if(sprite_index != obj_planet.sprite_index){
		sprite_index = obj_planet.sprite_index;
	}	
}

// Aumentando tamanho
image_xscale += .001;
image_yscale += .001;
image_alpha = .5;

if (image_xscale >= scale){
	image_xscale = scale;
	image_yscale = scale;
	image_alpha = 1;

	// Colisão com obj_meteors_father
	var _collision = instance_place(x,y,obj_meteors_father);
	if(_collision && collision_meteors){
		
		part_emitter_region(global.sys_particle_meteor, global.emit_particle_meteor01, x, x, y, y, ps_shape_ellipse, ps_distr_invgaussian);
		part_emitter_burst(global.sys_particle_meteor, global.emit_particle_meteor01, global.particle_meteor_collision, 10);
		direction = random_range(220,320);
		if(other.speed >= 3){
			speed = other.speed/2;
			other.speed /= 2;
		} else {
			speed = random_range(1.5,2);
			other.speed = random_range(1.5,2);;
		}	
		// Reativando colisão
		//alarm[1] = 60*3;

		collision_meteors = false;
	}	
}
// Impedindo que saia da tela
//move_wrap(true,false,sprite_width/2);
if(y >= room_height){
	y = 100;	
}
if(y <= 99){
	y = room_height;
}

if(x <= sprite_width/2){
	direction = random_range(280,330);
}
if(x >= room_width - (sprite_width/2)){
	direction = random_range(210,260);
}

// Destruindo
if(life <= 0){
	instance_destroy();
}
// Não ficar muito lento
if(speed < .5){
	speed = random_range(.5,1.5);
}

// Rodar
image_angle += rodar;
//image_angle = direction;

// Ficar parado caso room_start
if(room == rm_start){
	speed = 0;	
}

// meteoro selecionado
// trocando a cor
//image_blend = (selectmeteor) ? c_green : c_white;

// efeito
//part_particles_create(global.partSystem, x, y, global.ptFlare, 1);
//part_type_orientation(global.ptSnow,0,360,2,0,true);
//part_particles_create(global.partSystem, x, y, global.ptSnow, 1);

//var _dir = direction+180;
//part_type_direction(global.ptBasic,_dir-90,_dir+90,0,0);