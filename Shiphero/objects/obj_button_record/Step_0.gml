/// @description
event_inherited();
//image_alpha = !global.max_lvl_map ? .0  : 1;
//obj_button_record.mask_index = image_alpha == .0 ? spr_collisionoff : spr_btn_record;

// Bloquear botão caso não tenha a nave
//if(instance_exists(obj_controller_acquire)){
//	if(!obj_controller_acquire.acquired){
//		image_alpha = .0;
//	} else {
//		image_alpha = .5;
//	}
//}

// Se ainda não tiver recorde joga o alpha para .5
//if(!global.max_lvl_map){
//	image_alpha = .5;
//} else {
//	image_alpha = 1;
//}


// se alpha tiver .5 retirar mascara
//if(image_alpha = .5){
//	obj_button_record.mask_index = spr_collisionoff;
//} else {
//	obj_button_record.mask_index = spr_btn_record;
//}
