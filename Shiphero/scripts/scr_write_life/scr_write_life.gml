///@desc Animacao do inimigo
///@param ActualValue
///@param MaxValue
///@param spriteheight
function scr_write_life(argument0, argument1, argument2) {

	var life = argument0;
	var max_life = argument1;
	var spriteheight = argument2;

	var color = scr_cor_decreasce(life,max_life);
	// Escrever no centro
	draw_set_halign(fa_center);
	// Escrevendo
	draw_text_color(x,y-spriteheight-10,life,color,color,color,color,1);
	// Resetando a cor para original
	draw_set_color(c_white);
	// Resetando posicao da escrita
	draw_set_halign(fa_left);


}
