///@desc Instanciar nave
function scr_instance_ship() {
	if(!instance_exists(obj_ship_father)){
		switch(room){
		    case rm_start:
		        var	_xx = 200;
				var _yy = room_height-200; 
		    break;
		    case rm_game:
		        var	_xx = room_width/2;
				var _yy = room_height/2; 
		    break;
		}

		switch(global.lvl_ship){
			case 1:
				instance_create_layer(_xx,_yy,"Instances",obj_ship011);
			break;
			case 2:
				instance_create_layer(_xx,_yy,"Instances",obj_ship012);
			break;
			case 3:
				instance_create_layer(_xx,_yy,"Instances",obj_ship013);
			break;
			case 4:
				instance_create_layer(_xx,_yy,"Instances",obj_ship014);
			break;
			case 5:
				instance_create_layer(_xx,_yy,"Instances",obj_ship015);
			break;
			case 6:
				instance_create_layer(_xx,_yy,"Instances",obj_ship016);
			break;
			case 7:
				instance_create_layer(_xx,_yy,"Instances",obj_ship017);
			break;
			case 8:
				instance_create_layer(_xx,_yy,"Instances",obj_ship021);
			break;
			case 9:
				instance_create_layer(_xx,_yy,"Instances",obj_ship022);
			break;
			case 10:
				instance_create_layer(_xx,_yy,"Instances",obj_ship023);
			break;
			case 11:
				instance_create_layer(_xx,_yy,"Instances",obj_ship024);
			break;
			case 12:
				instance_create_layer(_xx,_yy,"Instances",obj_ship025);
			break;
			case 13:
				instance_create_layer(_xx,_yy,"Instances",obj_ship026);
			break;
			case 14:
				instance_create_layer(_xx,_yy,"Instances",obj_ship027);
			break;
			case 15:
				instance_create_layer(_xx,_yy,"Instances",obj_ship031);
			break;
			case 16:
				instance_create_layer(_xx,_yy,"Instances",obj_ship032);
			break;
			case 17:
				instance_create_layer(_xx,_yy,"Instances",obj_ship033);
			break;
			case 18:
				instance_create_layer(_xx,_yy,"Instances",obj_ship034);
			break;
			case 19:
				instance_create_layer(_xx,_yy,"Instances",obj_ship035);
			break;
			case 20:
				instance_create_layer(_xx,_yy,"Instances",obj_ship036);
			break;
			case 21:
				instance_create_layer(_xx,_yy,"Instances",obj_ship037);
			break;
			case 22:
				instance_create_layer(_xx,_yy,"Instances",obj_ship041);
			break;
			case 23:
				instance_create_layer(_xx,_yy,"Instances",obj_ship042);
			break;
			case 24:
				instance_create_layer(_xx,_yy,"Instances",obj_ship043);
			break;
			case 25:
				instance_create_layer(_xx,_yy,"Instances",obj_ship044);
			break;
			case 26:
				instance_create_layer(_xx,_yy,"Instances",obj_ship045);
			break;
			case 27:
				instance_create_layer(_xx,_yy,"Instances",obj_ship046);
			break;
			case 28:
				instance_create_layer(_xx,_yy,"Instances",obj_ship047);
			break;
			case 29:
				instance_create_layer(_xx,_yy,"Instances",obj_ship051);
			break;
			case 30:
				instance_create_layer(_xx,_yy,"Instances",obj_ship052);
			break;
			case 31:
				instance_create_layer(_xx,_yy,"Instances",obj_ship053);
			break;
			case 32:
				instance_create_layer(_xx,_yy,"Instances",obj_ship054);
			break;
			case 33:
				instance_create_layer(_xx,_yy,"Instances",obj_ship055);
			break;
			case 34:
				instance_create_layer(_xx,_yy,"Instances",obj_ship056);
			break;
			case 35:
				instance_create_layer(_xx,_yy,"Instances",obj_ship057);
			break;
			case 36:
				instance_create_layer(_xx,_yy,"Instances",obj_ship061);
			break;
			case 37:
				instance_create_layer(_xx,_yy,"Instances",obj_ship062);
			break;
			case 38:
				instance_create_layer(_xx,_yy,"Instances",obj_ship063);
			break;
			case 39:
				instance_create_layer(_xx,_yy,"Instances",obj_ship064);
			break;
			case 40:
				instance_create_layer(_xx,_yy,"Instances",obj_ship065);
			break;
			case 41:
				instance_create_layer(_xx,_yy,"Instances",obj_ship066);
			break;
			case 42:
				instance_create_layer(_xx,_yy,"Instances",obj_ship067);
			break;
		}
	}


}
