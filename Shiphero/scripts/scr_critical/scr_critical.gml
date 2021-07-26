///@desc Crital chance
function scr_critical(argument0) {

	///@param Critical rate
	randomize();

	var _rate = argument0;
	var _chance = random_range(1,200);

	if(_rate > _chance){
		return true;
	}


}
