/// @description 

if(instance_exists(obj_ship_father)){
	obj_ship_father.currentatkpower = global.atk_power;
	obj_ship_father.currentcritical = global.critical;
	obj_ship_father.currentdexterity = global.dexterity;
	obj_ship_father.currentlvlshoot = global.lvl_shoot;
	//Modo PU
	obj_ship_father.puactivated = true;
	//Voltando status
	obj_ship_father.alarm[2] = 60*5;
}


