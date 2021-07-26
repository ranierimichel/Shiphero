///@desc Atirando
///@param 0/1 Auternar tipo de tiro
function scr_shooting41_50(argument0) {
	randomize();
	// Atirando
	alarm[0] = scr_shootCadence();
	var _chance = argument0;

	var enimie = instance_exists(obj_meteors_father);
	var sound = instance_find(obj_sound,0);

	if(enimie){
		var _flag = scr_shootlvlcombo(); // lvl do tiro
		switch(_flag){			
			case 41:
				if(_chance == 0){
					var _t1 = instance_create_layer(x,y,"Instances",obj_shoot14);
					_t1.speed_shoot = .9;
					var _t2 = instance_create_layer(x,y,"Instances",obj_shoot17);				
					sound.alarm[6] = true;
					//show_debug_message(obj_shoot14.damage+obj_shoot17.damage);
				} else {
					var _t1 = instance_create_layer(x,y,"Instances",obj_shoot02);
					_t1.speed_shoot = .9;
					var _t2 = instance_create_layer(x,y,"Instances",obj_shoot02);
					_t2.direction = obj_ship_father.image_angle-3;
					var _t3 = instance_create_layer(x,y,"Instances",obj_shoot02);
					_t3.direction = obj_ship_father.image_angle+3;				
					var _t4 = instance_create_layer(x,y,"Instances",obj_shoot05);
					sound.alarm[5] = true;
					//show_debug_message((obj_shoot02.damage*3)+obj_shoot05.damage);
				}
			break;
			case 42:
				if(_chance == 0){
					var _t1 = instance_create_layer(x,y,"Instances",obj_shoot16);
					_t1.direction = obj_ship_father.image_angle-2;
					var _t2 = instance_create_layer(x,y,"Instances",obj_shoot16);	
					_t2.direction = obj_ship_father.image_angle+2;
					sound.alarm[4] = true;
					//show_debug_message(obj_shoot16.damage*2);
				
				} else {
					var _t1 = instance_create_layer(x,y,"Instances",obj_shoot03);
					_t1.direction = obj_ship_father.image_angle+2;				
					var _t2 = instance_create_layer(x,y,"Instances",obj_shoot03);
					_t2.direction = obj_ship_father.image_angle-2;
					var _t3 = instance_create_layer(x,y,"Instances",obj_shoot03);
					_t3.direction = obj_ship_father.image_angle+4;
					_t3.speed_shoot = .9;
					var _t4 = instance_create_layer(x,y,"Instances",obj_shoot03);
					_t4.direction = obj_ship_father.image_angle-4;
					_t4.speed_shoot = .9;
					sound.alarm[5] = true;
					//show_debug_message(obj_shoot03.damage*4);
				}
			break;
			case 43:
			if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot20);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot13);
				_t2.speed_shoot = .9;
				sound.alarm[2] = true;
				//show_debug_message(obj_shoot20.damage+obj_shoot13.damage);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t1.speed_shoot = .9;
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t2.direction = obj_ship_father.image_angle-3;
				_t2.speed_shoot = .9;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t3.direction = obj_ship_father.image_angle+3;
				_t3.speed_shoot = .9;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot10);
				sound.alarm[3] = true;
				//show_debug_message((obj_shoot01.damage*3)+obj_shoot10.damage);
			}
			break;
			case 44:
			if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot17);
				_t1.direction = obj_ship_father.image_angle+1;
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot17);
				_t2.direction = obj_ship_father.image_angle-1;
				sound.alarm[1] = true;
				//show_debug_message(obj_shoot17.damage*2);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot06);
				_t1.direction = obj_ship_father.image_angle-2;
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot06);
				_t2.direction = obj_ship_father.image_angle+2;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t3.direction = obj_ship_father.image_angle-4;
				_t3.speed_shoot = .9;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t4.direction = obj_ship_father.image_angle+4;
				sound.alarm[6] = true;
				_t4.speed_shoot = .9;
				//show_debug_message((obj_shoot06.damage*2)+(obj_shoot01.damage*2));
			}
			break;
			case 45:
			if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot17);
				_t1.speed_shoot = .9;
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot18);
				sound.alarm[5] = true;
				//show_debug_message(obj_shoot17.damage+obj_shoot18.damage);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t1.speed_shoot = .9;
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot02);			
				_t2.direction = obj_ship_father.image_angle+3;
				_t2.speed_shoot = .8;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot02);			
				_t3.direction = obj_ship_father.image_angle-3;
				_t3.speed_shoot = .8;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot09);			
				sound.alarm[2] = true;
				//show_debug_message((obj_shoot02.damage*3)+obj_shoot09.damage);
			}
			break;
			case 46:
			if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot18);
				_t1.direction = obj_ship_father.image_angle+2;
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot18);
				_t2.direction = obj_ship_father.image_angle-2;
				sound.alarm[3] = true;
				//show_debug_message(obj_shoot18.damage*2);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t1.direction = obj_ship_father.image_angle+4;
				_t1.speed_shoot = .8;
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot02);			
				_t2.direction = obj_ship_father.image_angle-4;
				_t2.speed_shoot = .8;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot06);			
				_t3.direction = obj_ship_father.image_angle-1;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot06);
				_t4.direction = obj_ship_father.image_angle+1;
				sound.alarm[2] = true;
				//show_debug_message((obj_shoot06.damage*2)+(obj_shoot02.damage*2));
			}
			break;
			case 47:
			if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot18);
				_t1.speed_shoot = .9;
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot19);			
				sound.alarm[6] = true;
				//show_debug_message(obj_shoot18.damage+obj_shoot19.damage);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t1.speed_shoot = .9;
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot03);			
				_t2.direction = obj_ship_father.image_angle-3;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot03);			
				_t3.direction = obj_ship_father.image_angle+3;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot08);
				sound.alarm[2] = true;
				//show_debug_message((obj_shoot03.damage*3)+obj_shoot08.damage);

			}
			break;
			case 48:
			if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot19);
				_t1.direction = obj_ship_father.image_angle+2;
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot19);
				_t2.direction = obj_ship_father.image_angle-2;
				sound.alarm[3] = true;
				//show_debug_message(obj_shoot19.damage*2);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t1.direction = obj_ship_father.image_angle+5;
				_t1.speed_shoot = .7;
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot04);			
				_t2.direction = obj_ship_father.image_angle-5;
				_t2.speed_shoot = .7;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot05);			
				_t3.direction = obj_ship_father.image_angle-2;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot05);
				_t4.direction = obj_ship_father.image_angle+2;
				sound.alarm[2] = true;
				//show_debug_message((obj_shoot04.damage*2)+(obj_shoot05.damage*2));
			}
			break;
			case 49:
			if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot19);
				_t1.speed_shoot = .9;
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot20);			
				sound.alarm[3] = true;
				//show_debug_message(obj_shoot19.damage+obj_shoot20.damage);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t1.speed_shoot = .9;
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot04);			
				_t2.direction = obj_ship_father.image_angle-2;
				_t2.speed_shoot = .7;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot04);			
				_t3.direction = obj_ship_father.image_angle+2;
				_t3.speed_shoot = .7;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot07);
				sound.alarm[4] = true;
				//show_debug_message((obj_shoot04.damage*3)+obj_shoot07.damage);
			}
			break;
			case 50:
			if(_chance == 0){
				instance_create_layer(x,y,"Instances",obj_shoot12);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot09);
				_t2.direction = obj_ship_father.image_angle-3;
				_t2.speed_shoot = .9;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot09);
				_t3.speed_shoot = .9;
				_t3.direction = obj_ship_father.image_angle+3;
				sound.alarm[1] = true;
				//show_debug_message((obj_shoot09.damage*2)+obj_shoot12.damage);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t1.direction = obj_ship_father.image_angle-6;
				_t1.speed_shoot = .7;
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot01);			
				_t2.direction = obj_ship_father.image_angle+6;
				_t2.speed_shoot = .7;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot02);			
				_t3.direction = obj_ship_father.image_angle+3;
				_t3.speed_shoot = .8;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t4.direction = obj_ship_father.image_angle-3;
				_t4.speed_shoot = .8;
				instance_create_layer(x,y,"Instances",obj_shoot04);
				sound.alarm[3] = true;
				//show_debug_message((obj_shoot01.damage*2)+(obj_shoot02.damage*2)+obj_shoot04.damage);
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
