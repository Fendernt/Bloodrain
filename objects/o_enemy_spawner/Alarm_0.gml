/// @description 
randomize();

if(global.plays<5){
	alarm[0]=respawntime;	
} else if(global.plays>=5 && global.plays < 10){
	alarm[0] = room_speed*4;
} else if (global.plays>=10){
	alarm[0] = room_speed*3;	
}

if(global.paused == true) exit;
instance_create_layer(random(room_width),random(room_height),"Instances",obj_enemy);

if(global.plays>=5){
	if(percent_chance(20)){
		instance_create_layer(random(room_width),random(room_height),"Instances",obj_skeleton);
	}
}
if(global.plays >=10){
	if(percent_chance(15)){
		instance_create_layer(random(room_width),random(room_height),"Instances",obj_undead);
	}
}







/*
with(newinst) {
    var tries, done;
    tries = 0;
    done = false;
    do {
        tries += 1;
        x = irandom(room_width);
		y = irandom(room_height);
        done = !place_meeting(x,y,obj_enemy) && !place_meeting(x,y,o_collidable);
    } until(done or tries>20);
    if(not done) {
        // not enough space (or bad luck), bail out
		obj_enemy_spawner.alarm[0]=respawntime;
        instance_destroy();
    } else if(done){
		obj_enemy_spawner.alarm[0]=respawntime;	
	}
}
*/


