/// @description 
randomize();
depth = -10000;

posX = view_xport[0];
posY = view_yport[0];
posW = view_wport[0];
posH = view_hport[0];

fog = choose(spr_fog,spr_fog2,spr_fog3,spr_fog4);
var bk = layer_background_get_id("Fog")
layer_background_change(bk,fog);

alpha = 0.7;
//alpha = choose(0.05,0.1,0.15,0.2,0.25,0.3,0.35,0.4,0.45,0.5,0.55,0.6);