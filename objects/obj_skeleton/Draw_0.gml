/// @description 
draw_self();

healthbarhp=(hp/maxhp)*100;

draw_healthbar(x-8,y-18,x+8,y-21,healthbarhp,c_black,c_green,c_lime,0,1,1);