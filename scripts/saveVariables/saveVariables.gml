///saveVariables()

ini_open("TempVariables.ini");

//Points
ini_write_real("Points","Points",global.totalpoints);
ini_write_real("Points","Plays",global.plays);

//Weapons
ini_write_real("Weapons","purpledmg",global.purpledmg);
ini_write_real("Weapons","purplemana",global.purplemana);
ini_write_real("Weapons","bluedmg",global.bluedmg);
ini_write_real("Weapons","bluemana",global.bluemana);
ini_write_real("Weapons","reddmg",global.reddmg);
ini_write_real("Weapons","redmana",global.redmana);
ini_write_real("Weapons","orangedmg",global.orangedmg);
ini_write_real("Weapons","orangemana",global.orangemana);

ini_close();

file_fast_crypt_ultra("TempVariables.ini", "variables.ini",1,"variables");

file_delete("TempVariables.ini");
