// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
randomize();
//cronometro
//global.cronometro = 0;

//respawn do dash
#macro timetodash 25
#macro timetolazer 35
#macro timetoexplode 15
#macro maxlvleachskill 8 //Maximolvl de cada skill

// Display
global.ideal_width = 0;
global.ideal_height = 0;

// Nome dos planetas
global.planet = "";

// tempo para controlar background
global.time = 0;

// Pts PowerUp
global.ptsPU = 0;

// UI
global.pause = false; // Pause
global.restart = false; // Restart
global.sound = false; // Som

// ------------------ Skills --------------
// Passivas
global.lvl_ship = 1;// Nivel da nave
global.hp = 0;// Vida
global.max_life = 0; // maximo de vida
global.atk_power = 0; // Poder de atk
global.max_atk_power = 0; // Maxímo atk power
global.critical = 0; // Critico
global.max_critical = 0; //Maximo de critico
global.dexterity = 0; // Velocidade de atk
global.max_dexterity = 0; // Maximo destresa
global.lvl_shoot = 0;// Nivel do tiro
global.max_lvl_shoot = 0; //Max lvlshoot
global.fuel = 0;
global.max_fuel = 0;
global.moviment = 100; // movimentação da nave fixo
global.shoot = 0; // barra tiro

// Ativas
//timetodash = 0; // Delay do dash fixo
//timetolazer = 0;
//timetoexplode = 0;

// skills shoot
global.numb_skill_shoot = 0;
global.rebater = 0; // 1 ou 2
global.atravessar_tela = 0; // 1 ou 2
global.destroy_new_shoot = 0; // 1 ou 2
global.double_shoot = 0;

global.gem = 0; // Gold //debug
global.value = 0; // custo da nave
global.lvl_map = 0; // Level mapa
global.total_enimies_death = 0; // Total de inimigos mortos
global.combo = 0; // combo tiro
// debug Overlay
//show_debug_overlay(true);

// recorde
global.max_lvl_map = 0;
global.max_total_enimies_death = 0;

global.point = 0;
global.max_point = 0;

// Adiquir naves
global.ship011 = 1; // debug
global.ship012 = 0; // debug
global.ship013 = 0; // debug
global.ship014 = 0; // debug
global.ship015 = 0; // debug
global.ship016 = 0; // debug
global.ship017 = 0; // debug
global.ship021 = 0; // debug
global.ship022 = 0; // debug
global.ship023 = 0; // debug
global.ship024 = 0; // debug
global.ship025 = 0; // debug
global.ship026 = 0; // debug
global.ship027 = 0; // debug
global.ship031 = 0; // debug
global.ship032 = 0; // debug
global.ship033 = 0; // debug
global.ship034 = 0; // debug
global.ship035 = 0; // debug
global.ship036 = 0; // debug
global.ship037 = 0; // debug
global.ship041 = 0; // debug
global.ship042 = 0; // debug
global.ship043 = 0; // debug
global.ship044 = 0; // debug
global.ship045 = 0; // debug
global.ship046 = 0; // debug
global.ship047 = 0; // debug
global.ship051 = 0; // debug
global.ship052 = 0; // debug
global.ship053 = 0; // debug
global.ship054 = 0; // debug
global.ship055 = 0; // debug
global.ship056 = 0; // debug
global.ship057 = 0; // debug
global.ship061 = 0; // debug
global.ship062 = 0; // debug
global.ship063 = 0; // debug
global.ship064 = 0; // debug
global.ship065 = 0; // debug
global.ship066 = 0; // debug
global.ship067 = 0; // debug

// --------------- Particles ---------------
//start cores
global.particle_color1 = 0;
global.particle_color2 = 0;
global.particle_color3 = 0;

// Cores combo e barra do tiro
global.hue1 = irandom(255);
global.hue2 = irandom(255);
global.hue3 = irandom(255);
global.hue4 = irandom(255);
global.hue5 = irandom(255);
global.hue6 = irandom(255);
global.hue7 = irandom(255);

//GoogleService
global.PlayerName = "Ranieri";
global.PlayerID = -1;

//Adds
//Variavel para não requisitar add no restart
//global.interstitial_loaded = false;
//Variaveis Rewarded add
//global.rewarded_loaded = false;
//global.rewarded_viewed = false;
global.rewarded_multiplier = 1;

//Achieviments
global.ach_MercuryReached = false;
global.ach_VenusReached = false;
global.ach_EarthReached = false;
global.ach_MoonReached = false;
global.ach_MarsReached = false;
global.ach_JupiterReached = false;
global.ach_SaturnReached = false;
global.ach_UranusReached = false;
global.ach_NeptuneReached = false;

global.ach_planet01 = false;
global.ach_planet02 = false;
global.ach_planet03 = false;
global.ach_planet04 = false;
global.ach_planet05 = false;
global.ach_planet06 = false;
global.ach_planet07 = false;
global.ach_planet08 = false;
global.ach_planet09 = false;
global.ach_planet10 = false;
global.ach_planet11 = false;
global.ach_planet12 = false;
global.ach_planet13 = false;
global.ach_planet14 = false;
global.ach_planet15 = false;
global.ach_planet16 = false;
global.ach_planet17 = false;
global.ach_planet18 = false;
global.ach_planet19 = false;
global.ach_planet20 = false;
global.ach_planet21 = false;
global.ach_planet22 = false;
global.ach_planet23 = false;
global.ach_planet24 = false;
global.ach_planet25 = false;
global.ach_planet26 = false;
global.ach_planet27 = false;
global.ach_planet28 = false;
global.ach_planet29 = false;
global.ach_planet30 = false;
global.ach_planet31 = false;
global.ach_planet32 = false;
global.ach_planet33 = false;
global.ach_planet34 = false;
global.ach_planet35 = false;
global.ach_planet36 = false;
global.ach_planet37 = false;
global.ach_planet38 = false;
global.ach_planet39 = false;
global.ach_planet40 = false;
global.ach_planet41 = false;
global.ach_planet42 = false;