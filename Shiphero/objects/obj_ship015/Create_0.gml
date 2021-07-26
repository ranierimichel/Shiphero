/// @description 
event_inherited();
//indexando nave usando no button aquire
ship = 5;
global.lvl_ship = 5;// Nivel da nave
//global.hp = 10;// vida inicial 10
global.max_life = 20; // maximo de vida
global.hp = global.max_life;
//global.atk_power = 13; // poder de atk
global.max_atk_power = 20; //Maximo atk power
//global.critical = 40; // Critico
global.max_critical = 56; // Maximo critical
//global.dexterity = 13; // Destreza 10
global.max_dexterity = 20;// Max destreza
//global.lvl_shoot = 5;// Nivel do tiro 1
global.max_lvl_shoot = 14; // Max do lvl do tiro 50
//fuel
global.fuel = gas.ship05;// Min 12000 Max 54148 sobe de 1028 para cada nave
global.max_fuel = global.fuel;
//fixo
global.moviment = 100; // movimentação da nave 10

number_skill_shoot = 1;
// Checando se ja tem a nave
value = 85;
if(global.ship015){
	global.value = 0;
}else{
	global.value = value; // Valor da nave
}