///@desc Atirando
///@param 0/1 Auternar tipo de tiro
function scr_shooting91_100(argument0) {
	randomize();
	// Atirando
	alarm[0] = scr_shootCadence();
	// variavel para mudar speed do tiro aleatoriamente quando for wave
	speedrandom = random_range(.2, 2);
	speedrandomsmall = random_range(.2,.5);
	speedrandommed = random_range(.5, 1);
	speedrandombig = random_range(1, 1.5);
	speedrandomhuge = random_range(1.5, 2);

	var _chance = argument0;

	var enimie = instance_exists(obj_meteors_father);
	var sound = instance_find(obj_sound,0);

	if(enimie){
		var _flag = scr_shootlvlcombo(); // lvl do tiro
		switch(_flag){			
				case 91:
				if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot13);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot05);
				_t2.direction = obj_ship_father.image_angle-3;
				_t2.speed_shoot = .8;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot05);
				_t3.direction = obj_ship_father.image_angle+3;
				_t3.speed_shoot = .8;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot05);
				_t4.speed_shoot = .9;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t5.direction = obj_ship_father.image_angle-4;
				_t5.from = -7;
				_t5.to = +7;
				_t5.duration = .5;
				_t5.speed_shoot = speedrandom;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t6.direction = obj_ship_father.image_angle+4;
				_t6.from = -7;
				_t6.to = +7;
				_t6.duration = .5;
				_t6.speed_shoot = speedrandom;
				var _t7 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t7.follow = 1;
				_t7.speed_shoot = speedrandomsmall;
				sound.alarm[1] = true;			
				//show_debug_message((_t2.damage*3)+(_t5.damage*3)+_t1.damage);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot03);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot01);			
				_t2.direction = obj_ship_father.image_angle+2;
				_t2.speed_shoot = .7;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t3.direction = obj_ship_father.image_angle-2;
				_t3.speed_shoot = .7;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t4.speed_shoot = .8;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t5.direction = obj_ship_father.image_angle-4;
				_t5.from = -3;
				_t5.to = +3;
				_t5.duration = .5;
				_t5.speed_shoot = speedrandom;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t6.direction = obj_ship_father.image_angle+4;
				_t6.from = -3;
				_t6.to = +3;
				_t6.duration = .5;
				_t6.speed_shoot = speedrandom;
				var _t7 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t7.direction = obj_ship_father.image_angle-5;
				_t7.from = -1;
				_t7.to = -7;
				_t7.duration = 2;
				var _t8 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t8.direction = obj_ship_father.image_angle+5;
				_t8.from = -1;
				_t8.to = -7;
				_t8.duration = 2;				
				var _t8 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t8.follow = 1;
				_t8.speed_shoot = speedrandomsmall;
				sound.alarm[6] = true;
				//show_debug_message(_t1.damage+(_t2.damage*8));
			}
			break;
			case 92:
				if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot16);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t2.direction = obj_ship_father.image_angle-5;
				_t2.speed_shoot = .6;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t3.direction = obj_ship_father.image_angle+5;
				_t3.speed_shoot = .6;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t4.speed_shoot = .95;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t5.direction = obj_ship_father.image_angle-8;
				_t5.from = -9;
				_t5.to = +9;
				_t5.duration = .5;
				_t5.speed_shoot = speedrandom;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t6.direction = obj_ship_father.image_angle+8;
				_t6.from = -9;
				_t6.to = +9;
				_t6.duration = .5;
				_t6.speed_shoot = speedrandom;
				var _t7 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t7.follow = 1;
				_t7.speed_shoot = speedrandomsmall;
				var _t8 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t8.follow = 1;
				_t8.speed_shoot = speedrandommed;
				sound.alarm[2] = true;			
				//show_debug_message((_t2.damage*3)+(_t5.damage*3)+_t1.damage);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot03);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot01);			
				_t2.direction = obj_ship_father.image_angle+3;
				_t2.speed_shoot = .7;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t3.direction = obj_ship_father.image_angle-3;
				_t3.speed_shoot = .7;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t4.speed_shoot = .85;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t5.direction = obj_ship_father.image_angle-8;
				_t5.from = -5;
				_t5.to = +5;
				_t5.duration = .5;
				_t5.speed_shoot = speedrandom;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t6.direction = obj_ship_father.image_angle+8;
				_t6.from = -5;
				_t6.to = +5;
				_t6.duration = .5;
				_t6.speed_shoot = speedrandom;
				var _t7 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t7.direction = obj_ship_father.image_angle-10;
				_t7.from = -3;
				_t7.to = -5;
				_t7.duration = 2;
				var _t8 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t8.direction = obj_ship_father.image_angle+10;
				_t8.from = -3;
				_t8.to = -5;
				_t8.duration = 2;				
				var _t8 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t8.follow = 1;
				_t8.speed_shoot = speedrandomsmall;
				var _t9 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t9.follow = 1;
				_t9.speed_shoot = speedrandommed;
				sound.alarm[5] = true;
				//show_debug_message(_t1.damage+(_t2.damage*8));
			}
			break;
			case 93:
				if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot16);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t2.direction = obj_ship_father.image_angle-2;
				_t2.speed_shoot = .7;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t3.direction = obj_ship_father.image_angle+2;
				_t3.speed_shoot = .7;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t4.speed_shoot = .8;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t5.direction = obj_ship_father.image_angle-5;
				_t5.from = -5;
				_t5.to = +5;
				_t5.duration = .5;
				_t5.speed_shoot = speedrandom;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t6.direction = obj_ship_father.image_angle+5;
				_t6.from = -5;
				_t6.to = +5;
				_t6.duration = .5;
				_t6.speed_shoot = speedrandom;
				var _t7 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t7.follow = 1;
				_t7.speed_shoot = speedrandomsmall;
				var _t8 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t8.follow = 1;
				_t8.speed_shoot = speedrandommed;
				sound.alarm[3] = true;			
				//show_debug_message((_t2.damage*3)+(_t5.damage*3)+_t1.damage);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot03);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot01);			
				_t2.direction = obj_ship_father.image_angle+2;
				_t2.speed_shoot = .85;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t3.direction = obj_ship_father.image_angle-2;
				_t3.speed_shoot = .85;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t4.speed_shoot = .95;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t5.direction = obj_ship_father.image_angle-5;
				_t5.from = -9;
				_t5.to = +9;
				_t5.duration = .5;
				_t5.speed_shoot = speedrandom;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t6.direction = obj_ship_father.image_angle+5;
				_t6.from = -9;
				_t6.to = +9;
				_t6.duration = .5;
				_t6.speed_shoot = speedrandom;
				var _t7 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t7.direction = obj_ship_father.image_angle-12;
				_t7.from = +2;
				_t7.to = +9;
				_t7.duration = 2;
				var _t8 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t8.direction = obj_ship_father.image_angle+12;
				_t8.from = +2;
				_t8.to = +9;
				_t8.duration = 2;				
				var _t8 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t8.follow = 1;
				_t8.speed_shoot = speedrandomsmall;
				var _t9 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t9.follow = 1;
				_t9.speed_shoot = speedrandommed;
				sound.alarm[6] = true;
				//show_debug_message(_t1.damage+(_t2.damage*8));
			}
			break;
			case 94:
				if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot16);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t2.direction = obj_ship_father.image_angle-4;
				_t2.speed_shoot = .65;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t3.direction = obj_ship_father.image_angle+4;
				_t3.speed_shoot = .65;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t4.speed_shoot = .85;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t5.direction = obj_ship_father.image_angle-9;
				_t5.from = -3;
				_t5.to = +3;
				_t5.duration = .5;
				_t5.speed_shoot = speedrandom;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t6.direction = obj_ship_father.image_angle+9;
				_t6.from = -3;
				_t6.to = +3;
				_t6.duration = .5;
				_t6.speed_shoot = speedrandom;
				var _t7 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t7.follow = 1;
				_t7.speed_shoot = speedrandommed;
				var _t8 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t8.follow = 1;
				_t8.speed_shoot = speedrandombig;
				sound.alarm[2] = true;			
				//show_debug_message((_t2.damage*3)+(_t5.damage*3)+_t1.damage);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot03);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot01);			
				_t2.direction = obj_ship_father.image_angle+2;
				_t2.speed_shoot = .6;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t3.direction = obj_ship_father.image_angle-2;
				_t3.speed_shoot = .6;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t4.speed_shoot = .95;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t5.direction = obj_ship_father.image_angle-4;
				_t5.from = -4;
				_t5.to = +4;
				_t5.duration = .5;
				_t5.speed_shoot = speedrandom;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t6.direction = obj_ship_father.image_angle+4;
				_t6.from = -4;
				_t6.to = +4;
				_t6.duration = .5;
				_t6.speed_shoot = speedrandom;
				var _t7 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t7.direction = obj_ship_father.image_angle-6;
				_t7.from = -1;
				_t7.to = -4;
				_t7.duration = 2;
				var _t8 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t8.direction = obj_ship_father.image_angle+6;
				_t8.from = -1;
				_t8.to = -4;
				_t8.duration = 2;				
				var _t8 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t8.follow = 1;
				_t8.speed_shoot = speedrandommed;
				var _t9 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t9.follow = 1;
				_t9.speed_shoot = speedrandombig;
				sound.alarm[4] = true;
				//show_debug_message(_t1.damage+(_t2.damage*8));
			}
			break;
			case 95:
				if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot16);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t2.direction = obj_ship_father.image_angle-3;
				_t2.speed_shoot = .70;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t3.direction = obj_ship_father.image_angle+3;
				_t3.speed_shoot = .70;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t4.speed_shoot = .75;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t5.direction = obj_ship_father.image_angle-6;
				_t5.from = -2;
				_t5.to = +2;
				_t5.duration = .5;
				_t5.speed_shoot = speedrandom;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t6.direction = obj_ship_father.image_angle+6;
				_t6.from = -2;
				_t6.to = +2;
				_t6.duration = .5;
				_t6.speed_shoot = speedrandom;
				var _t7 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t7.follow = 1;
				_t7.speed_shoot = speedrandommed;
				var _t8 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t8.follow = 1;
				_t8.speed_shoot = speedrandombig;
				sound.alarm[5] = true;			
				//show_debug_message((_t2.damage*3)+(_t5.damage*3)+_t1.damage);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot03);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot01);			
				_t2.direction = obj_ship_father.image_angle+5;
				_t2.speed_shoot = .75;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t3.direction = obj_ship_father.image_angle-5;
				_t3.speed_shoot = .75;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t4.speed_shoot = .90;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t5.direction = obj_ship_father.image_angle-7;
				_t5.from = -2;
				_t5.to = +2;
				_t5.duration = .5;
				_t5.speed_shoot = speedrandom;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t6.direction = obj_ship_father.image_angle+7;
				_t6.from = -2;
				_t6.to = +2;
				_t6.duration = .5;
				_t6.speed_shoot = speedrandom;
				var _t7 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t7.direction = obj_ship_father.image_angle-9;
				_t7.from = +2;
				_t7.to = +12;
				_t7.duration = 2;
				var _t8 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t8.direction = obj_ship_father.image_angle+9;
				_t8.from = +2;
				_t8.to = +12;
				_t8.duration = 2;				
				var _t8 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t8.follow = 1;
				_t8.speed_shoot = speedrandommed;
				var _t9 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t9.follow = 1;
				_t9.speed_shoot = speedrandombig;
				sound.alarm[3] = true;
				//show_debug_message(_t1.damage+(_t2.damage*8));
			}
			break;
			case 96:
				if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot16);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t2.direction = obj_ship_father.image_angle-2;
				_t2.speed_shoot = .65;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t3.direction = obj_ship_father.image_angle+2;
				_t3.speed_shoot = .65;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t4.speed_shoot = .70;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t5.direction = obj_ship_father.image_angle-7;
				_t5.from = -8;
				_t5.to = +8;
				_t5.duration = .5;
				_t5.speed_shoot = speedrandom;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t6.direction = obj_ship_father.image_angle+7;
				_t6.from = -8;
				_t6.to = +8;
				_t6.duration = .5;
				_t6.speed_shoot = speedrandom;
				var _t7 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t7.follow = 1;
				_t7.speed_shoot = speedrandommed;
				var _t8 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t8.follow = 1;
				_t8.speed_shoot = speedrandombig;
				sound.alarm[1] = true;			
				//show_debug_message((_t2.damage*3)+(_t5.damage*3)+_t1.damage);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot03);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot01);			
				_t2.direction = obj_ship_father.image_angle+3;
				_t2.speed_shoot = .70;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t3.direction = obj_ship_father.image_angle-3;
				_t3.speed_shoot = .70;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t4.speed_shoot = .75;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t5.direction = obj_ship_father.image_angle-5;
				_t5.from = -7;
				_t5.to = +7;
				_t5.duration = .5;
				_t5.speed_shoot = speedrandom;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t6.direction = obj_ship_father.image_angle+5;
				_t6.from = -7;
				_t6.to = +7;
				_t6.duration = .5;
				_t6.speed_shoot = speedrandom;
				var _t7 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t7.direction = obj_ship_father.image_angle-12;
				_t7.from = -1;
				_t7.to = -10;
				_t7.duration = 2;
				var _t8 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t8.direction = obj_ship_father.image_angle+12;
				_t8.from = -1;
				_t8.to = -10;
				_t8.duration = 2;				
				var _t8 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t8.follow = 1;
				_t8.speed_shoot = speedrandommed;
				var _t9 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t9.follow = 1;
				_t9.speed_shoot = speedrandombig;
				sound.alarm[6] = true;
				//show_debug_message(_t1.damage+(_t2.damage*8));
			}
			break;
			case 97:
				if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot16);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t2.direction = obj_ship_father.image_angle-6;
				_t2.speed_shoot = .6;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t3.direction = obj_ship_father.image_angle+6;
				_t3.speed_shoot = .6;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t4.speed_shoot = .65;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t5.direction = obj_ship_father.image_angle-9;
				_t5.from = -4;
				_t5.to = +4;
				_t5.duration = .5;
				_t5.speed_shoot = speedrandom;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t6.direction = obj_ship_father.image_angle+9;
				_t6.from = -4;
				_t6.to = +4;
				_t6.duration = .5;
				_t6.speed_shoot = speedrandom;
				var _t7 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t7.follow = 1;
				_t7.speed_shoot = speedrandommed;
				var _t8 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t8.follow = 1;
				_t8.speed_shoot = speedrandombig;
				sound.alarm[4] = true;			
				//show_debug_message((_t2.damage*3)+(_t5.damage*3)+_t1.damage);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot03);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot01);			
				_t2.direction = obj_ship_father.image_angle+4;
				_t2.speed_shoot = .7;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t3.direction = obj_ship_father.image_angle-4;
				_t3.speed_shoot = .7;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t4.speed_shoot = .80;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t5.direction = obj_ship_father.image_angle-7;
				_t5.from = -13;
				_t5.to = +13;
				_t5.duration = .5;
				_t5.speed_shoot = speedrandom;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t6.direction = obj_ship_father.image_angle+7;
				_t6.from = -13;
				_t6.to = +13;
				_t6.duration = .5;
				_t6.speed_shoot = speedrandom;
				var _t7 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t7.direction = obj_ship_father.image_angle-13;
				_t7.from = +4;
				_t7.to = +6;
				_t7.duration = 2;
				var _t8 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t8.direction = obj_ship_father.image_angle+13;
				_t8.from = +4;
				_t8.to = +6;
				_t8.duration = 2;				
				var _t8 = instance_create_layer(x,y,"Instances",obj_shoot05);
				_t8.follow = 1;
				_t8.speed_shoot = speedrandommed;
				var _t9 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t9.follow = 1;
				_t9.speed_shoot = speedrandombig;
				sound.alarm[2] = true;
				//show_debug_message(_t1.damage+(_t2.damage*8));
			}
			break;
			case 98:
				if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot16);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t2.direction = obj_ship_father.image_angle-7;
				_t2.speed_shoot = .8;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t3.direction = obj_ship_father.image_angle+7;
				_t3.speed_shoot = .8;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t4.speed_shoot = .9;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t5.direction = obj_ship_father.image_angle-10;
				_t5.from = -6;
				_t5.to = +6;
				_t5.duration = .5;
				_t5.speed_shoot = speedrandom;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t6.direction = obj_ship_father.image_angle+10;
				_t6.from = -6;
				_t6.to = +6;
				_t6.duration = .5;
				_t6.speed_shoot = speedrandom;
				var _t7 = instance_create_layer(x,y,"Instances",obj_shoot05);
				_t7.follow = 1;
				_t7.speed_shoot = speedrandommed;
				var _t8 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t8.follow = 1;
				_t8.speed_shoot = speedrandombig;
				sound.alarm[3] = true;			
				//show_debug_message((_t2.damage*3)+(_t5.damage*3)+_t1.damage);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot03);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot01);			
				_t2.direction = obj_ship_father.image_angle+5;
				_t2.speed_shoot = .85;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t3.direction = obj_ship_father.image_angle-5;
				_t3.speed_shoot = .85;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t4.speed_shoot = .95;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t5.direction = obj_ship_father.image_angle-9;
				_t5.from = -8;
				_t5.to = +8;
				_t5.duration = .5;
				_t5.speed_shoot = speedrandom;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t6.direction = obj_ship_father.image_angle+9;
				_t6.from = -8;
				_t6.to = +8;
				_t6.duration = .5;
				_t6.speed_shoot = speedrandom;
				var _t7 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t7.direction = obj_ship_father.image_angle-15;
				_t7.from = -2;
				_t7.to = -11;
				_t7.duration = 2;
				var _t8 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t8.direction = obj_ship_father.image_angle+15;
				_t8.from = -2;
				_t8.to = -11;
				_t8.duration = 2;				
				var _t8 = instance_create_layer(x,y,"Instances",obj_shoot06);
				_t8.follow = 1;
				_t8.speed_shoot = speedrandommed;
				var _t9 = instance_create_layer(x,y,"Instances",obj_shoot02);
				_t9.follow = 1;
				_t9.speed_shoot = speedrandombig;
				sound.alarm[1] = true;
				//show_debug_message(_t1.damage+(_t2.damage*8));
			}
			break;
			case 99:
				if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot16);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t2.direction = obj_ship_father.image_angle-4;
				_t2.speed_shoot = .6;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t3.direction = obj_ship_father.image_angle+4;
				_t3.speed_shoot = .6;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t4.speed_shoot = .95;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t5.direction = obj_ship_father.image_angle-12;
				_t5.from = -5;
				_t5.to = +5;
				_t5.duration = .5;
				_t5.speed_shoot = speedrandom;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t6.direction = obj_ship_father.image_angle+12;
				_t6.from = -5;
				_t6.to = +5;
				_t6.duration = .5;
				_t6.speed_shoot = speedrandom;
				var _t7 = instance_create_layer(x,y,"Instances",obj_shoot05);
				_t7.follow = 1;
				_t7.speed_shoot = speedrandombig;
				var _t8 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t8.follow = 1;
				_t8.speed_shoot = speedrandomhuge;
				sound.alarm[5] = true;			
				//show_debug_message((_t2.damage*3)+(_t5.damage*3)+_t1.damage);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot03);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot01);			
				_t2.direction = obj_ship_father.image_angle+3;
				_t2.speed_shoot = .7;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t3.direction = obj_ship_father.image_angle-3;
				_t3.speed_shoot = .7;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t4.speed_shoot = .85;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t5.direction = obj_ship_father.image_angle-8;
				_t5.from = -12;
				_t5.to = +12;
				_t5.duration = .5;
				_t5.speed_shoot = speedrandom;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t6.direction = obj_ship_father.image_angle+8;
				_t6.from = -12;
				_t6.to = +12;
				_t6.duration = .5;
				_t6.speed_shoot = speedrandom;
				var _t7 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t7.direction = obj_ship_father.image_angle-17;
				_t7.from = +3;
				_t7.to = +15;
				_t7.duration = 2;
				var _t8 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t8.direction = obj_ship_father.image_angle+17;
				_t8.from = +3;
				_t8.to = +15;
				_t8.duration = 2;				
				var _t8 = instance_create_layer(x,y,"Instances",obj_shoot06);
				_t8.follow = 1;
				_t8.speed_shoot = speedrandombig;
				var _t9 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t9.follow = 1;
				_t9.speed_shoot = speedrandomhuge;
				sound.alarm[2] = true;
				//show_debug_message(_t1.damage+(_t2.damage*8));
			}
			break;
			case 100:
				if(_chance == 0){
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot16);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t2.direction = obj_ship_father.image_angle-6;
				_t2.speed_shoot = .65;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t3.direction = obj_ship_father.image_angle+6;
				_t3.speed_shoot = .65;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t4.speed_shoot = .85;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t5.direction = obj_ship_father.image_angle-15;
				_t5.from = -10;
				_t5.to = +10;
				_t5.duration = .5;
				_t5.speed_shoot = speedrandom;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t6.direction = obj_ship_father.image_angle+15;
				_t6.from = -10;
				_t6.to = +10;
				_t6.duration = .5;
				_t6.speed_shoot = speedrandom;
				var _t7 = instance_create_layer(x,y,"Instances",obj_shoot06);
				_t7.follow = 1;
				_t7.speed_shoot = speedrandomhuge;
				var _t8 = instance_create_layer(x,y,"Instances",obj_shoot04);
				_t8.follow = 1;
				_t8.speed_shoot = speedrandombig;
				sound.alarm[6] = true;			
				//show_debug_message((_t2.damage*3)+(_t5.damage*3)+_t1.damage);
			} else {
				var _t1 = instance_create_layer(x,y,"Instances",obj_shoot03);
				var _t2 = instance_create_layer(x,y,"Instances",obj_shoot01);			
				_t2.direction = obj_ship_father.image_angle+6;
				_t2.speed_shoot = .85;
				var _t3 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t3.direction = obj_ship_father.image_angle-6;
				_t3.speed_shoot = .85;
				var _t4 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t4.speed_shoot = .95;
				var _t5 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t5.direction = obj_ship_father.image_angle-12;
				_t5.from = -15;
				_t5.to = +15;
				_t5.duration = .5;
				_t5.speed_shoot = speedrandom;
				var _t6 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t6.direction = obj_ship_father.image_angle+12;
				_t6.from = -15;
				_t6.to = +15;
				_t6.duration = .5;
				_t6.speed_shoot = speedrandom;
				var _t7 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t7.direction = obj_ship_father.image_angle-18;
				_t7.from = -2;
				_t7.to = -17;
				_t7.duration = 2;
				var _t8 = instance_create_layer(x,y,"Instances",obj_shoot01);
				_t8.direction = obj_ship_father.image_angle+18;
				_t8.from = -2;
				_t8.to = -17;
				_t8.duration = 2;				
				var _t8 = instance_create_layer(x,y,"Instances",obj_shoot07);
				_t8.follow = 1;
				_t8.speed_shoot = speedrandomhuge;
				var _t9 = instance_create_layer(x,y,"Instances",obj_shoot03);
				_t9.follow = 1;
				_t9.speed_shoot = speedrandombig;
				sound.alarm[5] = true;
				//show_debug_message(_t1.damage+(_t2.damage*8));
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
