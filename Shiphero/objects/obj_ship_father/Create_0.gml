/// @description 
event_inherited();
randomize();
// Rotação da nave diminuindo quando lazer
rotation = 5;

image_speed = 0;

// Room start apontar para esquerta topo
if(room == rm_start){
	image_angle = 90;
	image_alpha = .8;
}

// skill shoot
double_shoot = global.double_shoot;

// Inicializando combo
global.combo = 1;

// Inicializando o tempo
global.time = 0;

// guardar status da nave. setando nos power ups.
currentatkpower = 0;
currentcritical = 0;
currentdexterity = 0;
currentlvlshoot = 0;

// Guardando se esta de PU
puactivated = false;

////setando status inicial
global.hp = 10;// vida inicial 10
global.atk_power = 10; // poder de atk
global.critical = 10; // Critico
global.dexterity = 10; // Destreza 10
global.lvl_shoot = 1;// Nivel do tiro 1

// Carregando o tanto que ganha no reward add
scr_rewarded_multiplier();

//fixo
global.moviment = 100; // movimentação da nave 10

//dash
dash = false;
//lazer
lazer = false;
//Explosion
explode = false;


//classe powerUp prioritatio 1-6 alarm[0] obj_game
//classe = irandom_range(1, 6);

// Tamanho da nave
image_xscale = .2;
image_yscale = .2;

// Alternar tipo de tiro
change = 0;
// inicializando variavel do valor da nave
value = 0;

// shield para quando der dash
shield = 0;

// mira
//if(room == rm_game){
//	aim = true;
//}

// Atirando
alarm[0] = true;

// Jogado
jogado = false;

//nave
ship = 0;

// Cores combo e barra do tiro
global.hue1 = irandom(255);
global.hue2 = irandom(255);
global.hue3 = irandom(255);
global.hue4 = irandom(255);
global.hue5 = irandom(255);
global.hue6 = irandom(255);
global.hue7 = irandom(255);

//Animação
//direc_start = image_angle;
//direc_end = image_angle;

virandoEsquerda = 0;
virandoDireita = 0;
x_start = 0;
y_start = 0;
x_end = 0;
y_end = 0;
movimentando = 0;
curveAsset = AnimCurve_Ships;
curvePosition = .4;
curveSpeed = .01;

// Criando fundo sci-fi
//if(room != rm_start){
//	if(!instance_exists(obj_analog_bottom)){
//		instance_create_layer(x,y,"Buttons",obj_analog_bottom);
//	}
//}