/// @description Wave
randomize();
//image_angle = direction;
image_angle += random_range(10,30);

if(!rebater && !atravessar_tela){
	if(y <= 100){
		instance_destroy();
	}
}

if(room == rm_start){
	if(y <= room_height/2){
		instance_destroy();
	}
	if(x >= 400){
		instance_destroy();
	}
}
// Skills shoot
#region Rebater
	var _right = room_width-5;
	var _down = room_height-5;

	#region Parede direita
	
	if(rebater >= 1 && rebater_disponivel && x >= _right){
		direction = random_range(130,230);
		rebater --; // diminuindo quantidade de vezes que rebate
		rebater_disponivel = false; // desligando rebater para n bulgar
		alarm[1] = 2; // voltando rebater	
	}
	
	//if(rebater >= 1 && rebater_disponivel && x >= _right && direction == 0){
	//	direction += 180;
	//	rebater --; // diminuindo quantidade de vezes que rebate
	//	rebater_disponivel = false; // desligando rebater para n bulgar
	//	alarm[1] = 2; // voltando rebater	
	//}
	//if(rebater >= 1 && rebater_disponivel && x >= _right && direction < 90){// parede direita tiro subindo
	//	direction += 90;
	//	rebater --;
	//	rebater_disponivel = false;
	//	alarm[1] = 2;
	//}
	//if(rebater >= 1 && rebater_disponivel && x >= _right && direction > 90){ // parede direita tiro descendo
	//	direction -= 90;
	//	rebater --;
	//	rebater_disponivel = false;
	//	alarm[1] = 2;
	//}
	#endregion

	#region Parede cima
	if(rebater >= 1 && rebater_disponivel && y <= 110 ){ //&& direction == 90
		direction = random_range(220,320);
		rebater --;
		rebater_disponivel = false;
		alarm[1] = 2;
	}
	//if(rebater >= 1 && rebater_disponivel && y <= 110 && direction < 90){// parede direita tiro subindo
	//	direction -= 90;
	//	rebater --;
	//	rebater_disponivel = false;
	//	alarm[1] = 2;
	//}
	//if(rebater >= 1 && rebater_disponivel && y <= 110 && direction > 90){ // parede direita tiro descendo
	//	direction += 90;
	//	rebater --;
	//	rebater_disponivel = false;
	//	alarm[1] = 2;
	//}
	#endregion

	#region Parede esquerda
	if(rebater >= 1 && rebater_disponivel && x <= 5){
		direction = random_range(50,310);
		rebater --; // diminuindo quantidade de vezes que rebate
		rebater_disponivel = false; // desligando rebater para n bulgar
		alarm[1] = 2; // voltando rebater	
	}
	
	//if(rebater >= 1 && rebater_disponivel && x <= 5 && direction == 180){
	//	direction += 180;
	//	rebater --;
	//	rebater_disponivel = false;
	//	alarm[1] = 2;
	//}
	//if(rebater >= 1 && rebater_disponivel && x <= 5 && direction < 180){// parede direita tiro subindo
	//	direction -= 90;
	//	rebater --;
	//	rebater_disponivel = false;
	//	alarm[1] = 2;
	//}
	//if(rebater >= 1 && rebater_disponivel && x <= 5 && direction > 180){ // parede direita tiro descendo
	//	direction += 90;
	//	rebater --;
	//	rebater_disponivel = false;
	//	alarm[1] = 2;
	//}
	#endregion

	#region Parede baixo
	
	if(rebater >= 1 && rebater_disponivel && y >= _down){
		direction = random_range(40,140);
		rebater --; // diminuindo quantidade de vezes que rebate
		rebater_disponivel = false; // desligando rebater para n bulgar
		alarm[1] = 2; // voltando rebater	
	}
	
	//if(rebater >= 1 && rebater_disponivel && y >= _down && direction == 270){
	//	direction += 180;
	//	rebater --;
	//	rebater_disponivel = false;
	//	alarm[1] = 2;
	//}
	//if(rebater >= 1 && rebater_disponivel && y >= _down && direction < 270){// parede direita tiro subindo
	//	direction -= 90;
	//	rebater --;
	//	rebater_disponivel = false;
	//	alarm[1] = 2;
	//}
	//if(rebater >= 1 && rebater_disponivel && y >= _down && direction > 270){ // parede direita tiro descendo
	//	direction += 90;
	//	rebater --;
	//	rebater_disponivel = false;
	//	alarm[1] = 2;
	//}
	#endregion

#endregion

#region Atravessar tela
var _xmax = room_width-5;
var _ymax = room_height-5;
if(x <= 5 || x >= _xmax || y <= 105 || y >= _ymax){
	if(atravessar_tela >= 1){	
		// Impedindo que saia da tela		
		if(y >= _ymax){
			y = 106;	
		}
		if(y <= 105){
			y = _ymax;
		}
		
		if(x >= _xmax){
			x = 6;	
		}
		if(x <= 5){
			x = _xmax;
		}
		atravessar_tela --;
	}
}

#endregion

// Direção dos tiros
direction = scr_wave(direction+from,direction+to,duration,offset);

// Seguir se ativado setado no script shooting
if(follow && instance_exists(obj_meteors_father)){
	for(var i = 0; i < instance_number(obj_meteors_father); i++){
		xx = instance_find(obj_meteors_father, i).x;
		yy = instance_find(obj_meteors_father, i).y;
		var _dist = point_distance(x,y,xx,yy);
		if(lessdist > _dist){
			lessdist = _dist;
			var _directiontofollow = point_direction(x,y,xx,yy);
			direction = lerp(direction, _directiontofollow,.5);
		}
	}
}

// Efeito:
//var _region = 5;

// Efeito:
//var _comboskill = (global.combo * 4)-3;
//var _colour = scr_skill_collor1(floor(_comboskill));
//part_type_color1(global.particle_shoots,_colour);

//part_emitter_region(global.sys_particle_shoot, global.emit_particle_shoot, x, x, y, y, ps_shape_ellipse, ps_distr_invgaussian);
//part_emitter_burst(global.sys_particle_shoot, global.emit_particle_shoot, global.particle_shoots, 1);

if(critical){
	image_yscale = 1+(global.critical * .01)+(global.combo*.1);
	image_xscale = 1+(global.critical * .01)+(global.combo*.1);
	//image_blend = color;
	part_type_color3(global.particle_shoots_explosion,global.particle_color1,global.particle_color2,global.particle_color3);
}

// Colisão com inimigo

var _collision = instance_place(x,y,obj_meteors_father);

if(_collision){
	
	if(!critical){		
		_collision.life -= damage*global.combo;
		
		// aumentando combo
		if(global.combo <= 2.8){
			global.combo += .2;
		}
		
	} else {
		// colocando o tiro com o dobro do tamanho caso der critico						
		_collision.life -= critical_damage*global.combo;
		
		// aumentando combo
		if(global.combo <= 2.6){
			global.combo += .4;
		}
	}
	switch(destroy_new_shoot){
	    case 1:
	        scr_destroy_new_shoot(shoot,0); // novo tiro aleatorio
	    break;		
	    case 2:
	        scr_destroy_new_shoot(shoot,1); // novo tiro seguindo
	    break;
	}
	instance_destroy();
}