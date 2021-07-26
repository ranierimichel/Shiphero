/// @description Show Interstitial

switch(room){
	case rm_gameover:
		alarm[0] = room_speed;
	break;
}

/*You can use only the Yodo1MAS_ShowBanner();
						alarm[0] = room_speed*3; 
						
To display the banner*/

//try{
//	switch(room){
//	case rm_menu:
//		/*This code executes an alarm to check when is the banner ready*/
//		Yodo1MAS_ShowBanner();
//		alarm[0] = room_speed*3; //alarm that checks every 3 seconds if the banner is ready
//		break;
//	}
//}catch(_ex){
//	show_debug_message(string(_ex))
//}
