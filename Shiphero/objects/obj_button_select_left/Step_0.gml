/// @description
event_inherited();

if(instance_exists(obj_ship_father)){
	if(!global.ship067){
		if(obj_ship_father.ship == 1){
			image_alpha = 0;
			mask_index = spr_collisionoff;
		} else {
			if(!drag){
				mask_index = spr_btn_fundo1;
			}
		}
	}
	
	if(global.ship067){
		if(!drag){
			mask_index = spr_btn_fundo1;
		}
	}
}

