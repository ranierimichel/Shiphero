///@desc Atirando
///@param 0/1 Auternar tipo de tiro
function scr_shooting21_30(argument0) {
	randomize();
	// Atirando
	alarm[0] = scr_shootCadence();
	var _chance = argument0;

	var enimie = instance_exists(obj_meteors_father);
	var sound = instance_find(obj_sound,0);

	if(enimie){
		var _flag = scr_shootlvlcombo(); // lvl do tiro
		switch(_flag){			
			case 21:			
				var _t = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t.speed_shoot = .9;
				instance_create_layer(x,y,"Instances",obj_shoot10);			
				sound.alarm[1] = true;
				//show_debug_message(obj_shoot01.damage+obj_shoot10.damage);
			break;
			case 22:			
				if(_chance == 0){
					var _t1 = instance_create_layer(x,y,"Instances",obj_shoot06);
					_t1.direction = obj_ship_father.image_angle+2;				
					var _t2 = instance_create_layer(x,y,"Instances",obj_shoot06);
					_t2.direction = obj_ship_father.image_angle-2;
					sound.alarm[2] = true;
					//show_debug_message(obj_shoot06.damage*2);
				} else {
					var _t1 = instance_create_layer(x,y,"Instances",obj_shoot11);
					var _t2 = instance_create_layer(x,y,"Instances",obj_shoot01);
					_t2.speed_shoot = .9;
					sound.alarm[5] = true;
					//show_debug_message(obj_shoot11.damage+obj_shoot01.damage);
				}					
			break;
			case 23:
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t1.speed_shoot = .9;
				instance_create_layer(x,y,"Instances",obj_shoot12);			
				sound.alarm[3] = true;		
				//show_debug_message(obj_shoot12.damage+obj_shoot01.damage);
			break;
			case 24:			
				if(_chance == 0){
					var _t1 = instance_create_layer(x,y,"Instances",obj_shoot07);
					_t1.direction = obj_ship_father.image_angle+3;				
					var _t2 = instance_create_layer(x,y,"Instances",obj_shoot07);
					_t2.direction = obj_ship_father.image_angle-3;
					sound.alarm[3] = true;
					//show_debug_message(obj_shoot07.damage*2);
				} else {
					var _t1 = instance_create_layer(x,y,"Instances",obj_shoot12);
					var _t2 = instance_create_layer(x,y,"Instances",obj_shoot02);
					_t2.speed_shoot = .9;
					sound.alarm[4] = true;
					//show_debug_message(obj_shoot12.damage+obj_shoot02.damage);
				}
			break;
			case 25:
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t1.speed_shoot = .9;
				instance_create_layer(x,y,"Instances",obj_shoot14);			
				sound.alarm[5] = true;	
				//show_debug_message(obj_shoot14.damage+obj_shoot01.damage);
			break;
			case 26:
				if(_chance == 0){
					var _t1 = instance_create_layer(x,y,"Instances",obj_shoot08);
					_t1.direction = obj_ship_father.image_angle+2;				
					var _t2 = instance_create_layer(x,y,"Instances",obj_shoot08);
					_t2.direction = obj_ship_father.image_angle-2;
					sound.alarm[1] = true;
					//show_debug_message(obj_shoot08.damage*2);
				} else {
					var _t1 = instance_create_layer(x,y,"Instances",obj_shoot13);
					var _t2 = instance_create_layer(x,y,"Instances",obj_shoot03);
					_t2.speed_shoot = .9;
					sound.alarm[2] = true;
					//show_debug_message(obj_shoot13.damage+obj_shoot03.damage);
				}	
			break;
			case 27:
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t1.speed_shoot = .9;
				instance_create_layer(x,y,"Instances",obj_shoot16);			
				sound.alarm[6] = true;
				//show_debug_message(obj_shoot16.damage+obj_shoot01.damage);
			break;
			case 28:
				if(_chance == 0){
					var _t1 = instance_create_layer(x,y,"Instances",obj_shoot09);
					_t1.direction = obj_ship_father.image_angle+1;				
					var _t2 = instance_create_layer(x,y,"Instances",obj_shoot09);
					_t2.direction = obj_ship_father.image_angle-1;
					sound.alarm[3] = true;
					//show_debug_message(obj_shoot09.damage*2);
				} else {
					var _t1 = instance_create_layer(x,y,"Instances",obj_shoot14);
					var _t2 = instance_create_layer(x,y,"Instances",obj_shoot04);
					_t2.speed_shoot = .9;
					sound.alarm[1] = true;
					//show_debug_message(obj_shoot14.damage+obj_shoot04.damage);
				}	
			break;
			case 29:
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot01);	
				_t1.speed_shoot = .9;
				instance_create_layer(x,y,"Instances",obj_shoot18);			
				sound.alarm[6] = true;	
				//show_debug_message(obj_shoot18.damage+obj_shoot01.damage);
			break;
			case 30:
				if(_chance == 0){
					var _t1 = instance_create_layer(x,y,"Instances",obj_shoot10);
					_t1.direction = obj_ship_father.image_angle+2;				
					var _t2 = instance_create_layer(x,y,"Instances",obj_shoot10);
					_t2.direction = obj_ship_father.image_angle-2;
					sound.alarm[2] = true;
					//show_debug_message(obj_shoot10.damage*2);
				} else {
					var _t1 = instance_create_layer(x,y,"Instances",obj_shoot15);
					var _t2 = instance_create_layer(x,y,"Instances",obj_shoot05);
					_t2.speed_shoot = .9;
					sound.alarm[4] = true;
					//show_debug_message(obj_shoot15.damage+obj_shoot05.damage);
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
