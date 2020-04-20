///get_scores(name,no_lines)
//
// Script:      Get the scorelist from the database in Altervista
// Date:        2018-07-21
// Copyright:   Appsurd
//
// Arguments:
// Argument0: name of the player
// Argument1: the number of scores you want to display (generally 10 is fine)

if global.server = 1 {
var args = "id="+string(argument0)+"&hash=1234";
get_highscores = http_post_string("https://snowashland.000webhostapp.com/OnlineHighscores/getplanet.php", args);
//show_message(text2);
   // draw_text_highscore(0, 50, "", "Name", "Score", string(text2), player_name, c_green,"RESS","SHIP","SCIENCE","DEF");
}

//show_message(get_highscores);
