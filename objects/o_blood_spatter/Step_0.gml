/// @description 
if(global.paused == true) exit;
if(image_index!=7) exit;

if(fadeout=true){
image_alpha-=0.005;	
}


if(image_alpha<=0){
	instance_destroy();	
}