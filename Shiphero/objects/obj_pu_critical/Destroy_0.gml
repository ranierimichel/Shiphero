/// @description 
event_inherited();
randomize();
//effect_create_above(ef_firework,x-20,y-10,1,c_red);
//effect_create_above(ef_firework,x+10,y-30,0,c_red);
//effect_create_above(ef_firework,x,y-40,2,c_red);
instance_create_layer(x,y,"Instances",obj_shake);

obj_shake.shake = 20;

if(global.critical <= global.max_critical){
	obj_ship_father.currentcritical = global.critical + 1;
	global.critical = 100;
}

// mostrando quanto ganhou de status
//if(instance_exists(obj_draw)){
//	var _xx = obj_draw.xspr_topright_PU;
//	var _yy = obj_draw.yspr_topright_PU_critical;
//}
//var show_text = instance_create_layer(_xx,_yy,"Instances",obj_show_text);
//show_text.text = pontos;
//show_text.positive = true; // mostrar o + na frente do numero
//show_text.critical = true; // critical quer dizer mostrar maior
//show_text.color = c_purple;	

audio_play_sound(snd_pucritical,1,false);