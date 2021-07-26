/// @description Comportamento detritos

// Rodar
image_angle += 5;

// Impedindo que saia da tela
move_wrap(true,true,sprite_width/2);
var ship = obj_ship_father;

// Colocando para seguir o player
if(instance_exists(ship))
{	
	direction = point_direction(x, y, ship.x, ship.y);
	motion_add(direction,.1);
}

// Diminuido 
image_xscale -= .01;
image_yscale -= .01;

var _collision = instance_place(x,y,obj_ship_father);
if(_collision){
	instance_destroy();
}