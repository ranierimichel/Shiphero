/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(room == rm_start){	
	image_xscale = 1.2;
	image_yscale = 1.2;
	if(instance_exists(obj_controller_acquire)){
		if(!obj_controller_acquire.acquired){
			image_alpha = 0;
			mask_index = spr_collisionoff;
		} else{
			mask_index = spr_btn_fundo1;	
		}
	}
}



