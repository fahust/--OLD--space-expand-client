///send_score(name,score)
//
// Script:      Sends the player’s score to the database in Altervista
// Date:        2018-07-21
// Copyright:   Appsurd
//
// Arguments:
// Argument0: name of the player
// Argument1: the achieved score

var name = url_encode(base64_encode(string(argument0)));
//show_message(global.idfixe)
var args = "name="+string(name)+"&score="+string(argument1)+"&id="+string(global.idfixe)+"&hash=1234";
if global.server = 1 {
http_post_string("https://snowashland.000webhostapp.com/OnlineHighscores/addscore.php", args);
}
