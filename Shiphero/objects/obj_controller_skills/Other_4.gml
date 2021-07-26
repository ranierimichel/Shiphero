/// @description Parando dash e lazer para não bulgar

if(room == rm_game){
	if(instance_exists(obj_button_control)){
		// parando dash
		obj_button_control.alarm[1] = true;	
	}

	if(instance_exists(obj_ship_father)){
		// parando o lazer
		obj_ship_father.alarm[3] = true; // tempo lazer
	}
}