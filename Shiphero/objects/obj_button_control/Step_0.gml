/// @description
// Voltando velocidade da room ao normal
//room_speed = lerp(room_speed,60,.1);

if(instance_number(obj_button_control) > 1){
	instance_destroy();	
}

// Arrumando o tamanho do botão para n dar duplo toque na tela
if(instance_exists(obj_button_acquire_father)){
	x = 175;
	if(instance_exists(obj_skill_father)){
		image_xscale = 5.9;	
	} else {
		image_xscale = 12;
	}
}else{
	x = 0
	if(instance_exists(obj_skill_father)){
		image_xscale = 8.5;	
	} else {
		image_xscale = 12;	
	}
}

if(instance_exists(obj_ship_father) && !dragging){
	//parar
	//obj_ship_father.speed = 0;
	//parar de rodar
	//dir = obj_ship_father.image_angle;	
	//// mirar proximo	
	//if(instance_exists(obj_meteors_father)){		
	//	for(var i = 0; i < instance_number(obj_meteors_father); i++){	
	//		if(instance_find(obj_meteors_father,i)){
	//			var _xx = instance_find(obj_meteors_father, i).x;
	//			var _yy = instance_find(obj_meteors_father, i).y;
	//			var _direc = point_direction(obj_ship_father.x,obj_ship_father.y,_xx,_yy);								
	//			if(dir > _direc){
	//				lessdirec = dir - _direc;
	//			} else {
	//				lessdirec =_direc - dir ;
	//			}
				
	//			if(lessdirec <= 2){
	//				dir = _direc;			
	//			}
	//		}			
	//	}	
	//	if(dir >= 359){
	//		dir = 2;	
	//	}
	//	if(dir <= 1){
	//		dir = 358;	
	//	}
	//}
	// ------------------------ Efeito turbo ---------------------------
	// Direção do efeito
	var _dir = obj_ship_father.image_angle+180;
	// Efeito:
	var _region = 5;
	part_emitter_region(global.sys_particle_ship, global.emit_particle_ship_jet, obj_ship_father.x - _region, obj_ship_father.x + _region, obj_ship_father.y - _region, obj_ship_father.y + _region, ps_shape_ellipse, ps_distr_invgaussian);
	part_type_direction(global.particle_ship_jet, _dir , _dir , 0, 0);
	part_type_life(global.particle_ship_jet, 0, 5);			
	//part_type_alpha1(global.emit_particle_ship_jet, global.moviment*.01);
	part_emitter_burst(global.sys_particle_ship, global.emit_particle_ship_jet, global.particle_ship_jet, 1);	
} else {	
	//var _xx = obj_ship_father.x;
	//var _yy = obj_ship_father.y;
	// direção para virar a nave
	dir = point_direction(startx,starty,xx,yy);
	
	//if(obj_ship_father.dash){
	//	dirmin = dir - 180;
	//	dirmax = dir + 180;
	//}else{
	//	dirmin = dir - 25;
	//	dirmax = dir + 25;
	//}
	
	if(obj_ship_father.lazer){
		obj_ship_father.direction = dir;	
	}	
	
	dist = point_distance(startx,starty,xx,yy);
			
	if(!obj_ship_father.dash && !obj_ship_father.jogado && !obj_ship_father.lazer){ // && dirmax >= obj_ship_father.image_angle && dirmin <= obj_ship_father.image_angle && !obj_ship_father.lazer
		var _x = startx - xx;
		var _y = starty - yy;
		
		if(dist >= 10){ // em movimento 100
			obj_ship_father.x = lerp(obj_ship_father.x,obj_ship_father.x-_x,.05);
			obj_ship_father.y = lerp(obj_ship_father.y,obj_ship_father.y-_y,.05);
			
			// ------------------------ Efeito turbo ---------------------------
			// Direção do efeito
			var _dir = obj_ship_father.image_angle+180;
			// Efeito:
			var _region = 5;
			part_emitter_region(global.sys_particle_ship, global.emit_particle_ship_jet, obj_ship_father.x - _region, obj_ship_father.x + _region, obj_ship_father.y - _region, obj_ship_father.y + _region, ps_shape_ellipse, ps_distr_invgaussian);
			part_type_direction(global.particle_ship_jet, _dir , _dir , 0, 0);
			part_type_life(global.particle_ship_jet, 5, 15);
			
			//part_type_alpha1(global.emit_particle_ship_jet, global.moviment*.01);
			part_emitter_burst(global.sys_particle_ship, global.emit_particle_ship_jet, global.particle_ship_jet, 1);
			
			//// tremendo a tela
			//if(!instance_exists(obj_shake)){
			//	// Balançando a tela
			//	var shake = instance_create_layer(x, y, "Instances", obj_shake);	
			//	// Força a balançar a tela
			//	shake.shake = 3;
			//}
			
		}

	}	
	
}
