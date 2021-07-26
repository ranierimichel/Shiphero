/// @description

// Salvando o jogo
obj_game.alarm[2] = true;

// Resetando powerpu
global.ptsPU = 0;

// Resetando o dash
if(instance_exists(obj_draw)){
	obj_draw.dash = 0;	
}

// google
if(global.point != 0 && achievement_available()){
	switch (ship) {
	    case 1:
	        achievement_post_score("CgkI5LHpup4EEAIQAQ", global.point);
	    break;
	    case 2:
	        achievement_post_score("CgkI5LHpup4EEAIQAg", global.point);
	    break;
	    case 3:
	        achievement_post_score("CgkI5LHpup4EEAIQAw", global.point);
	    break;
	    case 4:
	        achievement_post_score("CgkI5LHpup4EEAIQBA", global.point);
	    break;
	    case 5:
	        achievement_post_score("CgkI5LHpup4EEAIQBQ", global.point);
	    break;
	    case 6:
	        achievement_post_score("CgkI5LHpup4EEAIQBg", global.point);
	    break;
	    case 7:
	        achievement_post_score("CgkI5LHpup4EEAIQBw", global.point);
	    break;
	    case 8:
	        achievement_post_score("CgkI5LHpup4EEAIQCA", global.point);
	    break;
	    case 9:
	        achievement_post_score("CgkI5LHpup4EEAIQCQ", global.point);
	    break;
	    case 10:
	        achievement_post_score("CgkI5LHpup4EEAIQCg", global.point);
	    break;
	    case 11:
	        achievement_post_score("CgkI5LHpup4EEAIQCw", global.point);
	    break;
	    case 12:
	        achievement_post_score("CgkI5LHpup4EEAIQDA", global.point);
	    break;
	    case 13:
	        achievement_post_score("CgkI5LHpup4EEAIQDQ", global.point);
	    break;
	    case 14:
	        achievement_post_score("CgkI5LHpup4EEAIQDg", global.point);
	    break;
	    case 15:
	        achievement_post_score("CgkI5LHpup4EEAIQDw", global.point);
	    break;
	    case 16:
	        achievement_post_score("CgkI5LHpup4EEAIQEA", global.point);
	    break;
	    case 17:
	        achievement_post_score("CgkI5LHpup4EEAIQEQ", global.point);
	    break;
	    case 18:
	        achievement_post_score("CgkI5LHpup4EEAIQEg", global.point);
	    break;
	    case 19:
	        achievement_post_score("CgkI5LHpup4EEAIQEw", global.point);
	    break;
	    case 20:
	        achievement_post_score("CgkI5LHpup4EEAIQFA", global.point);
	    break;
	    case 21:
	        achievement_post_score("CgkI5LHpup4EEAIQFQ", global.point);
	    break;
	    case 22:
	        achievement_post_score("CgkI5LHpup4EEAIQFg", global.point);
	    break;
	    case 23:
	        achievement_post_score("CgkI5LHpup4EEAIQFw", global.point);
	    break;
	    case 24:
	        achievement_post_score("CgkI5LHpup4EEAIQGA", global.point);
	    break;
	    case 25:
	        achievement_post_score("CgkI5LHpup4EEAIQGQ", global.point);
	    break;
	    case 26:
	        achievement_post_score("CgkI5LHpup4EEAIQGg", global.point);
	    break;
	    case 27:
	        achievement_post_score("CgkI5LHpup4EEAIQGw", global.point);
	    break;
	    case 28:
	        achievement_post_score("CgkI5LHpup4EEAIQHA", global.point);
	    break;
	    case 29:
	        achievement_post_score("CgkI5LHpup4EEAIQHQ", global.point);
	    break;
	    case 30:
	        achievement_post_score("CgkI5LHpup4EEAIQHg", global.point);
	    break;
	    case 31:
	        achievement_post_score("CgkI5LHpup4EEAIQHw", global.point);
	    break;
	    case 32:
	        achievement_post_score("CgkI5LHpup4EEAIQIA", global.point);
	    break;
	    case 33:
	        achievement_post_score("CgkI5LHpup4EEAIQIQ", global.point);
	    break;
	    case 34:
	        achievement_post_score("CgkI5LHpup4EEAIQIg", global.point);
	    break;
	    case 35:
	        achievement_post_score("CgkI5LHpup4EEAIQIw", global.point);
	    break;
	    case 36:
	        achievement_post_score("CgkI5LHpup4EEAIQJA", global.point);
	    break;
	    case 37:
	        achievement_post_score("CgkI5LHpup4EEAIQJQ", global.point);
	    break;
	    case 38:
	        achievement_post_score("CgkI5LHpup4EEAIQJg", global.point);
	    break;
	    case 39:
	        achievement_post_score("CgkI5LHpup4EEAIQJw", global.point);
	    break;
	    case 40:
	        achievement_post_score("CgkI5LHpup4EEAIQKA", global.point);
	    break;
	    case 41:
	        achievement_post_score("CgkI5LHpup4EEAIQKQ", global.point);
	    break;
	    case 42:
	        achievement_post_score("CgkI5LHpup4EEAIQKg", global.point);
	    break;

	}
}

// Limpando memoria
scr_flushShips();

//if(room = rm_game){
//	// Destruindo sistema de particula turbina
//	part_type_destroy(global.particle_turbina);
//	part_system_destroy(global.part_sys_turbina);
//	part_emitter_destroy_all(global.part_sys_turbina); // destruindo systema de particula

//}

//effect_create_above(ef_explosion,x,y,0,c_lime);
//effect_create_above(ef_smokeup,x,y,0,c_blue);

//room_goto(rm_gameover);



