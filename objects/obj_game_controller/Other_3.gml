/// @description Save and Clean Up


//save game
var file = "save.sav";
ini_open(file);
//add code here
ini_close();


//destroy any data structures here
//if you destroy data structures prior to this point
//you may encounter an error when attempting to save them