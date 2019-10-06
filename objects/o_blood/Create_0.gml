/// @description 
image_speed=0;
image_index=0;

alarm[0]=30;
fadeout=false;

image_size = choose(0.5,0.6,0.7,0.8,0.9,1);

image_alpha=choose(0.5,0.6,0.7,0.8);

image_xscale = image_size;
image_yscale = image_size;


repeat (3) instance_create_layer(x+random_range(-12,12),y+random_range(-12,12),"blood",o_blood_spatter);


alarm[1]=room_speed*90;