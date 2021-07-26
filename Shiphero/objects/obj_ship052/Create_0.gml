/// @description 
event_inherited();
//indexando nave usando no button aquire
ship = 30;
global.lvl_ship = 30;// Nivel da nave
//global.hp = 80;// vida inicial 10
global.max_life = 85; // maximo de vida
global.hp = global.max_life;
//global.atk_power = 68; // poder de atk
global.max_atk_power = 74; //Maximo atk power
//global.critical = 68; // Critico
global.max_critical = 75; // Maximo critical
//global.dexterity = 68; // Destreza 10
global.max_dexterity = 75;// Max destreza
//global.lvl_shoot = 47;// Nivel do tiro 1
global.max_lvl_shoot = 71;// Max do lvl do tiro 50
//fuel
global.fuel = gas.ship30;// Min 12000 Max 54148 sobe de 1028 para cada nave
global.max_fuel = global.fuel;
//fixo
global.moviment = 100; // movimentação da nave 10
number_skill_shoot = 5;
// Checando se ja tem a nave
value = 1585;
if(global.ship052){
	global.value = 0;
}else{
	global.value = value; // Valor da nave
}