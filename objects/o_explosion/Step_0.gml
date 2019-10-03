/// @description 
if(image_index>=2){
	image_speed=0;
	fadeout=true;
}

if(fadeout=true){
	image_alpha-=0.02;	
}

if(image_alpha<=0){
	instance_destroy();	
}