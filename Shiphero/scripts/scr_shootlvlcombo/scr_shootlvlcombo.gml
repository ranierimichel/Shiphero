// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_shootlvlcombo(){
	var _flag = (global.combo*10)-10;
	var _ret = ((global.lvl_shoot+_flag) < 100) ? global.lvl_shoot + _flag : global.lvl_shoot;
	return _ret;
}