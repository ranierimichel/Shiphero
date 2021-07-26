/// @description Save and Load and displayConfig
randomize();

//if(room == rm_game){
//	if(!instance_exists(obj_camera)){
//		instance_create_layer(0,0,"Instances",obj_camera);	
//	}	
//}

// tocar musica de fundo aleatória
var _music = irandom_range(0,2);
//scr_displayConfig();

// Zerando dinheiro caso comprado ultima nave
if(global.ship067){
	global.gem = "X";
}

//Carregando se for na room inicial e salvando nas outras room
if(room == rm_start){
	//tocar uma musica
	if(instance_exists(obj_music)){	
	obj_music.alarm[_music] = true;
	}
	//Carregando o jogo
	alarm[3] = true;		
} 
if(room == rm_gameover || room == rm_game || room == rm_pause){
	// Salvando o jogo
	alarm[2] = true;
}

if(room == rm_gameover){
	// Reiniciando skills
	global.numb_skill_shoot = 0;
	global.rebater = 0; // 1 ou 2
	global.atravessar_tela = 0; // 1 ou 2
	global.destroy_new_shoot = 0; // 1 ou 2
	global.double_shoot = 0;
}
