/// @description 
event_inherited();
//indexando nave usando no button aquire
ship = 35;
global.lvl_ship = 35;// Nivel da nave
//global.hp = 80;// vida inicial 10
global.max_life = 85; // maximo de vida
global.hp = global.max_life;
//global.atk_power = 81; // poder de atk
global.max_atk_power = 83; //Maximo atk power
//global.critical = 80; // Critico
global.max_critical = 83; // Maximo critical
//global.dexterity = 80; // Destreza 10
global.max_dexterity = 84;// Max destreza
//global.lvl_shoot = 60;// Nivel do tiro 1
global.max_lvl_shoot = 95;// Max do lvl do tiro 50
//fuel
global.fuel = gas.ship35;// Min 12000 Max 54148 sobe de 1028 para cada nave
global.max_fuel = global.fuel;
//fixo
global.moviment = 100; // movimentação da nave 10
number_skill_shoot = 5;
// Checando se ja tem a nave
value = 2085;
if(global.ship057){
	global.value = 0;
}else{
	global.value = value; // Valor da nave
}