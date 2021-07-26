/// @description 
event_inherited();
//indexando nave usando no button aquire
ship = 13;
global.lvl_ship = 13;// Nivel da nave
//global.hp = 25;// vida inicial 10
global.max_life = 35; // maximo de vida
global.hp = global.max_life;
//global.atk_power = 79; // poder de atk
global.max_atk_power = 84; //Maximo atk power
//global.critical = 23; // Critico
global.max_critical = 31; // Maximo critical
//global.dexterity = 22; // Destreza 10
global.max_dexterity = 30;// Max destreza
//global.lvl_shoot = 12;// Nivel do tiro 1
global.max_lvl_shoot = 30; // Max do lvl do tiro 50
//fuel
global.fuel = gas.ship13;// Min 12000 Max 54148 sobe de 1028 para cada nave
global.max_fuel = global.fuel;
//fixo
global.moviment = 100; // movimentação da nave 10
// Checando se ja tem a nave

number_skill_shoot = 2;
value = 365;
if(global.ship026){
	global.value = 0;
}else{
	global.value = value; // Valor da nave
}