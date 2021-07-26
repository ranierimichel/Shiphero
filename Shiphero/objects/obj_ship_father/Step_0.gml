/// @description Comportamento do objeto ship
// Crescendo a nave até pegar tamanho
randomize();

if(keyboard_check_direct(ord("W"))){
	y -= 10;
}
if(keyboard_check_direct(ord("S"))){
	y += 10;
}
if(keyboard_check_direct(ord("D"))){
	x += 10;
}
if(keyboard_check_direct(ord("A"))){
	x -= 10;
}

// Quando lazer virar lento, ficar imune, ficar parado.
if(lazer){
	if(!dash){
		rotation = 1.5;
	}
	shield = 120;
	speed = 0;
	//image_blend = global.particle_color1;
} else {	
	if(shield <= 0){
		rotation = 5;		
	} else {
		shield --;	
		rotation = 8;	
	}
}

if(room == rm_start){
// Colocando status no máx
global.hp = global.max_life;
global.atk_power = global.max_atk_power;
global.critical = global.max_critical;
global.dexterity = global.max_dexterity;
global.lvl_shoot = global.max_lvl_shoot;
	
// ------------------------ Efeito turbo ---------------------------
// Direção do efeito
var _dir = obj_ship_father.image_angle+180;
// Efeito:
var _cor = scr_corShips();
var _region = 5;
part_emitter_region(global.sys_particle_ship, global.emit_particle_ship_jet, x - _region, x + _region, y - _region, y + _region, ps_shape_ellipse, ps_distr_invgaussian);
part_type_direction(global.particle_ship_jet, _dir , _dir , 0, 0);
part_type_life(global.particle_ship_jet, 0, 5);
part_type_color1(global.particle_ship_jet,_cor);
			
//part_type_alpha1(global.emit_particle_ship_jet, global.moviment*.01);
part_emitter_burst(global.sys_particle_ship, global.emit_particle_ship_jet, global.particle_ship_jet, 1);	
}

// ---------------Movimentação---------------
if(room == rm_game){	
		
	// Garantindo que status não passe do limite
	if(global.hp >= global.max_life){
		global.hp = global.max_life;
	}
	
	if (global.atk_power-1 + buttonPUPoints.atkpower >= global.max_atk_power && !puactivated) {
	    global.atk_power = global.max_atk_power;
	}
	
	if(global.critical-1 + buttonPUPoints.critical >= global.max_critical && !puactivated){
		global.critical = global.max_critical;
	}
	
	if(global.dexterity-1 + buttonPUPoints.dexterity >= global.max_dexterity && !puactivated){
		global.dexterity = global.max_dexterity;
	}
	
	if(global.lvl_shoot-1 + buttonPUPoints.lvlshoot >= global.max_lvl_shoot && !puactivated){
		global.lvl_shoot = global.max_lvl_shoot;
	}	
	
	if(!jogado){		
		
		// Direção
		var dir = obj_button_control.dir;

		image_angle = scr_approach(image_angle,dir,rotation);
		if(image_angle > 360){
			image_angle = 0;
		}
		if(image_angle < 0){
			image_angle = 359;
		}
		var _collision = instance_place(x,y,obj_meteors_father);
		
		if(_collision && _collision.collision_ship){
			//Tirando colisão
			_collision.collision_ship = false;
			// Reativando colisão
			_collision.alarm[2] = 2*60;
			if(shield <= 0){ // se não estiver dando dash
				// zerando o combo
				global.combo = 1;
				with(other){
					direction = irandom(259); // player muda direção
				}
				_collision.direction = irandom(259); // inimigo muda direção
				var damage = _collision.damage;
				// Perdendo Hp
				global.hp -= damage;
				// mostrando o dano
				//if(instance_exists(obj_draw)){
				//	var _xx = obj_draw.xspr_topright_PU;
				//	var _yy = obj_draw.yspr_topright_PU_hp;
				//}
				//var show_text = instance_create_layer(_xx,_yy,"Instances",obj_show_text);
				//show_text.text = damage;
				//show_text.critical = true; // critical quer dizer mostrar maior
				//show_text.color = c_lime;
				
				// Perdendo gás
				var _lostfuel = damage*12;
				global.fuel -= _lostfuel;
				// mostrando a parca de gás
				//if(instance_exists(obj_draw)){
				//	var _xx = obj_draw.xspr_topright_PU;
				//	var _yy = obj_draw.yspr_topright_PU_fuel;
				//}
				var _xx = room_width/2;
				var _yy = 50;
				var show_text1 = instance_create_layer(_xx,_yy,"Instances",obj_show_text);
				show_text1.text = round(_lostfuel/60);
				show_text1.critical = true;
				show_text1.color = c_orange;
				// Sendo jogado
				scr_sendo_jogado(damage);
				// Parar de ser jogado
				alarm[1] = 30;
			} 
			//else {
			//	instance_destroy(_collision);
			//	//_collision.direction = irandom(259); // inimigo muda direção
			//	//_collision.speed = 2;
			//	//_collision.life -= global.combo * speed * global.lvl_map; // perde hp como se tivesse tomado um tiro (5+global.lvl_map) * 20 * enimie
			//	//var show_text = instance_create_layer(x,y,"Instances",obj_show_text);
			//	//show_text.text = global.combo * 100;
			//	//show_text.color = scr_corShips();
			//	if(global.combo <= 2){
			//		global.combo += 1;
			//	} else {
			//		global.combo = 3;	
			//	}
			//}

			// Efeito explosão
			part_emitter_region(global.sys_particle_meteor, global.emit_particle_meteor01, x, x, y, y, ps_shape_ellipse, ps_distr_invgaussian);
			part_emitter_burst(global.sys_particle_meteor, global.emit_particle_meteor01, global.particle_meteor_collision, 10);
	
			// Balançando a tela
			var shake = instance_create_layer(x, y, "Instances", obj_shake);	
			// Força a balançar a tela
			shake.shake = _collision.damage;
		}
		
		// se turbo destruir
		if(_collision){
			if(shield){
				instance_destroy(_collision);
				if(global.combo <= 2){
					global.combo += 1;
				} else {
					global.combo = 3;	
				}			
			}	
		}
	
		// Dash de acordo com a aceleração da nave
		if(dash){
			// ------------------------ Efeito turbo ---------------------------
			// Direção do efeito
			var _dir = obj_ship_father.image_angle+180;
			// Efeito:
			if(instance_exists(obj_controller_skills)){
				var _dashlvl = obj_controller_skills.dashlvl;
			}
			var _region = _dashlvl*7;
			var _cor = scr_skill_collor1(_dashlvl);
			var _cor1 = choose(_cor,c_white);
			part_type_color2(global.particle_ship_jet,_cor1,_cor);
			part_type_color2(global.particle_shock,_cor1,_cor);
			
			part_emitter_region(global.sys_particle_ship, global.emit_particle_ship_jet, x - _region, x + _region, y - _region, y + _region, ps_shape_ellipse, ps_distr_invgaussian);
			part_type_direction(global.particle_ship_jet, _dir , _dir , 0, 0);
			part_type_life(global.particle_ship_jet, 10, 20);			
			//part_type_alpha1(global.emit_particle_ship_jet, global.moviment*.01);
			part_emitter_burst(global.sys_particle_ship, global.emit_particle_ship_jet, global.particle_ship_jet, global.combo);
			//shock
			part_emitter_region(global.sys_particle_shock, global.emit_particle_shock, x - _region, x + _region, y - _region, y + _region, ps_shape_ellipse, ps_distr_invgaussian);
			part_emitter_burst(global.sys_particle_shock, global.emit_particle_shock, global.particle_shock, global.combo);
			
			motion_add(image_angle,10+global.moviment*.1);

			speed_dash = 5+(global.combo*2); // 30
			// Limitando velocidade
			if(speed >= speed_dash){
				speed = speed_dash;
			}						
			shield = 120; // 2 segundos de shield dps do dash
			// tremendo a tela
			if(instance_exists(obj_shake)){
				var _shake = instance_create_layer(x,y,"Instances",obj_shake);
				_shake.shake = global.combo*3;
			}
		} else {
			if(!lazer){
				image_angle = 90;
			}
			
			if(shield >= 0){
				shield --;	
			}
			
		}
	}else{
		// sair rodando
		image_angle += 10;
	}

	// trocando as cores aleatoria ao trocar de lvl
	//if(aceleration != global.moviment){
	//	color = choose(c_aqua,c_blue,c_fuchsia,c_green,c_lime,c_maroon,c_navy,c_olive,c_orange,c_purple,c_red,c_teal,c_white,c_yellow);
	//	color1 = choose(c_aqua,c_blue,c_fuchsia,c_green,c_lime,c_maroon,c_navy,c_olive,c_orange,c_purple,c_red,c_teal,c_white,c_yellow);
	//	color2 = choose(c_aqua,c_blue,c_fuchsia,c_green,c_lime,c_maroon,c_navy,c_olive,c_orange,c_purple,c_red,c_teal,c_white,c_yellow);
	//	part_type_colour3(global.particle_turbina, color , color1, color2);
	//	var alpha1 = random_range(.3,1);
	//	var alpha2 = random_range(.3,1);
	//	var alpha3 = random_range(.3,1);
	//	part_type_alpha3(global.particle_turbina,alpha1, alpha2, alpha3);
	//	aceleration = global.moviment;
	//}


	// Impedindo que saia da tela
	if(dash){
		move_wrap(true,false,sprite_width/2);
		if(y >= room_height){
			y = 100;	
		}
		if(y <= 99){
			y = room_height;
		}
	} else {	
		if(y+(sprite_height/2) >= room_height){
			y = room_height - (sprite_height/2) ;	
		}
		if(y-(sprite_height/2) <= 99){
			y = 100 + (sprite_height/2);
		}
		if(x+(sprite_width/2) >= room_width){
			x = room_width - (sprite_width/2) ;	
		}
		if(x-(sprite_width/2) <= 0){
			x = (sprite_height/2);
		}
	}
	
	

	// Morrendo
	if(global.hp <= 0 || global.fuel <= 0 ){
		instance_destroy();
		room_goto(rm_gameover)
	}

}

