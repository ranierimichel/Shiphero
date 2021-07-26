/// @description Instruções dash

if(room == rm_game){
	var _mid_position = (room_height/2)-150;
	var _right_position = room_width - 90;

	var _instru = instance_create_layer(_right_position, _mid_position ,"Buttons",obj_instruction);
	_instru.dash = true;
}