/// @description Insert description here
// You can write your code in this editor
// var mid
var _xmid = room_width/2;
var _ymid = room_height/2;

if(room == rm_game){
	var _colors = choose(global.particle_color1,global.particle_color2,global.particle_color3);
} else {
	var _colors = c_white;	
}

//Barra superior
var _colorship = scr_corShips();
var _alpha_ocilando = scr_wave(.8,.9,.2,0);
var _alpha_ocilando_ui = scr_wave(.1,.2,2,0);
var _alpha_ocilando_text = scr_wave(.5,1,.5,0);


// Barra no top
draw_rectangle_color(-10,-10,room_width+10,100,c_black,c_black,c_black,c_black,0);
draw_rectangle_color(-10,0,room_width+10,30,_colors,_colors,c_black,c_black,0);
draw_rectangle_color(-10,70,room_width+10,100,c_black,c_black,_colors,_colors,0);
// fuel
var _timefuel = round(global.fuel/60);
var _maxfuel = round(global.max_fuel/60);
//var _timebarfuel = round(global.fuel*100/global.max_fuel);
var _colordecrease = scr_cor_decreasce(_timefuel, _maxfuel);



switch (room) {
    case rm_start:
        // UI
		// retangulo
		draw_sprite_ext(spr_menu_fundo,0,0,_ymid,room_width,600,0,_colors,_alpha_ocilando);
		// menu top
		draw_sprite_ext(spr_UI_top,0,10,_ymid-20,.55,.55,0,_colors,_alpha_ocilando_ui);
		// menu lateral
		draw_sprite_ext(spr_UI_lateral,0,room_width/2 + 35,_ymid,.52,.52,0,_colors,_alpha_ocilando_ui);
		//Logo
		//draw_sprite_ext(spr_spacerock,0,_xmid-180,_ymid-300,2,4,0,_colors,1);
		// Reward video
		var _reward = global.rewarded_multiplier * 10;		
		if(instance_exists(obj_button_rewarded)){
			draw_sprite(spr_gem,0,_xmid+50,310);
			draw_text_transformed_color(_xmid - 110, 290, "Reward:   " + string(_reward),1.5,1.5,0,_colors,_colors,_colors,_colors,_alpha_ocilando_text);
		}
		
		// Upgrade
		#region Upgrade
		switch(global.lvl_ship){
			case 2:
			case 9:
			case 16:
			case 23:
			case 30:
			case 37:
				var _upgrade = "Upgrade 2";
			break;
			case 3:
			case 10:
			case 17:
			case 24:
			case 31:
			case 38:
				var _upgrade = "Upgrade 3";
			break;
			case 4:
			case 11:
			case 18:
			case 25:
			case 32:
			case 39:
				var _upgrade = "Upgrade 4";
			break;
			case 5:
			case 12:
			case 19:
			case 26:
			case 33:
			case 40:
				var _upgrade = "Upgrade 5";
			break;
			case 6:
			case 13:
			case 20:
			case 27:
			case 34:
			case 41:
				var _upgrade = "Upgrade 6";
			break;
			case 7:
			case 14:
			case 21:
			case 28:
			case 35:
			case 42:
				var _upgrade = "Upgrade 7";
			break;
			default :
				var _upgrade = "";
			break;
		}
		draw_set_halign(fa_center);
		draw_text_transformed_color(200, _ymid+100, _upgrade,2,2,0,_colorship,_colorship,_colorship,_colorship,_alpha_ocilando_text);
		draw_set_halign(fa_left);
		#endregion
		
		//Status nave
		// life
		draw_text_transformed_color(475, _ymid+10, "Health Point",1.5,1.5,0,c_lime,c_lime,c_lime,c_lime,_alpha_ocilando_text); // gold
		draw_healthbar(477, _ymid+50, 677, _ymid+60, global.hp, c_lime, c_lime, c_lime, 0, false, false);
		
		// atk power
		draw_text_transformed_color(475, _ymid+90, "Atk Power",1.5,1.5,0,c_red,c_red,c_red,c_red,_alpha_ocilando_text); // gold
		draw_healthbar(477, _ymid+130, 677, _ymid+140, global.atk_power, c_red, c_red, c_red, 0, false, false);
		
		// Critical
		draw_text_transformed_color(475, _ymid+170, "Critical",1.5,1.5,0,c_purple,c_purple,c_purple,c_purple,_alpha_ocilando_text); // gold
		draw_healthbar(477, _ymid+210, 677, _ymid+220, global.critical, c_purple, c_purple, c_purple, 0, false, false);
		
		// Atk Speed
		draw_text_transformed_color(475, _ymid+250, "Atk Speed",1.5,1.5,0,c_blue,c_blue,c_blue,c_blue,_alpha_ocilando_text); // gold
		draw_healthbar(477, _ymid+290, 677, _ymid+300, global.dexterity, c_blue, c_blue, c_blue, 0, false, false);
		
		// Lvl Shoot
		draw_text_transformed_color(475, _ymid+330, "Lvl Shoot",1.5,1.5,0,c_yellow,c_yellow,c_yellow,c_yellow,_alpha_ocilando_text); // gold
		draw_healthbar(477, _ymid+370, 677, _ymid+380, global.lvl_shoot, c_yellow, c_yellow, c_yellow, 0, false, false);
		
		//Money
		if(!global.ship067){
			draw_sprite_ext(spr_moneybag,0,20,room_height - 200,.5,.5,0,c_yellow,alpha);
			draw_text_transformed_color(40, room_height - 220, string(global.gem),1.5,1.5,0,_colors,_colors,_colors,_colors,_alpha_ocilando_text); // gold
		}
		//Valor da nave
		if(global.value != 0){			
			draw_sprite(spr_gem,0,_xmid - 50,room_height - 200);
			draw_text_transformed_color(_xmid - 30,room_height - 220, string(global.value),1.5,1.5,0,_colors,_colors,_colors,_colors,_alpha_ocilando_text); // Valor da nave
		}

    break;
	case rm_game : // Se estiver na rm_game
		// Camada escura por cima do fundo		
		if(!instance_exists(obj_backgroundDivisor)){
			instance_create_layer(0,0,"Objects",obj_backgroundDivisor);	
		}
		
		var _amounthp = (global.hp*100)/global.max_life;
		var _colordecreaselife = scr_cor_decreasce(global.hp, global.max_life);	
		
		//score
		draw_sprite_ext(spr_btn_record,0,15,30,1,1,0,_colors,alpha);
		draw_text_transformed_color(30, 5, string(global.point), 2,2,0,_colors, _colors, _colors, _colors,alpha);			
			
		//gold
		draw_sprite_ext(spr_moneybag,0,15,75,.5,.5,0,c_yellow,alpha);
		draw_text_transformed_color(30, 50, string(global.gem), 2,2,0,c_yellow, c_yellow, c_yellow, c_yellow,alpha);		
		
		//HP			
		draw_healthbar(xcentro-100, 140, xcentro+bargrayHP, 160, _amounthp, _colors, _colordecreaselife, _colordecreaselife, 0, false, false);
			
		// Fuel number
		draw_set_halign(fa_center);			
		draw_text_transformed_color(xcentro, 170,_timefuel,5,5,0,_colordecrease,_colordecrease,_colordecrease,_colordecrease,alpha); 
		draw_set_halign(fa_left);	
		
		//Planeta
		draw_set_halign(fa_center);			
		if(instance_exists(obj_planet)){
			var _planeta = global.planet;
			draw_text_transformed_color(_xmid, 30 ,string(_planeta),2,2,0,_colors,_colors,_colors,_colors,1);
		}
		draw_set_halign(fa_left);
		
		//combo
		if(instance_exists(obj_ship_father)){

			var _x1 = xcentro-100;
			var _y1 = 170;
			var _x2 = xcentro+bargrayHP;
			var _y2 = 190;
			var _amountcombo = (global.combo-1)/2*100;
			var _argumentcolor = round((global.combo*4)-3);
			if(_argumentcolor > 8){
				_argumentcolor = 8;
			}			
			var _colour_bar_combo = scr_skill_collor1(_argumentcolor);
								
			draw_healthbar(_x1, _y1, _x2, _y2, _amountcombo, _colors, _colour_bar_combo, _colour_bar_combo, 0, false, false);
		
			//Lvl da nave
			draw_set_halign(fa_center);
			draw_text_transformed_color(obj_ship_father.x, obj_ship_father.y -100, floor(global.lvl_map/2), 2,2,0,_colors, _colors, _colors, _colors,alpha);
			draw_set_halign(fa_left);			
		
		}


	break;
	
	case rm_pause : // Se estiver na rm_pause escrever as
		//pontos
		draw_set_halign(fa_center);
		draw_sprite_ext(spr_score,0,_xmid,room_height/4,1,1,0,c_white,alpha);
		draw_text_transformed_color(_xmid, (room_height/4) + 50, string(global.point), 3,3,0,_colors, _colors, _colors, _colors,alpha);
		draw_set_halign(fa_left);	
	break;
	
	case rm_gameover : 
		draw_sprite_ext(spr_score,0,_xmid,(room_height/4),1,1,0,c_white,alpha);
		draw_set_halign(fa_center);
		draw_text_transformed_color(_xmid, room_height/4+30, round(count), 3,3,0,_colors, _colors, _colors, _colors,alpha);	
		draw_set_halign(fa_left);
	break;

}

//Bordas
//top
draw_sprite_ext(spr_UI_top,0,20,101,1,1,0,_colors,_alpha_ocilando_ui);

//bot
draw_sprite_ext(spr_UI_bot,0,25,room_height-40,1,1,0,_colors,_alpha_ocilando_ui);


////Fuel
//draw_sprite_ext(spr_fuel,0,xspr_PU_fuel,yspr_PU_fuel,1,1,0,c_white,alpha);
//draw_healthbar(x1bar_fuel, y1bar_fuel, x2bar_fuel + bargrayfuel , y2bar_fuel, _timebarfuel, c_gray, 0, _colordecrease, 0, true, false);
//draw_text_transformed_color(xtext_maxfuel, ytext_maxfuel,_timefuel,1.5,1.5,0,_colordecrease,_colordecrease,_colordecrease,_colordecrease,alpha); // Escrevendo a gasolina

				