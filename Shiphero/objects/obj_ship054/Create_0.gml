/// @description 
event_inherited();
//indexando nave usando no button aquire
ship = 32;
global.lvl_ship = 32;// Nivel da nave
//global.hp = 70;// vida inicial 10
global.max_life = 75; // maximo de vida
global.hp = global.max_life;
//global.atk_power = 68; // poder de atk
global.max_atk_power = 73; //Maximo atk power
//global.critical = 84; // Critico
global.max_critical = 90; // Maximo critical
//global.dexterity = 69; // Destreza 10
global.max_dexterity = 72;// Max destreza
//global.lvl_shoot = 60;// Nivel do tiro 1
global.max_lvl_shoot = 90;// Max do lvl do tiro 50
//fuel
global.fuel = gas.ship32;// Min 12000 Max 54148 sobe de 1028 para cada nave
global.max_fuel = global.fuel;
//fixo
global.moviment = 100; // movimentação da nave 10
number_skill_shoot = 5;
// Checando se ja tem a nave
value = 1785;
if(global.ship054){
	global.value = 0;
}else{
	global.value = value; // Valor da nave
}