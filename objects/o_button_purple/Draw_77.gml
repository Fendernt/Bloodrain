/// @description 
draw_self();

draw_set_alpha(1);

draw_set_font(fnt_shop);
draw_set_valign(fa_middle);
draw_set_halign(fa_middle);

draw_text_outlined(x,y-10,"Purple Dmg [cost: "+string(global.purplecost)+"]",c_purple,c_white);
draw_text_outlined(x,y+10,"Current: "+string(global.purpledmg)+" | next: "+string((global.purpledmg+boost)),c_purple,c_white);