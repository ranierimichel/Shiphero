/// @description Insert description here
// You can write your code in this editor
randomize();
//direc_end = image_angle;

x_end = x;
y_end = y;

// checando para onde virar
//if(direc_start != direc_end){

if(x_start != x_end){
	if(x_start > x_end){
		virandoEsquerda = 1;
		virandoDireita = 0;
	} else {
		virandoDireita = 1;
		virandoEsquerda = 0;
	}
}

// checando se esta parado ou movimentando
if(x_start != x_end || y_start != y_end){
	movimentando = 1;
} else {
	movimentando = 0;	
}

//Se não estiver movimentando

if(!movimentando){
	if(curvePosition < .5){ // ultima posição parada
		curvePosition += curveSpeed;	
	}else{
		curvePosition -= curveSpeed; // primeira posição parada
	}
	//fazendo balançar quando paradar
	if(curvePosition >= .5 && curvePosition <= .6){
		curvePosition = random_range(.5,.6);
	}
	
	var _curveStruct = animcurve_get(curveAsset);
	var _chanel = animcurve_get_channel(_curveStruct, 0);
	
	var _value = animcurve_channel_evaluate(_chanel, curvePosition);
	
	image_index = _value;
	
} else {
	if(room == rm_game){
		//curveSpeed = .01;
		var _flagspeed = abs(x_start - x_end);
		if(virandoEsquerda){
			if(_flagspeed >= 6){
				curvePosition = .1;
			} else if(_flagspeed >= 4){
				curvePosition = .2;
			} else if(_flagspeed >= 2){
				curvePosition = .3;
			} else if(_flagspeed >= 0){
				curvePosition = .4;
			}
		}
		
		if(virandoDireita){
			if(_flagspeed >= 6){
				curvePosition = .9;
			} else if(_flagspeed >= 4){
				curvePosition = .8;
			} else if(_flagspeed >= 2){
				curvePosition = .7;
			} else if(_flagspeed >= 0){
				curvePosition = .6;
			}
		}
				
		var _curveStruct = animcurve_get(curveAsset);
		var _chanel = animcurve_get_channel(_curveStruct, 0);
	
		var _value = animcurve_channel_evaluate(_chanel, curvePosition);
	
		image_index = _value;
		

	}	
}
	

