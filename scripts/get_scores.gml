///get_scores(name,no_lines)
//
// Script:      Get the scorelist from the database in Altervista
// Date:        2018-07-21
// Copyright:   Appsurd
//
// Arguments:
// Argument0: name of the player
// Argument1: the number of scores you want to display (generally 10 is fine)

var name = url_encode(base64_encode(string(argument0)));
var args = "id="+string(argument0)+"&no_lines="+string(argument1)+"&hash=1234";
/*if obj_planetary.modetri = 1 {get_highscores = http_post_string("https://snowashland.000webhostapp.com/OnlineHighscores/display.php", args);}
if obj_planetary.modetri = 2 {get_highscores = http_post_string("https://snowashland.000webhostapp.com/OnlineHighscores/displayress.php", args);}
if obj_planetary.modetri = 3 {get_highscores = http_post_string("https://snowashland.000webhostapp.com/OnlineHighscores/displayship.php", args);}
if obj_planetary.modetri = 4 {get_highscores = http_post_string("https://snowashland.000webhostapp.com/OnlineHighscores/displayscience.php", args);}
if obj_planetary.modetri = 5 {get_highscores = http_post_string("https://snowashland.000webhostapp.com/OnlineHighscores/displaydef.php", args);}

*/


