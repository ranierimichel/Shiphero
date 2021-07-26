// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_shootCadence(){	
	var _flag = global.combo*13; //velocidade de atk de acordo com combo
	var _ret = 150 - (global.dexterity+_flag); //alterar velocidade de atk / 140
	return _ret;

}