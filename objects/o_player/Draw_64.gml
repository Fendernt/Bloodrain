/// @description 
draw_set_alpha(1);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_left);

draw_set_font(fnt_hud);
if(!global.gameover) draw_text_outlined(10,10,"Points: "+string(global.points),c_white,c_black);



//Healthbar

viewX = view_xport[0]+10;
viewY = view_yport[0];
viewW = view_wport[0];
viewH = view_hport[0]+7;

//draw_sprite_ext(spr_heart,0,230,view_hport[0]-22.5,3,3,0,c_white,1);
//draw_advanced_healthbar(10,view_hport[0]-10,210,view_hport[0]-35, c_black,c_red,c_green,0,1,1,c_yellow);
//x,y,x2,y2,back color,min color,max color,direction,showback,showborder,lose color


draw_advanced_healthbar(viewX+90,viewH-75,viewX+290,viewH-50,c_black,c_red,c_green,0,1,1,c_yellow);
draw_sprite_ext(spr_heart,0,viewX+100,viewH-62.5,2,2,0,c_white,1);

with(o_wand){
	viewX = view_xport[0]+10;
	viewY = view_yport[0];
	viewW = view_wport[0];
	viewH = view_hport[0]+7;
	
	draw_advanced_healthbar(viewX+90,viewH-40,viewX+290,viewH-15,c_black,c_navy,c_blue,0,1,1,c_aqua);
	draw_sprite_ext(spr_mana,0,viewX+100,viewH-27.5,2,2,0,c_white,1);
}


draw_sprite_ext(spr_player_hud,0,viewX+40,viewH-55,2,2,0,c_white,1);