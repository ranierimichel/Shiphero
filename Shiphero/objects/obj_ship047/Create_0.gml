/// @description 
event_inherited();
//indexando nave usando no button aquire
ship = 28;
global.lvl_ship = 28;// Nivel da nave
//global.hp = 65;// vida inicial 10
global.max_life = 70; // maximo de vida
global.hp = global.max_life;
//global.atk_power = 67; // poder de atk
global.max_atk_power = 72; //Maximo atk power
//global.critical = 67; // Critico
global.max_critical = 72; // Maximo critical
//global.dexterity = 67; // Destreza 10
global.max_dexterity = 71;// Max destreza
//global.lvl_shoot = 45;// Nivel do tiro 1
global.max_lvl_shoot = 75;// Max do lvl do tiro 50
//fuel
global.fuel = gas.ship28;// Min 12000 Max 54148 sobe de 1028 para cada nave
global.max_fuel = global.fuel;
//fixo
global.moviment = 100; // movimentação da nave 10
number_skill_shoot = 4;
// Checando se ja tem a nave
value = 1385;
if(global.ship047){
	global.value = 0;
}else{
	global.value = value; // Valor da nave
}