/// @description 

if(instance_exists(obj_ship_father) && instance_exists(obj_controller_skills)){
	var _lazertime = ((obj_controller_skills.lazerlvl*.3)+(global.combo*.5))*40;
	obj_ship_father.lazer = true;
	
	if(!instance_exists(obj_lazer)){ // Criando o lazer
		var _lazer = instance_create_layer(obj_ship_father.x,obj_ship_father.y,"Instances",obj_lazer);
		_lazer.image_xscale = 400;
		_lazer.image_yscale = 30;
	}
	// parando o lazer
	obj_ship_father.alarm[3] = _lazertime;
}

drag = false;

instance_destroy();
