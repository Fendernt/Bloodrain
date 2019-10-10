
if(!instance_exists(o_player)) exit;
#region Spawning

if(spawned=false){
	if(grid_place_meeting(self,o_level.grid_) || place_meeting(x,y,o_player) && abs(x-o_player.x) < 64 && abs(y-o_player.y) < 64){
			x = random(room_width);
            y = random(room_height);
	} else {
		spawned=true;	
		visible=true;
	}
}

#endregion


#region Damage

if(collision_rectangle(bbox_left+22,bbox_bottom-7,bbox_right-20,bbox_bottom-32,o_explosion,0,0) && exploded=false){
	hp-=global.reddmg;
	exploded=true;
	alarm[2]=100;
	if(hp<=0){
		instance_destroy();	
		global.points +=400;
	}
	
}


if(collision_rectangle(bbox_left+22,bbox_bottom-7,bbox_right-20,bbox_bottom-32,o_spell,0,0)){
	
	if(collision_rectangle(bbox_left+22,bbox_bottom-7,bbox_right-20,bbox_bottom-32,o_spell3,0,0)){
		instance_create_layer(x,y,"Instances",o_explosion);
	}
	
	hp-=global.damage;
	
	
	if(collision_rectangle(bbox_left+22,bbox_bottom-24,bbox_right-20,bbox_bottom-32,o_spell,0,0) && !headless){
		headless=true;	
	}
	
	
	if(hp<=0){
		instance_destroy();	
		global.points +=400;
	} 
	if (headless && !isheadless && sprite_index != spr_enemy_blood){
		isheadless=true;
		sprite_index = s_undead_headless;	
		var bullet = collision_rectangle(bbox_left+22,bbox_bottom-24,bbox_right-20,bbox_bottom-32,o_spell,0,0);
		head = instance_create_layer(x,y-5,"Instances",o_undead_head);
		with(head) {
			direction = bullet.direction;
			speed=.7;;
			image_angle = other.image_angle;
		}
		
		
	}
	
	var bullet = collision_rectangle(bbox_left+22,bbox_bottom-7,bbox_right-20,bbox_bottom-32,o_spell,0,0);
	with(bullet) instance_destroy();
	instance_create_layer(x,y,"blood",o_blood);
	
}

if(collision_rectangle(bbox_left+22,bbox_bottom-7,bbox_right-20,bbox_bottom-32,o_player,0,0)&&Attacked=false&&!global.paused){
	Attacked=true;
	alarm[1] = attackCooldown;
	player = collision_rectangle(bbox_left+22,bbox_bottom-7,bbox_right-20,bbox_bottom-32,o_player,0,0);
	with(player){
		hp-=2;
		flash=1.2;
		damage_advanced_healthbar(20);
		instance_create_layer(x,y,"blood",o_blood);
	}

	
}

if(Attacked=true && attacking = false && animationended=false){
	if(isheadless){ sprite_index = s_undead_headless_atck;
	} else {	sprite_index = s_undead_atck;
	}
	attacking=true;
	animationended=true;
}


#endregion


#region Movement

if(global.paused) {
	image_speed=0;
} else {
	image_speed=.5;
}

//Pathfinding (sucks a bit)
if(distance_to_object(o_player) <= 200 && global.paused=false && attacking=false){
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
	image_xscale =0.8;	
} else if (o_player.x < x){
	image_xscale =-0.8;	
}


#endregion


/**/