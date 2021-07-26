///@desc Atirando
///@param 0/1 Auternar tipo de tiro
function scr_shooting61_70(argument0) {
	randomize();
	// Atirando
	alarm[0] = scr_shootCadence();
	var _chance = argument0;

	var enimie = instance_exists(obj_meteors_father);
	var sound = instance_find(obj_sound,0);

	if(enimie){
		var _flag = scr_shootlvlcombo(); // lvl do tiro
		switch(_flag){			
			case 61:
				if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot13);
				_t1.speed_shoot = .9;
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot06);
				_t2.speed_shoot = .8;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot06);
				_t3.direction = obj_ship_father.image_angle-2;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot06);
				_t4.direction = obj_ship_father.image_angle+2;
				sound.alarm[4] = true;
				//show_debug_message((_t2.damage*3)+_t1.damage);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot04);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot02);			
				_t2.direction = obj_ship_father.image_angle+3;
				_t2.speed_shoot = .9;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t3.direction = obj_ship_father.image_angle-3;
				_t3.speed_shoot = .9;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t4.direction = obj_ship_father.image_angle+6;
				_t4.speed_shoot = .7;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t5.direction = obj_ship_father.image_angle-6;
				_t5.speed_shoot = .7;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t6.speed_shoot = .8;
				sound.alarm[2] = true;
				//show_debug_message(_t1.damage+(_t2.damage*2)+(_t4.damage*3));
			}
			break;
			case 62:
				if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot12);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t2.direction = obj_ship_father.image_angle-4;
				_t2.speed_shoot = .8;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t3.direction = obj_ship_father.image_angle+4;
				_t3.speed_shoot = .8;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t4.direction = obj_ship_father.image_angle+8;
				_t4.speed_shoot = .6;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t5.direction = obj_ship_father.image_angle-8;
				_t5.speed_shoot = .6;
				sound.alarm[1] = true;
			
				//show_debug_message((_t4.damage*2)+(_t2.damage*2)+_t1.damage);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot05);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot02);			
				_t2.direction = obj_ship_father.image_angle+2;
				_t2.speed_shoot = .9;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t3.direction = obj_ship_father.image_angle-2;
				_t3.speed_shoot = .9;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t4.direction = obj_ship_father.image_angle+5;
				_t4.speed_shoot = .6;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t5.direction = obj_ship_father.image_angle-5;
				_t5.speed_shoot = .6;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t6.speed_shoot = .8;
				sound.alarm[3] = true;
				//show_debug_message(_t1.damage+(_t2.damage*2)+(_t4.damage*3));
			}
			break;
			case 63:
				if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot15);
				_t1.speed_shoot = .9;
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot06);
				_t2.speed_shoot = .7;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot06);
				_t3.direction = obj_ship_father.image_angle-3;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot06);
				_t4.direction = obj_ship_father.image_angle+3;
				sound.alarm[2] = true;
				//show_debug_message((_t2.damage*3)+_t1.damage);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot04);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot03);			
				_t2.direction = obj_ship_father.image_angle+2;
				_t2.speed_shoot = .9;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t3.direction = obj_ship_father.image_angle-2;
				_t3.speed_shoot = .9;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t4.direction = obj_ship_father.image_angle+7;
				_t4.speed_shoot = .75;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t5.direction = obj_ship_father.image_angle-7;
				_t5.speed_shoot = .75;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t6.speed_shoot = .8;
				sound.alarm[5] = true;
				//show_debug_message(_t1.damage+(_t2.damage*2)+(_t4.damage*3));
			}
			break;
			case 64:
				if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot14);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t2.direction = obj_ship_father.image_angle-3;
				_t2.speed_shoot = .8;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t3.direction = obj_ship_father.image_angle+3;
				_t3.speed_shoot = .8;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t4.direction = obj_ship_father.image_angle+10;
				_t4.speed_shoot = .7;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t5.direction = obj_ship_father.image_angle-10;
				_t5.speed_shoot = .7;
				sound.alarm[6] = true;
			
				//show_debug_message((_t4.damage*2)+(_t2.damage*2)+_t1.damage);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot07);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot02);			
				_t2.direction = obj_ship_father.image_angle+3;
				_t2.speed_shoot = .8;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t3.direction = obj_ship_father.image_angle-3;
				_t3.speed_shoot = .8;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t4.direction = obj_ship_father.image_angle+5;
				_t4.speed_shoot = .6;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t5.direction = obj_ship_father.image_angle-5;
				_t5.speed_shoot = .6;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t6.speed_shoot = .7;
				sound.alarm[1] = true;
				//show_debug_message(_t1.damage+(_t2.damage*2)+(_t4.damage*3));
			}
			break;
			case 65:
				if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot11);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot08);
				_t2.speed_shoot = .6;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot08);
				_t3.direction = obj_ship_father.image_angle-2;
				_t3.speed_shoot = .8;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot08);
				_t4.direction = obj_ship_father.image_angle+2;
				sound.alarm[4] = true;
				_t4.speed_shoot = .8;
				//show_debug_message((_t2.damage*3)+_t1.damage);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot04);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot04);			
				_t2.direction = obj_ship_father.image_angle+5;
				_t2.speed_shoot = .8;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t3.direction = obj_ship_father.image_angle-5;
				_t3.speed_shoot = .8;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t4.direction = obj_ship_father.image_angle+9;
				_t4.speed_shoot = .55;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t5.direction = obj_ship_father.image_angle-9;
				_t5.speed_shoot = .55;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t6.speed_shoot = .7;
				sound.alarm[6] = true;
				//show_debug_message(_t1.damage+(_t2.damage*2)+(_t4.damage*3));
			}
			break;
			case 66:
				if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot14);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t2.direction = obj_ship_father.image_angle-2;
				_t2.speed_shoot = .95;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t3.direction = obj_ship_father.image_angle+2;
				_t3.speed_shoot = .95;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t4.direction = obj_ship_father.image_angle+6;
				_t4.speed_shoot = .6;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t5.direction = obj_ship_father.image_angle-6;
				_t5.speed_shoot = .6;
				sound.alarm[1] = true;
			
				//show_debug_message((_t4.damage*2)+(_t2.damage*2)+_t1.damage);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot07);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot03);			
				_t2.direction = obj_ship_father.image_angle+2;
				_t2.speed_shoot = .9;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t3.direction = obj_ship_father.image_angle-2;
				_t3.speed_shoot = .9;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t4.direction = obj_ship_father.image_angle+9;
				_t4.speed_shoot = .7;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t5.direction = obj_ship_father.image_angle-9;
				_t5.speed_shoot = .7;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t6.speed_shoot = .85;
				sound.alarm[4] = true;
				//show_debug_message(_t1.damage+(_t2.damage*2)+(_t4.damage*3));
			}
			break;
			case 67:
				if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot16);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot07);
				_t2.speed_shoot = .7;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot07);
				_t3.direction = obj_ship_father.image_angle-4;
				_t3.speed_shoot = .95;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot07);
				_t4.direction = obj_ship_father.image_angle+4;
				sound.alarm[4] = true;
				_t4.speed_shoot = .95;
				//show_debug_message((_t2.damage*3)+_t1.damage);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot10);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot02);			
				_t2.direction = obj_ship_father.image_angle+7;
				_t2.speed_shoot = .9;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t3.direction = obj_ship_father.image_angle-7;
				_t3.speed_shoot = .9;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t4.direction = obj_ship_father.image_angle+11;
				_t4.speed_shoot = .55;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t5.direction = obj_ship_father.image_angle-11;
				_t5.speed_shoot = .55;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t6.speed_shoot = .6;
				sound.alarm[6] = true;
				//show_debug_message(_t1.damage+(_t2.damage*2)+(_t4.damage*3));
			}
			break;
			case 68:
				if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot18);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t2.direction = obj_ship_father.image_angle-3;
				_t2.speed_shoot = .95;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t3.direction = obj_ship_father.image_angle+3;
				_t3.speed_shoot = .95;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t4.direction = obj_ship_father.image_angle+5;
				_t4.speed_shoot = .9;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t5.direction = obj_ship_father.image_angle-5;
				_t5.speed_shoot = .9;
				sound.alarm[1] = true;
			
				//show_debug_message((_t4.damage*2)+(_t2.damage*2)+_t1.damage);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot06);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot03);			
				_t2.direction = obj_ship_father.image_angle+5;
				_t2.speed_shoot = .85;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t3.direction = obj_ship_father.image_angle-5;
				_t3.speed_shoot = .85;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t4.direction = obj_ship_father.image_angle+9;
				_t4.speed_shoot = .5;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t5.direction = obj_ship_father.image_angle-9;
				_t5.speed_shoot = .5;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t6.speed_shoot = .6;
				sound.alarm[4] = true;
				//show_debug_message(_t1.damage+(_t2.damage*2)+(_t4.damage*3));
			}
			break;
			case 69:
				if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot12);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot09);
				_t2.speed_shoot = .6;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot09);
				_t3.direction = obj_ship_father.image_angle-2;
				_t3.speed_shoot = .85;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot09);
				_t4.direction = obj_ship_father.image_angle+2;
				sound.alarm[4] = true;
				_t4.speed_shoot = .85;
				//show_debug_message((_t2.damage*3)+_t1.damage);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot05);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot04);			
				_t2.direction = obj_ship_father.image_angle+3;
				_t2.speed_shoot = .6;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t3.direction = obj_ship_father.image_angle-3;
				_t3.speed_shoot = .6;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t4.direction = obj_ship_father.image_angle+09;
				_t4.speed_shoot = .85;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t5.direction = obj_ship_father.image_angle-09;
				_t5.speed_shoot = .85;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t6.speed_shoot = .6;
				sound.alarm[6] = true;
				//show_debug_message(_t1.damage+(_t2.damage*2)+(_t4.damage*3));
			}
			break;
			case 70:
				if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot18);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot05);
				_t2.direction = obj_ship_father.image_angle-4;
				_t2.speed_shoot = .95;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot05);
				_t3.direction = obj_ship_father.image_angle+4;
				_t3.speed_shoot = .95;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t4.direction = obj_ship_father.image_angle+11;
				_t4.speed_shoot = .7;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t5.direction = obj_ship_father.image_angle-11;
				_t5.speed_shoot = .7;
				sound.alarm[1] = true;
			
				//show_debug_message((_t4.damage*2)+(_t2.damage*2)+_t1.damage);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot06);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot04);			
				_t2.direction = obj_ship_father.image_angle+7;
				_t2.speed_shoot = .8;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t3.direction = obj_ship_father.image_angle-7;
				_t3.speed_shoot = .8;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t4.direction = obj_ship_father.image_angle+10;
				_t4.speed_shoot = .6;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t5.direction = obj_ship_father.image_angle-10;
				_t5.speed_shoot = .6;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t6.speed_shoot = .85;
				sound.alarm[4] = true;
				//show_debug_message(_t1.damage+(_t2.damage*2)+(_t4.damage*3));
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
