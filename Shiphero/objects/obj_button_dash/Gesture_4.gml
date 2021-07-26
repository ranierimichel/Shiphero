/// @description 

//if(instance_exists(obj_button_dash)){
//	obj_button_dash.dashdelay = room_speed*timetodash;
//	obj_button_dash.dashtime = (global.combo*2)*room_speed;
//}
// parando a nave dps do dash


if(instance_exists(obj_button_control) && instance_exists(obj_controller_skills)){
	obj_ship_father.dash = 1;
	var _dashtime = ((obj_controller_skills.dashlvl*.5)+global.combo)*room_speed;
	obj_button_control.alarm[1] = _dashtime;
}

drag = false;

instance_destroy();
