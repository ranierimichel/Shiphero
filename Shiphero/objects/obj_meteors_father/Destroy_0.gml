/// @description
randomize();

if(room != rm_start){
	global.total_enimies_death ++;

	if(!global.ship067){
		instance_create_layer(x,y,"Instances",obj_coin01);
	}
	
	
	if(image_alpha < 1){
		var _color = scr_corShips();
		var _show_text = instance_create_layer(x,y,"Instances",obj_show_text);
		_show_text.neutro = true;
		_show_text.text = "x2";
		_show_text.critical = true
		_show_text.color = _color;
	}
}
// Som da explosão
var sound = instance_find(obj_sound,0);
sound.alarm[7] = true;


//// resetando menor para mira seguir
//if(instance_exists(obj_button_control)){
//	obj_button_control.lessdist = 9999;	
//}