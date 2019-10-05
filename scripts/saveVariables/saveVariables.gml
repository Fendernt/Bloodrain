///saveVariables()

ini_open("TempVariables.ini");

ini_write_real("Points","Points",global.totalpoints);
ini_write_real("Points","Plays",global.plays);

ini_close();

file_fast_crypt_ultra("TempVariables.ini", "variables.ini",1,"v4r148l3s");

file_delete("TempVariables.ini");
