/// @description

// Se for critico ficar um pouco maior
if(critical){
	scale += .01;
	alpha -= .01;
} else {
	alpha -= .03;
	scale += .005;
}

if(alpha <= 0){
	instance_destroy();
}
