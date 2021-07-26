/// @description 
event_inherited();
//indexando nave usando no button aquire
ship = 22;
global.lvl_ship = 22;// Nivel da nave
//global.hp = 55;// vida inicial 10
global.max_life = 65; // maximo de vida
global.hp = global.max_life;
//global.atk_power = 56; // poder de atk
global.max_atk_power = 60; //Maximo atk power
//global.critical = 55; // Critico
global.max_critical = 60; // Maximo critical
//global.dexterity = 55; // Destreza 10
global.max_dexterity = 60;// Max destreza
//global.lvl_shoot = 30;// Nivel do tiro 1
global.max_lvl_shoot = 55; // Max do lvl do tiro 50
//fuel
global.fuel = gas.ship22;// Min 12000 Max 54148 sobe de 1028 para cada nave
global.max_fuel = global.fuel;
//fixo
global.moviment = 100; // movimentação da nave 10
number_skill_shoot = 4;
// Checando se ja tem a nave
value = 905;
if(global.ship041){
	global.value = 0;
}else{
	global.value = value; // Valor da nave
}