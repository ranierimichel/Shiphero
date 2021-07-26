/// @description 
event_inherited();
//indexando nave usando no button aquire
ship = 25;
global.lvl_ship = 25;// Nivel da nave
//global.hp = 55;// vida inicial 10
global.max_life = 65; // maximo de vida
global.hp = global.max_life;
//global.atk_power = 53; // poder de atk
global.max_atk_power = 57; //Maximo atk power
//global.critical = 70; // Critico
global.max_critical = 75; // Maximo critical
//global.dexterity = 70; // Destreza 10
global.max_dexterity = 75;// Max destreza
//global.lvl_shoot = 33;// Nivel do tiro 1
global.max_lvl_shoot = 58;// Max do lvl do tiro 50
//fuel
global.fuel = gas.ship25;// Min 12000 Max 54148 sobe de 1028 para cada nave
global.max_fuel = global.fuel;
//fixo
global.moviment = 100; // movimentação da nave 10
number_skill_shoot = 4;
// Checando se ja tem a nave
value = 1145;
if(global.ship044){
	global.value = 0;
}else{
	global.value = value; // Valor da nave
}