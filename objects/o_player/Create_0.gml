/// @description 
x_speed_ = 0;
y_speed_ = 0;
max_speed_ = 2;
acceleration_ = 0.5;
global.points=0;

instance_create_layer(x,y,"Instances",o_camera);
instance_create_layer(x,y,"HUD",o_wand);
