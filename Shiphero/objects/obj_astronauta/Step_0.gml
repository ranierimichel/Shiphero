/// @description Insert description here
// You can write your code in this editor
var _collision = instance_place(x,y,obj_ship_father);

if(_collision){
	//global.hp = global.max_life;
	//global.fuel = global.max_fuel;
	instance_destroy();
}