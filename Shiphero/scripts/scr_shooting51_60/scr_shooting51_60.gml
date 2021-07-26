///@desc Atirando
///@param 0/1 Auternar tipo de tiro
function scr_shooting51_60(argument0) {
	randomize();
	// Atirando
	alarm[0] = scr_shootCadence();
	var _chance = argument0;

	var enimie = instance_exists(obj_meteors_father);
	var sound = instance_find(obj_sound,0);

	if(enimie){
		var _flag = scr_shootlvlcombo(); // lvl do tiro
		switch(_flag){				
			case 51:
			if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot07);
				_t1.speed_shoot = .7;
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot12);
				_t2.direction = obj_ship_father.image_angle-2;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot12);
				_t3.direction = obj_ship_father.image_angle+2;
				sound.alarm[2] = true;
				//show_debug_message((obj_shoot12.damage*2)+obj_shoot07.damage);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t1.speed_shoot = .9;
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot01);			
				_t2.direction = obj_ship_father.image_angle-3;
				_t2.speed_shoot = .9;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot01);			
				_t3.direction = obj_ship_father.image_angle+3;
				_t3.speed_shoot = .9;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t4.direction = obj_ship_father.image_angle+2;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t5.direction = obj_ship_father.image_angle-2;
				sound.alarm[6] = true;
				//show_debug_message((obj_shoot01.damage*3)+(obj_shoot04.damage*2));
			}
			break;
			case 52:
				if(_chance == 0){
				instance_create_layer(x,y,"Instances",obj_shoot14);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot09);
				_t2.direction = obj_ship_father.image_angle-2;
				_t2.speed_shoot = .9;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot09);
				_t3.speed_shoot = .9;
				_t3.direction = obj_ship_father.image_angle+2;
				sound.alarm[5] = true;
				//show_debug_message((obj_shoot09.damage*2)+obj_shoot14.damage);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t1.direction = obj_ship_father.image_angle-7;
				_t1.speed_shoot = .6;
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot01);			
				_t2.direction = obj_ship_father.image_angle+7;
				_t2.speed_shoot = .6;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot02);			
				_t3.speed_shoot = .8;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t4.speed_shoot = .9;
				instance_create_layer(x,y,"Instances",obj_shoot06);
				sound.alarm[2] = true;
				//show_debug_message((obj_shoot01.damage*2)+(obj_shoot02.damage*2)+obj_shoot06.damage);
			}
			break;
			case 53:
			if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot07);
				_t1.speed_shoot = .7;
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot13);
				_t2.direction = obj_ship_father.image_angle-1;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot13);
				_t3.direction = obj_ship_father.image_angle+1;
				sound.alarm[1] = true;
				//show_debug_message((obj_shoot13.damage*2)+obj_shoot07.damage);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t1.speed_shoot = .9;
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot01);			
				_t2.direction = obj_ship_father.image_angle-3;
				_t2.speed_shoot = .6;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot01);			
				_t3.direction = obj_ship_father.image_angle+3;
				_t3.speed_shoot = .6;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot05);
				_t4.direction = obj_ship_father.image_angle+2;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot05);
				_t5.direction = obj_ship_father.image_angle-2;
				sound.alarm[4] = true;
				//show_debug_message((obj_shoot01.damage*3)+(obj_shoot05.damage*2));
			}
			break;
			case 54:
				if(_chance == 0){
				instance_create_layer(x,y,"Instances",obj_shoot14);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot10);
				_t2.direction = obj_ship_father.image_angle-4;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot10);
				_t3.direction = obj_ship_father.image_angle+4;
				sound.alarm[1] = true;
				//show_debug_message((obj_shoot10.damage*2)+obj_shoot14.damage);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t1.direction = obj_ship_father.image_angle-8;
				_t1.speed_shoot = .6;
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot01);			
				_t2.direction = obj_ship_father.image_angle+8;
				_t2.speed_shoot = .6;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t3.direction = obj_ship_father.image_angle-4;
				_t3.speed_shoot = .9;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t4.direction = obj_ship_father.image_angle+4;
				_t4.speed_shoot = .9;
				instance_create_layer(x,y,"Instances",obj_shoot06);
				sound.alarm[3] = true;
				//show_debug_message((obj_shoot01.damage*2)+(obj_shoot03.damage*2)+obj_shoot06.damage);
			}
			break;
			case 55:
			if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot09);
				_t1.speed_shoot = .9;
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot13);
				_t2.direction = obj_ship_father.image_angle-1;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot13);
				_t3.direction = obj_ship_father.image_angle+1;
				sound.alarm[6] = true;
				//show_debug_message((obj_shoot13.damage*2)+obj_shoot09.damage);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t1.speed_shoot = .9;
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot01);			
				_t2.direction = obj_ship_father.image_angle-3;
				_t2.speed_shoot = .8;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot01);			
				_t3.direction = obj_ship_father.image_angle+3;
				_t3.speed_shoot = .8;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot06);
				_t4.speed_shoot = .9;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot06);
				sound.alarm[4] = true;
				//show_debug_message((obj_shoot01.damage*3)+(obj_shoot06.damage*2));
			}
			break;
			case 56:
				if(_chance == 0){
				instance_create_layer(x,y,"Instances",obj_shoot14);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot11);
				_t2.direction = obj_ship_father.image_angle-2;
				_t2.speed_shoot = .8;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot11);
				_t3.direction = obj_ship_father.image_angle+2;
				_t3.speed_shoot = .8;
				sound.alarm[2] = true;
				//show_debug_message((obj_shoot11.damage*2)+obj_shoot14.damage);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t1.direction = obj_ship_father.image_angle-9;
				_t1.speed_shoot = .8;
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot02);			
				_t2.direction = obj_ship_father.image_angle+9;
				_t2.speed_shoot = .8;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t3.direction = obj_ship_father.image_angle-2;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t4.direction = obj_ship_father.image_angle+2;
				instance_create_layer(x,y,"Instances",obj_shoot06);
				sound.alarm[6] = true;
				//show_debug_message((obj_shoot02.damage*2)+(obj_shoot03.damage*2)+obj_shoot06.damage);
			}
			break;
			case 57:
			if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot09);
				_t1.speed_shoot = .9;
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot14);
				_t2.direction = obj_ship_father.image_angle-2;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot14);
				_t3.direction = obj_ship_father.image_angle+2;
				sound.alarm[5] = true;
				//show_debug_message((obj_shoot14.damage*2)+obj_shoot09.damage);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t1.speed_shoot = .9;
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot01);			
				_t2.direction = obj_ship_father.image_angle-3;
				_t2.speed_shoot = .9;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot01);			
				_t3.direction = obj_ship_father.image_angle+3;
				_t3.speed_shoot = .9;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot07);
				_t4.direction = obj_ship_father.image_angle+1;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot07);
				_t5.direction = obj_ship_father.image_angle-1;
				sound.alarm[1] = true;
				//show_debug_message((obj_shoot01.damage*3)+(obj_shoot07.damage*2));
			}
			break;
			case 58:
			if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot16);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot11);
				_t2.direction = obj_ship_father.image_angle-2;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot11);
				_t3.direction = obj_ship_father.image_angle+2;
				sound.alarm[5] = true;
				//show_debug_message((obj_shoot11.damage*2)+obj_shoot16.damage);
			} else {
				instance_create_layer(x,y,"Instances",obj_shoot08);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot03);			
				_t2.direction = obj_ship_father.image_angle-6;
				_t2.speed_shoot = .9;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot03);			
				_t3.direction = obj_ship_father.image_angle+6;
				_t3.speed_shoot = .9;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t4.direction = obj_ship_father.image_angle+8;
				_t4.speed_shoot = .8;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t5.direction = obj_ship_father.image_angle-8;
				_t5.speed_shoot = .8;
				sound.alarm[1] = true;
				//show_debug_message((obj_shoot02.damage*2)+(obj_shoot03.damage*2)+obj_shoot08.damage);
			}
			break;
			case 59:
			if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot09);
				_t1.speed_shoot = .6;
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot15);
				_t2.direction = obj_ship_father.image_angle-1;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot15);
				_t3.direction = obj_ship_father.image_angle+1;
				sound.alarm[6] = true;
				//show_debug_message((obj_shoot15.damage*2)+obj_shoot09.damage);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t1.speed_shoot = .9;
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot03);			
				_t2.direction = obj_ship_father.image_angle-2;
				_t2.speed_shoot = .7;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot03);			
				_t3.direction = obj_ship_father.image_angle+2;
				_t3.speed_shoot = .7;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot05);
				_t4.speed_shoot = .9;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot05);
				sound.alarm[4] = true;
				//show_debug_message((obj_shoot03.damage*3)+(obj_shoot05.damage*2));
			}
			break;
			case 60:
				if(_chance == 0){
				instance_create_layer(x,y,"Instances",obj_shoot16);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot12);
				_t2.direction = obj_ship_father.image_angle-2;
				_t2.speed_shoot = .7;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot12);
				_t3.direction = obj_ship_father.image_angle+2;
				_t3.speed_shoot = .7;
				sound.alarm[3] = true;
				//show_debug_message((_t2.damage*2)+obj_shoot16.damage);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t1.direction = obj_ship_father.image_angle-5;
				_t1.speed_shoot = .7;
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot03);			
				_t2.direction = obj_ship_father.image_angle+5;
				_t2.speed_shoot = .7;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t3.direction = obj_ship_father.image_angle-2;
				_t3.speed_shoot = .95;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t4.direction = obj_ship_father.image_angle+2;
				_t4.speed_shoot = .95;
				instance_create_layer(x,y,"Instances",obj_shoot06);
				sound.alarm[6] = true;
				//show_debug_message((_t1.damage*2)+(_t3.damage*2)+obj_shoot06.damage);
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
