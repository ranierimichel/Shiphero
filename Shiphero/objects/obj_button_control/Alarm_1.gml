/// @description Parando a nave

startx = xx;
starty = yy;

dist = 0;

dragging = false;

if(instance_exists(obj_ship_father)){
	obj_ship_father.speed = 0;
	obj_ship_father.dash = 0;
}


