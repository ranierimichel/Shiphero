/// @description Caso não tiver a nave sumir com o botão
event_inherited();

// Checando se não tem a nave
if(instance_exists(obj_controller_acquire)){
	if(!obj_controller_acquire.acquired){
		image_alpha = 0;
		mask_index = spr_collisionoff;
	} else {
		if(!drag){
			mask_index = spr_btn_fundo1;
		}
	}
}

