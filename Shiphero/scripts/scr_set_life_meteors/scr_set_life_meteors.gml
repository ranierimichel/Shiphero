///@desc Criando vida do inimigo
///@param EnimieNumber
randomize();
function scr_set_life_meteors(argument0) {
	
	var enimie = argument0;
	
	if(instance_exists(obj_ship_father)){
		var _multplier = obj_ship_father.ship;
	} else {
		_multplier = 1;
	}
	
	var _maxlife = (1+global.lvl_map) * _multplier * enimie; //60 5+global.lvlmap*

	if(_maxlife > 1){
		var _minlife = _maxlife/3;
	} else {
		_minlife = 1;
	}
	return irandom_range(_minlife, _maxlife);
}
