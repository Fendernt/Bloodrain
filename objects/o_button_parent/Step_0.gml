/// @description 
hover = mouse_over();
clicked = mouse_check_button_pressed(mb_left);

if(alpha<1){
	alpha+=0.05;
}

if(hover){
	image_index=1;	
} else if (!hover){
	image_index=0;	
}