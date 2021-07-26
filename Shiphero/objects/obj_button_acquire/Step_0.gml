/// @description Insert description here
// You can write your code in this editor


if(instance_exists(obj_controller_acquire)){
	if(obj_controller_acquire.acquired){
		image_alpha = 0;		
	} else {
		if(instance_exists(obj_ship_father)){
			if(!drag && global.gem >= obj_ship_father.value){
				image_alpha = scr_wave(.3,.8,1,0);
			}	
		}
	}
}
