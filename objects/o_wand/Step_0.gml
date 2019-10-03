/// @description 
if(global.paused) exit;

xx=o_player.x;
yy=o_player.y-7;

image_speed=1

if(global.weapon=0){
	sprite_index=o_wand2;
}else if (global.weapon=1){
	sprite_index=o_wand3;
} else if(global.weapon=2){
	sprite_index=o_wand5;
} else if (global.weapon=3){
	sprite_index=o_wand4;
}




x=xx
y=yy;
image_angle = direction-180;

if(global.paused == true) exit;

#region Shooting

if(mana >= 100){
manaRegen=false;	
}

if(global.weapon=0){
	manacost=10;
	
	if(mouse_check_button_pressed(mb_left) && mana>=manacost) { 
		//calculate mana cost
		var _cost = maxmana/manacost;
		var _manacost = 100/_cost;
	
		mana-=manacost;
		manaRegen = false;
		alarm[1] = room_speed*1;
		damage_advanced_healthbar(_manacost);
		with (instance_create_layer(x, y,"Instances", o_spell))
		{
		    direction = other.direction
		    image_angle = direction;
		    speed = 5;
		}
	}
} else if(global.weapon=1){
	manacost=30;
	
	if(mouse_check_button_pressed(mb_left) && mana>=manacost) { 
		//calculate mana cost
		var _cost = maxmana/manacost;
		var _manacost = 100/_cost;
	
		mana-=manacost;
		manaRegen = false;
		alarm[1] = room_speed*1;
		damage_advanced_healthbar(_manacost);
		with (instance_create_layer(x, y,"Instances", o_spell2))
		{
		    direction = other.direction
		    image_angle = direction;
		    speed = 5;
		}
	}
	
} else if (global.weapon=2){
	manacost=40;
	
	if(mouse_check_button_pressed(mb_left) && mana>=manacost) { 
		//calculate mana cost
		var _cost = maxmana/manacost;
		var _manacost = 100/_cost;
	
		mana-=manacost;
		manaRegen = false;
		alarm[1] = room_speed*1;
		damage_advanced_healthbar(_manacost);
		with (instance_create_layer(x, y,"Instances", o_spell3))
		{
		    direction = other.direction
		    image_angle = direction;
		    speed = 5;
		}
	}
} else if (global.weapon=3){
	manacost=5;
	
	if(mouse_check_button(mb_left) && mana>=manacost) { 
		//calculate mana cost
		var _cost = maxmana/manacost;
		var _manacost = 100/_cost;
	
		mana-=manacost;
		manaRegen = false;
		alarm[1] = room_speed*1;
		damage_advanced_healthbar(_manacost);
		with (instance_create_layer(x, y,"Instances", o_spell4))
		{
		    direction = other.direction
		    image_angle = direction;
		    speed = 5;
		}
	}
}




#endregion