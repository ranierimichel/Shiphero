/// @description 
event_inherited();
switch(obj_ship_father.ship){ // checando index das naves
	case 1: // index 20 nave 1, index 21 nave 2...
		global.ship011 = 1;
	break;
	case 2:
		global.ship012 = 1;
	break;
	case 3:
		global.ship013 = 1;
	break;
	case 4:
		global.ship014 = 1;
	break;
	case 5:
		global.ship015 = 1;
	break;
	case 6:
		global.ship016 = 1;
	break;
	case 7:
		global.ship017 = 1;
	break;
	case 8:
		global.ship021 = 1;
	break;
	case 9:
		global.ship022 = 1;
	break;
	case 10:
		global.ship023 = 1;
	break;
	case 11:
		global.ship024 = 1;
	break;
	case 12:
		global.ship025 = 1;
	break;
	case 13:
		global.ship026 = 1;
	break;
	case 14:
		global.ship027 = 1;
	break;
	case 15:
		global.ship031 = 1;
	break;
	case 16:
		global.ship032 = 1;
	break;
	case 17:
		global.ship033 = 1;
	break;
	case 18:
		global.ship034 = 1;
	break;
	case 19:
		global.ship035 = 1;
	break;
	case 20:
		global.ship036 = 1;
	break;
	case 21:
		global.ship037 = 1;
	break;
	case 22:
		global.ship041 = 1;
	break;
	case 23:
		global.ship042 = 1;
	break;
	case 24:
		global.ship043 = 1;
	break;
	case 25:
		global.ship044 = 1;
	break;
	case 26:
		global.ship045 = 1;
	break;
	case 27:
		global.ship046 = 1;
	break;
	case 28:
		global.ship047 = 1;
	break;
	case 29:
		global.ship051 = 1;
	break;
	case 30:
		global.ship052 = 1;
	break;
	case 31:
		global.ship053 = 1;
	break;
	case 32:
		global.ship054 = 1;
	break;
	case 33:
		global.ship055 = 1;
	break;
	case 34:
		global.ship056 = 1;
	break;
	case 35:
		global.ship057 = 1;
	break;
	case 36:
		global.ship061 = 1;
	break;
	case 37:
		global.ship062 = 1;
	break;
	case 38:
		global.ship063 = 1;
	break;
	case 39:
		global.ship064 = 1;
	break;
	case 40:
		global.ship065 = 1;
	break;
	case 41:
		global.ship066 = 1;
	break;
	case 42:
		global.ship067 = 1;
	break;
}

// gastando o gold
global.gem -= obj_ship_father.value;

// mostrando quanto gastou
if(instance_exists(obj_ship_father))
{
	var _xx = 20;
	var _yy = room_height - 200;
	
	var show_text = instance_create_layer(_xx,_yy,"Instances",obj_show_text);
	show_text.text = obj_ship_father.value;
	show_text.critical = true; // critical quer dizer mostrar maior
	show_text.color = c_yellow;
}

// Destruindo a nave para atualizar
instance_destroy(obj_ship_father);

// Achievements Spaceship
if(instance_exists(obj_googleAchievements)){
	obj_googleAchievements.alarm[1] = room_speed	
}
