// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
randomize();

// Setup:
function scr_particles_collors(){	
	//start cores
	switch (global.planet) {
	    case "Sun":			
			global.particle_color1 = choose(c_red, c_orange);
			global.particle_color2 = choose(c_red, c_orange);
			global.particle_color3 = choose(c_red, c_orange);
	    break;
	    case "Mercury":
	    case "Moon":
	    	global.particle_color1 = choose(c_dkgray, c_gray, c_ltgray);
			global.particle_color2 = choose(c_dkgray, c_gray, c_ltgray);
			global.particle_color3 = choose(c_dkgray, c_gray, c_ltgray);
	    break;
	    case "Venus":
		case "Mars":
			global.particle_color1 = choose(c_red, c_orange);
			global.particle_color2 = choose(c_red, c_orange);
			global.particle_color3 = choose(c_red, c_orange);
	    break;
	    case "Earth":
			global.particle_color1 = choose(c_green, c_blue, c_ltgray);
			global.particle_color2 = choose(c_green, c_blue, c_ltgray);
			global.particle_color3 = choose(c_green, c_blue, c_ltgray);
	    break;
	    case "Jupiter":
			global.particle_color1 = choose(c_orange, c_teal, c_ltgray);
			global.particle_color2 = choose(c_orange, c_teal, c_ltgray);
			global.particle_color3 = choose(c_orange, c_teal, c_ltgray);
	    break;
	    case "Saturn":
			global.particle_color1 = choose(c_orange, c_teal, c_dkgray);
			global.particle_color2 = choose(c_orange, c_teal, c_dkgray);
			global.particle_color3 = choose(c_orange, c_teal, c_dkgray);
	    break;
	    case "Uranus":
			global.particle_color1 = choose(c_aqua, c_teal, c_ltgray);
			global.particle_color2 = choose(c_aqua, c_teal, c_ltgray);
			global.particle_color3 = choose(c_aqua, c_teal, c_ltgray);
	    break;
	    case "Neptune":
			global.particle_color1 = choose(c_aqua, c_blue, c_navy);
			global.particle_color2 = choose(c_aqua, c_blue, c_navy);
			global.particle_color3 = choose(c_aqua, c_blue, c_navy);
	    break;
	    case "Planet01":
	    case "Planet08":
	    case "Planet15":
	    case "Planet22":
	    case "Planet29":
	    case "Planet36":
			global.particle_color1 = choose(c_aqua,c_blue,c_teal);
			global.particle_color2 = choose(c_aqua,c_blue,c_teal);
			global.particle_color3 = choose(c_aqua,c_blue,c_teal);
	    break;
	    case "Planet02":
	    case "Planet09":
	    case "Planet16":
	    case "Planet23":
	    case "Planet30":
	    case "Planet37":
			global.particle_color1 = choose(c_green,c_lime,c_teal);
			global.particle_color2 = choose(c_green,c_lime,c_teal);
			global.particle_color3 = choose(c_green,c_lime,c_teal);
	    break;
	    case "Planet03":
	    case "Planet10":
	    case "Planet17":
	    case "Planet24":
	    case "Planet31":
	    case "Planet38":
			global.particle_color1 = choose(c_navy,c_blue,c_purple);
			global.particle_color2 = choose(c_navy,c_blue,c_purple);
			global.particle_color3 = choose(c_navy,c_blue,c_purple);
	    break;
	    case "Planet04":
	    case "Planet11":
	    case "Planet18":
	    case "Planet25":
	    case "Planet32":
	    case "Planet39":
			global.particle_color1 = choose(c_orange,c_olive,c_yellow);
			global.particle_color2 = choose(c_orange,c_olive,c_yellow);
			global.particle_color3 = choose(c_orange,c_olive,c_yellow);
	    break;
	    case "Planet05":
	    case "Planet12":
	    case "Planet19":
	    case "Planet26":
	    case "Planet33":
	    case "Planet40":
			global.particle_color1 = choose(c_fuchsia,c_purple,c_fuchsia);
			global.particle_color2 = choose(c_fuchsia,c_purple,c_fuchsia);
			global.particle_color3 = choose(c_fuchsia,c_purple,c_fuchsia);
	    break;
	    case "Planet06":
	    case "Planet13":
	    case "Planet20":
	    case "Planet27":
	    case "Planet34":
	    case "Planet41":
			global.particle_color1 = choose(c_red,c_maroon,c_red);
			global.particle_color2 = choose(c_red,c_maroon,c_red);
			global.particle_color3 = choose(c_red,c_maroon,c_red);
	    break;
	    case "Planet07":
	    case "Planet14":
	    case "Planet21":
	    case "Planet28":
	    case "Planet35":
	    case "Planet42":
			global.particle_color1 = choose(c_yellow,c_olive,c_yellow);
			global.particle_color2 = choose(c_yellow,c_olive,c_yellow);
			global.particle_color3 = choose(c_yellow,c_olive,c_yellow);
	    break;

	}
	//var _color = scr_corShips();
	part_type_colour3(global.particle_ship_jet, global.particle_color1 , global.particle_color2, global.particle_color3);
	//part_type_colour3(global.particle_pu, global.particle_color1 , global.particle_color2, global.particle_color3);
	//part_type_colour3(global.particle_shock, _color , _color, _color);
	//part_type_colour3(global.particle_lazer, global.particle_color1 , global.particle_color2, global.particle_color3);
	//part_type_colour3(global.particle_explosion, _color , _color, _color);
	part_type_colour3(global.particle_meteor01, global.particle_color1 , global.particle_color2, global.particle_color3);
	part_type_colour3(global.particle_meteor02, global.particle_color1 , global.particle_color2, global.particle_color3);
	part_type_colour3(global.particle_meteor03, global.particle_color1 , global.particle_color2, global.particle_color3);
	part_type_colour3(global.particle_meteor04, global.particle_color1 , global.particle_color2, global.particle_color3);
	part_type_colour3(global.particle_meteor05, global.particle_color1 , global.particle_color2, global.particle_color3);
	part_type_colour3(global.particle_meteor06, global.particle_color1 , global.particle_color2, global.particle_color3);
	part_type_colour3(global.particle_meteor07, global.particle_color1 , global.particle_color2, global.particle_color3);
	part_type_colour3(global.particle_meteor08, global.particle_color1 , global.particle_color2, global.particle_color3);
	part_type_colour3(global.particle_planets_flame, global.particle_color1 , global.particle_color2, global.particle_color3);
	part_type_colour3(global.particle_planets_cloud, global.particle_color1 , global.particle_color2, global.particle_color3);
	part_type_colour3(global.particle_planets_raios, global.particle_color1 , global.particle_color2, global.particle_color3);
	part_type_colour3(global.particle_background_cloud, global.particle_color1 , global.particle_color2, global.particle_color3);
	part_type_colour3(global.particle_background_stars1, global.particle_color1 , global.particle_color2, global.particle_color3);
	part_type_colour3(global.particle_background_stars2, global.particle_color3 , global.particle_color2, global.particle_color1);
	part_type_colour3(global.particle_background_stars3, global.particle_color2 , global.particle_color1, global.particle_color3);
	part_type_colour3(global.particle_meteor_collision, global.particle_color1 , global.particle_color2, global.particle_color3);
}