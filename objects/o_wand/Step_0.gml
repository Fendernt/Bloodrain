/// @description 
if(global.paused) exit;

xx=o_player.x;
yy=o_player.y-7;

image_speed=1

x=xx
y=yy;
image_angle = direction-180;

if(global.paused == true) exit;

#region Shooting

if(mana >= 100){
manaRegen=false;	
}

if(mouse_check_button_pressed(mb_left) && mana>=10) { 
	mana-=10;
	manaRegen = false;
	alarm[1] = room_speed*1;
	damage_advanced_healthbar(10);
	with (instance_create_layer(x, y,"Instances", o_spell))
	{
	    direction = other.direction
	    image_angle = direction;
	    speed = 5;
	}
}





#endregion