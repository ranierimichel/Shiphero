/// @description 
event_inherited();
//indexando nave usando no button aquire
ship = 19;
global.lvl_ship = 19;// Nivel da nave
//global.hp = 40;// vida inicial 10
global.max_life = 45; // maximo de vida
global.hp = global.max_life;
//global.atk_power = 39; // poder de atk
global.max_atk_power = 47; //Maximo atk power
//global.critical = 80; // Critico
global.max_critical = 88; // Maximo critical
//global.dexterity = 39; // Destreza 10
global.max_dexterity = 47;// Max destreza
//global.lvl_shoot = 23;// Nivel do tiro 1
global.max_lvl_shoot = 43; // Max do lvl do tiro 50
//fuel
global.fuel = gas.ship19;// Min 12000 Max 54148 sobe de 1028 para cada nave
global.max_fuel = global.fuel;
//fixo
global.moviment = 100; // movimentação da nave 10
number_skill_shoot = 3;
// Checando se ja tem a nave
value = 705;
if(global.ship035){
	global.value = 0;
}else{
	global.value = value; // Valor da nave
}