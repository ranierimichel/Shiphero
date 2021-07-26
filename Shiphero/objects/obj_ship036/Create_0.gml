/// @description 
event_inherited();
//indexando nave usando no button aquire
ship = 20;
global.lvl_ship = 20;// Nivel da nave
//global.hp = 40;// vida inicial 10
global.max_life = 45; // maximo de vida
global.hp = global.max_life;
//global.atk_power = 91; // poder de atk
global.max_atk_power = 99; //Maximo atk power
//global.critical = 38; // Critico
global.max_critical = 46; // Maximo critical
//global.dexterity = 38; // Destreza 10
global.max_dexterity = 46;// Max destreza
//global.lvl_shoot = 24;// Nivel do tiro 1
global.max_lvl_shoot = 44; // Max do lvl do tiro 50
//fuel
global.fuel = gas.ship20;// Min 12000 Max 54148 sobe de 1028 para cada nave
global.max_fuel = global.fuel;
//fixo
global.moviment = 100; // movimentação da nave 10
number_skill_shoot = 3;
// Checando se ja tem a nave
value = 765;
if(global.ship036){
	global.value = 0;
}else{
	global.value = value; // Valor da nave
}