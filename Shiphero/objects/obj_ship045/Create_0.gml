/// @description 
event_inherited();
//indexando nave usando no button aquire
ship = 26;
global.lvl_ship = 26;// Nivel da nave
//global.hp = 55;// vida inicial 10
global.max_life = 65; // maximo de vida
global.hp = global.max_life;
//global.atk_power = 54; // poder de atk
global.max_atk_power = 58; //Maximo atk power
//global.critical = 95; // Critico
global.max_critical = 100; // Maximo critical
//global.dexterity = 53; // Destreza 10
global.max_dexterity = 58;// Max destreza
//global.lvl_shoot = 34;// Nivel do tiro 1
global.max_lvl_shoot = 59;// Max do lvl do tiro 50
//fuel
global.fuel = gas.ship26;// Min 12000 Max 54148 sobe de 1028 para cada nave
global.max_fuel = global.fuel;
//fixo
global.moviment = 100; // movimentação da nave 10
number_skill_shoot = 4;
// Checando se ja tem a nave
value = 1225;
if(global.ship045){
	global.value = 0;
}else{
	global.value = value; // Valor da nave
}