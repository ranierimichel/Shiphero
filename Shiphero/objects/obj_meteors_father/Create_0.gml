/// @description 
randomize();
// tamanho setando em cada meteoro
scale = 0;

// Mira
//selectmeteor = false;

// Setando velocidade
//if(global.lvl_map < 100){
//	speedmax = 1+(global.lvl_map*.03);
//	speed = random_range(1,speedmax);
//} else {
//	speedmax = 5;
//	speed = random_range(1,speedmax);
//}
speed = random_range(.1,5);

// Ativar colisão meteoro
collision_meteors = true;
// Colisão com a nave
collision_ship = false;
// Aativando colisão apos 3 segundos
alarm[1] = room_speed * 3;
alarm[2] = room_speed * 3;

// Atribuindo direção
direction = random_range(220,320);

// Rodar
rodar = random_range(2,10);

/*// variavel para controlar dano por segundo
damage_on = false;*/

// iniciando pequeno
image_xscale = .01;
image_yscale = .01;

//// Selecionando meteoro de acordo com o planeta no fundo
//switch (global.planet) {
//    case "Sun":
//        image_index = 0;
//    break;
//    case "Mercury":
//    case "Moon":
//        image_index = 1;
//    break;
//    case "Venus":
//        image_index = 2;
//    break;
//    case "Earth":
//        image_index = 3;
//    break;
//    case "Mars":
//        image_index = 2;
//    break;
//    case "Jupiter":
//        image_index = 4;
//    break;
//    case "Saturn":
//        image_index = 5;
//    break;
//    case "Uranus":
//        image_index = 6;
//    break;
//    case "Neptune":
//        image_index = 7;
//	break;
//    case "Some where in space":
//        image_speed = 1;
//    break;
//}

