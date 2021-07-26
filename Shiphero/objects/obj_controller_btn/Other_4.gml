/// @description Instanciando botões
var _midx = room_width/2;
var _midy = room_height/2;
var _ytop = 220;
var _ybot = _midy+540;
switch(room){
	case rm_start:
		// ---------------- Recordes ----------------
		var _record = instance_create_layer(90,_ytop,"Instances",obj_button_record);
		
		// ---------------- Sound ----------------		
		var _sound = instance_create_layer(room_width-88,_ytop,"Instances",obj_button_sound);
		
		// ---------------- Select ship ----------------
		// esquerda
		instance_create_layer(80,_ybot,"Instances",obj_button_select_left);		
		
		// baixo
		//instance_create_layer((room_width/2) - 200,room_height/4.5,"Instances",obj_button_select_down);		

		// direita
		instance_create_layer(320,_ybot,"Instances",obj_button_select_right);

		// adquirir
		instance_create_layer(320,_ybot,"Instances",obj_button_acquire);	
		
		// ---------------- Jogar ----------------
		var _play = instance_create_layer(_midx,_midy-200,"Instances",obj_button_play);
		
		//---------------- Status ----------------
		// life
		var _hp = instance_create_layer(440,_ybot - 480,"Instances",obj_button_acquire_hp);
		_hp.image_xscale = .4;
		_hp.image_yscale = .4;
		//atkpower
		var _atkPower = instance_create_layer(440,_ybot - 400,"Instances",obj_button_acquire_atkPower);
		_atkPower.image_xscale = .4;
		_atkPower.image_yscale = .4;
		//critical
		var _critical = instance_create_layer(440,_ybot - 320,"Instances",obj_button_acquire_critical);
		_critical.image_xscale = .4;
		_critical.image_yscale = .4;
		//atkspeed
		var _atkspeed = instance_create_layer(440,_ybot - 240,"Instances",obj_button_acquire_dexterity);
		_atkspeed.image_xscale = .4;
		_atkspeed.image_yscale = .4;
		//lvlshoot
		var _lvlshoot = instance_create_layer(440,_ybot - 160,"Instances",obj_button_acquire_lvlShoot);
		_lvlshoot.image_xscale = .4;
		_lvlshoot.image_yscale = .4;
		
	break;
	
	case rm_pause:
		// ---------------- Sound ----------------		
		var _sound = instance_create_layer(room_width-88,_ytop,"Instances",obj_button_sound);		
		
		// ---------------- Play ----------------
		var _play = instance_create_layer(_midx,_midy,"Instances",obj_button_play);
		
		// ---------------- Home ----------------
		var _home = instance_create_layer(90,_ytop,"Instances",obj_button_home);
		
		// ---------------- Record ----------------
		var _record = instance_create_layer(_midx,_midy + 160,"Instances",obj_button_record);
		
		// ---------------- Exit ----------------
		instance_create_layer(_midx,_midy + 320 ,"Instances",obj_button_exit);
	break;
	
	case rm_game :
		// ---------------- Pause ----------------		
		instance_create_layer(90,_ytop,"Buttons",obj_button_pause);
		
		// ---------------- Sound ----------------		
		var _sound = instance_create_layer(room_width-88,_ytop,"Instances",obj_button_sound);
		
		// ---------------- Control ----------------
		var _btn_control = instance_create_layer(0,0,"Buttons",obj_button_control);		
		_btn_control.image_xscale = 12;
		_btn_control.image_yscale = 20;
		// dash
		//var _btn_dash = instance_create_layer(0,0,"Buttons",obj_button_dash);		
		//_btn_dash.image_xscale = 12;
		//_btn_dash.image_yscale = 20;
		
	break;
	
	case rm_gameover :
		// ---------------- Home ----------------
		var _home = instance_create_layer(0,0,"Instances",obj_button_home1);
		_home.image_xscale = 12;
		_home.image_yscale = 20;
	break;
	
	
}