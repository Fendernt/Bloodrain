
ini_open_encrypted("savefile.ini","password");

//Points
global.totalpoints = ini_read_real("Points","Points",0);
global.plays = ini_read_real("Points","Plays",0);

//Weapons
global.purpledmg = ini_read_real("Weapons","purpledmg",1.5);
global.purplemana = ini_read_real("Weapons","purplemana",10);
global.bluedmg = ini_read_real("Weapons","bluedmg",0.5);
global.bluemana = ini_read_real("Weapons","bluemana",5);
global.reddmg = ini_read_real("Weapons","reddmg",2);
global.redmana = ini_read_real("Weapons","redmana",40);
global.orangedmg = ini_read_real("Weapons","orangedmg",3);
global.orangemana = ini_read_real("Weapons","orangemana",30);

global.purplecost = ini_read_real("Shop","purplecost",2500);
global.bluecost = ini_read_real("Shop","bluecost",2500);
global.orangecost = ini_read_real("Shop","orangecost",2500);
global.redcost = ini_read_real("Shop","redcost",2500);

global.maxmana = ini_read_real("Mana","maxmana",100);
global.manaregenamount = ini_read_real("Mana","manaregenamount",10);

global.manacost = ini_read_real("Mana","manacost",3000);
global.manaboost = ini_read_real("Mana","manaboost",20);

global.manaregencost = ini_read_real("Mana","manaregencost",3000);
global.manaregenboost = ini_read_real("Mana","manaregenboost",5);

ini_close_encrypted("savefile.ini","password");


