/// @description 
event_inherited();
//indexando nave usando no button aquire
ship = 2;
global.lvl_ship = 2;// Nivel da nave
//global.hp = 15;// vida inicial 10
global.max_life = 25; // maximo de vida
global.hp = global.max_life;
//global.atk_power = 12; // poder de atk
global.max_atk_power = 22; //Maximo atk power
//global.critical = 11; // Critico
global.max_critical = 21; // Maximo critical
//global.dexterity = 11; // Destreza 10
global.max_dexterity = 21;// Max destreza
//global.lvl_shoot = 2;// Nivel do tiro 1
global.max_lvl_shoot = 11; // Max do lvl do tiro 50
//fuel
global.fuel = gas.ship02;// Min 12000 Max 54148 sobe de 1028 para cada nave
global.max_fuel = global.fuel;
//fixo
global.moviment = 100; // movimentação da nave 10

number_skill_shoot = 1;
// Checando se ja tem a nave
value = 25;
if(global.ship012){
	global.value = 0;
}else{
	global.value = value; // Valor da nave
}
