/// @description 
event_inherited();
//indexando nave usando no button aquire
ship = 17;
global.lvl_ship = 17;// Nivel da nave
//global.hp = 40;// vida inicial 10
global.max_life = 45; // maximo de vida
global.hp = global.max_life;
//global.atk_power = 38; // poder de atk
global.max_atk_power = 48; //Maximo atk power
//global.critical = 40; // Critico
global.max_critical = 47; // Maximo critical
//global.dexterity = 61; // Destreza 10
global.max_dexterity = 68;// Max destreza
//global.lvl_shoot = 22;// Nivel do tiro 1
global.max_lvl_shoot = 42; // Max do lvl do tiro 50
//fuel
global.fuel = gas.ship17;// Min 12000 Max 54148 sobe de 1028 para cada nave
global.max_fuel = global.fuel;
//fixo
global.moviment = 100; // movimentação da nave 10
number_skill_shoot = 3;
// Checando se ja tem a nave
value = 585;
if(global.ship033){
	global.value = 0;
}else{
	global.value = value; // Valor da nave
}