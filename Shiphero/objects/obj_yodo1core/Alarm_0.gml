/// @description Showing interstital

if(string(Yodo1MAS_InterstitialReady()) == INTERSTITIAL_READY){
	Yodo1MAS_ShowInterstitialAd();
	show_debug_message("Showing interstital");
}

//if!(global.isBannerReady){
//	Yodo1MAS_ShowBanner();
//	show_debug_message("Trying to show banner")
//	alarm[0] = room_speed
//}else{
//	alarm[0] = -1;
//}