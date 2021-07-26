/// @description 
event_inherited();
//indexando nave usando no button aquire
ship = 24;
global.lvl_ship = 24;// Nivel da nave
//global.hp = 55;// vida inicial 10
global.max_life = 65; // maximo de vida
global.hp = global.max_life;
//global.atk_power = 55; // poder de atk
global.max_atk_power = 59; //Maximo atk power
//global.critical = 54; // Critico
global.max_critical = 59; // Maximo critical
//global.dexterity = 75; // Destreza 10
global.max_dexterity = 80;// Max destreza
//global.lvl_shoot = 32;// Nivel do tiro 1
global.max_lvl_shoot = 57;// Max do lvl do tiro 50
//fuel
global.fuel = gas.ship24;// Min 12000 Max 54148 sobe de 1028 para cada nave
global.max_fuel = global.fuel;
//fixo
global.moviment = 100; // movimentação da nave 10
number_skill_shoot = 4;
// Checando se ja tem a nave
value = 1065;
if(global.ship043){
	global.value = 0;
}else{
	global.value = value; // Valor da nave
}