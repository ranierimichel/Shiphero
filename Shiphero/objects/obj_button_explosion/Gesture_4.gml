/// @description 

if(instance_exists(obj_ship_father) && instance_exists(obj_controller_skills)){
	var _explosionscale = 40+obj_controller_skills.explosionlvl*8;
	obj_ship_father.explode = true;
	
	if(!instance_exists(obj_explosion)){ // Criando o lazer
		var _explosion = instance_create_layer(obj_ship_father.x,obj_ship_father.y,"Instances",obj_explosion);
		_explosion.image_xscale = _explosionscale;
		_explosion.image_yscale = _explosionscale;
	}
}

drag = false;

instance_destroy();
