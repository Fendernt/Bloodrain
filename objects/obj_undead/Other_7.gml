/// @description 
if(sprite_index=s_undead_atck || sprite_index=s_undead_headless_atck) {
	if(attacking=true){
			attacking=false;
			if(!isheadless) sprite_index=s_undead;
			if(headless) sprite_index=s_undead_headless;
	}
}