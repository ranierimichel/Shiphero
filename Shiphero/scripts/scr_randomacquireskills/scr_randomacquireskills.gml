// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_randomacquireskills(){
	randomize();
	if(instance_exists(obj_controller_skills)){
		var _flag = 0;
		while(_flag == 0){
			var _skill = irandom(2);
			if(obj_controller_skills.dashlvl > 0){
				switch(_skill){
				case 0:
					if(obj_controller_skills.dashlvl < maxlvleachskill){
						obj_controller_skills.dashlvl ++;
						_flag ++;
					}				 
				break;
				case 1:
					if(obj_controller_skills.explosionlvl < maxlvleachskill){
						obj_controller_skills.explosionlvl ++;
						_flag ++;
					}			 
				break;
				}					
			}
			
			if(obj_controller_skills.lazerlvl > 0){
				switch(_skill){
				case 0:
					if(obj_controller_skills.lazerlvl < maxlvleachskill){
						obj_controller_skills.lazerlvl ++;
						_flag ++;
					}				 
				break;
				case 1:
					if(obj_controller_skills.explosionlvl < maxlvleachskill){
						obj_controller_skills.explosionlvl ++;
						_flag ++;
					}			 
				break;
				}					
			}
			
			if(obj_controller_skills.lazerlvl == 0 && obj_controller_skills.dashlvl == 0 ){
				switch(_skill){
					case 0:
						if(obj_controller_skills.dashlvl < maxlvleachskill){
							obj_controller_skills.dashlvl ++;
							_flag ++;
						}				 
					break;
					case 1:
						if(obj_controller_skills.lazerlvl < maxlvleachskill){
							obj_controller_skills.lazerlvl ++;
							_flag ++;
						}			 
					break;
				}
			}			
		}		
	}				
}
