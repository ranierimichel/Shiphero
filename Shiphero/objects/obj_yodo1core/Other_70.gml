/// @description Async Callbacks

//getting the id of the callback
var id_async = async_load[? "id"]

///checking if was from Yodo1 MAS
if(id_async == Yodo1MAS_ASyncEvent){
	
	///now, what was it?
	switch(async_load[? "type"]){
	
		#region Banner Cases
			case yodo1mas_bannerclosed:
				/*Banner Closed*/
				show_debug_message("YODO1 Banner Closed");
				//global.coins += 10;
				break;
		
			case yodo1mas_bannershowfailed:
				/*When the banner fails to show it
				re-tries */
				global.isBannerReady = false;
				show_debug_message("YODO1: Error in Banner");
				break;
			
			case yodo1mas_bannershow:
				/*Good to go!*/
				global.isBannerReady = true;
				show_debug_message("YODO1 Banner Opened");
				//global.coins += 10;
				break;
		#endregion
		
		#region Interstitial Cases
			case yodo1mas_interstitialclosed:
				show_debug_message("YODO1: Interstitial Closed");
				//global.coins += 10;
				break;
				
			case yodo1mas_interstitialopened:
				show_debug_message("YODO1: Interstitial Opened");
				//global.coins += 10;
				break;
				
			case yodo1mas_interstitialerror:
				show_debug_message("YODO1: Interstitial Error");
				break;
				
		#endregion
		
		#region Rewarded Cases
			case yodo1mas_videoshowfailed:
				show_debug_message("YODO1: Rewarded Video Failed");
				break;
				
			case yodo1mas_videoshow:
				show_debug_message("YODO1: Rewarded Video Opened");
				//global.coins += 10;
				break;
			
			case yodo1mas_videoclosed:
				//The extension returns 0 if the video was closed without finished
				//The extension returns 1 if was Finished.
				var isFinished = async_load[? "isFinished"];
				
				if(isFinished == 1){
					///Your awesome reward!
					var _gold =  10 * global.rewarded_multiplier; // gold a ganhar
					global.gem += _gold;
					///Your awesome reward!
					show_debug_message("YODO1: Reward claimed");
				}
				break;
		#endregion
	}
}


