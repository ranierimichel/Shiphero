/// @description 
event_inherited();
//indexando nave usando no button aquire
ship = 11;
global.lvl_ship = 11;// Nivel da nave
//global.hp = 25;// vida inicial 10
global.max_life = 35; // maximo de vida
global.hp = global.max_life;
//global.atk_power = 48; // poder de atk
global.max_atk_power = 49; //Maximo atk power
//global.critical = 10; // Critico
global.max_critical = 29; // Maximo critical
//global.dexterity = 48; // Destreza 10
global.max_dexterity = 49;// Max destreza
//global.lvl_shoot = 10;// Nivel do tiro 1
global.max_lvl_shoot = 28; // Max do lvl do tiro 50
//fuel
global.fuel = gas.ship11;// Min 12000 Max 54148 sobe de 1028 para cada nave
global.max_fuel = global.fuel;
//fixo
global.moviment = 100; // movimentação da nave 10
// Checando se ja tem a nave

number_skill_shoot = 2;
value = 285;
if(global.ship024){
	global.value = 0;
}else{
	global.value = value; // Valor da nave
}