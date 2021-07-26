/// @description 
event_inherited();
//indexando nave usando no button aquire
ship = 3;
global.lvl_ship = 3;// Nivel da nave
//global.hp = 10;// vida inicial 10
global.max_life = 20; // maximo de vida
global.hp = global.max_life;
//global.atk_power = 11; // poder de atk
global.max_atk_power = 20; //Maximo atk power
//global.critical = 11; // Critico
global.max_critical = 20; // Maximo critical
//global.dexterity = 26; // Destreza 10
global.max_dexterity = 38;// Max destreza
//global.lvl_shoot = 3;// Nivel do tiro 1
global.max_lvl_shoot = 12; // Max do lvl do tiro 50
//fuel
global.fuel = gas.ship03;// Min 12000 Max 54148 sobe de 1028 para cada nave
global.max_fuel = global.fuel;
//fixo
global.moviment = 100; // movimentação da nave 10

number_skill_shoot = 1;

// Checando se ja tem a nave
value = 45;
if(global.ship013){
	global.value = 0;
}else{
	global.value = value; // Valor da nave
}