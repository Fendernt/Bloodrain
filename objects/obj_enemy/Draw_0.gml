/// @description 
draw_self();

healthbarhp=(hp/maxhp)*100;

draw_healthbar(x-8,y-22,x+8,y-25,healthbarhp,c_black,c_green,c_lime,0,1,1);