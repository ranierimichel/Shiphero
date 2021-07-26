/// @description Restart game
global.restart = true;
// Destruindo o botão
if(instance_exists(obj_button_home1)){
	instance_destroy();
}

game_restart();
