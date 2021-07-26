/// @description
event_inherited();
if(room == rm_game){
	var _c = scr_corShips();
	var _pts = points.meteor04;
	if(instance_exists(obj_ship_father)){
		var _xx = random_range(obj_ship_father.x-50,obj_ship_father.x+50);
		var _yy = random_range(obj_ship_father.y-50,obj_ship_father.y-100);
	}
	// acrescentando score se o meteoro estiver nascendo ganha dobro de pontos
	if(instance_exists(obj_planet)){
		if(obj_planet.parts){
			var _pts = image_alpha < 1 ? (points.meteor04*2)*2 : points.meteor04*2;		
			global.point += _pts;
		} else {
			var _pts = image_alpha < 1 ? (points.meteor04*2) : points.meteor04;
			global.point += _pts;	
		}
	} 

	//mostrando pts;
	if(image_alpha < 1){
		var show_text = instance_create_layer(_xx,_yy,"Instances",obj_show_text);
		show_text.text = _pts;
		show_text.critical = true; // critical quer dizer mostrar maior
		show_text.positive = true;
		show_text.color = _c;	
	} else {
		var show_text = instance_create_layer(_xx,_yy,"Instances",obj_show_text);
		show_text.text = _pts;
		show_text.positive = true;
		show_text.critical = false; // critical quer dizer mostrar maior
		show_text.color = c_gray;
	
	}
	// Balançando a tela
	//instance_create_layer(x, y, "Instances", obj_shake);
	//var shake = obj_shake;
	// Força para balançar a tela
	//shake.shake = 1;
	// Efeito ao ser destruido
	//effect_create_below(ef_explosion, x, y, 0, c_gray);
	//effect_create_below(ef_smoke, x, y, 0, c_gray);
	// Criando debris

	var _choose = irandom_range(0,3);

	switch(_choose){
	    case 0:	    
			var _m = instance_create_layer(x,y,"Meteors03",obj_meteor01);
			var _m1 = instance_create_layer(x,y,"Meteors01",obj_meteor01);
			// criando com o msm estilo de meteoro
			_m.image_index = image_index;
			_m1.image_index = image_index;
	    break;
	    case 1:
	         repeat (2) {
				var _m = instance_create_layer(x,y,"Meteors02",obj_meteor01);
				_m.image_index = image_index;
			}
	    break;
	    case 2:
			var _m = instance_create_layer(x,y,"Meteors02",obj_meteor01);
			_m.image_index = image_index;
	         repeat (2) {
				var _m1 = instance_create_layer(x,y,"Meteors01",obj_meteor01);
				_m1.image_index = image_index;
			}
	    break;
	    case 3:
	         repeat (4) {
				var _m = instance_create_layer(x,y,"Meteors01",obj_meteor01);
				_m.image_index = image_index;
			}
	    break;
	}
}
