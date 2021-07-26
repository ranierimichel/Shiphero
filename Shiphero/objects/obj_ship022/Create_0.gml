/// @description 
event_inherited();
//indexando nave usando no button aquire
ship = 9;
global.lvl_ship = 9;// Nivel da nave
//global.hp = 35;// vida inicial 10
global.max_life = 45; // maximo de vida
global.hp = global.max_life;
//global.atk_power = 28; // poder de atk
global.max_atk_power = 33; //Maximo atk power
//global.critical = 25; // Critico
global.max_critical = 33; // Maximo critical
//global.dexterity = 25; // Destreza 10
global.max_dexterity = 33;// Max destreza
//global.lvl_shoot = 8;// Nivel do tiro 1
global.max_lvl_shoot = 26; // Max do lvl do tiro 50
//fuel
global.fuel = gas.ship09;// Min 12000 Max 54148 sobe de 1028 para cada nave
global.max_fuel = global.fuel;
//fixo
global.moviment = 100; // movimentação da nave 10
// Checando se ja tem a nave

number_skill_shoot = 2;
value = 205;
if(global.ship022){
	global.value = 0;
}else{
	global.value = value; // Valor da nave
}