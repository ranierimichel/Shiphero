/// @description 
event_inherited();
drag = false;
instance_destroy(obj_ship_father);

if(global.lvl_ship > 1){
	global.lvl_ship --;
} else {
	global.lvl_ship = 42;
}

//if(global.lvl_ship > 7){
//	global.lvl_ship -= 7;
//}else{
//	switch (global.lvl_ship) {
//	    case 1:
//	        global.lvl_ship = 36;
//	    break;
//	    case 2:
//	        global.lvl_ship = 37;
//	    break;
//	    case 3:
//	        global.lvl_ship = 38;
//	    break;
//	    case 4:
//	        global.lvl_ship = 39;
//	    break;
//	    case 5:
//	        global.lvl_ship = 40;
//	    break;
//	    case 6:
//	        global.lvl_ship = 41;
//	    break;
//	    case 7:
//	        global.lvl_ship = 42;
//	    break;

//	}
//}
