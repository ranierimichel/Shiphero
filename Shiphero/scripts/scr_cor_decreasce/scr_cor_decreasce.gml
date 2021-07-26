///@desc Cor muda de acordo com o valor
///@param ActualValue
///@param MaxValue
function scr_cor_decreasce(argument0, argument1) {

	var actual_value = argument0;
	var max_value = argument1;

	// Porcentagem de hp
	var por75 = max_value*.75; // c_lime
	//var por70 = max_value*.7; // c_green
	var por50 = max_value*.5; // c_yellow
	//var por40 = max_value*.40; // c_ orange
	var por25 = max_value*.25; // c_red

	// Setando a cor do texto
	if(actual_value >= por75){
		return c_lime;
	} else if(actual_value >= por50){
			return c_yellow;
		} else if(actual_value >= por25){
			return c_red;
			} else {
				return c_maroon;
				}


}
