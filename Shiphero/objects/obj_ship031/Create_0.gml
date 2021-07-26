/// @description 
event_inherited();
//indexando nave usando no button aquire
ship = 15;
global.lvl_ship = 15;// Nivel da nave
//global.hp = 40;// vida inicial 10
global.max_life = 45; // maximo de vida
global.hp = global.max_life;
//global.atk_power = 41; // poder de atk
global.max_atk_power = 49; //Maximo atk power
//global.critical = 40; // Critico
global.max_critical = 48; // Maximo critical
//global.dexterity = 40; // Destreza 10
global.max_dexterity = 48;// Max destreza
//global.lvl_shoot = 20;// Nivel do tiro 1
global.max_lvl_shoot = 40; // Max do lvl do tiro 50
//fuel
global.fuel = gas.ship15;// Min 12000 Max 54148 sobe de 1028 para cada nave
global.max_fuel = global.fuel;
//fixo
global.moviment = 100; // movimentação da nave 10
number_skill_shoot = 3;
// Checando se ja tem a nave
value = 465;
if(global.ship031){
	global.value = 0;
}else{
	global.value = value; // Valor da nave
}