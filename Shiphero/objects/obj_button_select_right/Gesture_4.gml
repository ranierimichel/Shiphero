/// @description 
event_inherited();

drag = false;
instance_destroy(obj_ship_father);


if(global.lvl_ship < 42){
	global.lvl_ship ++;
} else {
	global.lvl_ship = 1;
}

//if(global.lvl_ship <= 35){
//	global.lvl_ship += 7;
//}else{
//	switch (global.lvl_ship) {
//	    case 36:
//	        global.lvl_ship = 1;
//	    break;
//	    case 37:
//	        global.lvl_ship = 2;
//	    break;
//	    case 38:
//	        global.lvl_ship = 3;
//	    break;
//	    case 39:
//	        global.lvl_ship = 4;
//	    break;
//	    case 40:
//	        global.lvl_ship = 5;
//	    break;
//	    case 41:
//	        global.lvl_ship = 6;
//	    break;
//	    case 42:
//	        global.lvl_ship = 7;
//	    break;

//	}
//}
