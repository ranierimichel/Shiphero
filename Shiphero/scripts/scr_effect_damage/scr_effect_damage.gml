///@desc Crescendo e diminuindo o tamanho da sprite
function scr_effect_damage() {

	// Aumentando o tamanho do enimie
	var scalemin = image_xscale;
	var scalemax = image_xscale*1.5;
	
	var increase = .5;
	image_xscale = lerp(scalemin, scalemax, increase);
	image_yscale = lerp(scalemin, scalemax, increase);
	if(image_xscale >= 2){ // voltando ao tamanho original caso fique muito grande
	image_xscale = 1;
	image_yscale = 1;
	}
	
	// Voltando ao tamanho original
	alarm[1] = 2;


}
