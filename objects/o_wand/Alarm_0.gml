/// @description 


if(mana<global.maxmana && manaRegen = true){
	mana+=global.manaregenamount;
	_manaregen = 100/global.manaregenamount;
	
	heal_advanced_healthbar(_manaregen);
} else if (mana>=global.maxmana){
	manaRegen=false;	
} else if (mana > global.maxmana && mana < global.maxmana-global.manaregenamount){
	mana=global.maxmana;	
}

alarm[0]=40;
