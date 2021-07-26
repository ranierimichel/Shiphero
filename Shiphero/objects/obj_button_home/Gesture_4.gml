/// @description Restart game
event_inherited();
global.restart = true;
// Destruindo o botão
if(instance_exists(obj_button_home)){
	instance_destroy();
}

room_goto(rm_gameover);

//game_restart();