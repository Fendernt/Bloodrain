/// @description 

xx=view_xport[0]/2
xx2=view_xport[0]
yy=view_yport[0]

xxleft = view_xport[0]+120;
xxright = view_wport[0]-120;

yytop = view_hport[0]-200;
yybottom = view_hport[0]-100;

xx_left = (view_wport[0]/2)-300;
xx_right = (view_wport[0]/2)+300;

xx_ = view_wport[0]
xx2_ = view_wport[0]

//draw_text(300,20,"Selected: "+string(selected));

draw_set_alpha(alpha);


//PURPLE DMG LEFT TOP
draw_set_font(fnt_shop);
draw_set_halign(fa_middle);
draw_set_valign(fa_middle);

if(device_mouse_x_to_gui(0) >= xxleft-90 and device_mouse_x_to_gui(0) <= xxleft+90 and device_mouse_y_to_gui(0) >= yytop-30 and device_mouse_y_to_gui(0) <= yytop+30){
	draw_sprite_ext(s_button,1,xxleft,yytop,1.5,1.5,0,c_purple,1);
	draw_text_outlined(xxleft,yytop,"Purple DMG \n [Costs: "+string(global.purplecost)+"]",c_purple,c_white);
	
	if(mouse_check_button_pressed(mb_left)){
		
		if(global.totalpoints>=global.purplecost){
			global.totalpoints-=global.purplecost;
		
			global.purplecost = (global.purplecost*2.5)
			global.purplecost = round(global.purplecost);
		
			global.purpledmg+=global.purpleboost;
		}
	}
	
} else {
	draw_sprite_ext(s_button,0,xxleft,yytop,1.5,1.5,0,c_purple,1);
	draw_text_outlined(xxleft,yytop,"Purple DMG \n [Costs: "+string(global.purplecost)+"]",c_purple,c_white);	
}

//BLUE DMG LEFT BOTTOM

if(device_mouse_x_to_gui(0) >= xxleft-90 and device_mouse_x_to_gui(0) <= xxleft+90 and device_mouse_y_to_gui(0) >= yybottom-30 and device_mouse_y_to_gui(0) <= yybottom+30){
	draw_sprite_ext(s_button,1,xxleft,yybottom,1.5,1.5,0,c_aqua,1);
	draw_text_outlined(xxleft,yybottom,"Blue DMG \n [Costs: "+string(global.bluecost)+"]",c_aqua,c_white);
	
	if(mouse_check_button_pressed(mb_left)){
		
		if(global.totalpoints>=global.bluecost){
			global.totalpoints-=global.bluecost;
		
			global.bluecost = (global.bluecost*2.5)
			global.bluecost = round(global.bluecost);
		
			global.bluedmg+=global.blueboost;
		}
	}
	
} else {
	draw_sprite_ext(s_button,0,xxleft,yybottom,1.5,1.5,0,c_aqua,1);
	draw_text_outlined(xxleft,yybottom,"Blue DMG \n [Costs: "+string(global.bluecost)+"]",c_aqua,c_white);	
}

//ORANGE DMG RIGHT TOP

if(device_mouse_x_to_gui(0) >= xxright-90 and device_mouse_x_to_gui(0) <= xxright+90 and device_mouse_y_to_gui(0) >= yytop-30 and device_mouse_y_to_gui(0) <= yytop+30){
	draw_sprite_ext(s_button,1,xxright,yytop,1.5,1.5,0,c_orange,1);
	draw_text_outlined(xxright,yytop,"Orange DMG \n [Costs: "+string(global.orangecost)+"]",c_orange,c_white);
	
	if(mouse_check_button_pressed(mb_left)){
		
		if(global.totalpoints>=global.orangecost){
			global.totalpoints-=global.orangecost;
		
			global.orangecost = (global.orangecost*2.5)
			global.orangecost = round(global.orangecost);
		
			global.orangedmg+=global.orangeboost;
		}
	}
	
} else {
	draw_sprite_ext(s_button,0,xxright,yytop,1.5,1.5,0,c_orange,1);
	draw_text_outlined(xxright,yytop,"Orange DMG \n [Costs: "+string(global.orangecost)+"]",c_orange,c_white);	
}


//RED DMG RIGHT BOTTOM

if(device_mouse_x_to_gui(0) >= xxright-90 and device_mouse_x_to_gui(0) <= xxright+90 and device_mouse_y_to_gui(0) >= yybottom-30 and device_mouse_y_to_gui(0) <= yybottom+30){
	draw_sprite_ext(s_button,1,xxright,yybottom,1.5,1.5,0,c_red,1);
	draw_text_outlined(xxright,yybottom,"Red DMG \n [Costs: "+string(global.redcost)+"]",c_red,c_white);
	
	if(mouse_check_button_pressed(mb_left)){
		
		if(global.totalpoints>=global.redcost){
			global.totalpoints-=global.redcost;
		
			global.redcost = (global.redcost*2.5)
			global.redcost = round(global.redcost);
		
			global.reddmg+=global.redboost;
		}
	}
	
} else {
	draw_sprite_ext(s_button,0,xxright,yybottom,1.5,1.5,0,c_red,1);
	draw_text_outlined(xxright,yybottom,"Red DMG \n [Costs: "+string(global.redcost)+"]",c_red,c_white);	
}

/* not working
//Max mana

if(device_mouse_x_to_gui(0) >= xx_right-90 and device_mouse_x_to_gui(0) <= xx_right+90 and device_mouse_y_to_gui(0) >= yybottom-30 and device_mouse_y_to_gui(0) <= yybottom+30){
	draw_sprite_ext(s_button,1,xx_right,yybottom,1.5,1.5,0,c_blue,1);
	draw_text_outlined(xx_right,yybottom,"Mana Regen \n [Costs: "+string(global.manaregencost)+"]",c_blue,c_white);
	
	if(mouse_check_button_pressed(mb_left)){
		
		if(global.totalpoints>=global.manaregencost){
			global.totalpoints-=global.manaregencost;
		
			global.manaregencost = (global.manaregencost*2.5)
			global.manaregencost = round(global.manaregencost);
		
			global.manaregenamount+=global.manaregenboost;
		}
	}
	
} else {
	draw_sprite_ext(s_button,0,xx_right,yybottom,1.5,1.5,0,c_blue,1);
	draw_text_outlined(xx_right,yybottom,"Mana Regen \n [Costs: "+string(global.manaregencost)+"]",c_blue,c_white);	
}

//Mana regen

if(device_mouse_x_to_gui(0) >= xx_left-90 and device_mouse_x_to_gui(0) <= xx_left+90 and device_mouse_y_to_gui(0) >= yybottom-30 and device_mouse_y_to_gui(0) <= yybottom+30){
	draw_sprite_ext(s_button,1,xx_left,yybottom,1.5,1.5,0,c_blue,1);
	draw_text_outlined(xx_left,yybottom,"Max Mana \n [Costs: "+string(global.maxmanacost)+"]",c_blue,c_white);
	
	if(mouse_check_button_pressed(mb_left)){
		
		if(global.totalpoints>=global.maxmanacost){
			global.totalpoints-=global.maxmanacost;
		
			global.maxmanacost = (global.maxmanacost*2.5)
			global.maxmanacost = round(global.maxmanacost);
		
			global.maxmana+=global.manaboost;
		}
	}
	
} else {
	draw_sprite_ext(s_button,0,xx_left,yybottom,1.5,1.5,0,c_blue,1);
	draw_text_outlined(xx_left,yybottom,"Max Mana \n [Costs: "+string(global.maxmanacost)+"]",c_blue,c_white);	
}
*/
