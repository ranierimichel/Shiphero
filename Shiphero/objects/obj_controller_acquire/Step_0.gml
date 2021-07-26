/// @description Controller

// se existir nave e botão play
if(instance_exists(obj_ship_father) && instance_exists(obj_button_play)){
	switch(obj_ship_father.ship){ // checando index das naves
		case 1: // index 18 nave 1, index 19 nave 2...
			if(global.ship011){ // checando se tem a nave
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 2:
			if(global.ship012){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 3:
			if(global.ship013){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 4:
			if(global.ship014){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 5:
			if(global.ship015){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 6:
			if(global.ship016){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 7:
			if(global.ship017){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 8:
			if(global.ship021){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 9:
			if(global.ship022){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 10:
			if(global.ship023){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 11:
			if(global.ship024){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 12:
			if(global.ship025){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 13:
			if(global.ship026){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 14:
			if(global.ship027){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 15:
			if(global.ship031){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 16:
			if(global.ship032){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 17:
			if(global.ship033){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 18:
			if(global.ship034){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 19:
			if(global.ship035){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 20:
			if(global.ship036){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 21:
			if(global.ship037){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 22:
			if(global.ship041){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 23:
			if(global.ship042){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 24:
			if(global.ship043){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 25:
			if(global.ship044){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 26:
			if(global.ship045){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 27:
			if(global.ship046){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 28:
			if(global.ship047){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 29:
			if(global.ship051){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 30:
			if(global.ship052){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 31:
			if(global.ship053){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 32:
			if(global.ship054){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 33:
			if(global.ship055){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 34:
			if(global.ship056){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 35:
			if(global.ship057){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 36:
			if(global.ship061){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 37:
			if(global.ship062){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 38:
			if(global.ship063){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 39:
			if(global.ship064){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 40:
			if(global.ship065){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 41:
			if(global.ship066){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
		case 42:
			if(global.ship067){
				acquired = true;
			} else {
				acquired = false;				
			}
		break;
	}
	
	if(!acquired){ // se não tiver a nave
		obj_button_play.mask_index = spr_collisionoff; // desativando mascara do play se não tiver a nave
		if(global.value <= global.gem){ // se tiver mais gold que o custo da nave
			obj_button_acquire.mask_index = spr_btn_acquire; // reativando a mascara
		} else {
			obj_button_acquire.mask_index = spr_collisionoff;
			obj_button_acquire.image_alpha = 0;
		}
		
	} else {
		obj_button_play.mask_index = spr_btn_play; // voltando a mascara
		obj_button_acquire.mask_index = spr_collisionoff; // desativando mascara do botão acquire
	}
	//show_debug_message(obj_ship_father.object_index);
}