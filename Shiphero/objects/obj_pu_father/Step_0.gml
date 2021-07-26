/// @description 

// Impedindo que saia da tela
move_wrap(true,false,sprite_width/2);
if(y >= room_height){
	y = 100;	
}
if(y <= 99){
	y = room_height;
}

image_xscale = scr_effect_powerup(0.5, 1, 1.0, 0.0);
image_yscale = scr_effect_powerup(0.5, 1, 1.0, 0.0);

image_angle ++;

var _collision = instance_place(x,y,obj_ship_father);
if(_collision && !obj_ship_father.puactivated){	
	instance_destroy();
}

//tirando alpha quando não poder pegar
if(obj_ship_father.puactivated){
	image_alpha = .5;	
} else {
	image_alpha = 1;		
}