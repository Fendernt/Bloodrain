/// @description 
draw_set_alpha(alpha);
draw_set_font(fnt_hud);
draw_set_halign(fa_left);
draw_set_valign(fa_left);
draw_sprite_stretched_ext(spr_gameover,0,view_xport[0],view_yport[0]-60,view_wport[0],view_hport[0]-60,c_white,1);


draw_text_outlined(10,20,"Total points: "+string(global.totalpoints),c_white,c_black);

draw_set_valign(fa_middle);
draw_set_halign(fa_middle);
draw_text_outlined(view_wport[0]/2,20,"Points: "+string(global.points),c_white,c_black);

draw_set_halign(fa_right);
draw_set_valign(fa_left);
draw_text_outlined(view_wport[0]-10,20,"Total plays: "+string(global.plays),c_white,c_black);



draw_set_halign(fa_middle);
draw_set_valign(fa_middle);
draw_text_outlined(room_width/2,room_height-100,"Press R to restart!",c_red,c_black);

