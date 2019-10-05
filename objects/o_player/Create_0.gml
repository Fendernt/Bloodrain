/// @description 

x_speed_ = 0;
y_speed_ = 0;
max_speed_ = 2;
acceleration_ = 0.5;
dead=false;
explosionhit=false;
flash = 0;

bk = layer_background_get_id("Fog");

create_advanced_healthbar()

hp=5;

instance_create_layer(x,y,"Instances",o_camera);
instance_create_layer(x,y,"Weapons",o_wand);
