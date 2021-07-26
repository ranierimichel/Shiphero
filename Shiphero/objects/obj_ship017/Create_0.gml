/// @description 
event_inherited();
//indexando nave usando no button aquire
ship = 7;
global.lvl_ship = 7;// Nivel da nave
//global.hp = 10;// vida inicial 10
global.max_life = 30; // maximo de vida
global.hp = global.max_life;
//global.atk_power = 26; // poder de atk
global.max_atk_power = 32; //Maximo atk power
//global.critical = 20; // Critico
global.max_critical = 31; // Maximo critical
//global.dexterity = 25; // Destreza 10
global.max_dexterity = 32;// Max destreza
//global.lvl_shoot = 20;// Nivel do tiro 1
global.max_lvl_shoot = 25; // Max do lvl do tiro 50
//fuel
global.fuel = gas.ship07;// Min 12000 Max 54148 sobe de 1028 para cada nave
global.max_fuel = global.fuel;
//fixo
global.moviment = 100; // movimentação da nave 10

number_skill_shoot = 1;
// Checando se ja tem a nave
value = 125;
if(global.ship017){
	global.value = 0;
}else{
	global.value = value; // Valor da nave
}