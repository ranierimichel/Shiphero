/// @function				powerUp_aleatorio(_number);
randomize();
function scr_powerUp_aleatorio(){
	// ----------limitando skills----------
	if(!instance_exists(obj_pu_father)){
		instance_create_layer(0,0,"Instances",obj_pu_father);
	}
	var _skillpoint = obj_pu_father.pontos;;

	var _hplimite = global.hp + (instance_number(obj_pu_hp)*5) >= global.max_life ? true : false;
	var _atkpowerlimite = global.atk_power + (instance_number(obj_pu_atkpower)*_skillpoint) >= global.max_atk_power ? true : false;
	var _criticallimite = global.critical + (instance_number(obj_pu_critical)*_skillpoint) >= global.max_critical ? true : false;
	var _dexteritylimite = global.dexterity + (instance_number(obj_pu_dexterity)*_skillpoint) >= global.max_dexterity ? true : false;
	var _lvlshootlimite = global.lvl_shoot + (instance_number(obj_pu_lvlshoot)*_skillpoint) >= global.max_lvl_shoot ? true : false;

	var _xx = random(room_width);
	var _yy = random(room_height);
	repeat(1){

		var _skill_chance = irandom_range(0,4);

		// Soltando skills aleatorio
		switch(_skill_chance){
			case 0 :		
				if(!_hplimite){
					instance_create_layer(_xx,_yy,"Instances",obj_pu_hp);
				} else if(!_atkpowerlimite){
					instance_create_layer(_xx,_yy,"Instances",obj_pu_atkpower);
					} else if(!_criticallimite){
						instance_create_layer(_xx,_yy,"Instances",obj_pu_critical);
						} else if(!_dexteritylimite){
								instance_create_layer(_xx,_yy,"Instances",obj_pu_dexterity);
							} else if(!_lvlshootlimite){
									instance_create_layer(_xx,_yy,"Instances",obj_pu_lvlshoot);	
							}
			break;
			case 1 :
				if(!_atkpowerlimite){
					instance_create_layer(_xx,_yy,"Instances",obj_pu_atkpower);
				} else if(!_criticallimite){
					instance_create_layer(_xx,_yy,"Instances",obj_pu_critical);
					} else if(!_dexteritylimite){
						instance_create_layer(_xx,_yy,"Instances",obj_pu_dexterity);
						} else if(!_lvlshootlimite){
								instance_create_layer(_xx,_yy,"Instances",obj_pu_lvlshoot);
							} else if(!_hplimite){
									instance_create_layer(_xx,_yy,"Instances",obj_pu_hp);	
							}						
			break;
			case 2 :
				if(!_criticallimite){
					instance_create_layer(_xx,_yy,"Instances",obj_pu_critical);
				} else if(!_dexteritylimite){
					instance_create_layer(_xx,_yy,"Instances",obj_pu_dexterity);
					} else if(!_lvlshootlimite){
						instance_create_layer(_xx,_yy,"Instances",obj_pu_lvlshoot);
						} else if(!_hplimite){
								instance_create_layer(_xx,_yy,"Instances",obj_pu_hp);
							} else if(!_atkpowerlimite) {
									instance_create_layer(_xx,_yy,"Instances",obj_pu_atkpower);	
							}						
			break;
			case 3 :
				if(!_dexteritylimite){
					instance_create_layer(_xx,_yy,"Instances",obj_pu_dexterity);
				} else if(!_lvlshootlimite){
					instance_create_layer(_xx,_yy,"Instances",obj_pu_lvlshoot);
					} else if(!_hplimite){
						instance_create_layer(_xx,_yy,"Instances",obj_pu_hp);
						} else if(!_atkpowerlimite){
								instance_create_layer(_xx,_yy,"Instances",obj_pu_atkpower);
							} else if(!_criticallimite) {
									instance_create_layer(_xx,_yy,"Instances",obj_pu_critical);	
							}						
			break;
			case 4 :
				if(!_lvlshootlimite){
					instance_create_layer(_xx,_yy,"Instances",obj_pu_lvlshoot);
				} else if(!_hplimite){
					instance_create_layer(_xx,_yy,"Instances",obj_pu_hp);
					} else if(!_atkpowerlimite){
						instance_create_layer(_xx,_yy,"Instances",obj_pu_atkpower);
						} else if(!_criticallimite){
								instance_create_layer(_xx,_yy,"Instances",obj_pu_critical);
							} else if(!_dexteritylimite){
									instance_create_layer(_xx,_yy,"Instances",obj_pu_dexterity);	
							}						
			break;	
			}
	}
	
			//skill fixo
		//if(instance_exists(obj_ship_father)){
		//	switch(_number){
		//		case 1:
		//			instance_create_layer(_xx,_yy,"Instances",obj_pu_atkpower);
		//			if(!_dexteritylimite){
		//				instance_create_layer(_xx,_yy,"Instances",obj_pu_dexterity);
		//			}
		//		break;
		//		case 2:
		//			instance_create_layer(_xx,_yy,"Instances",obj_pu_atkpower);
		//				if(!_criticallimite){
		//			instance_create_layer(_xx,_yy,"Instances",obj_pu_critical);
		//			}
		//		break;
		//		case 3:
		//			instance_create_layer(_xx,_yy,"Instances",obj_pu_atkpower);
		//			if(!_lvlshootlimite){
		//				instance_create_layer(_xx,_yy,"Instances",obj_pu_lvlshoot);
		//			}
		//		break;
		//		case 4:
		//			if(!_dexteritylimite){
		//				instance_create_layer(_xx,_yy,"Instances",obj_pu_dexterity);
		//			}
		//			if(!_criticallimite){
		//				instance_create_layer(_xx,_yy,"Instances",obj_pu_critical);
		//			}
		//		break;
		//		case 5:
		//			if(!_lvlshootlimite){
		//				instance_create_layer(_xx,_yy,"Instances",obj_pu_lvlshoot);
		//			}
		//			if(!_dexteritylimite){
		//				instance_create_layer(_xx,_yy,"Instances",obj_pu_dexterity);
		//			}
		//		break;
		//		case 6:
		//			if(!_lvlshootlimite){
		//				instance_create_layer(_xx,_yy,"Instances",obj_pu_lvlshoot);
		//			}
		//			if(!_criticallimite){
		//				instance_create_layer(_xx,_yy,"Instances",obj_pu_critical);
		//			}
		//		break;
		//	}
		//}
}