///@desc Atirando
///@param 0/1 Auternar tipo de tiro
function scr_shooting1_10() {
	randomize();
	
	// Atirando
	alarm[0] = scr_shootCadence();
	
	var enimie = instance_exists(obj_meteors_father);
	var sound = instance_find(obj_sound,0);


	if(enimie){
		var _flag = scr_shootlvlcombo(); // lvl do tiro
		switch(_flag){	
			case 1:
				instance_create_layer(x,y,"Instances",obj_shoot01);
				// Som do tiro			
				sound.alarm[1] = true;
				//show_debug_message(obj_shoot01.damage);
			break;		
			case 2:
				instance_create_layer(x,y,"Instances",obj_shoot02);	
				sound.alarm[2] = true;
			break;
			case 3:
				instance_create_layer(x,y,"Instances",obj_shoot03);	
				sound.alarm[3] = true;
			break;
			case 4:
				instance_create_layer(x,y,"Instances",obj_shoot04);	
				sound.alarm[4] = true;
			break;
			case 5:
				instance_create_layer(x,y,"Instances",obj_shoot05);	
				sound.alarm[5] = true;
			break;
			case 6:
				instance_create_layer(x,y,"Instances",obj_shoot06);	
				sound.alarm[6] = true;
			break;
			case 7:
				instance_create_layer(x,y,"Instances",obj_shoot07);	
				sound.alarm[1] = true;
			break;
			case 8:
				instance_create_layer(x,y,"Instances",obj_shoot08);	
				sound.alarm[2] = true;
			break;
			case 9:
				instance_create_layer(x,y,"Instances",obj_shoot09);	
				sound.alarm[3] = true;
			break;
			case 10:
				instance_create_layer(x,y,"Instances",obj_shoot10);	
				sound.alarm[4] = true;
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
