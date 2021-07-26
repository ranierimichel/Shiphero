///@desc Respaw _meteors
randomize();

function scr_respaw_meteors() {	
	
	if(room != rm_game){ // Se não estiver na rm_game
		exit; // Para por aq!
	}
	//audio_play_sound(snd_respawnmeteors,1,false);
	
	//subindo lvl do mapa
	global.lvl_map ++;
		
	// pegando lvl do mapa
	var _flag = 0;
	var _lvl_map = global.lvl_map;
		
	if(_lvl_map <= 100){
		_flag = 3+round(_lvl_map*.2); // 5+
	} else {
		_flag = 25;
	}
		
	// liberar PU vez sim vez n
	global.ptsPU ++;
	//if(_lvl_map % 2 == 0){
	//	global.ptsPU ++;
	//}
		
	#region Respawn meteors
		
	// Enquanto não zerar os pontos cria meteoros
	while (_flag > 0) {
		var _xx = irandom_range(0,room_width);//choose(irandom_range(0, room_width*.3), irandom_range(room_width*.7, room_width)); // coordenadas para invocar nas beradas
		var _yy = 0;//irandom_range(0,room_height);//choose(irandom_range(0, room_height*.3),irandom_range(room_height*.7, room_height));
			
		if(_lvl_map <= 10){				
			var _meteorPts = meteorPoints.meteor01;
			var _invocar = obj_meteor01;				
		} else if(_lvl_map <= 20){
				do { // escolhendo inimigo com pontos menor que flag
					var _meteorPts = choose(meteorPoints.meteor01,meteorPoints.meteor02);					
				} until (_meteorPts <= _flag);				
				switch (_meteorPts) {
					case 1:
					    var _invocar = obj_meteor01;
					break;
					case 2:
					    var _invocar = obj_meteor02;
					break;					    				
				}
		} else if(_lvl_map <= 32){
				do { // escolhendo inimigo com pontos menor que flag
					var _meteorPts = choose(meteorPoints.meteor01,meteorPoints.meteor02,meteorPoints.meteor03);					
				} until (_meteorPts <= _flag);				
				switch (_meteorPts) {
					case 1:
					    var _invocar = obj_meteor01;
					break;
					case 2:
					    var _invocar = obj_meteor02;
					break;					    				
					case 3:
					    var _invocar = obj_meteor03;
					break;	
				}
		} else if(_lvl_map <= 44){
				do { // escolhendo inimigo com pontos menor que flag
					var _meteorPts = choose(meteorPoints.meteor01,meteorPoints.meteor02,meteorPoints.meteor03,meteorPoints.meteor04);					
				} until (_meteorPts <= _flag);				
				switch (_meteorPts) {
					case 1:
					    var _invocar = obj_meteor01;
					break;
					case 2:
					    var _invocar = obj_meteor02;
					break;					    				
					case 3:
					    var _invocar = obj_meteor03;
					break;	
					case 4:
					    var _invocar = obj_meteor04;
					break;	
				}
		}else if(_lvl_map <= 56){
				do { // escolhendo inimigo com pontos menor que flag
					var _meteorPts = choose(meteorPoints.meteor01,meteorPoints.meteor02,meteorPoints.meteor03,meteorPoints.meteor04,meteorPoints.meteor05);					
				} until (_meteorPts <= _flag);				
				switch (_meteorPts) {
					case 1:
					    var _invocar = obj_meteor01;
					break;
					case 2:
					    var _invocar = obj_meteor02;
					break;					    				
					case 3:
					    var _invocar = obj_meteor03;
					break;	
					case 4:
					    var _invocar = obj_meteor04;
					break;	
					case 5:
					    var _invocar = obj_meteor05;
					break;	
				}
		} else if(_lvl_map <= 68){
				do { // escolhendo inimigo com pontos menor que flag
					var _meteorPts = choose(meteorPoints.meteor01,meteorPoints.meteor02,meteorPoints.meteor03,meteorPoints.meteor04,meteorPoints.meteor05,meteorPoints.meteor06);					
				} until (_meteorPts <= _flag);				
				switch (_meteorPts) {
					case 1:
					    var _invocar = obj_meteor01;
					break;
					case 2:
					    var _invocar = obj_meteor02;
					break;					    				
					case 3:
					    var _invocar = obj_meteor03;
					break;	
					case 4:
					    var _invocar = obj_meteor04;
					break;	
					case 5:
					    var _invocar = obj_meteor05;
					break;	
					case 6:
					    var _invocar = obj_meteor06;
					break;	
				}
		} else if(_lvl_map <= 80){
				do { // escolhendo inimigo com pontos menor que flag
					var _meteorPts = choose(meteorPoints.meteor01,meteorPoints.meteor02,meteorPoints.meteor03,meteorPoints.meteor04,meteorPoints.meteor05,meteorPoints.meteor06,meteorPoints.meteor07);					
				} until (_meteorPts <= _flag);				
				switch (_meteorPts) {
					case 1:
					    var _invocar = obj_meteor01;
					break;
					case 2:
					    var _invocar = obj_meteor02;
					break;					    				
					case 3:
					    var _invocar = obj_meteor03;
					break;	
					case 4:
					    var _invocar = obj_meteor04;
					break;	
					case 5:
					    var _invocar = obj_meteor05;
					break;	
					case 6:
					    var _invocar = obj_meteor06;
					break;	
					case 7:
					    var _invocar = obj_meteor07;
					break;	
				}
		} else {
				do { // escolhendo inimigo com pontos menor que flag
					var _meteorPts = choose(meteorPoints.meteor01,meteorPoints.meteor02,meteorPoints.meteor03,meteorPoints.meteor04,meteorPoints.meteor05,meteorPoints.meteor06,meteorPoints.meteor07,meteorPoints.meteor08);					
				} until (_meteorPts <= _flag);				
				switch (_meteorPts) {
					case 1:
					    var _invocar = obj_meteor01;
					break;
					case 2:
					    var _invocar = obj_meteor02;
					break;					    				
					case 3:
					    var _invocar = obj_meteor03;
					break;	
					case 4:
					    var _invocar = obj_meteor04;
					break;	
					case 5:
					    var _invocar = obj_meteor05;
					break;	
					case 6:
					    var _invocar = obj_meteor06;
					break;	
					case 7:
					    var _invocar = obj_meteor07;
					break;	
					case 8:
					    var _invocar = obj_meteor08;
					break;	
				}
		}		
			_flag -= _meteorPts;
			instance_create_layer(_xx,_yy,"Instances",_invocar);
	}
#endregion			

	
}
