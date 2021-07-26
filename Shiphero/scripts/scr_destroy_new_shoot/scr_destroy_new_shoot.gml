/// Approach(a, b, amount)
///@param tiro a ser criado
///@param follow
function scr_destroy_new_shoot(argument0, argument1){
	switch(argument0){
	    case 1:
	        var _shoot = instance_create_layer(x,y,"Instances",obj_shoot01);
	    break;
	    case 2:
	        var _shoot = instance_create_layer(x,y,"Instances",obj_shoot02);
	    break;
	    case 3:
	        var _shoot = instance_create_layer(x,y,"Instances",obj_shoot03);
	    break;
	    case 4:
	        var _shoot = instance_create_layer(x,y,"Instances",obj_shoot04);
	    break;
	    case 5:
	        var _shoot = instance_create_layer(x,y,"Instances",obj_shoot05);
	    break;
	    case 6:
	        var _shoot = instance_create_layer(x,y,"Instances",obj_shoot06);
	    break;
	    case 7:
	        var _shoot = instance_create_layer(x,y,"Instances",obj_shoot07);
	    break;
	    case 8:
	        var _shoot = instance_create_layer(x,y,"Instances",obj_shoot08);
	    break;
	    case 9:
	        var _shoot = instance_create_layer(x,y,"Instances",obj_shoot09);
	    break;
	    case 10:
	        var _shoot = instance_create_layer(x,y,"Instances",obj_shoot10);
	    break;
	    case 11:
	        var _shoot = instance_create_layer(x,y,"Instances",obj_shoot11);
	    break;
	    case 12:
	        var _shoot = instance_create_layer(x,y,"Instances",obj_shoot12);
	    break;
	    case 13:
	        var _shoot = instance_create_layer(x,y,"Instances",obj_shoot13);
	    break;
	    case 14:
	        var _shoot = instance_create_layer(x,y,"Instances",obj_shoot14);
	    break;
	    case 15:
	        var _shoot = instance_create_layer(x,y,"Instances",obj_shoot15);
	    break;
	    case 16:
	        var _shoot = instance_create_layer(x,y,"Instances",obj_shoot16);
	    break;
	    case 17:
	        var _shoot = instance_create_layer(x,y,"Instances",obj_shoot17);
	    break;
	    case 18:
	        var _shoot = instance_create_layer(x,y,"Instances",obj_shoot18);
	    break;
	    case 19:
	        var _shoot = instance_create_layer(x,y,"Instances",obj_shoot19);
	    break;
	    case 20:
	        var _shoot = instance_create_layer(x,y,"Instances",obj_shoot20);
	    break;
	}
	_shoot.destroy_new_shoot = 0; // tirando skill do novo tiro
	if(argument1){
		_shoot.direction = random_range(220,320);
		_shoot.follow = 1;
	} else {
		_shoot.direction = random_range(220,320);	
	}
}
