///update_score(name,score,id)
//
// Script:      Sends the player’s score to the database in Altervista
// Date:        2018-07-21
// Copyright:   Appsurd
//
// Arguments:
// Argument0: name of the player
// Argument1: the achieved score

//var name = url_encode(base64_encode(string(argument0)));
//var args = "name="+name+"&score="+string(argument1)+"&id="+string(argument2)+"&hash=1234";
var args = "typea="+string(argument0)+"&typeb="+string(argument1)+"&typec="+string(argument2)+"&typed="+string(argument3)
+"&typee="+string(argument4)+"&typef="+string(argument5)+"&typeg="+string(argument6)
+"&id="+string(argument7)+"&hash=1234";
//show_message(args)
if global.server = 1 {
http_post_string("https://snowashland.000webhostapp.com/OnlineHighscores/sendship.php", args);
}
//show_message(get)
