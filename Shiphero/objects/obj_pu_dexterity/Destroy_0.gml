/// @description 
event_inherited();
randomize();
//effect_create_above(ef_firework,x-20,y-10,1,c_lime);
//effect_create_above(ef_firework,x+10,y-30,0,c_lime);
//effect_create_above(ef_firework,x,y-40,2,c_lime);
instance_create_layer(x,y,"Instances",obj_shake);

obj_shake.shake = 20;

// alarm chamado pelo father voltando status normal
if(global.dexterity <= global.max_dexterity){
	obj_ship_father.currentdexterity = global.dexterity + 1;
	global.dexterity = 100;
}

// mostrando quanto ganhou de status
//if(instance_exists(obj_draw)){
//	var _xx = obj_draw.xspr_topright_PU;
//	var _yy = obj_draw.yspr_topright_PU_dexterity;
//}
//var show_text = instance_create_layer(_xx,_yy,"Instances",obj_show_text);
//show_text.text = pontos;
//show_text.positive = true; // mostrar o + na frente do numero
//show_text.critical = true; // critical quer dizer mostrar maior
//show_text.color = c_aqua;	

audio_play_sound(snd_pudexterity,1,false);