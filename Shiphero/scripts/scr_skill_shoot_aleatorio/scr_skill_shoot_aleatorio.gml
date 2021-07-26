/// @function
randomize();
function scr_skill_shoot_aleatorio(){
	var _rebater_limit = global.rebater >= 2 ? false : true;
	var _atravessar_tela_limit = global.atravessar_tela >= 2 ? false : true;
	var _destroy_new_shoot_limit = global.destroy_new_shoot >= 2 ? false : true;
	var _double_shoot_limit = global.double_shoot >= 2 ? false : true;
	
	var _chance = irandom_range(0,3);
	if(global.destroy_new_shoot == 0 && global.double_shoot == 0){
		var _flag = choose(true,false);
		if(_flag){
			global.destroy_new_shoot ++;
		}else{
			global.double_shoot ++;
		}
	}else{
		switch(_chance){
		    case 0:
		        if(_rebater_limit && global.atravessar_tela <= 0){
					global.rebater ++;
				} else {
					scr_skill_shoot_aleatorio();
				}
		    break;
		    case 1:
		        if(_atravessar_tela_limit && global.rebater <= 0){
					global.atravessar_tela ++;
				} else {
					scr_skill_shoot_aleatorio();
				}
		    break;
		    case 2:
		        if(_destroy_new_shoot_limit && global.double_shoot <= 0){
					global.destroy_new_shoot ++;
				} else {
					scr_skill_shoot_aleatorio();
				}
		    break;
		    case 3:
		        if(_double_shoot_limit && global.destroy_new_shoot <= 0){
					global.double_shoot ++;	
				} else {
					scr_skill_shoot_aleatorio();
				}
		    break;
		}
	}
	
}