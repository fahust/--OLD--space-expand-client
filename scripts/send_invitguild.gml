///send_invitguild(name,id)
//
// Script:      Sends the player’s score to the database in Altervista
// Date:        2018-07-21
// Copyright:   Appsurd
//
// Arguments:
// Argument0: name of the player
// Argument1: the achieved score

//var name = url_encode(base64_encode(string(argument0)));
//show_message(global.idfixe)
if global.server = 1 {
var args = "guildinvit="+string(argument0)+"$"+string(argument1)+"&id="+string(argument2)+"&hash=1234";
//http_post_string("https://snowashland.000webhostapp.com/OnlineHighscores/guildinvit.php", args);
}
