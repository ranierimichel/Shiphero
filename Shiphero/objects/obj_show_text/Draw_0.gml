/// @description Insert description here
// You can write your code in this editor

if(neutro){
	draw_text_transformed_color(x, y, string(text), scale, scale, 0, color, color, color,color,alpha);	
} else {
	if(!positive){
		draw_text_transformed_color(x,y,"-" + string(text),scale,scale,0,color,color,color,color,alpha);
	} else {
		draw_text_transformed_color(x,y,"+" + string(text),scale,scale,0,color,color,color,color,alpha);
	}		
}