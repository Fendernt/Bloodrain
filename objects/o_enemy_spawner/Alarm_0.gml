/// @description 
randomize();

instance_create_layer(random(room_width),random(room_height),"Instances",o_enemy);
/*
with(newinst) {
    var tries, done;
    tries = 0;
    done = false;
    do {
        tries += 1;
        x = irandom(room_width);
		y = irandom(room_height);
        done = !place_meeting(x,y,o_enemy) && !place_meeting(x,y,o_collidable);
    } until(done or tries>20);
    if(not done) {
        // not enough space (or bad luck), bail out
		o_enemy_spawner.alarm[0]=respawntime;
        instance_destroy();
    } else if(done){
		o_enemy_spawner.alarm[0]=respawntime;	
	}
}
*/



alarm[0] = respawntime;
