/// @description Ini vars

/*This is use to check if the banner is ready or not*/
global.isBannerReady = false;


Yodo1MAS_COPPA(yodo1mas_agree);
Yodo1MAS_CCPA(yodo1mas_agree);
Yodo1MAS_GDPR(yodo1mas_agree);

show_debug_message("creating yodo1core");

if(!global.restart){
	alarm[2] = room_speed * 3;
}