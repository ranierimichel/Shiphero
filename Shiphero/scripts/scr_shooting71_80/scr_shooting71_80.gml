///@desc Atirando
///@param 0/1 Auternar tipo de tiro
function scr_shooting71_80(argument0) {
	randomize();
	// Atirando
	alarm[0] = scr_shootCadence();
	// variavel para mudar speed do tiro aleatoriamente quando for wave
	speedrandom = random_range(.2, 2);

	var _chance = argument0;

	var enimie = instance_exists(obj_meteors_father);
	var sound = instance_find(obj_sound,0);

	if(enimie){
		var _flag = scr_shootlvlcombo(); // lvl do tiro
		switch(_flag){				
			case 71:
				if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot17);
				_t1.speed_shoot = .9;
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot08);
				_t2.direction = obj_ship_father.image_angle-3;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot08);
				_t3.direction = obj_ship_father.image_angle+3;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot08);
				_t4.speed_shoot = .8;
				sound.alarm[1] = true;
			
				//show_debug_message((_t2.damage*3)+_t1.damage);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot10);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot03);			
				_t2.direction = obj_ship_father.image_angle+6;
				_t2.speed_shoot = .85;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t3.direction = obj_ship_father.image_angle-6;
				_t3.speed_shoot = .85;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t4.speed_shoot = .75;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t5.direction = obj_ship_father.image_angle-5;
				_t5.from = -3;
				_t5.to = +3;
				_t5.duration = .5;
				_t5.speed_shoot = speedrandom;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t6.direction = obj_ship_father.image_angle+5;
				_t6.from = -3;
				_t6.to = +3;
				_t6.duration = .5;
				_t6.speed_shoot = speedrandom;
				sound.alarm[4] = true;
				//show_debug_message(_t1.damage+(_t2.damage*3)+(_t5.damage*2));
			}
			break;
			case 72:
				if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot14);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t2.speed_shoot = .8;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t3.direction = obj_ship_father.image_angle+6;
				_t3.speed_shoot = .8;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t4.direction = obj_ship_father.image_angle-6;
				_t4.speed_shoot = .8;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t5.direction = obj_ship_father.image_angle-9;
				_t5.from = -3;
				_t5.to = +3;
				_t5.duration = 1;
				_t5.speed_shoot = speedrandom;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t6.direction = obj_ship_father.image_angle+9;
				_t6.from = -3;
				_t6.to = +3;
				_t6.duration = 1;
				_t6.speed_shoot = speedrandom;
				sound.alarm[2] = true;
			
				//show_debug_message(_t1.damage+(_t2.damage*3)+(_t5.damage*2));
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t1.speed_shoot = .7;
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot02);			
				_t2.direction = obj_ship_father.image_angle+2;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t3.direction = obj_ship_father.image_angle-2;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t4.direction = obj_ship_father.image_angle+2;
				_t4.speed_shoot = .9;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t5.direction = obj_ship_father.image_angle-2;
				_t5.speed_shoot = .9;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t6.direction = obj_ship_father.image_angle+3;
				_t6.speed_shoot = speedrandom;
				var _t7 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t7.direction = obj_ship_father.image_angle-3;
				_t7.speed_shoot = speedrandom;
				sound.alarm[5] = true;
				//show_debug_message(_t1.damage+(_t2.damage*2)+(_t4.damage*3));
			}
			break;
			case 73:
				if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot16);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot09);
				_t2.direction = obj_ship_father.image_angle-5;
				_t2.speed_shoot = .7;
				_t2.from = -2;
				_t2.to = +2;
				_t2.duration = .5;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot09);
				_t3.direction = obj_ship_father.image_angle+5;
				_t3.speed_shoot = .7;
				_t3.from = -2;
				_t3.to = +2;
				_t3.duration = .5;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot09);
				_t4.speed_shoot = .9;
				sound.alarm[3] = true;
			
				//show_debug_message((_t2.damage*3)+_t1.damage);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot07);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot04);			
				_t2.direction = obj_ship_father.image_angle+8;
				_t2.speed_shoot = .6;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t3.direction = obj_ship_father.image_angle-8;
				_t3.speed_shoot = .6;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t4.speed_shoot = .9;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t5.direction = obj_ship_father.image_angle-5;
				_t5.from = -4;
				_t5.to = +4;
				_t5.duration = .5;
				_t5.speed_shoot = speedrandom;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t6.direction = obj_ship_father.image_angle+5;
				_t6.from = -4;
				_t6.to = +4;
				_t6.duration = .5;
				_t6.speed_shoot = speedrandom;
				sound.alarm[6] = true;
				//show_debug_message(_t1.damage+(_t2.damage*3)+(_t5.damage*2));
			}
			break;
			case 74:
				if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot13);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t2.speed_shoot = .85;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t3.direction = obj_ship_father.image_angle+10;
				_t3.speed_shoot = .8;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t4.direction = obj_ship_father.image_angle-10;
				_t4.speed_shoot = .8;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t5.direction = obj_ship_father.image_angle-11;
				_t5.from = -3;
				_t5.to = +3;
				_t5.duration = .5;
				_t5.speed_shoot = speedrandom;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t6.direction = obj_ship_father.image_angle+11;
				_t6.from = -3;
				_t6.to = +3;
				_t6.duration = .5;
				_t6.speed_shoot = speedrandom;
				sound.alarm[1] = true;			
				//show_debug_message(_t1.damage+(_t2.damage*3)+(_t5.damage*2));
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot06);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t2.speed_shoot = .95;
				_t2.direction = obj_ship_father.image_angle+4;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t3.speed_shoot = .95;
				_t3.direction = obj_ship_father.image_angle-4;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t4.direction = obj_ship_father.image_angle+2;
				_t4.speed_shoot = .75;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t5.direction = obj_ship_father.image_angle-2;
				_t5.speed_shoot = .75;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t6.direction = obj_ship_father.image_angle+3;
				_t6.speed_shoot = speedrandom;
				var _t7 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t7.direction = obj_ship_father.image_angle-3;
				_t7.speed_shoot = speedrandom;
				sound.alarm[2] = true;
				//show_debug_message(_t1.damage+(_t2.damage*2)+(_t4.damage*3));
			}
			break;			
			case 75:
				if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot18);
				_t1.speed_shoot = .9;
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot09);
				_t2.direction = obj_ship_father.image_angle-1;
				_t2.speed_shoot = .95;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot09);
				_t3.direction = obj_ship_father.image_angle+1;
				_t3.speed_shoot = .95;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot09);
				_t4.speed_shoot = .80;
				sound.alarm[2] = true;
			
				//show_debug_message((_t2.damage*3)+_t1.damage);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot09);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot04);			
				_t2.direction = obj_ship_father.image_angle+3;
				_t2.speed_shoot = .8;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t3.direction = obj_ship_father.image_angle-3;
				_t3.speed_shoot = .8;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t4.speed_shoot = .95;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t5.direction = obj_ship_father.image_angle-9;
				_t5.from = -2;
				_t5.to = +2;
				_t5.duration = 1;
				_t5.speed_shoot = speedrandom;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t6.direction = obj_ship_father.image_angle+9;
				_t6.from = -2;
				_t6.to = +2;
				_t6.duration = 1;
				_t6.speed_shoot = speedrandom;
				sound.alarm[4] = true;
				//show_debug_message(_t1.damage+(_t2.damage*3)+(_t5.damage*2));
			}
			break;
			case 76:
				if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot15);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t2.speed_shoot = .9;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t3.direction = obj_ship_father.image_angle+5;
				_t3.speed_shoot = .7;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t4.direction = obj_ship_father.image_angle-5;
				_t4.speed_shoot = .7;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t5.direction = obj_ship_father.image_angle-8;
				_t5.from = -2;
				_t5.to = +2;
				_t5.duration = .5;
				_t5.speed_shoot = speedrandom;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t6.direction = obj_ship_father.image_angle+8;
				_t6.from = -2;
				_t6.to = +2;
				_t6.duration = .5;
				_t6.speed_shoot = speedrandom;
				sound.alarm[5] = true;			
				//show_debug_message(_t1.damage+(_t2.damage*3)+(_t5.damage*2));
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot06);
				_t1.speed_shoot = .8;
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t2.direction = obj_ship_father.image_angle+6;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t3.direction = obj_ship_father.image_angle-6;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t4.direction = obj_ship_father.image_angle+6;
				_t4.speed_shoot = .7;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t5.direction = obj_ship_father.image_angle-6;
				_t5.speed_shoot = .7;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t6.direction = obj_ship_father.image_angle+8;
				_t6.from = -6;
				_t6.to = +6;
				_t6.duration = .5;
				_t6.speed_shoot = speedrandom;
				var _t7 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t7.direction = obj_ship_father.image_angle-8;
				_t7.from = -6;
				_t7.to = +6;
				_t7.duration = .5;
				_t7.speed_shoot = speedrandom;
				sound.alarm[6] = true;
				//show_debug_message(_t1.damage+(_t2.damage*2)+(_t4.damage*3));
			}
			break;
			case 77:
				if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot20);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot09);
				_t2.direction = obj_ship_father.image_angle-2;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot09);
				_t3.direction = obj_ship_father.image_angle+2;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot09);
				_t4.speed_shoot = .7;
				sound.alarm[4] = true;			
				//show_debug_message((_t2.damage*3)+_t1.damage);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot09);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot04);			
				_t2.direction = obj_ship_father.image_angle+4;
				_t2.speed_shoot = .8;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t3.direction = obj_ship_father.image_angle-4;
				_t3.speed_shoot = .8;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t4.speed_shoot = .6;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t5.direction = obj_ship_father.image_angle-7;
				_t5.from = -4;
				_t5.to = +4;
				_t5.duration = .5;
				_t5.speed_shoot = speedrandom;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t6.direction = obj_ship_father.image_angle+7;
				_t6.from = -4;
				_t6.to = +4;
				_t6.duration = .5;
				_t6.speed_shoot = speedrandom;
				sound.alarm[6] = true;
				//show_debug_message(_t1.damage+(_t2.damage*3)+(_t5.damage*2));
			}
			break;
			case 78:
				if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot15);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t2.speed_shoot = .85;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t3.direction = obj_ship_father.image_angle+3;
				_t3.speed_shoot = .7;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t4.direction = obj_ship_father.image_angle-3;
				_t4.speed_shoot = .7;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t5.direction = obj_ship_father.image_angle-10;
				_t5.from = -3;
				_t5.to = +3;
				_t5.duration = .5;
				_t5.speed_shoot = speedrandom;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t6.direction = obj_ship_father.image_angle+10;
				_t6.from = -3;
				_t6.to = +3;
				_t6.duration = .5;
				_t6.speed_shoot = speedrandom;
				sound.alarm[2] = true;			
				//show_debug_message(_t1.damage+(_t2.damage*3)+(_t5.damage*2));
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot06);
				_t1.speed_shoot = .9;
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t2.direction = obj_ship_father.image_angle+2;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t3.direction = obj_ship_father.image_angle-2;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t4.direction = obj_ship_father.image_angle+4;
				_t4.speed_shoot = .9;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t5.direction = obj_ship_father.image_angle-4;
				_t5.speed_shoot = .9;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t6.direction = obj_ship_father.image_angle+6;
				_t6.from = -4;
				_t6.to = +4;
				_t6.duration = .5;
				_t6.speed_shoot = speedrandom;
				var _t7 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t7.direction = obj_ship_father.image_angle-6;
				_t7.from = -4;
				_t7.to = +4;
				_t7.duration = .5;
				_t7.speed_shoot = speedrandom;
				sound.alarm[3] = true;
				//show_debug_message(_t1.damage+(_t2.damage*2)+(_t4.damage*3));
			}
			break;
			case 79:
				if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot19);
				_t1.speed_shoot = .85;
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot10);
				_t2.direction = obj_ship_father.image_angle-4;
				_t2.speed_shoot = .65;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot10);
				_t3.speed_shoot = .65;
				_t3.direction = obj_ship_father.image_angle+4;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot10);
				_t4.speed_shoot = .7;
				sound.alarm[1] = true;			
				//show_debug_message((_t2.damage*3)+_t1.damage);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot10);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot05);			
				_t2.direction = obj_ship_father.image_angle+5;
				_t2.speed_shoot = .6;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot05);
				_t3.direction = obj_ship_father.image_angle-5;
				_t3.speed_shoot = .6;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot05);
				_t4.speed_shoot = .8;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t5.direction = obj_ship_father.image_angle-6;
				_t5.from = -3;
				_t5.to = +3;
				_t5.duration = .5;
				_t5.speed_shoot = speedrandom;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t6.direction = obj_ship_father.image_angle+6;
				_t6.from = -3;
				_t6.to = +3;
				_t6.duration = .5;
				_t6.speed_shoot = speedrandom;
				sound.alarm[3] = true;
				//show_debug_message(_t1.damage+(_t2.damage*3)+(_t5.damage*2));
			}
			break;
			case 80:
				if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot17);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t2.speed_shoot = .9;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t3.direction = obj_ship_father.image_angle+2;
				_t3.speed_shoot = .6;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t4.direction = obj_ship_father.image_angle-2;
				_t4.speed_shoot = .6;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t5.direction = obj_ship_father.image_angle-6;
				_t5.from = -3;
				_t5.to = +3;
				_t5.duration = .5;
				_t5.speed_shoot = speedrandom;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t6.direction = obj_ship_father.image_angle+6;
				_t6.from = -3;
				_t6.to = +3;
				_t6.duration = .5;
				_t6.speed_shoot = speedrandom;
				sound.alarm[5] = true;			
				//show_debug_message(_t1.damage+(_t2.damage*3)+(_t5.damage*2));
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot06);
				_t1.speed_shoot = .85;
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t2.direction = obj_ship_father.image_angle+1;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t3.direction = obj_ship_father.image_angle-1;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t4.direction = obj_ship_father.image_angle+2;
				_t4.speed_shoot = .7;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t5.direction = obj_ship_father.image_angle-2;
				_t5.speed_shoot = .7;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t6.direction = obj_ship_father.image_angle+7;
				_t6.from = -5;
				_t6.to = +5;
				_t6.duration = .5;
				_t6.speed_shoot = speedrandom;
				var _t7 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t7.direction = obj_ship_father.image_angle-7;
				_t7.from = -5;
				_t7.to = +5;
				_t7.duration = .5;
				_t7.speed_shoot = speedrandom;
				sound.alarm[2] = true;
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
