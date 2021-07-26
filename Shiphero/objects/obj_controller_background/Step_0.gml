/// @description Insert description here
// You can write your code in this editor

// deixando estrelas coloridas se n for na room game
if(room == rm_game){
	if(!instance_exists(obj_planet)){ // instanciando planeta no fundo se não tiver
		instance_create_layer(-400,-400,"Planets",obj_planet);	
	}	
} else {
	var _c1 = choose(c_red,c_orange,c_yellow,c_dkgray,c_gray,c_ltgray,c_green,c_blue,c_teal,c_aqua);
	var _c2 = choose(c_red,c_orange,c_yellow,c_dkgray,c_gray,c_ltgray,c_green,c_blue,c_teal,c_aqua);
	var _c3 = choose(c_red,c_orange,c_yellow,c_dkgray,c_gray,c_ltgray,c_green,c_blue,c_teal,c_aqua);
	part_type_colour3(global.particle_background_stars1,_c1,_c2,_c3);
	part_type_colour3(global.particle_background_stars2,_c3,_c2,_c1);
	part_type_colour3(global.particle_background_stars3,_c2,_c1,_c3);
	part_type_colour3(global.particle_background_cloud,_c2,_c1,_c3);
}



