/// @description 
event_inherited();
//indexando nave usando no button aquire
ship = 41;
global.lvl_ship = 41;// Nivel da nave
//global.hp = 85;// vida inicial 10
global.max_life = 95; // maximo de vida
global.hp = global.max_life;
//global.atk_power = 100; // poder de atk
global.max_atk_power = 100; //Maximo atk power
//global.critical = 96; // Critico
global.max_critical = 99; // Maximo critical
//global.dexterity = 95; // Destreza 10
global.max_dexterity = 99;// Max destreza
//global.lvl_shoot = 65;// Nivel do tiro 1
global.max_lvl_shoot = 97;// Max do lvl do tiro 50
//fuel
global.fuel = gas.ship41;// Min 12000 Max 54148 sobe de 1028 para cada nave
global.max_fuel = global.fuel;
//fixo
global.moviment = 100; // movimentação da nave 10
number_skill_shoot = 6;
// Checando se ja tem a nave
value = 2805;
if(global.ship066){
	global.value = 0;
}else{
	global.value = value; // Valor da nave
}