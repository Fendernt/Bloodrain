/// @description 


if(image_alpha<1){
	image_alpha+=0.05;	
}


if(mouse_over()){
	image_index=1
	
	if(mouse_check_button_pressed(mb_left)){
		
		if(totalpoints>=cost){
			global.totalpoints-=global.purplecost;
		
			global.purplecost = (global.purplecost*2.5)
			global.purplecost = round(global.purplecost);
		
			global.purpledmg+=boost;
		}
	}
} else{
	image_index=0;	
}