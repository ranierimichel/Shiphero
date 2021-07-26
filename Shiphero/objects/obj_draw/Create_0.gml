/// @description Inicializando

// Setando a font
draw_set_font(fnt_text);

// ------------------ Room start ------------------
// setando variaveis helth bar
bargrayHP = 100; //global.max_life;
//bargrayAtkPower = 100; // global.max_atk_power;
//bargraycritical = 100; //global.max_critical;
//bargraydexterity = 100; //global.max_dexterity;
//bargrayLvlShoot = 100; //global.max_lvl_shoot;
//bargrayfuel = 100;

// propriedades do obj
xcentro = room_width/2;
//ycentro = room_height/2;

// sprites PU position
//xspr_PU_hp = xcentro-120;
//yspr_PU_hp = ycentro-340;
//xspr_PU_atkpower = xcentro-120;
//yspr_PU_atkpower = ycentro-310;
//xspr_PU_critical = xcentro-120;
//yspr_PU_critical = ycentro-280;
//xspr_PU_dexterity = xcentro-120;
//yspr_PU_dexterity = ycentro-250;
//xspr_PU_lvlshoot = xcentro-120;
//yspr_PU_lvlshoot = ycentro-220;
//xspr_PU_fuel = xcentro-120;
//yspr_PU_fuel = ycentro-190;

// bar PU positions
//x1bar_hp = xcentro-100;
//x2bar_hp = xcentro-100;
//y1bar_hp = ycentro-350;
//y2bar_hp = ycentro-330;
//x1bar_atkpower = xcentro-100;
//x2bar_atkpower = xcentro-100;
//y1bar_atkpower = ycentro-320;
//y2bar_atkpower = ycentro-300;
//x1bar_critical = xcentro-100;
//x2bar_critical = xcentro-100;
//y1bar_critical = ycentro-290;
//y2bar_critical = ycentro-270;
//x1bar_dexterity = xcentro-100;
//x2bar_dexterity = xcentro-100;
//y1bar_dexterity = ycentro-260;
//y2bar_dexterity = ycentro-240;
//x1bar_lvlshoot = xcentro-100;
//x2bar_lvlshoot = xcentro-100;
//y1bar_lvlshoot = ycentro-230;
//y2bar_lvlshoot = ycentro-210;
//x1bar_fuel = xcentro-100;
//x2bar_fuel = xcentro-100;
//y1bar_fuel = ycentro-200;
//y2bar_fuel = ycentro-180;

// text PU
//xtext_maxhp = xcentro+10;
//ytext_maxhp = ycentro-360;
//xtext_maxatkpower = xcentro+10;
//ytext_maxatkpower = ycentro-330;		
//xtext_maxcritical = xcentro+10;
//ytext_maxcritical = ycentro-300;
//xtext_maxdexterity = xcentro+10;
//ytext_maxdexterity = ycentro-270;
//xtext_maxlvlshoot = xcentro+10;
//ytext_maxlvlshoot = ycentro-240;
//xtext_maxfuel = xcentro+10;
//ytext_maxfuel = ycentro-210;

// gold
//xspr_gem = room_width-100;//xcentro-40;
//yspr_gem = ycentro+120;
//xtext_gem = room_width-80;
//ytext_gem = ycentro+100;

// instagram
//ytext_insta1 = ycentro-300;
//ytext_insta2 = ycentro-225;
//ytext_insta3 = ycentro-175;

// ------------------ Room game ------------------

//Sprites PU
//topright_position = room_width - 100;
//xspr_topright_PU = topright_position - 20;
//yspr_topright_PU_hp = 30;
//yspr_topright_PU_atkpower = 60;
//yspr_topright_PU_critical = 90;
//yspr_topright_PU_dexterity = 120;
//yspr_topright_PU_lvlshoot = 150;
//yspr_topright_PU_fuel = 180;

//bar PU positions
//y1bar_topright_hp = 20;
//y2bar_topright_hp = 40;
//y1bar_topright_atkpower = 50;
//y2bar_topright_atkpower = 70;
//y1bar_topright_critical = 80;
//y2bar_topright_critical = 100;
//y1bar_topright_dexterity = 110;
//y2bar_topright_dexterity = 130;
//y1bar_topright_lvlshoot = 140;
//y2bar_topright_lvlshoot = 160;
//y1bar_topright_fuel = 170;
//y2bar_topright_fuel = 190;

//bar shooting
shoot = 0;
//bar dash
dash = 0;

// Colour bar combo
//colour_bar_combo = make_color_hsv(irandom_range(0,255),255,255);

// alpha
alpha = .6;

// contar pts na room game_over
count = 0;