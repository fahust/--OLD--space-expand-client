///send_banishguild(name,id)
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
var args = "guildname="+string(0)+"guildid="+string(argument1)+"guildinvit=0$0"+"&id="+string(argument1)+"&hash=1234";
if global.server = 1 {
//http_post_string("https://snowashland.000webhostapp.com/OnlineHighscores/guildkick.php", args);
}
