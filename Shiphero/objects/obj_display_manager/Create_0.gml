/// @description Insert description here
// You can write your code in this editor

global.ideal_width = 0; // 720
global.ideal_height = 1280; //1280

aspect_ratio = display_get_width() / display_get_height();

global.ideal_width = round(global.ideal_height*aspect_ratio);
//ideal_height = round(ideal_width/aspect_ratio);

// Check for odd numbers
if(global.ideal_width & 1){
	global.ideal_width ++;
}

for(var i=1; i<=room_last; i++){
	if(room_exists(i)){
		room_set_viewport(i,0,true,0,0,global.ideal_width,global.ideal_height);
		room_set_view_enabled(i, true);		
	}
}

surface_resize(application_surface,global.ideal_width,global.ideal_height);
window_set_size(global.ideal_width,global.ideal_height);

room_goto(room_next(room));
