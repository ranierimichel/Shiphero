/// @description Load game

// Checando se o arquivo existe para carregar
if(file_exists("state01.dat")){
	state01 = ds_map_secure_load("state01.dat");
}
// Carregando o gold
global.gem = ds_map_find_value(state01, "gold");

// Carregando o status dos som
global.sound = ds_map_find_value(state01, "sound");

// Carregando as naves adquiridas
global.ship011 = ds_map_find_value(state01,"ship011");
global.ship012 = ds_map_find_value(state01,"ship012");
global.ship013 = ds_map_find_value(state01,"ship013");
global.ship014 = ds_map_find_value(state01,"ship014");
global.ship015 = ds_map_find_value(state01,"ship015");
global.ship016 = ds_map_find_value(state01,"ship016");
global.ship017 = ds_map_find_value(state01,"ship017");
global.ship021 = ds_map_find_value(state01,"ship021");
global.ship022 = ds_map_find_value(state01,"ship022");
global.ship023 = ds_map_find_value(state01,"ship023");
global.ship024 = ds_map_find_value(state01,"ship024");
global.ship025 = ds_map_find_value(state01,"ship025");
global.ship026 = ds_map_find_value(state01,"ship026");
global.ship027 = ds_map_find_value(state01,"ship027");
global.ship031 = ds_map_find_value(state01,"ship031");
global.ship032 = ds_map_find_value(state01,"ship032");
global.ship033 = ds_map_find_value(state01,"ship033");
global.ship034 = ds_map_find_value(state01,"ship034");
global.ship035 = ds_map_find_value(state01,"ship035");
global.ship036 = ds_map_find_value(state01,"ship036");
global.ship037 = ds_map_find_value(state01,"ship037");
global.ship041 = ds_map_find_value(state01,"ship041");
global.ship042 = ds_map_find_value(state01,"ship042");
global.ship043 = ds_map_find_value(state01,"ship043");
global.ship044 = ds_map_find_value(state01,"ship044");
global.ship045 = ds_map_find_value(state01,"ship045");
global.ship046 = ds_map_find_value(state01,"ship046");
global.ship047 = ds_map_find_value(state01,"ship047");
global.ship051 = ds_map_find_value(state01,"ship051");
global.ship052 = ds_map_find_value(state01,"ship052");
global.ship053 = ds_map_find_value(state01,"ship053");
global.ship054 = ds_map_find_value(state01,"ship054");
global.ship055 = ds_map_find_value(state01,"ship055");
global.ship056 = ds_map_find_value(state01,"ship056");
global.ship057 = ds_map_find_value(state01,"ship057");
global.ship061 = ds_map_find_value(state01,"ship061");
global.ship062 = ds_map_find_value(state01,"ship062");
global.ship063 = ds_map_find_value(state01,"ship063");
global.ship064 = ds_map_find_value(state01,"ship064");
global.ship065 = ds_map_find_value(state01,"ship065");
global.ship066 = ds_map_find_value(state01,"ship066");
global.ship067 = ds_map_find_value(state01,"ship067");

// Carregando Achievements para não chamar de novo
global.ach_MercuryReached = ds_map_find_value(state01,"ach_MercuryReached");
global.ach_VenusReached =   ds_map_find_value(state01,"ach_VenusReached");
global.ach_EarthReached =   ds_map_find_value(state01,"ach_EarthReached");
global.ach_MoonReached =    ds_map_find_value(state01,"ach_MoonReached");
global.ach_MarsReached =    ds_map_find_value(state01,"ach_MarsReached");
global.ach_JupiterReached = ds_map_find_value(state01,"ach_JupiterReached");
global.ach_SaturnReached =  ds_map_find_value(state01,"ach_SaturnReached");
global.ach_UranusReached =  ds_map_find_value(state01,"ach_UranusReached");
global.ach_NeptuneReached = ds_map_find_value(state01,"ach_NeptuneReached");
global.ach_planet01 = ds_map_find_value(state01,"ach_planet01");
global.ach_planet02 = ds_map_find_value(state01,"ach_planet02");
global.ach_planet03 = ds_map_find_value(state01,"ach_planet03");
global.ach_planet04 = ds_map_find_value(state01,"ach_planet04");
global.ach_planet05 = ds_map_find_value(state01,"ach_planet05");
global.ach_planet06 = ds_map_find_value(state01,"ach_planet06");
global.ach_planet07 = ds_map_find_value(state01,"ach_planet07");
global.ach_planet08 = ds_map_find_value(state01,"ach_planet08");
global.ach_planet09 = ds_map_find_value(state01,"ach_planet09");
global.ach_planet10 = ds_map_find_value(state01,"ach_planet10");
global.ach_planet11 = ds_map_find_value(state01,"ach_planet11");
global.ach_planet12 = ds_map_find_value(state01,"ach_planet12");
global.ach_planet13 = ds_map_find_value(state01,"ach_planet13");
global.ach_planet14 = ds_map_find_value(state01,"ach_planet14");
global.ach_planet15 = ds_map_find_value(state01,"ach_planet15");
global.ach_planet16 = ds_map_find_value(state01,"ach_planet16");
global.ach_planet17 = ds_map_find_value(state01,"ach_planet17");
global.ach_planet18 = ds_map_find_value(state01,"ach_planet18");
global.ach_planet19 = ds_map_find_value(state01,"ach_planet19");
global.ach_planet20 = ds_map_find_value(state01,"ach_planet20");
global.ach_planet21 = ds_map_find_value(state01,"ach_planet21");
global.ach_planet22 = ds_map_find_value(state01,"ach_planet22");
global.ach_planet23 = ds_map_find_value(state01,"ach_planet23");
global.ach_planet24 = ds_map_find_value(state01,"ach_planet24");
global.ach_planet25 = ds_map_find_value(state01,"ach_planet25");
global.ach_planet26 = ds_map_find_value(state01,"ach_planet26");
global.ach_planet27 = ds_map_find_value(state01,"ach_planet27");
global.ach_planet28 = ds_map_find_value(state01,"ach_planet28");
global.ach_planet29 = ds_map_find_value(state01,"ach_planet29");
global.ach_planet30 = ds_map_find_value(state01,"ach_planet30");
global.ach_planet31 = ds_map_find_value(state01,"ach_planet31");
global.ach_planet32 = ds_map_find_value(state01,"ach_planet32");
global.ach_planet33 = ds_map_find_value(state01,"ach_planet33");
global.ach_planet34 = ds_map_find_value(state01,"ach_planet34");
global.ach_planet35 = ds_map_find_value(state01,"ach_planet35");
global.ach_planet36 = ds_map_find_value(state01,"ach_planet36");
global.ach_planet37 = ds_map_find_value(state01,"ach_planet37");
global.ach_planet38 = ds_map_find_value(state01,"ach_planet38");
global.ach_planet39 = ds_map_find_value(state01,"ach_planet39");
global.ach_planet40 = ds_map_find_value(state01,"ach_planet40");
global.ach_planet41 = ds_map_find_value(state01,"ach_planet41");
global.ach_planet42 = ds_map_find_value(state01,"ach_planet42");

// Carregando recorde

global.max_total_enimies_death = ds_map_find_value(state01,"max_total_enimies_death");
global.max_lvl_map =  ds_map_find_value(state01,"max_lvl_map");
global.max_point =  ds_map_find_value(state01,"max_point");

//Selecionando ultima nave a ser jogada / concertando bug
var _test = ds_map_find_value(state01,"lastship");
if(_test <= 42){
	global.lvl_ship = _test;
}

//Selecionando a ultima nave adquirida
//if(global.ship067 == 1){
//		global.lvl_ship = 42;
//	}else if(global.ship066 == 1){
//		global.lvl_ship = 41;
//	}else if(global.ship065 == 1){
//		global.lvl_ship = 40;
//	}else if(global.ship064 == 1){
//		global.lvl_ship = 39;
//	}else if(global.ship063 == 1){
//		global.lvl_ship = 38;
//	}else if(global.ship062 == 1){
//		global.lvl_ship = 37;
//	}else if(global.ship061 == 1){
//		global.lvl_ship = 36;
//	}else if(global.ship057 == 1){
//		global.lvl_ship = 35;
//	}else if(global.ship056 == 1){
//		global.lvl_ship = 34;
//	}else if(global.ship055 == 1){
//		global.lvl_ship = 33;
//	}else if(global.ship054 == 1){
//		global.lvl_ship = 32;
//	}else if(global.ship053 == 1){
//		global.lvl_ship = 31;
//	}else if(global.ship052 == 1){
//		global.lvl_ship = 30;
//	}else if(global.ship051 == 1){
//		global.lvl_ship = 29;
//	}else if(global.ship047 == 1){
//		global.lvl_ship = 28;
//	}else if(global.ship046 == 1){
//		global.lvl_ship = 27;
//	}else if(global.ship045 == 1){
//		global.lvl_ship = 26;
//	}else if(global.ship044 == 1){
//		global.lvl_ship = 25;
//	}else if(global.ship043 == 1){
//		global.lvl_ship = 24;
//	}else if(global.ship042 == 1){
//		global.lvl_ship = 23;
//	}else if(global.ship041 == 1){
//		global.lvl_ship = 22;
//	}else if(global.ship037 == 1){
//		global.lvl_ship = 21;
//	}else if(global.ship036 == 1){
//		global.lvl_ship = 20;
//	}else if(global.ship035 == 1){
//		global.lvl_ship = 19;
//	}else if(global.ship034 == 1){
//		global.lvl_ship = 18;
//	}else if(global.ship033 == 1){
//		global.lvl_ship = 17;
//	}else if(global.ship032 == 1){
//		global.lvl_ship = 16;
//	}else if(global.ship031 == 1){
//		global.lvl_ship = 15;
//	}else if(global.ship027 == 1){
//		global.lvl_ship = 14;
//	}else if(global.ship026 == 1){
//		global.lvl_ship = 13;
//	}else if(global.ship025 == 1){
//		global.lvl_ship = 12;
//	}else if(global.ship024 == 1){
//		global.lvl_ship = 11;
//	}else if(global.ship023 == 1){
//		global.lvl_ship = 10;
//	}else if(global.ship022 == 1){
//		global.lvl_ship = 9;
//	}else if(global.ship021 == 1){
//		global.lvl_ship = 8;
//	}else if(global.ship017 == 1){
//		global.lvl_ship = 7;
//	}else if(global.ship016 == 1){
//		global.lvl_ship = 6;
//	}else if(global.ship015 == 1){
//		global.lvl_ship = 5;
//	}else if(global.ship014 == 1){
//		global.lvl_ship = 4;
//	}else if(global.ship013 == 1){
//		global.lvl_ship = 3;
//	}else if(global.ship012 == 1){
//		global.lvl_ship = 2;
//	}else{
//		global.lvl_ship = 1;
//}
