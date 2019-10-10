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

ini_write_real("Shop","purplecost",global.purplecost);
ini_write_real("Shop","bluecost",global.bluecost);
ini_write_real("Shop","orangecost",global.orangecost);
ini_write_real("Shop","redcost",global.redcost);

ini_write_real("Mana","maxmana",global.maxmana);
ini_write_real("Mana","manaregenamount",global.manaregenamount);

ini_write_real("Mana","manacost",global.manacost);
ini_write_real("Mana","manaboost",global.manaboost);

ini_write_real("Mana","manaregencost",global.manaregencost);
ini_write_real("Mana","manaregenboost",global.manaregenboost);

ini_close();

file_fast_crypt_ultra("TempVariables.ini", "savefile.ini",1,"password");

file_delete("TempVariables.ini");
