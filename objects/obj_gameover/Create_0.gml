/// @description 
global.paused = true;
global.gameover=true;
global.totalpoints += global.points;
alpha=0;

instance_create_layer(x,y,"HUD",o_shop);


instance_deactivate_object(o_player);
instance_deactivate_object(o_wand);
instance_deactivate_object(obj_minimap);
