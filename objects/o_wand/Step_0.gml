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


if(global.weapon=0){
	global.manacost=global.purplemana;
	
	if(mouse_check_button_pressed(mb_left) && mana>=global.manacost) { 
		//calculate mana cost
		var _cost = global.maxmana/global.manacost;
		var _manacost = 100/_cost;
	
		mana-=global.manacost;
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
	global.manacost=global.orangemana;
	
	if(mouse_check_button_pressed(mb_left) && mana>=global.manacost) { 
		//calculate mana cost
		var _cost = global.maxmana/global.manacost;
		var _manacost = 100/_cost;
	
		mana-=global.manacost;
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
	global.manacost=global.redmana;
	
	if(mouse_check_button_pressed(mb_left) && mana>=global.manacost) { 
		//calculate mana cost
		var _cost = global.maxmana/global.manacost;
		var _manacost = 100/_cost;
	
		mana-=global.manacost;
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
	global.manacost=global.bluemana;
	
	if(mouse_check_button(mb_left) && mana>=global.manacost) { 
		//calculate mana cost
		var _cost = global.maxmana/global.manacost;
		var _manacost = 100/_cost;
	
		mana-=global.manacost;
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