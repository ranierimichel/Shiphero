/// @description Atirando
// Atirando
// Alternando tipo de tiro
randomize();
if(change == 0){
	change = 1;
} else {
	change = 0;
}
var _flag = scr_shootlvlcombo(); // lvl do tiro

switch (_flag) {
	case 1:
	case 2:
	case 3:
	case 4:
	case 5:
	case 6:
	case 7:
	case 8:
	case 9:
	case 10:
		scr_shooting1_10();
		break;
	case 11:
	case 12:
	case 13:
	case 14:
	case 15:
	case 16:
	case 17:
	case 18:
	case 19:
	case 20:
		scr_shooting11_20(change);
		break;
	case 21:
	case 22:
	case 23:
	case 24:
	case 25:
	case 26:
	case 27:
	case 28:
	case 29:
	case 30:
		scr_shooting21_30(change);
		break;
	case 31:
	case 32:
	case 33:
	case 34:
	case 35:
	case 36:
	case 37:
	case 38:
	case 39:
	case 40:
		scr_shooting31_40(change);
		break;
	case 41:
	case 42:
	case 43:
	case 44:
	case 45:
	case 46:
	case 47:
	case 48:
	case 49:
	case 50:
		scr_shooting41_50(change);
		break;
	case 51:
	case 52:
	case 53:
	case 54:
	case 55:
	case 56:
	case 57:
	case 58:
	case 59:
	case 60:
		scr_shooting51_60(change);
		break;
	case 61:
	case 62:
	case 63:
	case 64:
	case 65:
	case 66:
	case 67:
	case 68:
	case 69:
	case 70:
		scr_shooting61_70(change);
		break;
	case 71:
	case 72:
	case 73:
	case 74:
	case 75:
	case 76:
	case 77:
	case 78:
	case 79:
	case 80:
		scr_shooting71_80(change);
		break;
	case 81:
	case 82:
	case 83:
	case 84:
	case 85:
	case 86:
	case 87:
	case 88:
	case 89:
	case 90:
		scr_shooting81_90(change);
		break;
	case 91:
	case 92:
	case 93:
	case 94:
	case 95:
	case 96:
	case 97:
	case 98:
	case 99:
	case 100:
		scr_shooting91_100(change);
	break;
}
	


//if(instance_exists(obj_button_control)){
//	if(!obj_button_control.dragging){
//		switch (_flag) {
//		    case 1:
//		    case 2:
//		    case 3:
//		    case 4:
//		    case 5:
//		    case 6:
//		    case 7:
//		    case 8:
//		    case 9:
//		    case 10:
//		        scr_shooting1_10();
//		        break;
//		    case 11:
//		    case 12:
//		    case 13:
//		    case 14:
//		    case 15:
//		    case 16:
//		    case 17:
//		    case 18:
//		    case 19:
//		    case 20:
//		        scr_shooting11_20(change);
//		        break;
//		    case 21:
//		    case 22:
//		    case 23:
//		    case 24:
//		    case 25:
//		    case 26:
//		    case 27:
//		    case 28:
//		    case 29:
//		    case 30:
//		        scr_shooting21_30(change);
//		        break;
//		    case 31:
//		    case 32:
//		    case 33:
//		    case 34:
//		    case 35:
//		    case 36:
//		    case 37:
//		    case 38:
//		    case 39:
//		    case 40:
//		        scr_shooting31_40(change);
//		        break;
//		    case 41:
//		    case 42:
//		    case 43:
//		    case 44:
//		    case 45:
//		    case 46:
//		    case 47:
//		    case 48:
//		    case 49:
//		    case 50:
//		        scr_shooting41_50(change);
//		        break;
//		    case 51:
//		    case 52:
//		    case 53:
//		    case 54:
//		    case 55:
//		    case 56:
//		    case 57:
//		    case 58:
//		    case 59:
//		    case 60:
//		        scr_shooting51_60(change);
//		        break;
//		    case 61:
//		    case 62:
//		    case 63:
//		    case 64:
//		    case 65:
//		    case 66:
//		    case 67:
//		    case 68:
//		    case 69:
//		    case 70:
//		        scr_shooting61_70(change);
//		        break;
//		    case 71:
//		    case 72:
//		    case 73:
//		    case 74:
//		    case 75:
//		    case 76:
//		    case 77:
//		    case 78:
//		    case 79:
//		    case 80:
//		        scr_shooting71_80(change);
//		        break;
//		    case 81:
//		    case 82:
//		    case 83:
//		    case 84:
//		    case 85:
//		    case 86:
//		    case 87:
//		    case 88:
//		    case 89:
//		    case 90:
//		        scr_shooting81_90(change);
//		        break;
//		    case 91:
//		    case 92:
//		    case 93:
//		    case 94:
//		    case 95:
//		    case 96:
//		    case 97:
//		    case 98:
//		    case 99:
//		    case 100:
//		        scr_shooting91_100(change);
//		        break;
//		}
	
//	} else {
//		alarm[0] = true;
//	}
//}

