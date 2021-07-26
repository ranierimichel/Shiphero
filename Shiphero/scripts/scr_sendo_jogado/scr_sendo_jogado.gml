///@desc Sendo jogado
///@param forca
function scr_sendo_jogado(argument0) {

	// Forca a ser jogado
	var strenght = argument0;

	jogado = true;
	// Direção a ser jogado
	direction += 180;	
	speed = 1+(strenght*.01); // Colocar strenght

}
