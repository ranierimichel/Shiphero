///@desc valor aleatorio +- 10
///@param num
function scr_random_next_to(argument0) {

	value = argument0;
	// variavel para escolher valor para mais ou menos
	var select = choose(0,1);
	// Se o valor tem ponto flutuante
	if(value - floor(value) != 0){	
		if(select == 0){
			value = abs(random_range(value-10,value-1));
			return value;
		}else{
			value = abs(random_range(value+1,value+10));
			return value;
		}
	} else {
		if(select == 0){
			value = abs(irandom_range(value-10,value-1));
			return value;
		}else{
			value = abs(irandom_range(value+1,value+10));
			return value;
		}
	}


}
