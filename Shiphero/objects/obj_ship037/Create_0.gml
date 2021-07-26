/// @description 
event_inherited();
//indexando nave usando no button aquire
ship = 21;
global.lvl_ship = 21;// Nivel da nave
//global.hp = 50;// vida inicial 10
global.max_life = 55; // maximo de vida
global.hp = global.max_life;
//global.atk_power = 44; // poder de atk
global.max_atk_power = 58; //Maximo atk power
//global.critical = 44; // Critico
global.max_critical = 58; // Maximo critical
//global.dexterity = 43; // Destreza 10
global.max_dexterity = 59;// Max destreza
//global.lvl_shoot = 60;// Nivel do tiro 1
global.max_lvl_shoot = 60; // Max do lvl do tiro 50
//fuel
global.fuel = gas.ship21;// Min 12000 Max 54148 sobe de 1028 para cada nave
global.max_fuel = global.fuel;
//fixo
global.moviment = 100; // movimentação da nave 10
number_skill_shoot = 3;
// Checando se ja tem a nave
value = 825;
if(global.ship037){
	global.value = 0;
}else{
	global.value = value; // Valor da nave
}