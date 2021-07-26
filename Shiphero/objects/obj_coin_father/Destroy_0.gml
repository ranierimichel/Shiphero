/// @description

global.gem += gold;

// mostrando quanto ganho

var _xx = 50;
var _yy = 50;
	
var show_text = instance_create_layer(_xx,_yy,"Instances",obj_show_text);
show_text.text = gold;
show_text.positive = true; // critical quer dizer mostrar maior
show_text.color = c_yellow;
