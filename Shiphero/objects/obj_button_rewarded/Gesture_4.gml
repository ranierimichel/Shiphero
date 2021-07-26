/// @description Animação
event_inherited();
if(string(Yodo1MAS_RewardedIsReady()) == INTERSTITIAL_READY){
		Yodo1MAS_ShowRewardAd();
	}else{
		show_debug_message("YODO1: Rewarded Not ready")
}

