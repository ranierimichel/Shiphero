/// @description 
event_inherited();
//indexando nave usando no button aquire
ship = 23;
global.lvl_ship = 23;// Nivel da nave
//global.hp = 65;// vida inicial 10
global.max_life = 75; // maximo de vida
global.hp = global.max_life;
//global.atk_power = 55; // poder de atk
global.max_atk_power = 59; //Maximo atk power
//global.critical = 55; // Critico
global.max_critical = 60; // Maximo critical
//global.dexterity = 55; // Destreza 10
global.max_dexterity = 60;// Max destreza
//global.lvl_shoot = 31;// Nivel do tiro 1
global.max_lvl_shoot = 56; // Max do lvl do tiro 50
//fuel
global.fuel = gas.ship23;// Min 12000 Max 54148 sobe de 1028 para cada nave
global.max_fuel = global.fuel;
//fixo
global.moviment = 100; // movimentação da nave 10
number_skill_shoot = 4;
// Checando se ja tem a nave
value = 985;
if(global.ship042){
	global.value = 0;
}else{
	global.value = value; // Valor da nave
}