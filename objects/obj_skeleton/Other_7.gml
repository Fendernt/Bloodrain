/// @description 
if(sprite_index=spr_skeleton_atck || sprite_index=spr_skeleton_headless_attck){
	if(attacking=true){
		attacking=false;
		if(!isheadless) sprite_index=spr_skeleton;
		if(isheadless) sprite_index=spr_skeleton_headless;
	}
}