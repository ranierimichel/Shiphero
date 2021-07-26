/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


// limpando textura da memoria
var _tex_array = texturegroup_get_textures("txtg_Ship01");
for (var i = 0; i < array_length(_tex_array); ++i;){
    texture_flush(_tex_array[i]);
}