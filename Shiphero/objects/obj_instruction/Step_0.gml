/// @description Insert description here
// You can write your code in this editor
// destruir seta caso não tenha mais PU

if(!instance_exists(obj_button_acquire_father) && PU){
	instance_destroy();	
}

if(!instance_exists(obj_button_dash) && dash){
	instance_destroy();	
}

image_xscale = scr_wave(1,3,2,0);
image_yscale = scr_wave(1,3,2,0);

image_alpha = scr_wave(.2,1,1,0);