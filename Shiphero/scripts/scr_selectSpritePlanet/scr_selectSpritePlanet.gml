// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_selectSpritePlanet(){
	
	var _planet = choose(spr_planet01,spr_planet02,spr_planet03,spr_planet04,spr_planet05,spr_planet06,spr_planet07,
					spr_planet08,spr_planet09,spr_planet10,spr_planet11,spr_planet12,spr_planet13,spr_planet14,
					spr_planet15,spr_planet16,spr_planet17,spr_planet18,spr_planet19,spr_planet20,spr_planet21,
					spr_planet22,spr_planet23,spr_planet24,spr_planet25,spr_planet26,spr_planet27,spr_planet28,
					spr_planet29,spr_planet30,spr_planet31,spr_planet32,spr_planet33,spr_planet34,spr_planet35,
					spr_planet36,spr_planet37,spr_planet38,spr_planet39,spr_planet40,spr_planet41,spr_planet42,
					spr_sol, spr_mercurio, spr_venus, spr_terra, spr_lua, spr_marte, spr_jupiter, spr_saturno, spr_urano, spr_urano);
	
	parts = true;
	obj_planet.sprite_index = _planet; // colocar aleatório
	switch(_planet){
		case spr_sol:
			parts = false;
			global.planet = "Sun";
		break;
		case spr_mercurio:
			parts = false;
			global.planet = "Mercury";
		break;
		case spr_venus:
			parts = false;
			global.planet = "Venus";
		break;
		case spr_terra:
			parts = false;
			global.planet = "Earth";
		break;
		case spr_lua:
			parts = false;
			global.planet = "Moon";
			if(!instance_exists(obj_astronauta)){
				instance_create_layer(0,0,"Objects",obj_astronauta);
			}
		break;
		case spr_marte:
			parts = false;
			global.planet = "Mars";
		break;
		case spr_jupiter:
			parts = false;
			global.planet = "Jupiter";
		break;
		case spr_saturno:
			parts = false;
			global.planet = "Saturn";
		break;
		case spr_urano:
			parts = false;
			global.planet = "Uranus";
		break;
		case spr_netuno:
			parts = false;
			global.planet = "Neptune";
		break;
		case spr_planet01:
			global.planet = "Planet01";
		break;
		case spr_planet02:
			global.planet = "Planet02";
		break;
		case spr_planet03:
			global.planet = "Planet03";
		break;
		case spr_planet04:
			global.planet = "Planet04";
		break;
		case spr_planet05:
			global.planet = "Planet05";
		break;
		case spr_planet06:
			global.planet = "Planet06";
		break;
		case spr_planet07:
			global.planet = "Planet07";
		break;
		case spr_planet08:
			global.planet = "Planet08";
		break;
		case spr_planet09:
			global.planet = "Planet09";
		break;
		case spr_planet10:
			global.planet = "Planet10";
		break;
		case spr_planet11:
			global.planet = "Planet11";
		break;
		case spr_planet12:
			global.planet = "Planet12";
		break;
		case spr_planet13:
			global.planet = "Planet13";
		break;
		case spr_planet14:
			global.planet = "Planet14";
		break;
		case spr_planet15:
			global.planet = "Planet15";
		break;
		case spr_planet16:
			global.planet = "Planet16";
		break;
		case spr_planet17:
			global.planet = "Planet17";
		break;
		case spr_planet18:
			global.planet = "Planet18";
		break;
		case spr_planet19:
			global.planet = "Planet19";
		break;
		case spr_planet20:
			global.planet = "Planet20";
		break;
		case spr_planet21:
			global.planet = "Planet21";
		break;
		case spr_planet22:
			global.planet = "Planet22";
		break;
		case spr_planet23:
			global.planet = "Planet23";
		break;
		case spr_planet24:
			global.planet = "Planet24";
		break;
		case spr_planet25:
			global.planet = "Planet25";
		break;
		case spr_planet26:
			global.planet = "Planet26";
		break;
		case spr_planet27:
			global.planet = "Planet27";
		break;
		case spr_planet28:
			global.planet = "Planet28";
		break;
		case spr_planet29:
			global.planet = "Planet29";
		break;
		case spr_planet30:
			global.planet = "Planet30";
		break;
		case spr_planet31:
			global.planet = "Planet31";
		break;
		case spr_planet32:
			global.planet = "Planet32";
		break;
		case spr_planet33:
			global.planet = "Planet33";
		break;
		case spr_planet34:
			global.planet = "Planet34";
		break;
		case spr_planet35:
			global.planet = "Planet35";
		break;
		case spr_planet36:
			global.planet = "Planet36";
		break;
		case spr_planet37:
			global.planet = "Planet37";
		break;
		case spr_planet38:
			global.planet = "Planet38";
		break;
		case spr_planet39:
			global.planet = "Planet39";
		break;
		case spr_planet40:
			global.planet = "Planet40";
		break;
		case spr_planet41:
			global.planet = "Planet41";
		break;
		case spr_planet42:
			global.planet = "Planet42";
		break;
	}
}
	//var _planet = choose(spr_planet01,spr_planet02,spr_planet03,spr_planet04,spr_planet05,spr_planet06,spr_planet07,
	//				spr_planet08,spr_planet09,spr_planet10,spr_planet11,spr_planet12,spr_planet13,spr_planet14,
	//				spr_planet15,spr_planet16,spr_planet17,spr_planet18,spr_planet19,spr_planet20,spr_planet21,
	//				spr_planet22,spr_planet23,spr_planet24,spr_planet25,spr_planet26,spr_planet27,spr_planet28,
	//				spr_planet29,spr_planet30,spr_planet31,spr_planet32,spr_planet33,spr_planet34,spr_planet35,
	//				spr_planet36,spr_planet37,spr_planet38,spr_planet39,spr_planet40,spr_planet41,spr_planet42);

	//if(global.time < 100){
	//	obj_planet.sprite_index = spr_sol;	
	//	global.planet = "Sun";
	//	parts = false;
	//} else {
	//	switch(global.planet){
	//		case "Sun" :
	//			obj_planet.sprite_index = spr_mercurio;		
	//			global.planet = "Mercury";
	//			parts = false;
	//		break;
	//		case "Mercury" :
	//			obj_planet.sprite_index = spr_venus;	
	//			global.planet = "Venus";
	//			parts = false;
	//		break;
	//		case "Venus" :
	//			obj_planet.sprite_index = spr_terra;	
	//			global.planet = "Earth";
	//			parts = false;
	//		break;
	//		case "Earth" :
	//			obj_planet.sprite_index = spr_lua;		
	//			global.planet = "Moon";
	//			if(!instance_exists(obj_astronauta)){
	//				instance_create_layer(0,0,"Objects",obj_astronauta);
	//			}
	//			parts = false;
	//		break;
	//		case "Moon" :
	//			obj_planet.sprite_index = spr_marte;
	//			global.planet = "Mars";	
	//			parts = false;
	//		break;
	//		case "Mars" :
	//			obj_planet.sprite_index = spr_jupiter;
	//			global.planet = "Jupiter";
	//			parts = false;
	//		break;
	//		case "Jupiter" :
	//			obj_planet.sprite_index = spr_saturno;
	//			global.planet = "Saturn";
	//			parts = false;
	//		break;
	//		case "Saturn" :
	//			obj_planet.sprite_index = spr_urano;
	//			global.planet = "Uranus";
	//			parts = false;
	//		break;
	//		case "Uranus" :
	//			obj_planet.sprite_index = spr_netuno;
	//			global.planet = "Neptune";
	//			parts = false;
	//		break;
	//		default :
	//			parts = true;
	//			obj_planet.sprite_index = _planet; // colocar aleatório
	//			switch(_planet){
	//				case spr_planet01:
	//					global.planet = "Planet01";
	//				break;
	//				case spr_planet02:
	//					global.planet = "Planet02";
	//				break;
	//				case spr_planet03:
	//					global.planet = "Planet03";
	//				break;
	//				case spr_planet04:
	//					global.planet = "Planet04";
	//				break;
	//				case spr_planet05:
	//					global.planet = "Planet05";
	//				break;
	//				case spr_planet06:
	//					global.planet = "Planet06";
	//				break;
	//				case spr_planet07:
	//					global.planet = "Planet07";
	//				break;
	//				case spr_planet08:
	//					global.planet = "Planet08";
	//				break;
	//				case spr_planet09:
	//					global.planet = "Planet09";
	//				break;
	//				case spr_planet10:
	//					global.planet = "Planet10";
	//				break;
	//				case spr_planet11:
	//					global.planet = "Planet11";
	//				break;
	//				case spr_planet12:
	//					global.planet = "Planet12";
	//				break;
	//				case spr_planet13:
	//					global.planet = "Planet13";
	//				break;
	//				case spr_planet14:
	//					global.planet = "Planet14";
	//				break;
	//				case spr_planet15:
	//					global.planet = "Planet15";
	//				break;
	//				case spr_planet16:
	//					global.planet = "Planet16";
	//				break;
	//				case spr_planet17:
	//					global.planet = "Planet17";
	//				break;
	//				case spr_planet18:
	//					global.planet = "Planet18";
	//				break;
	//				case spr_planet19:
	//					global.planet = "Planet19";
	//				break;
	//				case spr_planet20:
	//					global.planet = "Planet20";
	//				break;
	//				case spr_planet21:
	//					global.planet = "Planet21";
	//				break;
	//				case spr_planet22:
	//					global.planet = "Planet22";
	//				break;
	//				case spr_planet23:
	//					global.planet = "Planet23";
	//				break;
	//				case spr_planet24:
	//					global.planet = "Planet24";
	//				break;
	//				case spr_planet25:
	//					global.planet = "Planet25";
	//				break;
	//				case spr_planet26:
	//					global.planet = "Planet26";
	//				break;
	//				case spr_planet27:
	//					global.planet = "Planet27";
	//				break;
	//				case spr_planet28:
	//					global.planet = "Planet28";
	//				break;
	//				case spr_planet29:
	//					global.planet = "Planet29";
	//				break;
	//				case spr_planet30:
	//					global.planet = "Planet30";
	//				break;
	//				case spr_planet31:
	//					global.planet = "Planet31";
	//				break;
	//				case spr_planet32:
	//					global.planet = "Planet32";
	//				break;
	//				case spr_planet33:
	//					global.planet = "Planet33";
	//				break;
	//				case spr_planet34:
	//					global.planet = "Planet34";
	//				break;
	//				case spr_planet35:
	//					global.planet = "Planet35";
	//				break;
	//				case spr_planet36:
	//					global.planet = "Planet36";
	//				break;
	//				case spr_planet37:
	//					global.planet = "Planet37";
	//				break;
	//				case spr_planet38:
	//					global.planet = "Planet38";
	//				break;
	//				case spr_planet39:
	//					global.planet = "Planet39";
	//				break;
	//				case spr_planet40:
	//					global.planet = "Planet40";
	//				break;
	//				case spr_planet41:
	//					global.planet = "Planet41";
	//				break;
	//				case spr_planet42:
	//					global.planet = "Planet42";
	//				break;
	//			}
	//		break;
	//	}		
	//}