/// @description Insert description here
// You can write your code in this editor
randomize();
//variavel true desenha parts dos planetas
parts = false; // setando no script scr_selectSpritePlanet				
direction = 305;

speed = .5;

// Selecionando Sprite
scr_selectSpritePlanet();

// setando as cores
scr_particles_collors();

if(parts){	
	
	part01 = choose(spr_parts101, spr_parts102, spr_parts103, spr_parts104, spr_parts105, spr_parts106, spr_parts107, spr_parts108, spr_parts109, spr_parts110,
					spr_parts111, spr_parts112, spr_parts113, spr_parts114,  spr_parts115, spr_parts116, spr_parts117,  spr_parts118, spr_parts119, spr_parts120,
					spr_parts121, spr_parts122, spr_parts123, spr_parts124,  spr_parts125, spr_parts126, spr_parts127,  spr_parts128, spr_parts129, spr_parts130);
					
	part02 = choose(spr_parts201, spr_parts202, spr_parts203, spr_parts204, spr_parts205, spr_parts206, spr_parts207, spr_parts208, spr_parts209, spr_parts210,
					spr_parts211, spr_parts212, spr_parts213, spr_parts214,  spr_parts215, spr_parts216, spr_parts217,  spr_parts218, spr_parts219, spr_parts220,
					spr_parts221, spr_parts222, spr_parts223, spr_parts224,  spr_parts225, spr_parts226, spr_parts227,  spr_parts228, spr_parts229, spr_parts230);
					
	part03 = choose(spr_parts301, spr_parts302, spr_parts303, spr_parts304, spr_parts305, spr_parts306, spr_parts307, spr_parts308, spr_parts309, spr_parts310,
					spr_parts311, spr_parts312, spr_parts313, spr_parts314,  spr_parts315, spr_parts316, spr_parts317,  spr_parts318, spr_parts319, spr_parts320,
					spr_parts321, spr_parts322, spr_parts323, spr_parts324,  spr_parts325, spr_parts326, spr_parts327,  spr_parts328, spr_parts329, spr_parts330);
					
	part04 = choose(spr_parts401, spr_parts402, spr_parts403, spr_parts404, spr_parts405, spr_parts406, spr_parts407, spr_parts408, spr_parts409, spr_parts410,
					spr_parts411, spr_parts412, spr_parts413, spr_parts414,  spr_parts415, spr_parts416, spr_parts417,  spr_parts418, spr_parts419, spr_parts420,
					spr_parts421, spr_parts422, spr_parts423, spr_parts424,  spr_parts425, spr_parts426, spr_parts427,  spr_parts428, spr_parts429, spr_parts430);					

}


// Setando achieviments
if(instance_exists(obj_googleAchievements)){
	obj_googleAchievements.alarm[0] = room_speed;	
}
 
