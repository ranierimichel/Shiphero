/// @description Comportamento obj_game
randomize();

#region Background rm_start 
	//// Variavel BackGround
	//var lay_id = layer_get_id("background");

	//// Variaveis strelas do background
	//var lay_idstars1 = layer_get_id("Backgrounds_stars1");
	//var lay_idstars2 = layer_get_id("Backgrounds_stars2");
	//var lay_idstars3 = layer_get_id("Backgrounds_stars3");
	//var lay_idstars4 = layer_get_id("Backgrounds_stars4");

	//// Comportamento
	//if(room == rm_start || room == rm_records){
	//	layer_hspeed(lay_id,1);
	//	layer_vspeed(lay_id,1);
	//	layer_hspeed(lay_idstars1,1.5);
	//	layer_vspeed(lay_idstars1,1.5);
	//	layer_hspeed(lay_idstars2,2.9);
	//	layer_vspeed(lay_idstars2,2.9);
	//	layer_hspeed(lay_idstars3,3.3);
	//	layer_vspeed(lay_idstars3,3.3);
	//	layer_hspeed(lay_idstars4,3.7);
	//	layer_vspeed(lay_idstars4,3.7);
	//} else {
	//	layer_hspeed(lay_id,global.lvl_map*.05);
	//	layer_vspeed(lay_id,global.lvl_map*.05);
	//	layer_hspeed(lay_idstars1,global.lvl_map*.07);
	//	layer_vspeed(lay_idstars1,global.lvl_map*.07);
	//	layer_hspeed(lay_idstars2,global.lvl_map*.09);
	//	layer_vspeed(lay_idstars2,global.lvl_map*.09);
	//	layer_hspeed(lay_idstars3,global.lvl_map*.11);
	//	layer_vspeed(lay_idstars3,global.lvl_map*.11);
	//	layer_hspeed(lay_idstars4,global.lvl_map*.13);
	//	layer_vspeed(lay_idstars4,global.lvl_map*.13);
	//}
	
#endregion

#region Trocar background

//if (global.lvl_map <= 133 ){
//    layer_background_sprite(back_id, spr_background01);
//    } else if(global.lvl_map <= 266) {
//		layer_background_sprite(back_id, spr_background02);
//	} else {
//		layer_background_sprite(back_id, spr_background03);
//	}
#endregion 

//tempo
if(!global.pause){
	global.time ++;
}
	
// Selecionando a nave
if(room == rm_start){
	
	//cores efeitos
	if(global.time % 5 == 0){
		scr_particles_collors();
	}
	
	// meteoro na tela inicial para nave ficar atirando
	if(!instance_exists(obj_meteors_father)){
		instance_create_layer(200,0,"Instances",obj_meteor08);
	}
	
	scr_instance_ship();
	
	// Instrução para dar play
	if(!instance_exists(obj_instruction1) && obj_controller_acquire.acquired){
		var _midx = room_width/2;
		var _midy = room_height/2;
		instance_create_layer(_midx,_midy-200,"Instructions", obj_instruction1);
	}
	if(!obj_controller_acquire.acquired){
		if(instance_exists(obj_instruction1)){
			instance_destroy(obj_instruction1);	
		}	
	}
}	

if(room == rm_game){
	
	//cores efeitos
	if(global.time % 5 == 0){
		scr_particles_collors();	
	}
	
	// camera
	//if(!instance_exists(obj_camera)){
	//	instance_create_layer(0,0,"Controllers",obj_camera);	
	//}
	
	// luz
	//if(!instance_exists(obj_controller_light)){
	//	instance_create_layer(x,y,"Lighting",obj_controller_light);
	//}

	// Instanciando o player no centro da room se ele não existir
	if(!instance_exists(obj_ship_father)){
		scr_instance_ship();
	}
	
	// Quantidade de meteoro
	var _meteor01_number = instance_number(obj_meteor01);
	var _meteor02_number = instance_number(obj_meteor02);
	var _meteor03_number = instance_number(obj_meteor03);
	var _meteor04_number = instance_number(obj_meteor04);
	var _meteor05_number = instance_number(obj_meteor05);
	var _meteor06_number = instance_number(obj_meteor06);
	var _meteor07_number = instance_number(obj_meteor07);
	var _meteor08_number = instance_number(obj_meteor08);
	
	var _meteors_number = _meteor01_number + _meteor02_number + _meteor03_number + _meteor04_number + _meteor05_number + _meteor06_number + _meteor07_number + _meteor08_number;
	
	// limitando quantidade de meteoro chegar lvl 100
	var _meteorsrespawn = 0;
	if(global.lvl_map <= 100){
		_meteorsrespawn = 4+round(global.lvl_map*.1);
	} else {
		_meteorsrespawn = 15;
	}
	
	if(_meteors_number <= _meteorsrespawn){	//_meteors_number < 1 || global.cronometro == 0
		// Criando meteors
		scr_respaw_meteors();
		
		if(global.lvl_shoot < global.max_lvl_shoot){
			global.lvl_shoot ++;	
		}
		
		//global.cronometro = 1800;
		// soltando PU multiplo de 3
		//if(global.lvl_map % 2 == 0){		 
		//	scr_powerUp_aleatorio();
		//}
		//Pegando skill aleatória
		switch(global.lvl_map){
			case 3:
				scr_randomacquireskills();
			break;
			case 9:
				scr_randomacquireskills();
			break;
			case 15:
				scr_randomacquireskills();
			break;
			case 21:
				scr_randomacquireskills();
			break;
			case 27:
				scr_randomacquireskills();
			break;
			case 38:
				scr_randomacquireskills();
			break;
			case 44:
				scr_randomacquireskills();
			break;
			case 50:
				scr_randomacquireskills();
			break;
			case 56:
				scr_randomacquireskills();
			break;
			case 62:
				scr_randomacquireskills();
			break;
			case 68:
				scr_randomacquireskills();
			break;
			case 74:
				scr_randomacquireskills();
			break;
			case 80:
				scr_randomacquireskills();
			break;
			case 86:
				scr_randomacquireskills();
			break;
			case 92:
				scr_randomacquireskills();
			break;
			case 98:
				scr_randomacquireskills();
			break;
		}		
		
		if(instance_exists(obj_ship_father)){
			var numb_skill = obj_ship_father.number_skill_shoot; // max 6
		}		
		
		if(global.numb_skill_shoot < numb_skill){
			switch(global.lvl_map){
				case 6:
				case 30:
				case 80:
				case 185:
				// efeito
				if(instance_exists(obj_ship_father)){
					var _cor1 = make_colour_hsv(irandom(255), 255, 255);
					var _cor2 = make_colour_hsv(irandom(255), 255, 255);
					var _cor3 = make_colour_hsv(irandom(255), 255, 255);
					var _xx = obj_ship_father.x;
					var _yy = obj_ship_father.y;
					part_type_color3(global.particle_pu,_cor1,_cor2,_cor3);
					part_type_life(global.particle_pu, 100, 120);
					part_emitter_region(global.sys_particle_pu, global.emit_particle_pu, _xx, _xx, _yy, _yy, ps_shape_ellipse, ps_distr_invgaussian);
					part_emitter_burst(global.sys_particle_pu, global.emit_particle_pu, global.particle_pu, 10);
	
				}
				scr_skill_shoot_aleatorio();
				global.numb_skill_shoot ++;
				break;			
			}
		}
	}

	//global.cronometro --;
	global.fuel --;	
	//Combo
	// não ser abaixo de  1
	global.combo = global.combo <= 1 ? global.combo = 1 : global.combo;
	// não passar de 3
	global.combo = global.combo > 3 ? global.combo = 3 : global.combo;

}
	
