///send_message(name,score)
//
// Script:      Sends the player’s score to the database in Altervista
// Date:        2018-07-21
// Copyright:   Appsurd
//
// Arguments:
// Argument0: name of the player
// Argument1: the achieved score

//var name = url_encode(base64_encode(string(argument0)));

var args = "dated="+string(argument0)+"&envoyeurid="+string(argument1)
+"&hash=1234";
if global.server = 1 {//show_message(args)
//http_post_string("https://snowashland.000webhostapp.com/OnlineHighscores/destroymessage.php", args);
}
