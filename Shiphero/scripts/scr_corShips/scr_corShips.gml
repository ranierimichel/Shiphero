// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_corShips(){
	var _cor = c_white;
	switch(global.lvl_ship){
		case 1:
		case 8:
		case 15:
		case 22:
		case 29:
		case 36:
			_cor = c_aqua;
		break;
		case 2:
		case 9:
		case 16:
		case 23:
		case 30:
		case 37:
			_cor = c_lime;
		break;
		case 3:
		case 10:
		case 17:
		case 24:
		case 31:
		case 38:
			_cor = c_blue;
		break;
		case 4:
		case 11:
		case 18:
		case 25:
		case 32:
		case 39:
			_cor = c_orange;
		break;
		case 5:
		case 12:
		case 19:
		case 26:
		case 33:
		case 40:
			_cor = c_fuchsia;
		break;
		case 6:
		case 13:
		case 20:
		case 27:
		case 34:
		case 41:
			_cor = c_red;
		break;
		case 7:
		case 14:
		case 21:
		case 28:
		case 35:
		case 42:
			_cor = c_yellow;
		break;			
	}
	return _cor;
}