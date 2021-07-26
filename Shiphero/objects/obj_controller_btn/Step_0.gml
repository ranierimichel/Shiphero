/// @description botões de adiquirir powerups
var _xmid = room_width/2;
if(room == rm_game){
	
	//variaveis para checar se já existe o botão
	var _button_acquire_hp = instance_exists(obj_button_acquire_hp);
	var _button_acquire_atkpower = instance_exists(obj_button_acquire_atkPower);
	var _button_acquire_critical = instance_exists(obj_button_acquire_critical);
	var _button_acquire_dexterity = instance_exists(obj_button_acquire_dexterity);
	var _button_acquire_lvlshoot = instance_exists(obj_button_acquire_lvlShoot);
	
	//variaveis para saber quantos pu ja tem na tela
	var _puhp = instance_number(obj_pu_hp);
	var _puatkpower = instance_number(obj_pu_atkpower);
	var _pucritical = instance_number(obj_pu_critical);
	var _pudexterity = instance_number(obj_pu_dexterity);
	var _pulvlshoot = instance_number(obj_pu_lvlshoot);
		
	// quantidade de status total
	var _hp = global.hp + _puhp;
	var _atkpower = global.atk_power + _puatkpower;
	var _critical = global.critical + _pucritical;
	var _dexterity = global.dexterity + _pudexterity;
	var _lvlshoot = global.lvl_shoot + _pulvlshoot;
	
	// variaveis para checar se nescessita comprar pu
	var _needhp = _hp <= (global.max_life-buttonPUPoints.hp) ? 1: 0;
	var _needatkpower = _atkpower <= (global.max_atk_power-buttonPUPoints.atkpower) ? 1: 0;
	var _needcrical = _critical <= (global.max_critical-buttonPUPoints.critical) ? 1: 0;
	var _needdexterity = _dexterity <= (global.max_dexterity-buttonPUPoints.dexterity) ? 1: 0;
	var _needlvlshoot = _lvlshoot <= (global.max_lvl_shoot-buttonPUPoints.lvlshoot) ? 1: 0;
	
	// Checando se está com PU ativado
	if(instance_exists(obj_ship_father)){
		var _modoPU = obj_ship_father.puactivated;
	}
	
	var _left_position = 90;
	var _mid_position = room_height/2.5;
	
	if(_needhp && !_button_acquire_hp && global.ptsPU > 0 && !_modoPU){ 
		// ---------------- Button hp ----------------		
		instance_create_layer(_left_position,_mid_position,"Buttons",obj_button_acquire_hp);
	} else if( global.hp == global.max_life || _modoPU){
		instance_destroy(obj_button_acquire_hp);		
	}
	
	if(_needatkpower && !_button_acquire_atkpower && global.ptsPU > 0 && !_modoPU){
		// ---------------- Button atkPower ----------------		
		instance_create_layer(_left_position,_mid_position + 160,"Buttons",obj_button_acquire_atkPower);
	} else if( global.atk_power == global.max_atk_power || _modoPU){
		instance_destroy(obj_button_acquire_atkPower);
	}
	
	if(_needcrical && !_button_acquire_critical && global.ptsPU > 0 && !_modoPU){
		// ---------------- Button critical ----------------		
		instance_create_layer(_left_position,_mid_position + 320,"Buttons",obj_button_acquire_critical);
	} else if( global.critical == global.max_critical || _modoPU){
		instance_destroy(obj_button_acquire_critical);
	}
	
	if(_needdexterity && !_button_acquire_dexterity && global.ptsPU > 0 && !_modoPU){
		// ---------------- Button dexterity ----------------		
		instance_create_layer(_left_position,_mid_position + 480,"Buttons",obj_button_acquire_dexterity);
	} else if( global.dexterity == global.max_dexterity || _modoPU){
		instance_destroy(obj_button_acquire_dexterity);
	}
	
	if(_needlvlshoot && !_button_acquire_lvlshoot && global.ptsPU > 0 && !_modoPU){
		// ---------------- Button lvlshoot ----------------		
		instance_create_layer(_left_position,_mid_position + 640,"Buttons",obj_button_acquire_lvlShoot);
	} else if( global.lvl_shoot == global.max_lvl_shoot || _modoPU){
		instance_destroy(obj_button_acquire_lvlShoot);
	}
	
	// Seta para mostrar que deve pegar power up
	var _numberseta = instance_number(obj_instruction);
	if(instance_exists(obj_button_acquire_father) && _numberseta <= 1){
		var _instru = instance_create_layer(_left_position, _mid_position-140 ,"Buttons",obj_instruction);
		_instru.PU = true;
	}
	
	// Dash
	if(instance_exists(obj_controller_skills)){
		if(obj_controller_skills.dashlvl >= 1){
			if(dash < timetodash){
				dash += 1/room_speed;
			} else {
				dash = timetodash;	
			}		
			if(obj_ship_father.dash){
				dash = 0;	
			}			
		}
	}

	// Lazer
	if(instance_exists(obj_controller_skills)){
		if(obj_controller_skills.lazerlvl >= 1){
			if(lazer < timetolazer){
				lazer += 1/room_speed;
			} else {
				lazer = timetolazer;	
			}		
			if(obj_ship_father.lazer){
				lazer = 0;	
			}
		}
	}

	// explosion
	if(instance_exists(obj_controller_skills)){
		if(obj_controller_skills.explosionlvl >= 1){
			if(explosion < timetoexplode){
				explosion += 1/room_speed;
			} else {
				explosion = timetoexplode;	
			}		
			if(obj_ship_father.explode){
				explosion = 0;	
			}
		}
	}
		
	// Instanciando botão e ativando seta
	if(!instance_exists(obj_button_explosion)){
		if(explosion == timetoexplode){
			instance_create_layer(room_width-88, _mid_position+110,"Buttons",obj_button_explosion);
			alarm[0] = 5*room_speed;
		}
	} else if(obj_ship_father.explode){
		instance_destroy(obj_button_explosion);
		alarm[0] = false;
	}
	
	// Instanciando botão e ativando seta
	if(!instance_exists(obj_button_lazer)){
		if(lazer == timetolazer){
			instance_create_layer(room_width-88, _mid_position+270,"Buttons",obj_button_lazer);
			alarm[0] = 5*room_speed;
		}
	} else if(obj_ship_father.lazer){
		instance_destroy(obj_button_lazer);
		alarm[0] = false;
	}
		
	// Instanciando botão e ativando seta
	if(!instance_exists(obj_button_dash)){
		if(dash == timetodash){
			instance_create_layer(room_width-88, _mid_position+270,"Buttons",obj_button_dash);
			alarm[0] = 5*room_speed;
		}
	} else if(obj_ship_father.dash){
		instance_destroy(obj_button_dash);
		alarm[0] = false;
	}
	
}

//rewarded button
if(room == rm_start){
	if(string(Yodo1MAS_RewardedIsReady()) == INTERSTITIAL_READY){
		if(!instance_exists(obj_button_rewarded) && !global.ship067){
			instance_create_layer(_xmid, 220,"Instances",obj_button_rewarded);	
		}
	}else{
		if(instance_exists(obj_button_rewarded)){
			instance_destroy(obj_button_rewarded);
		}	
	}
}
//debug
//if(!instance_exists(obj_button_rewarded)){
//	instance_create_layer(_xmid, 220,"Instances",obj_button_rewarded);	
//}
