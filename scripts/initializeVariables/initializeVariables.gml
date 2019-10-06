
ini_open_encrypted("variables.ini","variables");

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

ini_close_encrypted("variables.ini","variables");


