/// @description 
//Initialize path
spawned=false;
path = path_add();
image_speed = 0.5;
wander = true;

hp=3;
respawntime=room_speed*3;

/*
var tries, done;
    tries = 0;
    done = false;
    do {
        tries += 1;
        x = irandom(room_width);
        done = !place_meeting(x,y,object_index);
    } until(done or tries>50);
    if(not done) {
        // not enough space (or bad luck), bail out
        instance_destroy();
    }
	*/