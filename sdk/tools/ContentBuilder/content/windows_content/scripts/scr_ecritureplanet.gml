#define scr_ecritureplanet
///scr_ecritureplanet(name,score,id)
//
// Script:      Sends the player’s score to the database in Altervista
// Date:        2018-07-21
// Copyright:   Appsurd
//
// Arguments:
// Argument0: name of the player
// Argument1: the achieved score


var get15 = ds_grid_get(planetary,32,buildaffect2);
var get16 = ds_grid_get(planetary,230,buildaffect2)//IDNAME
//var get17 = floor(ds_grid_get(planetary,230,buildaffect))//IDNAME
//var get18 = floor(ds_grid_get(planetary,230,buildaffect))//IDNAME
var get19 = floor(ds_grid_get(planetary,39,buildaffect2))//IDNAME
var get20 = floor(ds_grid_get(planetary,40,buildaffect2))//IDNAME
var get21 = floor(ds_grid_get(planetary,41,buildaffect2))//IDNAME
var get22 = floor(ds_grid_get(planetary,42,buildaffect2))//IDNAME
var get23 = (ds_grid_get(planetary,241,buildaffect2))//IDguildNAME
var get24 = floor(ds_grid_get(planetary,242,buildaffect2))//IDguild

//var args = "name="+name+"&score="+string(argument1)+"&id="+string(argument2)+"&hash=1234";
var args = "id="+string(argument0)+"&alarmatk="+string(argument1)+"&flotteatk="+string(argument2)
+"&idatk="+string(argument3)+"&date="+string(argument4)+"&ress="+string(argument5)
+"&typea="+string(argument6)+"&typeb="+string(argument7)+"&typec="+string(argument8)
+"&typed="+string(argument9)+"&typee="+string(argument10)+"&typef="+string(argument11)
+"&typeg="+string(argument12)+"&science="+string(argument13)+"&def="+string(argument14)
+"&idnow="+string(get15)+"&idname="+string(get16)+"&varress="+string(get19)
+"&varship="+string(get20)+"&varscience="+string(get21)+"&vardef="+string(get22)
+"&idguildname="+string(get23)+"&idguild="+string(get24)
+"&hash=1234";
//show_message(args)
//show_message(global.idguildname)
if global.server = 1 {
http_post_string("https://snowashland.000webhostapp.com/OnlineHighscores/updateplanet.php", args);
//show_message(args3)
}

#define scr_ecritureplanet2
///scr_ecritureplanet(name,score,id)
//
// Script:      Sends the player’s score to the database in Altervista
// Date:        2018-07-21
// Copyright:   Appsurd
//
// Arguments:
// Argument0: name of the player
// Argument1: the achieved score


var get15 = ds_grid_get(planetary,32,buildaffect);
var get16 = ds_grid_get(planetary,230,buildaffect)//IDNAME
//var get17 = floor(ds_grid_get(planetary,230,buildaffect))//IDNAME
//var get18 = floor(ds_grid_get(planetary,230,buildaffect))//IDNAME
var get19 = floor(ds_grid_get(planetary,39,buildaffect))//IDNAME
var get20 = floor(ds_grid_get(planetary,40,buildaffect))//IDNAME
var get21 = floor(ds_grid_get(planetary,41,buildaffect))//IDNAME
var get22 = floor(ds_grid_get(planetary,42,buildaffect))//IDNAME
var get23 = (ds_grid_get(planetary,241,buildaffect))//IDguildNAME
var get24 = floor(ds_grid_get(planetary,242,buildaffect))//IDguild

//var args = "name="+name+"&score="+string(argument1)+"&id="+string(argument2)+"&hash=1234";
var args = "id="+string(argument0)+"&alarmatk="+string(argument1)+"&flotteatk="+string(argument2)
+"&idatk="+string(argument3)+"&date="+string(argument4)+"&ress="+string(argument5)
+"&typea="+string(argument6)+"&typeb="+string(argument7)+"&typec="+string(argument8)
+"&typed="+string(argument9)+"&typee="+string(argument10)+"&typef="+string(argument11)
+"&typeg="+string(argument12)+"&science="+string(argument13)+"&def="+string(argument14)
+"&idnow="+string(get15)+"&idname="+string(get16)+"&varress="+string(get19)
+"&varship="+string(get20)+"&varscience="+string(get21)+"&vardef="+string(get22)
+"&idguildname="+string(get23)+"&idguild="+string(get24)
+"&hash=1234";
//show_message(args)
//show_message(global.idguildname)
if global.server = 1 {
http_post_string("https://snowashland.000webhostapp.com/OnlineHighscores/updateplanet.php", args);
//show_message(args3)
}

#define scr_ecritureplanet3
///scr_ecritureplanet(name,score,id)
//
// Script:      Sends the player’s score to the database in Altervista
// Date:        2018-07-21
// Copyright:   Appsurd
//
// Arguments:
// Argument0: name of the player
// Argument1: the achieved score


var get15 = ds_grid_get(planetary,32,planetnowid);
var get16 = ds_grid_get(planetary,230,planetnowid)//IDNAME
//var get17 = floor(ds_grid_get(planetary,230,planetnowid))//IDNAME
//var get18 = floor(ds_grid_get(planetary,230,planetnowid))//IDNAME
var get19 = floor(ds_grid_get(planetary,39,planetnowid))//IDNAME
var get20 = floor(ds_grid_get(planetary,40,planetnowid))//IDNAME
var get21 = floor(ds_grid_get(planetary,41,planetnowid))//IDNAME
var get22 = floor(ds_grid_get(planetary,42,planetnowid))//IDNAME
var get23 = (ds_grid_get(planetary,241,planetnowid))//IDguildNAME
var get24 = floor(ds_grid_get(planetary,242,planetnowid))//IDguild

//var args = "name="+name+"&score="+string(argument1)+"&id="+string(argument2)+"&hash=1234";
var args = "id="+string(argument0)+"&alarmatk="+string(argument1)+"&flotteatk="+string(argument2)
+"&idatk="+string(argument3)+"&date="+string(argument4)+"&ress="+string(argument5)
+"&typea="+string(argument6)+"&typeb="+string(argument7)+"&typec="+string(argument8)
+"&typed="+string(argument9)+"&typee="+string(argument10)+"&typef="+string(argument11)
+"&typeg="+string(argument12)+"&science="+string(argument13)+"&def="+string(argument14)
+"&idnow="+string(get15)+"&idname="+string(get16)+"&varress="+string(get19)
+"&varship="+string(get20)+"&varscience="+string(get21)+"&vardef="+string(get22)
+"&idguildname="+string(get23)+"&idguild="+string(get24)
+"&hash=1234";
//show_message(args)
//show_message(global.idguildname)
if global.server = 1 {
http_post_string("https://snowashland.000webhostapp.com/OnlineHighscores/updateplanet.php", args);
//show_message(args3)
}

#define scr_ecritureplanet4

///scr_ecritureplanet(name,score,id)
//
// Script:      Sends the player’s score to the database in Altervista
// Date:        2018-07-21
// Copyright:   Appsurd
//
// Arguments:
// Argument0: name of the player
// Argument1: the achieved score


var get15 = ds_grid_get(planetary,32,firstsendship);
var get16 = ds_grid_get(planetary,230,firstsendship)//IDNAME
//var get17 = floor(ds_grid_get(planetary,230,planetnowid))//IDNAME
//var get18 = floor(ds_grid_get(planetary,230,planetnowid))//IDNAME
var get19 = floor(ds_grid_get(planetary,39,firstsendship))//IDNAME
var get20 = floor(ds_grid_get(planetary,40,firstsendship))//IDNAME
var get21 = floor(ds_grid_get(planetary,41,firstsendship))//IDNAME
var get22 = floor(ds_grid_get(planetary,42,firstsendship))//IDNAME
var get23 = (ds_grid_get(planetary,241,firstsendship))//IDguildNAME
var get24 = floor(ds_grid_get(planetary,242,firstsendship))//IDguild

//var args = "name="+name+"&score="+string(argument1)+"&id="+string(argument2)+"&hash=1234";
var args = "id="+string(argument0)+"&alarmatk="+string(argument1)+"&flotteatk="+string(argument2)
+"&idatk="+string(argument3)+"&date="+string(argument4)+"&ress="+string(argument5)
+"&typea="+string(argument6)+"&typeb="+string(argument7)+"&typec="+string(argument8)
+"&typed="+string(argument9)+"&typee="+string(argument10)+"&typef="+string(argument11)
+"&typeg="+string(argument12)+"&science="+string(argument13)+"&def="+string(argument14)
+"&idnow="+string(get15)+"&idname="+string(get16)+"&varress="+string(get19)
+"&varship="+string(get20)+"&varscience="+string(get21)+"&vardef="+string(get22)
+"&idguildname="+string(get23)+"&idguild="+string(get24)
+"&hash=1234";
//show_message(args)
//show_message(global.idguildname)
if global.server = 1 {
http_post_string("https://snowashland.000webhostapp.com/OnlineHighscores/updateplanet.php", args);
//show_message(args3)
}