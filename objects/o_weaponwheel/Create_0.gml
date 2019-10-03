/// @description 
image_speed=0;
depth = -30000
visible=false;
global.weaponwheel=true;

image_xscale = 0.8;
image_yscale = 0.8;

top=true;
bottom=false;
right=false;
left=false; 

btop = bbox_top;
bright = bbox_right;
bleft = bbox_left;
bbottom = bbox_bottom;

global.weapon = 0;




instance_create_layer(x,y,"HUD",o_mouse);