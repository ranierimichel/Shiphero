/// @description 
event_inherited();
//indexando nave usando no button aquire
ship = 36;
global.lvl_ship = 36;// Nivel da nave
//global.hp = 85;// vida inicial 10
global.max_life = 90; // maximo de vida
global.hp = global.max_life;
//global.atk_power = 82; // poder de atk
global.max_atk_power = 89; //Maximo atk power
//global.critical = 82; // Critico
global.max_critical = 88; // Maximo critical
//global.dexterity = 81; // Destreza 10
global.max_dexterity = 88;// Max destreza
//global.lvl_shoot = 61;// Nivel do tiro 1
global.max_lvl_shoot = 85;// Max do lvl do tiro 50
//fuel
global.fuel = gas.ship36;// Min 12000 Max 54148 sobe de 1028 para cada nave
global.max_fuel = global.fuel;
//fixo
global.moviment = 100; // movimentação da nave 10
number_skill_shoot = 6;
// Checando se ja tem a nave
value = 2205;
if(global.ship061){
	global.value = 0;
}else{
	global.value = value; // Valor da nave
}