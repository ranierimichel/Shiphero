/// @description 
event_inherited();
//indexando nave usando no button aquire
ship = 27;
global.lvl_ship = 27;// Nivel da nave
//global.hp = 55;// vida inicial 10
global.max_life = 65; // maximo de vida
global.hp = global.max_life;
//global.atk_power = 100; // poder de atk
global.max_atk_power = 100; //Maximo atk power
//global.critical = 56; // Critico
global.max_critical = 63; // Maximo critical
//global.dexterity = 55; // Destreza 10
global.max_dexterity = 62;// Max destreza
//global.lvl_shoot = 35;// Nivel do tiro 1
global.max_lvl_shoot = 60;// Max do lvl do tiro 50
//fuel
global.fuel = gas.ship27;// Min 12000 Max 54148 sobe de 1028 para cada nave
global.max_fuel = global.fuel;
//fixo
global.moviment = 100; // movimentação da nave 10
number_skill_shoot = 4;
// Checando se ja tem a nave
value = 1305;
if(global.ship046){
	global.value = 0;
}else{
	global.value = value; // Valor da nave
}