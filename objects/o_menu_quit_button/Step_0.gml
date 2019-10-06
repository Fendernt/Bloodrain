/// @description 

if(place_meeting(x,y,o_mouse)){
	image_index=1
	
	if(mouse_check_button_pressed(mb_left)){
		game_end();	
	}
} else{
	image_index=0;	
}