///get_scores(name,no_lines)
//
// Script:      Get the scorelist from the database in Altervista
// Date:        2018-07-21
// Copyright:   Appsurd
//
// Arguments:
// Argument0: name of the player
// Argument1: the number of scores you want to display (generally 10 is fine)

//var name = url_encode(base64_encode(string(argument0)));
var args = "id="+string(argument0)+"&hash=1234";
//get_highscores = http_post_string("https://snowashland.000webhostapp.com/OnlineHighscores/displayguild.php", args);
