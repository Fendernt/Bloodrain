/// @description 
if(alpha<1){
	alpha+=0.02;	
}

var bk = layer_background_get_id("Darkness");
var alpha_ = layer_background_get_alpha(bk);

if(layer_background_get_alpha(bk) < 1){
	alpha_ += 0.02;
	layer_background_alpha(bk,alpha_)
}