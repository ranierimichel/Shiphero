// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
randomize();


function scr_corCombo(){
	var _combo = global.combo;
	var _hue1 = global.hue1;
	var _hue2 = global.hue2;
	var _hue3 = global.hue3;
	var _hue4 = global.hue4;
	var _hue5 = global.hue5;
	var _hue6 = global.hue6;
	var _hue7 = global.hue7;
	var _cor = c_white;

	switch(_combo){
		case 1:
			_cor = make_colour_hsv(_hue1, 255, 150);
		break;					   
		case 1.1:				   
			_cor = make_colour_hsv(_hue1, 255, 200);
		break;					   
		case 1.2:				   
			_cor = make_colour_hsv(_hue1, 255, 255);
		break;			
		case 1.3:
			_cor = make_colour_hsv(_hue2, 255, 150);
		break;						
		case 1.4:					
			_cor = make_colour_hsv(_hue2, 255, 200);
		break;					   
		case 1.5:				   
			_cor = make_colour_hsv(_hue2, 255, 255);
		break;
		case 1.6:
			_cor = make_colour_hsv(_hue3, 255, 150);
		break;					   
		case 1.7:				   
			_cor = make_colour_hsv(_hue3, 255, 200);
		break;					   
		case 1.8:				   
			_cor = make_colour_hsv(_hue3, 255, 255);
		break;
		case 1.9:
			_cor = make_colour_hsv(_hue4, 255, 150);
		break;					   
		case 2:					   
			_cor = make_colour_hsv(_hue4, 255, 200);
		break;					   
		case 2.1:				   
			_cor = make_colour_hsv(_hue4, 255, 255);
		break;
		case 2.2:
			_cor = make_colour_hsv(_hue5, 255, 150);
		break;	
		case 2.3:
			_cor = make_colour_hsv(_hue5, 255, 200);
		break;
		case 2.4:
			_cor = make_colour_hsv(_hue5, 255, 255);
		break;
		case 2.5:
			_cor = make_colour_hsv(_hue6, 255, 150);
		break;					   
		case 2.6:				   
			_cor = make_colour_hsv(_hue6, 255, 200);
		break;					   
		case 2.7:				   
			_cor = make_colour_hsv(_hue6, 255, 255);
		break;
		case 2.8:
			_cor = make_colour_hsv(_hue7, 255, 150);
		break;	
		case 2.9:
			_cor = make_colour_hsv(_hue7, 255, 200);
		break;
		case 3:
			_cor = make_colour_hsv(_hue7, 255, 255);
		break;		
	
	}
	return _cor;
}