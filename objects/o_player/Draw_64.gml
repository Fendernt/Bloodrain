/// @description 
draw_set_alpha(1);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_left);


draw_text_outlined(10,10,"Points: "+string(global.points),c_white,c_black);
draw_advanced_healthbar(10,view_hport[0]-10,210,view_hport[0]-35, c_black,c_red,c_green,0,1,1,c_yellow);
//x,y,x2,y2,back color,min color,max color,direction,showback,showborder,lose color
