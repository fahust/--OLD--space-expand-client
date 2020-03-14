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

var args = "id="+string(argument2)+"&strd="+string(argument0)+"&destid="+string(argument1)+"&dated="+string(argument2)+"&envoyeurid="+string(argument3)
+"&destname="+string(argument4)+"&envoyeurname="+string(argument5)+"&type="+string(argument6)+"&hash=1234";
if global.server = 1 {//show_message(args)
//http_post_string("https://snowashland.000webhostapp.com/OnlineHighscores/addmessage.php", args);
}
