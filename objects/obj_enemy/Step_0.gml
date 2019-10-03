

#region Spawning

if(spawned=false){
	if(grid_place_meeting(self,o_level.grid_) || place_meeting(x,y,o_player)){
			x = random(room_width);
            y = random(room_height);
	} else {
		spawned=true;	
		visible=true;
	}
}

#endregion


#region Damage

if(collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_top-12,o_explosion,0,0) && exploded=false){
	hp-=2;
	exploded=true;
	alarm[2]=80;
	if(hp<=0){
		instance_destroy();	
		global.points +=100;
	} else if (hp<=2 && !headless){
		sprite_index = spr_enemy_blood;	
	}
	
}


if(collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_top-12,o_spell,0,0)){
	
	if(collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_top-12,o_spell3,0,0)){
		instance_create_layer(x,y,"Instances",o_explosion);
	}
	
	
	hp-=damage;
	
	if(collision_rectangle(bbox_left,bbox_top-14,bbox_right,bbox_top-7,o_spell,0,0) && !headless){
		headless=true;	
	}
	
	
	if(hp<=0){
		instance_destroy();	
		global.points +=100;
	} else if (hp=1 && !headless){
		sprite_index = spr_enemy_blood;	
	} else if (headless && !isheadless){
		isheadless=true;
		sprite_index = spr_enemy_headless;	
		var bullet = collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_top-13,o_spell,0,0);
		head = instance_create_layer(x,y-5,"Instances",o_enemy_head);
		with(head) {
			direction = bullet.direction;
			speed=.7;;
			image_angle = other.image_angle;
		}
		
		
	}
	
	var bullet = collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_top-13,o_spell,0,0);
	with(bullet) instance_destroy();
	instance_create_layer(x,y,"blood",o_blood);
	
}

if(collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_top-13,o_player,0,0)&&Attacked=false&&!global.paused){
	Attacked=true;
	alarm[1] = attackCooldown;
	player = collision_rectangle(bbox_left,bbox_bottom,bbox_right,bbox_top-13,o_player,0,0);
	with(player){
		hp-=1;
		damage_advanced_healthbar(20);
		instance_create_layer(x,y,"blood",o_blood);
	}

	
}


#endregion


#region Movement

if(global.paused) {
	image_speed=0;
} else {
	image_speed=.5;
}

//Pathfinding (sucks a bit)
if(distance_to_object(o_player) <= 200 && global.paused=false){
if(!path_exists(path)) {
	path = path_add();
}
mp_potential_path_object(path, o_player.x, o_player.y, 1, 4, o_collidable);
path_start(path, 1, 0, 0);
wander = false;
} else {
	if(path_exists(path)){
		path_delete(path);	
		wander = true;
	}
}

//Looks
if(o_player.x > x){
	image_xscale =1;	
} else if (o_player.x < x){
	image_xscale =-1;	
}


#endregion


/**/