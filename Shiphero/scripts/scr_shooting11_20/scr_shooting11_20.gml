///@desc Atirando
///@param 0/1 Auternar tipo de tiro
function scr_shooting11_20(argument0) {
	randomize();
	// Atirando
	alarm[0] = scr_shootCadence();
	var _chance = argument0;

	var enimie = instance_exists(obj_meteors_father);
	var sound = instance_find(obj_sound,0);

	if(enimie){
		var _flag = scr_shootlvlcombo(); // lvl do tiro
		switch(_flag){		
			case 11:
				instance_create_layer(x,y,"Instances",obj_shoot11);	
				sound.alarm[5] = true;
			break;
			case 12:
				if(_chance == 0){
					instance_create_layer(x,y,"Instances",obj_shoot12);	
					sound.alarm[6] = true;
					//show_debug_message(obj_shoot12.damage);
				} else {
					var _t1 = instance_create_layer(x,y,"Instances",obj_shoot01);
					_t1.direction = obj_ship_father.image_angle+1;				
					var _t2 = instance_create_layer(x,y,"Instances",obj_shoot01);
					_t2.direction = obj_ship_father.image_angle-1;
					sound.alarm[3] = true;
					//show_debug_message(obj_shoot01.damage*2);
				}		
			break;
			case 13:
				instance_create_layer(x,y,"Instances",obj_shoot13);	
				sound.alarm[1] = true;
				//show_debug_message(obj_shoot13.damage);
			break;
			case 14:
				if(_chance == 0){
					instance_create_layer(x,y,"Instances",obj_shoot14);	
					sound.alarm[2] = true;
					//show_debug_message(obj_shoot14.damage);
				} else {
					var _t1 = instance_create_layer(x,y,"Instances",obj_shoot02);
					_t1.direction = obj_ship_father.image_angle+2;				
					var _t2 = instance_create_layer(x,y,"Instances",obj_shoot02);
					_t2.direction = obj_ship_father.image_angle-2;
					sound.alarm[4] = true;
					//show_debug_message(obj_shoot02.damage*2);
				}
			break;
			case 15:
				instance_create_layer(x,y,"Instances",obj_shoot15);	
				sound.alarm[3] = true;
				//show_debug_message(obj_shoot15.damage);
			break;
			case 16:
				if(_chance == 0){
					instance_create_layer(x,y,"Instances",obj_shoot16);	
					sound.alarm[1] = true;
					//show_debug_message(obj_shoot16.damage);
				} else {
					var _t1 = instance_create_layer(x,y,"Instances",obj_shoot03);
					_t1.direction = obj_ship_father.image_angle+3;				
					var _t2 = instance_create_layer(x,y,"Instances",obj_shoot03);
					_t2.direction = obj_ship_father.image_angle-3;
					sound.alarm[4] = true;
					//show_debug_message(obj_shoot03.damage*2);
				}
			break;
			case 17:
				instance_create_layer(x,y,"Instances",obj_shoot17);	
				sound.alarm[5] = true;
				//show_debug_message(obj_shoot17.damage);
			break;
			case 18:
				if(_chance == 0){
					instance_create_layer(x,y,"Instances",obj_shoot18);	
					sound.alarm[2] = true;
					//show_debug_message(obj_shoot18.damage);
				} else {
					var _t1 = instance_create_layer(x,y,"Instances",obj_shoot04);
					_t1.direction = obj_ship_father.image_angle+2;				
					var _t2 = instance_create_layer(x,y,"Instances",obj_shoot04);
					_t2.direction = obj_ship_father.image_angle-2;
					sound.alarm[5] = true;
					//show_debug_message(obj_shoot04.damage*2);
				}
			break;
			case 19:
				instance_create_layer(x,y,"Instances",obj_shoot19);	
				sound.alarm[1] = true;
				//show_debug_message(obj_shoot19.damage);
			break;
			case 20:
				if(_chance == 0){
					instance_create_layer(x,y,"Instances",obj_shoot20);	
					sound.alarm[3] = true;
					//show_debug_message(obj_shoot20.damage);
				} else {
					var _t1 = instance_create_layer(x,y,"Instances",obj_shoot05);
					_t1.direction = obj_ship_father.image_angle+1;				
					var _t2 = instance_create_layer(x,y,"Instances",obj_shoot05);
					_t2.direction = obj_ship_father.image_angle-1;
					sound.alarm[6] = true;
					//show_debug_message(obj_shoot05.damage*2);
				}
			break;		
		}
	}

	// Double shoot
	if(double_shoot >= 1){
		alarm[0] = 5;
		double_shoot --;
	} else {
		double_shoot = global.double_shoot;	
	}
}
