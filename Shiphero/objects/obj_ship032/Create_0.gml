/// @description 
event_inherited();
//indexando nave usando no button aquire
ship = 16;
global.lvl_ship = 16;// Nivel da nave
//global.hp = 50;// vida inicial 10
global.max_life = 55; // maximo de vida
global.hp = global.max_life;
//global.atk_power = 40; // poder de atk
global.max_atk_power = 48; //Maximo atk power
//global.critical = 40; // Critico
global.max_critical = 48; // Maximo critical
//global.dexterity = 40; // Destreza 10
global.max_dexterity = 48;// Max destreza
//global.lvl_shoot = 21;// Nivel do tiro 1
global.max_lvl_shoot = 41; // Max do lvl do tiro 50
//fuel
global.fuel = gas.ship16;// Min 12000 Max 54148 sobe de 1028 para cada nave
global.max_fuel = global.fuel;
//fixo
global.moviment = 100; // movimentação da nave 10
number_skill_shoot = 3;
// Checando se ja tem a nave
value = 525;
if(global.ship032){
	global.value = 0;
}else{
	global.value = value; // Valor da nave
}