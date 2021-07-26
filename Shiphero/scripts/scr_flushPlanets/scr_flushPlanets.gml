// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_flushPlanets(){
	// limpando textura da memoria
	switch (global.planet) {
	    case "sun":        
			// limpando textura da memoria
			var _tex_array = texturegroup_get_textures("txtg_Sol");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
	    break;
	    case "Mercury":        
			// limpando textura da memoria
			var _tex_array = texturegroup_get_textures("txtg_Mercurio");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
	    break;
	    case "Venus":        
			// limpando textura da memoria
			var _tex_array = texturegroup_get_textures("txtg_Venus");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
	    break;
	    case "Earth":        
			// limpando textura da memoria
			var _tex_array = texturegroup_get_textures("txtg_Terra");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
	    break;
	    case "Moon":        
			// limpando textura da memoria
			var _tex_array = texturegroup_get_textures("txtg_Lua");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
	    break;
	    case "Mars":        
			// limpando textura da memoria
			var _tex_array = texturegroup_get_textures("txtg_Marte");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
	    break;
	    case "Jupiter":        
			// limpando textura da memoria
			var _tex_array = texturegroup_get_textures("txtg_Jupiter");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
	    break;
	    case "Saturn":        
			// limpando textura da memoria
			var _tex_array = texturegroup_get_textures("txtg_Saturno");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
	    break;
	    case "Uranus":        
			// limpando textura da memoria
			var _tex_array = texturegroup_get_textures("txtg_Urano");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
	    break;
	    case "Neptune":        
			var _tex_array = texturegroup_get_textures("txtg_Netuno");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
	    break;
		default:
			var _tex_array = texturegroup_get_textures("txtg_planet01");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet02");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet03");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet04");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet05");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet06");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet07");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet08");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet09");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet10");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet11");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet12");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet13");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet14");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet15");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet16");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet17");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet18");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet19");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet20");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet21");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet22");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet23");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet24");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet25");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet26");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet27");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet28");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet29");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet30");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet31");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet32");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet33");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet34");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet35");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet36");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet37");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet38");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet39");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet40");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet41");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
			var _tex_array = texturegroup_get_textures("txtg_planet42");
			for (var i = 0; i < array_length(_tex_array); ++i;){
			    texture_flush(_tex_array[i]);
			}
		break;
	}

}