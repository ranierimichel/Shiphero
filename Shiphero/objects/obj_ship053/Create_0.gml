/// @description 
event_inherited();
//indexando nave usando no button aquire
ship = 31;
global.lvl_ship = 31;// Nivel da nave
//global.hp = 70;// vida inicial 10
global.max_life = 75; // maximo de vida
global.hp = global.max_life;
//global.atk_power = 67; // poder de atk
global.max_atk_power = 74; //Maximo atk power
//global.critical = 67; // Critico
global.max_critical = 74; // Maximo critical
//global.dexterity = 89; // Destreza 10
global.max_dexterity = 95;// Max destreza
//global.lvl_shoot = 48;// Nivel do tiro 1
global.max_lvl_shoot = 72;// Max do lvl do tiro 50
//fuel
global.fuel = gas.ship31;// Min 12000 Max 54148 sobe de 1028 para cada nave
global.max_fuel = global.fuel;
//fixo
global.moviment = 100; // movimentação da nave 10
number_skill_shoot = 5;
// Checando se ja tem a nave
value = 1685;
if(global.ship053){
	global.value = 0;
}else{
	global.value = value; // Valor da nave
}