/// @description Insert description here
// You can write your code in this editor

if(image_xscale > .8) {
    image_xscale -= .1;
	image_yscale -= .1;
	alarm[0] = 1*room_speed;
}

if(room == rm_game){
	if(image_xscale <= .8){
		speed = 2;	
	}
} else {
	speed = 0;	
}

//Efeito tocando a tela
if(image_xscale == .9){
	effect_create_above(ef_ring,x,y,0,-1);	
}

