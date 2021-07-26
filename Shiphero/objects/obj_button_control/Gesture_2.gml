/// @description Rotação da nave
// guardando posição x quando tocar na tela

// posição do toque
startx = event_data[?"posX"];
starty = event_data[?"posY"];

// cancelando instrução
if(instance_exists(obj_instruction1)){
	instance_destroy(obj_instruction1);	
}
alarm[0] = false;