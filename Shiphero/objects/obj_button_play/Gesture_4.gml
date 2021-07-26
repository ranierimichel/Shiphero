/// @description Animação
event_inherited();

////startando o cronometro se estiver na room start
//if(room == rm_start){
//	global.cronometro = 60000;
//}

global.pause = false;
room_goto(rm_game);

if(instance_exists(obj_ship_father)){
	instance_destroy(obj_ship_father);
}

//switch(room){
//	case rm_start:
//		room_goto(rm_select);
//	break;
//	case rm_pause:
//		room_goto(rm_game);
//	break;
//	case rm_records:
//		room_goto(rm_game);
//	break;
//}


