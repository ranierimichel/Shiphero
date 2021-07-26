// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
///@param lvlskillmax8

function scr_skill_collor1(argument0){	
	//start cores
	switch (argument0) {
	    case 1:			
			return c_lime;
	    break;	    
	    case 2:			
			return c_blue;
	    break;	
	    case 3:			
			return c_orange;
	    break;	
	    case 4:			
			return c_purple;
	    break;
	    case 5:			
			return c_red;
	    break;
	    case 6:			
			return c_yellow;
	    break;
	    case 7:			
			return c_aqua;
	    break;
	    default:			
			return choose(c_lime,c_blue,c_orange,c_purple,c_red,c_yellow,c_aqua);
	    break;
	}	
}