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


#region mouse check's
if(visible) {
	if(/* top */collision_rectangle(bleft+30,btop,bright-30,btop+40,o_mouse,1,0)) {
		top = true;
		right = false;
		bottom = false;
		left = false; 
	} else if(/*right*/collision_rectangle(bright,bbottom-30,bright-40,btop+30,o_mouse,1,0)){
		top = false;
		right = true;
		bottom = false;
		left = false;
	} else if(/*bottom*/collision_rectangle(bleft+30,bbottom,bright-30,bbottom-40,o_mouse,1,0)){
		top = false;
		right = false;
		bottom = true;
		left = false;
	} else if(/*left*/collision_rectangle(bleft,bbottom-30,bleft+40,btop+30,o_mouse,1,0)){
		top = false;
		right = false;
		bottom = false;
		left = true
	}
}
#endregion

if(top){
	image_index=1;
	global.weapon = 0;
	if(instance_exists(obj_enemy)) obj_enemy.damage = 1;
} else if (right) {
	image_index=2;
	global.weapon = 1;
	if(instance_exists(obj_enemy)) obj_enemy.damage=3;
} else if (bottom) {
	image_index=3;
	global.weapon = 2;
	if(instance_exists(obj_enemy)) obj_enemy.damage = 2;
} else if (left) {
	image_index=4
	global.weapon = 3;
	if(instance_exists(obj_enemy)) obj_enemy.damage = .5;
}