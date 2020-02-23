///update_score(name,score,id)
//
// Script:      Sends the player’s score to the database in Altervista
// Date:        2018-07-21
// Copyright:   Appsurd
//
// Arguments:
// Argument0: name of the player
// Argument1: the achieved score

var name = url_encode(base64_encode(string(argument0)));
//var args = "name="+name+"&score="+string(argument1)+"&id="+string(argument2)+"&hash=1234";
var args = "score="+string(argument1)+"&name="+string(name)+"&id="+string(argument2)+"&ress="+string(argument3)
+"&ship="+string(argument4)+"&science="+string(argument5)+"&def="+string(argument6)
+"&guildname="+string(argument7)+"&guildid="+string(argument8)+"&grade="+string(argument9)+"&hash=1234";
//show_message(args)
if global.server = 1 {
http_post_string("https://snowashland.000webhostapp.com/OnlineHighscores/update.php", args);
}
//show_message(get)
