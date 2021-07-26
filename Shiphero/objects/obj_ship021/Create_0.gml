/// @description 
event_inherited();
//indexando nave usando no button aquire
ship = 8;
global.lvl_ship = 8;// Nivel da nave
//global.hp = 25;// vida inicial 10
global.max_life = 35; // maximo de vida
global.hp = global.max_life;
//global.atk_power = 25; // poder de atk
global.max_atk_power = 34; //Maximo atk power
//global.critical = 27; // Critico
global.max_critical = 33; // Maximo critical
//global.dexterity = 27; // Destreza 10
global.max_dexterity = 33;// Max destreza
//global.lvl_shoot = 7;// Nivel do tiro 1
global.max_lvl_shoot = 25; // Max do lvl do tiro 50
//fuel
global.fuel = gas.ship08;// Min 12000 Max 54148 sobe de 1028 para cada nave
global.max_fuel = global.fuel;
//fixo
global.moviment = 100; // movimentação da nave 10

number_skill_shoot = 2;

// Checando se ja tem a nave
value = 165;
if(global.ship021){
	global.value = 0;
}else{
	global.value = value; // Valor da nave
}