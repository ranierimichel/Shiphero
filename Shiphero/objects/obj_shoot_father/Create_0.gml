/// @description Criação missile

// Skills shoot
rebater = global.rebater; // quantidade de vezes que vai rebater
rebater_disponivel = global.rebater >= 1 ? true : false;

atravessar_tela = global.atravessar_tela;

destroy_new_shoot = global.destroy_new_shoot;

global.shoot = scr_shootCadence(); // min 10 max 120
if(instance_exists(obj_draw)){
	obj_draw.shoot = 0;	
}

//wave
from = 0;
to = 0;
duration = 1;
offset = 0;

// Variavel para seguir
follow = 0; // debug voltar para 0

//velocidade do tiro
speed_shoot = 1;
alarm[0] = true;

// tipo de tiro
shoot = 0;

// Direção do tiro
direction = obj_ship_father.image_angle;
// Angulo do tiro
image_angle = obj_ship_father.image_angle;
// Quando acertar critico

// dano
atkdamage = global.atk_power*2;
damage = 0;

// setando se é critico
critical = scr_critical(global.critical+(global.combo*10));

// dano critico
critical_damage = 0;

// Efeito
//inicializando a cor
//if(instance_exists(obj_draw)){	
//	var _color = obj_draw.colour_bar_combo;
//	//trocando a cor do efeito no tiro
//	part_type_color1(global.particle_shoots,_color);
//	part_type_color1(global.particle_shoots_explosion,_color);
//} 

// atualizando alpha do efeito
var _alpha1 = global.atk_power * .01;
var _alpha2 = global.combo/3;
part_type_alpha3(global.particle_shoots, _alpha1, _alpha2, _alpha2);

//follow
// iniciando menor distancia
lessdist = 9999;
// x e y dos meteoros inicializando
xx = 0;
yy = 0;

