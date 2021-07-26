// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_flushShips(){
	// limpando textura da memoria
	// Ship01
	var _tex_array = texturegroup_get_textures("txtg_Ship01");
	for (var i = 0; i < array_length(_tex_array); ++i;){
	    texture_flush(_tex_array[i]);
	}
	// Ship02
	var _tex_array = texturegroup_get_textures("txtg_Ship02");
	for (var i = 0; i < array_length(_tex_array); ++i;){
	    texture_flush(_tex_array[i]);
	}	
	// Ship03
	var _tex_array = texturegroup_get_textures("txtg_Ship03");
	for (var i = 0; i < array_length(_tex_array); ++i;){
	    texture_flush(_tex_array[i]);
	}	
	// Ship04
	var _tex_array = texturegroup_get_textures("txtg_Ship04");
	for (var i = 0; i < array_length(_tex_array); ++i;){
	    texture_flush(_tex_array[i]);
	}	
	// Ship05
	var _tex_array = texturegroup_get_textures("txtg_Ship05");
	for (var i = 0; i < array_length(_tex_array); ++i;){
	    texture_flush(_tex_array[i]);
	}
	// Ship05
	var _tex_array = texturegroup_get_textures("txtg_Ship06");
	for (var i = 0; i < array_length(_tex_array); ++i;){
	    texture_flush(_tex_array[i]);
	}
	// Ship05
	var _tex_array = texturegroup_get_textures("txtg_Ship07");
	for (var i = 0; i < array_length(_tex_array); ++i;){
	    texture_flush(_tex_array[i]);
	}

}