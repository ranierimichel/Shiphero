/// @description Insert description here
// You can write your code in this editor

//if(instance_exists(obj_ship_father)){
//	// porcentagem a escrever no healthbar
//	var _amounthp = (global.hp*100)/global.max_life;
//	var _amountatkpower = (global.atk_power*100)/global.max_atk_power;
//	var _amountcritical = (global.critical*100)/global.max_critical;
//	var _amountdexterity = (global.dexterity*100)/global.max_dexterity;
//	var _amountlvlshoot = (global.lvl_shoot < 70) ? (((global.lvl_shoot*100)/global.max_lvl_shoot)+(global.combo*10)-10) : global.lvl_shoot;
	
//}
//// fuel
//var _timefuel = round(global.fuel/60);
//var _maxfuel = round(global.max_fuel/60);
//var _timebarfuel = round(global.fuel*100/global.max_fuel);
//var _colordecrease = scr_cor_decreasce(_timefuel, _maxfuel);

//switch(room){
//	case rm_start :		
//		draw_set_halign(fa_left);		
		
//		var color1 = c_gray;
				
//		draw_sprite(spr_gem,0,20,40);
//		draw_text_transformed_color(40, 20, string(global.gem),1.5,1.5,0,color1,color1,color1,color1,.6); // gold
		
//		//HP		
//		draw_sprite_ext(spr_hp,0,xspr_PU_hp,yspr_PU_hp,1,1,0,c_white,1);
//		draw_healthbar(x1bar_hp, y1bar_hp, x2bar_hp + bargrayHP, y2bar_hp, _amounthp, c_gray, c_lime, c_lime, 0, true, false);
//		draw_text_transformed_color(xtext_maxhp, ytext_maxhp,string(global.hp)+"/"+string(global.max_life),1.5,1.5,0,color1,color1,color1,color1,.6); // Escrevendo o poder		
		
//		//Atk power
//		draw_sprite_ext(spr_atkpower,0,xspr_PU_atkpower,yspr_PU_atkpower,1,1,0,c_white,1);
//		draw_healthbar(x1bar_atkpower, y1bar_atkpower, x2bar_atkpower + bargrayAtkPower, y2bar_atkpower, _amountatkpower, c_gray, c_red, c_red, 0, true, false);
//		draw_text_transformed_color(xtext_maxatkpower, ytext_maxatkpower, string(global.atk_power)+"/"+string(global.max_atk_power),1.5,1.5,0,color1,color1,color1,color1,.6); // Escrevendo a rotacao da nave
		
//		//Critical
//		draw_sprite_ext(spr_critical,0,xspr_PU_critical,yspr_PU_critical,1,1,0,c_white,1);
//		draw_healthbar(x1bar_critical, y1bar_critical, x2bar_critical+bargraycritical, y2bar_critical, _amountcritical, c_gray, c_purple, c_purple, 0, true, false);
//		draw_text_transformed_color(xtext_maxcritical, ytext_maxcritical,string(global.critical)+"/"+string(global.max_critical),1.5,1.5,0,color1,color1,color1,color1,.6); // Escrevendo a Velocidade do tiro
		
//		//Dexterity
//		draw_sprite_ext(spr_dexterity,0,xspr_PU_dexterity,yspr_PU_dexterity,1,1,0,c_white,1);
//		draw_healthbar(x1bar_dexterity, y1bar_dexterity, x2bar_dexterity + bargraydexterity, y2bar_dexterity, _amountdexterity, c_gray, c_blue, c_blue, 0, true, false);
//		draw_text_transformed_color(xtext_maxdexterity, ytext_maxdexterity,string(global.dexterity)+"/"+string(global.max_dexterity),1.5,1.5,0,color1,color1,color1,color1,.6); // Escrevendo a Velocidade do tiro
		
//		//LvlShotting
//		draw_sprite_ext(spr_lvlshoot,0,xspr_PU_lvlshoot,yspr_PU_lvlshoot,1,1,0,c_white,1);
//		draw_healthbar(x1bar_lvlshoot, y1bar_lvlshoot, x2bar_lvlshoot + bargrayLvlShoot, y2bar_lvlshoot, _amountlvlshoot, c_gray, c_yellow, c_yellow, 0, true, false);
//		draw_text_transformed_color(xtext_maxlvlshoot, ytext_maxlvlshoot,string(global.lvl_shoot)+"/"+string(global.max_lvl_shoot),1.5,1.5,0,color1,color1,color1,color1,.6); // Escrevendo a Velocidade do tiro
		
//		//Fuel
//		draw_sprite_ext(spr_fuel,0,xspr_PU_fuel,yspr_PU_fuel,1,1,0,c_white,1);
//		draw_healthbar(x1bar_fuel, y1bar_fuel, x2bar_fuel + bargrayfuel , y2bar_fuel, _timebarfuel, c_gray, 0, _colordecrease, 0, true, false);
//		draw_text_transformed_color(xtext_maxfuel, ytext_maxfuel,_timefuel,1.5,1.5,0,_colordecrease,_colordecrease,_colordecrease,_colordecrease,.6); // Escrevendo a gasolina
		
//		//teste
//		//var _maxskill = global.max_atk_power + global.max_critical + global.max_dexterity + global.max_life + global.max_lvl_shoot;
//		//var _maxstatus = global.atk_power + global.critical + global.dexterity + global.hp + global.lvl_shoot;
		
//		//draw_text_transformed_color(_centro+110, 450,string(_maxstatus),1.5,1.5,0,color1,color1,color1,color1,.6); // Escrevendo a Velocidade do tiro
//		//draw_text_transformed_color(_centro+110, 500,string(_maxskill),1.5,1.5,0,color1,color1,color1,color1,.6); // Escrevendo a Velocidade do tiro
		
		
//		if(global.value != 0){			
//			draw_sprite(spr_gem,0,xspr_gem,yspr_gem);
//			draw_text_transformed_color(xtext_gem, ytext_gem, string(global.value),1.5,1.5,0,color1,color1,color1,color1,.6); // Valor da nave
//		}	
		
//	break;
	
//	case rm_pause : // Se estiver na rm_pause escrever as
//		var color = c_gray;
//		draw_sprite_ext(spr_score,0,room_width/2.25,(room_height/4)+40,1,1,0,c_white,1);
//		draw_text_transformed_color(room_width/2, room_height/4, string(global.point), 3,3,0,color, color, color, color,1);
//		//teste
//		//draw_text_transformed_color(room_width/2, room_height/4.6, string(global.lvl_map), 3,3,0,color, color, color, color,1);
//		//draw_text_transformed_color(room_width/2, room_height/3.5, string(global.gem), 3,3,0,color, color, color, color,1);
		
		
//	break;
	
//	case rm_game : // Se estiver na rm_game
		
//		var color = c_gray;

//		if(!global.pause){
			
//			var color1 = c_gray;			
//			//Planeta
//			draw_set_halign(fa_center);
			
//			if(instance_exists(obj_planet)){
//				var _planeta = global.planet;
//				draw_text_transformed_color(room_width/2, room_height - 200,string(_planeta),5,5,0,color1,color1,color1,color1,.6);
//			}

//			////Cronometro/fuel
//			//draw_text_transformed_color(room_width/4.5, 0, _fuel,2,2,0,_colordecrease,_colordecrease,_colordecrease,_colordecrease,.6);
//			//draw_text_transformed_color(room_width/2.8, 0, _timefuel,2,2,0,_colordecrease,_colordecrease,_colordecrease,_colordecrease,.8);
			
			

//			draw_set_halign(fa_left);
//			//HP		
//			draw_sprite_ext(spr_hp,0,xspr_topright_PU,yspr_topright_PU_hp,1,1,0,c_white,1);
//			draw_healthbar(topright_position, y1bar_topright_hp, topright_position+bargrayHP, y2bar_topright_hp, _amounthp, c_gray, c_lime, c_lime, 0, true, false);
//			draw_text_transformed_color(topright_position+110, 10,string(global.hp),1.5,1.5,0,color1,color1,color1,color1,.6); // Escrevendo o poder		
		
//			//Atk power
//			draw_sprite_ext(spr_atkpower,0,xspr_topright_PU,yspr_topright_PU_atkpower,1,1,0,c_white,1);
//			draw_healthbar(topright_position, y1bar_topright_atkpower, topright_position+bargrayAtkPower, y2bar_topright_atkpower, _amountatkpower, c_gray, c_red, c_red, 0, true, false);
//			draw_text_transformed_color(topright_position+110, 40, string(global.atk_power),1.5,1.5,0,color1,color1,color1,color1,.6); // Escrevendo a rotacao da nave
		
//			//Critical
//			draw_sprite_ext(spr_critical,0,xspr_topright_PU,yspr_topright_PU_critical,1,1,0,c_white,1);
//			draw_healthbar(topright_position, y1bar_topright_critical, topright_position+bargraycritical, y2bar_topright_critical, _amountcritical, c_gray, c_purple, c_purple, 0, true, false);
//			draw_text_transformed_color(topright_position+110, 70,string(global.critical),1.5,1.5,0,color1,color1,color1,color1,.6); // Escrevendo a Velocidade do tiro
		
//			//Dexterity
//			draw_sprite_ext(spr_dexterity,0,xspr_topright_PU,yspr_topright_PU_dexterity,1,1,0,c_white,1);
//			draw_healthbar(topright_position, y1bar_topright_dexterity, topright_position + bargraydexterity, y2bar_topright_dexterity, _amountdexterity, c_gray, c_blue, c_blue, 0, true, false);
//			draw_text_transformed_color(topright_position+110, 100,string(global.dexterity),1.5,1.5,0,color1,color1,color1,color1,.6); // Escrevendo a Velocidade do tiro
		
//			//LvlShotting
//			var _flag = (global.lvl_shoot < 70) ? (global.combo*10)-10 : 0;
//			draw_sprite_ext(spr_lvlshoot,0,xspr_topright_PU,yspr_topright_PU_lvlshoot,1,1,0,c_white,1);
//			draw_healthbar(topright_position, y1bar_topright_lvlshoot, topright_position + bargrayLvlShoot , y2bar_topright_lvlshoot, _amountlvlshoot, c_gray, c_yellow, c_yellow, 0, true, false);
//			draw_text_transformed_color(topright_position+110, 130,round(global.lvl_shoot+_flag),1.5,1.5,0,color1,color1,color1,color1,.6); // Escrevendo a Velocidade do tiro
									
//			//Fuel
//			draw_sprite_ext(spr_fuel,0,xspr_topright_PU,yspr_topright_PU_fuel,1,1,0,c_white,1);
//			draw_healthbar(topright_position, y1bar_topright_fuel, topright_position + bargrayfuel , y2bar_topright_fuel, _timebarfuel, c_gray, 0, _colordecrease, 0, true, false);
//			draw_text_transformed_color(topright_position+110, 160,_timefuel,1.5,1.5,0,_colordecrease,_colordecrease,_colordecrease,_colordecrease,.6); // Escrevendo a Velocidade do tiro

//			//score
//			draw_sprite_ext(spr_score,0,25,30,1,1,0,c_white,1);
//			draw_text_transformed_color(50, -10, string(global.point), 2,2,0,color, color, color, color,1);			
			
//			//gold
//			draw_sprite_ext(spr_gem,0,30,75,1,1,0,c_white,1);
//			draw_text_transformed_color(50, 50, string(global.gem), 2,2,0,color, color, color, color,1);			
						
//			//lvlteste
//			var color1 = c_gray;
//			draw_text_transformed_color(room_width/2, -5, global.lvl_map,5,5,0,color1,color1,color1,color1,1); // debug

//		}
//	break;

//	case rm_gameover : 
//		// Trocando a cor do fundo
//		//var lay_id = layer_get_id("background");
//		//var back_id = layer_background_get_id(lay_id);
//		//layer_background_blend(back_id, c_red);
//		var color = c_gray;
//		draw_sprite_ext(spr_score,0,room_width/2.25,(room_height/4)+40,1,1,0,c_white,1);
//		draw_text_transformed_color(room_width/2, room_height/4, string(global.point), 3,3,0,color, color, color, color,1);	
//	break;
	
//	case rm_records:
//		var color = c_gray;
//		draw_sprite_ext(spr_score,0,room_width/2.25,(room_height/4)+40,1,1,0,c_white,1);
//		draw_text_transformed_color(room_width/2, room_height/4, string(global.max_point), 3,3,0,color, color, color, color,1);
//	break;
//}