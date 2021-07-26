/// @description Parando rotação

// Parando de acelerar
acelerate = 0;
distAnalog = 0;
// Destruindo botoes
//instance_destroy(obj_analog_bottom);
instance_destroy(obj_analog_top);

// Desencostando da tela
dragging = false;

// instrução para mover
alarm[0] = 10*room_speed;