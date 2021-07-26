///@desc Atirando
///@param 0/1 Auternar tipo de tiro
function scr_shooting31_40(argument0) {
	randomize();
	// Atirando
	alarm[0] = scr_shootCadence();
	var _chance = argument0;

	var enimie = instance_exists(obj_meteors_father);
	var sound = instance_find(obj_sound,0);

	if(enimie){
		var _flag = scr_shootlvlcombo(); // lvl do tiro
		switch(_flag){					
			case 31:
				if(_chance == 0){
					var _t1 = instance_create_layer(x,y,"Instances",obj_shoot20);
					var _t2 = instance_create_layer(x,y,"Instances",obj_shoot01);
					_t2.speed_shoot = .9;
					sound.alarm[3] = true;
					//show_debug_message(obj_shoot20.damage+obj_shoot01.damage);
				} else {
					var _t1 = instance_create_layer(x,y,"Instances",obj_shoot01);
					_t1.direction = obj_ship_father.image_angle+3;				
					var _t2 = instance_create_layer(x,y,"Instances",obj_shoot01);
					_t2.direction = obj_ship_father.image_angle-3;
					instance_create_layer(x,y,"Instances",obj_shoot09);
					sound.alarm[6] = true;
					//show_debug_message((obj_shoot01.damage*2)+obj_shoot09.damage);
				}	
			break;
			case 32:
				if(_chance == 0){
					var _t1 = instance_create_layer(x,y,"Instances",obj_shoot11);
					_t1.direction = obj_ship_father.image_angle+4;				
					var _t2 = instance_create_layer(x,y,"Instances",obj_shoot11);
					_t2.direction = obj_ship_father.image_angle-4;
					sound.alarm[1] = true;
					//show_debug_message(obj_shoot11.damage*2);
				} else {
					var _t1 = instance_create_layer(x,y,"Instances",obj_shoot01);
					_t1.direction = obj_ship_father.image_angle+5;				
					var _t2 = instance_create_layer(x,y,"Instances",obj_shoot01);
					_t2.direction = obj_ship_father.image_angle-5;
					instance_create_layer(x,y,"Instances",obj_shoot10);
					sound.alarm[2] = true;
					//show_debug_message((obj_shoot01.damage*2)+obj_shoot10.damage);
				}	
			break;
			case 33:
				if(_chance == 0){
					var _t1 = instance_create_layer(x,y,"Instances",obj_shoot13);
					var _t2 = instance_create_layer(x,y,"Instances",obj_shoot10);
					_t2.speed_shoot = .9;
					sound.alarm[3] = true;
					//show_debug_message(obj_shoot13.damage+obj_shoot10.damage);
				} else {
					var _t1 = instance_create_layer(x,y,"Instances",obj_shoot02);
					_t1.direction = obj_ship_father.image_angle+4;				
					var _t2 = instance_create_layer(x,y,"Instances",obj_shoot02);
					_t2.direction = obj_ship_father.image_angle-4;
					instance_create_layer(x,y,"Instances",obj_shoot09);
					sound.alarm[6] = true;
					//show_debug_message((obj_shoot02.damage*2)+obj_shoot09.damage);
				}	
			break;
			case 34:
				if(_chance == 0){
					var _t1 = instance_create_layer(x,y,"Instances",obj_shoot12);
					_t1.direction = obj_ship_father.image_angle+3;				
					var _t2 = instance_create_layer(x,y,"Instances",obj_shoot12);
					_t2.direction = obj_ship_father.image_angle-3;
					sound.alarm[2] = true;
					//show_debug_message(obj_shoot12.damage*2);
				} else {
					var _t1 = instance_create_layer(x,y,"Instances",obj_shoot16);
					var _t2 = instance_create_layer(x,y,"Instances",obj_shoot08);
					_t2.speed_shoot = .9;
					sound.alarm[1] = true;
					//show_debug_message(obj_shoot16.damage+obj_shoot08.damage);
				}	
			break;
			case 35:
				if(_chance == 0){
					var _t1 = instance_create_layer(x,y,"Instances",obj_shoot07);
					_t1.speed_shoot = .9;
					var _t2 = instance_create_layer(x,y,"Instances",obj_shoot18);
					sound.alarm[5] = true;
					//show_debug_message(obj_shoot07.damage+obj_shoot18.damage);
				} else {
					var _t1 = instance_create_layer(x,y,"Instances",obj_shoot01);
					_t1.direction = obj_ship_father.image_angle+2;				
					var _t2 = instance_create_layer(x,y,"Instances",obj_shoot01);
					_t2.direction = obj_ship_father.image_angle-2;
					instance_create_layer(x,y,"Instances",obj_shoot13);
					sound.alarm[6] = true;
					//show_debug_message((obj_shoot01.damage*2)+obj_shoot13.damage);
				}	
			break;
			case 36:
				if(_chance == 0){
					var _t1 = instance_create_layer(x,y,"Instances",obj_shoot13);
					_t1.direction = obj_ship_father.image_angle+2;				
					var _t2 = instance_create_layer(x,y,"Instances",obj_shoot13);
					_t2.direction = obj_ship_father.image_angle-2;
					sound.alarm[1] = true;
					//show_debug_message(obj_shoot13.damage*2);
				} else {
					var _t1 = instance_create_layer(x,y,"Instances",obj_shoot03);
					_t1.direction = obj_ship_father.image_angle+4;				
					var _t2 = instance_create_layer(x,y,"Instances",obj_shoot03);
					_t2.direction = obj_ship_father.image_angle-4;
					instance_create_layer(x,y,"Instances",obj_shoot10);
					sound.alarm[4] = true;
					//show_debug_message((obj_shoot03.damage*2)+obj_shoot10.damage);
				}	
			break;
			case 37:
				if(_chance == 0){
					var _t1 = instance_create_layer(x,y,"Instances",obj_shoot20);
					var _t2 = instance_create_layer(x,y,"Instances",obj_shoot07);
					_t2.speed_shoot = .9;
					sound.alarm[3] = true;
					//show_debug_message(obj_shoot07.damage+obj_shoot20.damage);
				} else {
					var _t1 = instance_create_layer(x,y,"Instances",obj_shoot04);
					_t1.direction = obj_ship_father.image_angle+5;				
					var _t2 = instance_create_layer(x,y,"Instances",obj_shoot04);
					_t2.direction = obj_ship_father.image_angle-5;
					instance_create_layer(x,y,"Instances",obj_shoot09);
					sound.alarm[6] = true;
					//show_debug_message((obj_shoot04.damage*2)+obj_shoot09.damage);
				}	
			break;
			case 38:
				if(_chance == 0){
					var _t1 = instance_create_layer(x,y,"Instances",obj_shoot14);
					_t1.direction = obj_ship_father.image_angle+2;				
					var _t2 = instance_create_layer(x,y,"Instances",obj_shoot14);
					_t2.direction = obj_ship_father.image_angle-2;
					sound.alarm[1] = true;
					//show_debug_message(obj_shoot14.damage*2);
				} else {
					var _t1 = instance_create_layer(x,y,"Instances",obj_shoot10);
					_t1.speed_shoot = .9;
					var _t2 = instance_create_layer(x,y,"Instances",obj_shoot18);
					sound.alarm[4] = true;
					//show_debug_message(obj_shoot10.damage+obj_shoot18.damage);
				}	
			break;		
			case 39:
				if(_chance == 0){
					var _t1 = instance_create_layer(x,y,"Instances",obj_shoot12);
					_t1.speed_shoot = .9;
					var _t2 = instance_create_layer(x,y,"Instances",obj_shoot17);				
					sound.alarm[2] = true;
					//show_debug_message(obj_shoot12.damage+obj_shoot17.damage);
				} else {
					var _t1 = instance_create_layer(x,y,"Instances",obj_shoot05);
					_t1.direction = obj_ship_father.image_angle+4;				
					var _t2 = instance_create_layer(x,y,"Instances",obj_shoot05);
					_t2.direction = obj_ship_father.image_angle-4;
					instance_create_layer(x,y,"Instances",obj_shoot09);
					sound.alarm[5] = true;
					//show_debug_message((obj_shoot05.damage*2)+obj_shoot09.damage);
				}
			break;
			case 40:
				if(_chance == 0){
					var _t1 = instance_create_layer(x,y,"Instances",obj_shoot15);
					_t1.direction = obj_ship_father.image_angle-2;	
					var _t2 = instance_create_layer(x,y,"Instances",obj_shoot15);
					_t2.direction = obj_ship_father.image_angle+2;	
					sound.alarm[6] = true;
					//show_debug_message(obj_shoot15.damage*2);
				} else {
					var _t1 = instance_create_layer(x,y,"Instances",obj_shoot02);
					_t1.direction = obj_ship_father.image_angle+6;				
					var _t2 = instance_create_layer(x,y,"Instances",obj_shoot02);
					_t2.direction = obj_ship_father.image_angle-6;
					var _t3 = instance_create_layer(x,y,"Instances",obj_shoot03);
					_t3.direction = obj_ship_father.image_angle+1;				
					var _t4 = instance_create_layer(x,y,"Instances",obj_shoot03);
					_t4.direction = obj_ship_father.image_angle-1;
					sound.alarm[5] = true;
					//show_debug_message((obj_shoot02.damage*2)+(obj_shoot03.damage*2));
				}
			break;			
		}
	} else {
		instance_create_layer(x,y,"Instances",obj_lazer);
		alarm[0] = 3;
	}

	// Double shoot
	if(double_shoot >= 1){
		alarm[0] = 5;
		double_shoot --;
	} else {
		double_shoot = global.double_shoot;	
	}
}
