

#region Spawning
//Checking if its not spawning inside a wall
while(collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,o_collidable,1,1)&&spawned=false){
	
	x = random_range(0,room_width)
	y = random_range(0,room_height)
}


if(!collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,o_collidable,1,1)&&spawned=false){
	spawned=true;	
}
#endregion


#region Damage
if(collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_top-13,o_spell,0,0)){
	hp-=1;
	
	bullet = collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_top-13,o_spell,0,0);
	with(bullet) instance_destroy();
	

	if(hp<=0){
		instance_destroy();	
		global.points +=100;
	}
}
#endregion


#region Movement

//Pathfinding (sucks a bit)
mp_potential_path_object(path, o_player.x, o_player.y, 1, 4, o_collidable);
path_start(path, 1, 0, 0);

//Looks
if(o_player.x > x){
	image_xscale =1;	
} else if (o_player.x < x){
	image_xscale =-1;	
}

#endregion



