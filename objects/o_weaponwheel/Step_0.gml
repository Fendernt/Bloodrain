/// @description

x = o_camera.x;
y = o_camera.y;



if(keyboard_check(ord("Q"))&&!global.paused){
	global.weaponwheel=true;	
} else if (!keyboard_check(ord("Q")) || global.paused){
	global.weaponwheel=false;	
}


if(global.weaponwheel){
	visible=true	
} else if (!global.weaponwheel){
	visible=false;
}	