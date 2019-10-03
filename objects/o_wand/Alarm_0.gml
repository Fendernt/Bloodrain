/// @description 


if(mana<maxmana && manaRegen = true){
	mana+=manaregenamount;
	heal_advanced_healthbar(10);
} else if (mana>=maxmana){
	manaRegen=false;	
} else if (mana > maxmana && mana < maxmana-manaregenamount){
	mana=maxmana;	
}

alarm[0]=40;
