#define draw_text_highscore
///draw_text_highscore(x,y,text1,text2,text3,highscores,name,color)
//
// Script:      Draws a highscore with the player’s name coloured in green
// Date:        2018-07-21
// Copyright:   Appsurd
//
// Arguments:
// Argument0: x
// Argument1: y
// Argument2: The text to display above the index
// Argument3: The text to display above the name
// Argument4: The text to display above the score
// Argument5: The highscore text
// Argument6: The name to colour
// Argument7: The color to give to the name of argument6






var xx = argument0;
var yy = argument1;
var str = argument5//argument5;
var name = argument6;
var colour = argument7;
var truc = argument2;
var truc = argument3;
var truc = argument4;
//str = "test|test"
name = "first"

// Initialise the drawing by splitting up the text
var def_color = draw_get_colour();
var count = string_count("|",str);
var str2 = string_split("|",str,true);
var str3,str3a,str3b,str3c,str3d,str3e,str3f,str3g,str3h,str3i,str3j,str3k;
str3[0] = string("place")+".-"+string("name")+"-"+string("score")//+"-"+string("test")
+"-"+string(argument8)+"-"+string(argument9)+"-"+string(argument10)+"-"+string(argument11)+"-"+string(argument12)+"-"+string(argument13)+"-"+string(argument14)+"-"+string(argument15);
for(var i=0; i<count; i+=1)
{
    str3[i+1] = str2[i];
} 

// Setting some parameters, if you wish, you can change them to values you think are convenient.
if obj_planetary.portrait = 0 {
var height = 25;
var max_la = 50; // minimum width of the first column (the nr.)
var max_lb = 250; // minimum width of the name column
var max_lc = 180; // minimum width of the score column
var max_ld = 180; // minimum width of the score column
var max_le = 180; // minimum width of the score column
var max_lf = 180; // minimum width of the score column
var max_lg = 180; // minimum width of the score column
var max_lh = 180; // minimum width of the score column
var max_li = 180; // minimum width of the score column
var max_lj = 180; // minimum width of the score column
var max_lk = 180; // minimum width of the score column
}else{
var height = 25;
var max_la = 50; // minimum width of the first column (the nr.)
var max_lb = 250; // minimum width of the name column
var max_lc = 180; // minimum width of the score column
var max_ld = 1500; // minimum width of the score column
var max_le = 1500; // minimum width of the score column
var max_lf = 1500; // minimum width of the score column
var max_lg = 1500; // minimum width of the score column
var max_lh = 1500; // minimum width of the score column
var max_li = 1500; // minimum width of the score column
var max_lj = 1500; // minimum width of the score column
var max_lk = 1500; // minimum width of the score column
}



// Splitting up the text into a part with the number (3a), the name (3b) and the score (3c)
// Currently, the return is encoded by Nr.-Name-Score
for(var i=0; i<count+1; i+=1)
{
//show_message(str3[i])

    var str4 = string_split("-",str3[i],false);
    // show_message(str4)
    txt3a[i] = str4[0];//show_message(str4[0])//line
    txt3b[i] = str4[1];//show_message(str4[1])//name
    txt3c[i] = str4[2];//show_message(str4[2])//score
    //rajouter
    txt3d[i] = str4[3];//show_message(str4[3])//ress
    txt3e[i] = str4[4];//show_message(str4[4])//ship
    txt3f[i] = str4[5];//show_message(str4[5])science
    txt3g[i] = str4[6];//show_message(str4[6])def
    txt3h[i] = str4[7];//show_message(str4[7])guildname
    txt3i[i] = str4[8];//show_message(str4[8])guildid
    txt3j[i] = str4[9];//show_message(str4[9])//"invit"
    txt3k[i] = str4[10];//show_message(str4[10])//"invit"
    
    // Decode the name so we can use it (but do not decode the header containing "name" since it's not decoded!)
    if i != 0
    {
        txt3b[i] = base64_decode(txt3b[i]);
    }
    
    // Assure that if a player has a # in his name, then escape
    txt3b[i] = string_replace_all(txt3b[i],"#","\#");
    if obj_planetary.portrait = 1 {draw_set_font(fntpolylitlle)}
    // Adjust the width such that the text doesn't overlap
    /*max_la = max(string_width(txt3a[i]),max_la);
    max_lb = max(string_width(txt3b[i]),max_lb);
    max_lc = max(string_width(txt3c[i]),max_lc);
    max_ld = max(string_width(txt3d[i]),max_ld);
    max_le = max(string_width(txt3e[i]),max_le);
    max_lf = max(string_width(txt3f[i]),max_lf);
    max_lg = max(string_width(txt3g[i]),max_lg);
    max_lh = max(string_width(txt3h[i]),max_lh);
    max_li = max(string_width(txt3i[i]),max_li);
    max_lk = max(string_width(txt3j[i]),max_lj);*/
}
txt3a[0] = "";
if obj_planetary.portrait = 1 {max_la -= 45;}
// The actual drawing of the highscores
for(var i=0; i<count+1; i+=1)
{
    if name == txt3b[i]
    {
        draw_set_color(colour);
    }
    else
    {
        draw_set_color(def_color);
    }
    
    
    // Draw the numbers
    draw_set_halign(fa_right);
    draw_set_colour(obj_planetary.planetarycolor2);
    if obj_planetary.portrait = 1 {draw_rectangle(0,yy+height+44,room_width,yy+height+46,false);}else{
    draw_rectangle(0,yy+height+49,room_width,yy+height+51,false);}
    if i <= 0 {
    draw_set_colour(obj_planetary.planetarycolor);}else{
    draw_set_colour(obj_planetary.planetarycolor2);}
    
    
    // Assure that if a player has a # in his name, then escape (I know I'm doing this twice
    // but that's needed for the string_width in the previous block to work properly
    txt3b[i] = string_replace_all(txt3b[i],"#","\#");
    
    // Draw the name + score
    draw_set_halign(fa_left);
    draw_text(xx+max_la,yy+height,txt3a[i]);
    
    draw_text(xx+max_la,yy+height,txt3b[i]);
    
    if device_mouse_check_button(0, mb_left) && point_distance(obj_planetary.xxmouse,obj_planetary.yymouse,xx+max_la+30+max_lb+30,yy+height-30) < 40  {obj_planetary.modetri = 1;if instance_exists(obj_highscore){with(obj_highscore){instance_destroy()}}}
    if txt3c[i] = "score" {draw_sprite_ext(spr_highscore,0,xx+max_la+30+max_lb+30,yy+height-30,0.5,0.5,0,obj_planetary.planetarycolor,1);}else{
    draw_text(xx+max_la+30+max_lb+10,yy+height,txt3c[i]);}
    if obj_planetary.portrait = 0 {
    if device_mouse_check_button(0, mb_left) && point_distance(obj_planetary.xxmouse,obj_planetary.yymouse,xx+max_la+30+max_lb+max_lc+30,yy+height-30) < 40  {obj_planetary.modetri = 2;if instance_exists(obj_highscore){with(obj_highscore){instance_destroy()}}}
    if txt3d[i] = "RESS" {draw_sprite_ext(spr_stats,0,xx+max_la+30+max_lb+max_lc+30,yy+height-30,0.3,0.3,0,obj_planetary.planetarycolor,1)}else{
    if real(txt3d[i]) > 0 {if real(txt3d[i])/1000000 > 1 {
    draw_text(xx+max_la+30+max_lb+max_lc+10,yy+height,"> "+string(round(real(txt3d[i])/1000000))+" M");}else{
    draw_text(xx+max_la+30+max_lb+max_lc+10,yy+height,"< 1 M");}}}
    if device_mouse_check_button(0, mb_left) && point_distance(obj_planetary.xxmouse,obj_planetary.yymouse,xx+max_la+30+max_lb+max_lc+max_ld+30,yy+height-30) < 40  {obj_planetary.modetri = 3;if instance_exists(obj_highscore){with(obj_highscore){instance_destroy()}}}
    if txt3e[i] = "SHIP" {draw_sprite_ext(spr_stats,1,xx+max_la+30+max_lb+max_lc+max_ld+30,yy+height-30,0.3,0.3,0,obj_planetary.planetarycolor,1)}else{
    draw_text(xx+max_la+30+max_lb+max_lc+max_ld+10,yy+height,txt3e[i]);}
    if device_mouse_check_button(0, mb_left) && point_distance(obj_planetary.xxmouse,obj_planetary.yymouse,xx+max_la+30+max_lb+max_lc+max_ld+max_le+30,yy+height-30) < 40  {obj_planetary.modetri = 4;if instance_exists(obj_highscore){with(obj_highscore){instance_destroy()}}}
    if txt3f[i] = "SCIENCE" {draw_sprite_ext(spr_stats,2,xx+max_la+30+max_lb+max_lc+max_ld+max_le+30,yy+height-30,0.3,0.3,0,obj_planetary.planetarycolor,1)}else{
    draw_text(xx+max_la+30+max_lb+max_lc+max_ld+max_le+10,yy+height,txt3f[i]);}
    if device_mouse_check_button(0, mb_left) && point_distance(obj_planetary.xxmouse,obj_planetary.yymouse,xx+max_la+30+max_lb+max_lc+max_ld+max_le+max_lf+30,yy+height-30) < 40  {obj_planetary.modetri = 5;if instance_exists(obj_highscore){with(obj_highscore){instance_destroy()}}}
    if txt3g[i] = "DEF" {draw_sprite_ext(spr_stats,3,xx+max_la+30+max_lb+max_lc+max_ld+max_le+max_lf+30,yy+height-30,0.3,0.3,0,obj_planetary.planetarycolor,1)}else{
    draw_text(xx+max_la+30+max_lb+max_lc+max_ld+max_le+max_lf+10,yy+height,txt3g[i]);}//
    draw_text(xx+max_la+30+max_lb+max_lc+max_ld+max_le+max_lf+max_lh+10,yy+height,txt3h[i]);
    
    }
    //draw_text(xx+max_la+30+max_lb+max_lc+max_ld+max_le+max_lf+max_lh+max_li+10,yy+height,txt3i[i]);
    //draw_text(xx+max_la+30+max_lb+max_lc+max_ld+max_le+max_lf+max_lh+max_li+max_lk+10,yy+height,txt3k[i]);
    //draw_text(xx+max_la+30+max_lb+max_lc+max_ld+max_le+max_lf+max_lh+max_li+max_lj+10,yy+height,txt3j[i]);
    if txt3j[i] = "0" or txt3j[i] = 0 or txt3j[i] = "0$0" or txt3j[i] = "guildinvit" or txt3j[i] = "guildid"{}else{
    //show_message(txt3j[i])
    idrecuptemp = 0
    //if txt3a[i] = 0 or txt3a[i] = "" or txt3a[i] = "id." {}else{ idrecuptemp = txt3a[i];cnt = string_length(idrecuptemp);idrecuptemp = string_delete(idrecuptemp,cnt,1);}
    //show_message(idrecuptemp)
    
    if string(txt3b[i]) = global.name {//show_message(string(txt3b[i]))
    if real(txt3c[i]) = floor(obj_planetary.scoretotal) {//show_message(real(txt3c[i]))
    if real(txt3d[i]) = floor(obj_planetary.scoreressvalid) {//show_message(real(txt3d[i]))
    if real(txt3e[i]) = floor(obj_planetary.scoreshipsvalid)  {//show_message(real(txt3e[i]))
    if real(txt3f[i]) = floor(obj_planetary.scoresciencevalid) {//show_message(real(txt3f[i]))
    if real(txt3g[i]) = floor(obj_planetary.scoredefvalid) {//show_message(real(txt3g[i]))//check si c bien moi
    strvarguild = string_split2("$",txt3j[i],true);
    global.idguildinvit = real(strvarguild[1])
    global.idguildinvitname = string(strvarguild[0])
    //show_message(global.idguildinvitname)
    //show_message(global.idguildinvit)
    //show_message(global.idguildnameinvit)
    }}}}}}}
    height += string_height(str3[i]);
}
draw_set_font(fnt_poly)

#define draw_text_planet
///draw_text_highscore(x,y,text1,text2,text3,highscores,name,color)
//
// Script:      Draws a highscore with the player’s name coloured in green
// Date:        2018-07-21
// Copyright:   Appsurd
//
// Arguments:
// Argument0: x
// Argument1: y
// Argument2: The text to display above the index
// Argument3: The text to display above the name
// Argument4: The text to display above the score
// Argument5: The highscore text
// Argument6: The name to colour
// Argument7: The color to give to the name of argument6

var xx = argument0;
var yy = argument1;
var str = argument5;
var name = argument6;
var colour = argument7;

// Initialise the drawing by splitting up the text
var def_color = draw_get_colour();
var count = string_count("|",str);
var str2 = string_split("|",str,true);
var str3,str3a,str3b,str3c,str3d,str3e,str3f,str3g;
str3[0] = string(argument2)+".-"+string(argument3)+"-"+string(argument4)
+"-"+string(argument8)+"-"+string(argument9)+"-"+string(argument10)+"-"+string(argument11);
for(var i=0; i<count; i+=1)
{
    str3[i+1] = str2[i];
} 

// Setting some parameters, if you wish, you can change them to values you think are convenient.
var height = 0;
var max_la = 50; // minimum width of the first column (the nr.)
var max_lb = 100; // minimum width of the name column
var max_lc = 50; // minimum width of the score column
var max_ld = 200; // minimum width of the score column
var max_le = 50; // minimum width of the score column
var max_lf = 50; // minimum width of the score column
var max_lg = 50; // minimum width of the score column

// Splitting up the text into a part with the number (3a), the name (3b) and the score (3c)
// Currently, the return is encoded by Nr.-Name-Score
for(var i=0; i<count+1; i+=1)
{
//show_message(str3[i])
 
    var str4 = string_split("-",str3[i],false);
    txt3a[i] = str4[0];
    txt3b[i] = str4[1]; 
    txt3c[i] = str4[2];
    //rajouter
    txt3d[i] = str4[3];
    txt3e[i] = str4[4];
    txt3f[i] = str4[5];
    txt3g[i] = str4[6];
    
    // Decode the name so we can use it (but do not decode the header containing "name" since it's not decoded!)
    if i != 0
    {
        //txt3b[i] = base64_decode(txt3b[i]);
    }
    
    // Assure that if a player has a # in his name, then escape
    txt3b[i] = string_replace_all(txt3b[i],"#","\#");
    
    // Adjust the width such that the text doesn't overlap
    max_la = max(string_width(txt3a[i]),max_la);
    max_lb = max(string_width(txt3b[i]),max_lb);
    max_lc = max(string_width(txt3c[i]),max_lc);
    max_ld = max(string_width(txt3d[i]),max_ld);
    max_le = max(string_width(txt3e[i]),max_le);
    max_lf = max(string_width(txt3f[i]),max_lf);
    max_lg = max(string_width(txt3g[i]),max_lg);
}
txt3a[0] = "";

// The actual drawing of the highscores
for(var i=0; i<count+1; i+=1)
{
    if name == txt3b[i]
    {
        draw_set_color(colour);
    }
    else
    {
        draw_set_color(def_color);
    }
    
    // Draw the numbers
    draw_set_halign(fa_right);
    draw_text(xx+max_la+5,yy+height,txt3a[i]);
    
    // Assure that if a player has a # in his name, then escape (I know I'm doing this twice
    // but that's needed for the string_width in the previous block to work properly
    txt3b[i] = string_replace_all(txt3b[i],"#","\#");
    
    // Draw the name + score
    draw_set_halign(fa_left);
    draw_text(xx+max_la+10,yy+height,txt3b[i]);
    draw_text(xx+max_la+10+max_lb+10,yy+height,txt3c[i]);
    draw_text(xx+max_la+10+max_lb+max_lc+10,yy+height,txt3d[i]);
    draw_text(xx+max_la+10+max_lb+max_lc+max_ld+10,yy+height,txt3e[i]);
    draw_text(xx+max_la+10+max_lb+max_lc+max_ld+max_le+10,yy+height,txt3f[i]);
    draw_text(xx+max_la+10+max_lb+max_lc+max_ld+max_le+max_lf+10,yy+height,txt3g[i]);
    
    height += string_height(str3[i]);
}
#define draw_text_chat
///draw_text_highscore(x,y,text1,text2,text3,highscores,name,color)
//
// Script:      Draws a highscore with the player’s name coloured in green
// Date:        2018-07-21
// Copyright:   Appsurd
//
// Arguments:
// Argument0: x
// Argument1: y
// Argument2: The text to display above the index
// Argument3: The text to display above the name
// Argument4: The text to display above the score
// Argument5: The highscore text
// Argument6: The name to colour
// Argument7: The color to give to the name of argument6

var xx = argument0;
var yy = argument1;
var str = argument2;
var name = global.name;
/*var colour = argument7;
var truc = argument2;
var truc = argument3;
var truc = argument4;*/
colour = c_green
draw_set_valign(fa_top);


with(obj_planetary){
if menuplanet3 > 0 {
//draw_set_valign(fa_bottom);
draw_set_colour(planetarycolor);
draw_rectangle(0,0,room_width,room_height,false);
draw_set_colour(planetarycolor2);
}}
if obj_planetary.guildchannel = 1 {
// Initialise the drawing by splitting up the text
var def_color = draw_get_colour();
var count = string_count("|",str);
var str2 = string_split("|",str,true);
var str3,str3a,str3b,str3c,str3d,str3e,str3f,str3g,str3h,str3i,str3j,str3k;
str3[0] = string("line")+".-"+string("id")+"-"+string("str")//+"-"+string("test")
+"-"+string("destid")+"-"+string("dated")+"-"+string("envoyeurid")
+"-"+string("destname")+"-"+string("envoyeurname")+"-"+string("type");
for(var i=0; i<count; i+=1)
{
    str3[i+1] = str2[i];
} 

// Setting some parameters, if you wish, you can change them to values you think are convenient.
if obj_planetary.portrait = 0 {
var height = 90;
var max_la = 0; // minimum width of the first column (the nr.)
var max_lb = 250; // minimum width of the name column
var max_lc = 180; // minimum width of the score column
var max_ld = 180; // minimum width of the score column
var max_le = 180; // minimum width of the score column
var max_lf = 180; // minimum width of the score column
var max_lg = 180; // minimum width of the score column
var max_lh = 180; // minimum width of the score column
var max_li = 180; // minimum width of the score column
}else{
var height = 140;
var max_la = -50; // minimum width of the first column (the nr.)
var max_lb = 100; // minimum width of the name column
var max_lc = 180; // minimum width of the score column
var max_ld = 180; // minimum width of the score column
var max_le = 180; // minimum width of the score column
var max_lf = 180; // minimum width of the score column
var max_lg = 180; // minimum width of the score column
var max_lh = 180; // minimum width of the score column
var max_li = 180; // minimum width of the score column
}

// Splitting up the text into a part with the number (3a), the name (3b) and the score (3c)
// Currently, the return is encoded by Nr.-Name-Score
for(var i=0; i<count+1; i+=1)
{
//show_message(str3[i])

    var str4 = string_split("-",str3[i],false);
    // show_message(str4)
    txt3a[i] = str4[0];//show_message(str4[0])//line
    txt3b[i] = str4[1];//show_message(str4[1])//name
    txt3c[i] = str4[2];//show_message(str4[2])//score
    //rajouter
    txt3d[i] = str4[3];//show_message(str4[3])//ress
    txt3e[i] = str4[4];//show_message(str4[4])//ship
    txt3f[i] = str4[5];//show_message(str4[5])//science
    txt3g[i] = str4[6];//show_message(str4[6])//def
    txt3h[i] = str4[7];//show_message(str4[7])//guildname
    txt3i[i] = str4[8];//show_message(str4[8])//guildid
    //txt3j[i] = str4[9];//show_message(str4[9])//"invit"
    //txt3k[i] = str4[10];//show_message(str4[10])//"invit"
    
    
    
    // Assure that if a player has a # in his name, then escape
    txt3b[i] = string_replace_all(txt3b[i],"#","\#");
    
    // Adjust the width such that the text doesn't overlap
    max_la = max(string_width(txt3a[i]),max_la);
    max_lb = max(string_width(txt3b[i]),max_lb);
    max_lc = max(string_width(txt3c[i]),max_lc);
    max_ld = max(string_width(txt3d[i]),max_ld);
    max_le = max(string_width(txt3e[i]),max_le);
    max_lf = max(string_width(txt3f[i]),max_lf);
    max_lg = max(string_width(txt3g[i]),max_lg);
    max_lh = max(string_width(txt3h[i]),max_lh);

}

txt3a[0] = "";

// The actual drawing of the highscores
for(var i=0; i<count+1; i+=1)
{
    if name == txt3b[i]
    {
        draw_set_color(colour);
    }
    else
    {
        draw_set_color(def_color);
    }
    
    // Draw the numbers
    draw_set_halign(fa_right);
    draw_set_colour(obj_planetary.planetarycolor2);
    if obj_planetary.portrait = 0 {
    draw_rectangle(0,yy+height+201-(obj_planetary.roll*10),room_width,yy+height+195-(obj_planetary.roll*10),false);}else{
    draw_rectangle(0,yy+height+181-(obj_planetary.roll*10),room_width,yy+height+175-(obj_planetary.roll*10),false);}
    if i <= 0 {
    draw_set_colour(obj_planetary.planetarycolor);}else{
    draw_set_colour(obj_planetary.planetarycolor2);}
    
    //draw_text(xx+max_la+5,yy+height,txt3a[i]);
    
    // Assure that if a player has a # in his name, then escape (I know I'm doing this twice
    // but that's needed for the string_width in the previous block to work properly
    txt3b[i] = string_replace_all(txt3b[i],"#","\#");
    
    // Draw the name + score
    draw_set_halign(fa_left);
    
    //draw_text(xx+max_la+30,yy+height,txt3b[i]);
    
    if txt3c[i] = "str" {
    }else{
    
    
    //ICONS DE MESSAGE POUR ENREGISTRER ADRESSE
    if device_mouse_check_button_pressed(0, mb_left) && 
    point_distance(obj_planetary.xxmouse,obj_planetary.yymouse,xx+30,yy+height-(obj_planetary.roll*10)-15) < 40  {
    global.lastprivatemessage = real(txt3f[i])
    obj_planetary.menuplanet3 = 2
    //show_message(txt3f[i])
    }
    if obj_planetary.portrait = 0 {
    draw_sprite_ext(spr_mail,0,xx+30,yy+height-(obj_planetary.roll*10)-15,0.5,0.5,0,obj_planetary.planetarycolor2,1)
    }else{
    draw_sprite_ext(spr_mail,0,xx+30,yy+height-25-(obj_planetary.roll*10)-15,0.5,0.5,0,obj_planetary.planetarycolor2,1)
    }
    
    
    if device_mouse_check_button_pressed(0, mb_left) && 
    point_distance(obj_planetary.xxmouse,obj_planetary.yymouse,xx+30+50,yy+height-(obj_planetary.roll*10)-15) < 40  {
    if obj_planetary.menuplanet3 = 2 {
    destroy_message(txt3e[i],txt3f[i])
    }}
    if obj_planetary.menuplanet3 = 2 {
    if obj_planetary.portrait = 0 {
    draw_sprite_ext(spr_poubelle,0,xx+30+50,yy+height-(obj_planetary.roll*10)-15,0.3,0.3,0,obj_planetary.planetarycolor2,1)
    }else{draw_sprite_ext(spr_poubelle,0,xx+30+50,yy+height-25-(obj_planetary.roll*10)-15,0.3,0.3,0,obj_planetary.planetarycolor2,1)}
    }
    
    messagefinal = string(txt3h[i])+" ("+string(txt3e[i])+")  :  "+string(txt3c[i])
    draw_set_valign(fa_top);
    if obj_planetary.portrait = 0 {
    draw_text_ext(xx+10+100,yy+height-42-(obj_planetary.roll*10),messagefinal,50,room_width-60);}else{
    draw_text_ext(xx,yy+height-60-(obj_planetary.roll*10),"            "+string(messagefinal),50,room_width/1.2);}
    height += string_height(str3[i])+200;
    }
    if txt3c[i] = "str" {//TITRE
    draw_set_colour(obj_planetary.planetarycolor2);
    draw_rectangle(0,0,room_width,room_height/15,false);
    draw_set_colour(obj_planetary.planetarycolor);
    draw_set_valign(fa_middle);
    if obj_planetary.menuplanet3 = 1 {draw_text(xx+10,yy,"Global Communication");}
    if obj_planetary.menuplanet3 = 2 {draw_text(xx+10,yy,"Private message");}
    if obj_planetary.menuplanet3 = 3 && obj_planetary.guildchannel = 1{draw_text(xx+10,yy,"Guild Communication");}
}
}

}else{
if obj_planetary.menuplanet3 = 3 {
draw_set_colour(obj_planetary.planetarycolor);
//if txt3c[i] = "str" {//TITRE
    draw_set_colour(obj_planetary.planetarycolor2);
    draw_rectangle(0,0,room_width,room_height/15,false);
    draw_set_colour(obj_planetary.planetarycolor);
    //draw_set_valign(fa_middle);
    if obj_planetary.menuplanet3 = 1 {draw_text(xx+10,yy,"Global Communication");}
    if obj_planetary.menuplanet3 = 2 {draw_text(xx+10,yy,"Private message");}
    if obj_planetary.menuplanet3 = 3 && obj_planetary.guildchannel = 1{draw_text(xx+10,yy,"Guild Communication");}
//}
//text2 = "--------------|"

draw_text_highscore2(0, 50, "line", "Name", "Score", textChat, player_name, c_green,"RESS","SHIP","SCIENCE","DEF","guildname","guildid","guildinvit","grade");
}else{
obj_planetary.guildchannel = 1
}
}
draw_set_valign(fa_top);



with(obj_planetary){
if menuplanet3 > 0 {
draw_set_valign(fa_bottom);
draw_set_colour(planetarycolor);
draw_set_halign(fa_center);
draw_rectangle(0,(room_height/2.1),room_width,room_height,false);
/*draw_set_colour(planetarycolor2);
draw_rectangle(0,0,room_width,room_height/15,false);*/
draw_set_colour(colorrect10);
draw_rectangle(0,room_height-(room_height/2.1)-40,room_width,room_height-(room_height/2.1)+20,false);
if menuplanet3 = 3 {
draw_set_colour(colorrect12);
draw_rectangle(0,room_height-(room_height/2.4)-35,room_width,room_height-(room_height/2.4)+15,false);
draw_set_colour(colorrect13);
draw_rectangle(0,room_height-(room_height/2.8)-35,room_width,room_height-(room_height/2.8)+15,false);


draw_set_colour(colorrect11);
draw_rectangle(0,room_height-(room_height/3.4)-35,room_width,room_height-(room_height/3.4)+15,false);
//draw_rectangle(0,room_height-(room_height/3.7)-35,room_width,room_height-(room_height/3.7)+15,false);
if point_distance(xxmouse,yymouse,xxmouse,room_height-(room_height/3.4)-15) < 30 {colorrect11 = c_white
if device_mouse_check_button_pressed(0, mb_left) {
if guildchannel = 1 {guildchannel = 0}else{guildchannel = 1}
}}else{colorrect11 = planetarycolor2}
draw_set_colour(planetarycolor);
if guildchannel = 1 {
draw_text(room_width/2,room_height-(room_height/3.4)+10,"Guild channel")}else{
draw_text(room_width/2,room_height-(room_height/3.4)+10,"List of members")}
draw_set_colour(planetarycolor2);
}


    draw_rectangle_colour(room_width-(room_width/40),room_height/15,room_width,room_height-(room_height/2.1)-40,c_black,c_black,c_black,c_black,false)
draw_rectangle_colour(room_width-(room_width/40),(room_height/15)+(roll/1),room_width,(room_height/15)+(roll/1)+30,c_white,c_white,c_white,c_white,false)
   if device_mouse_check_button(0, mb_left) && 
point_distance(xxmouse,yymouse,room_width,yymouse) < 30 && yymouse < room_height-(room_height/2.1)-40 {
roll = yymouse-(room_height/15)//(470+(roll/10))
}
if roll < 1 {roll = 1}
if roll > room_height-(room_height/2.1)-40 {roll = room_height-(room_height/2.1)-40}
draw_set_colour(planetarycolor);
if keyboardcheck2 = 1 && keyboardcheck = 1 {
if menuplanet3 = 2 {
if point_distance(xxmouse,yymouse,xxmouse,room_height-(room_height/2.1)-10) < 30 {colorrect10 = c_white
   if device_mouse_check_button_pressed(0, mb_left) {
if global.lastprivatemessage = "" {}else{
showInputText("Send private message", "Send", "Cancel")}}}else{colorrect10 = planetarycolor2}
draw_text(room_width/2,room_height-(room_height/2.1)+10,"Send Message = "+string(keyboard_string)+" @"+string(global.lastprivatemessage))}else{
if point_distance(xxmouse,yymouse,xxmouse,room_height-(room_height/2.1)-10) < 30 {colorrect10 = c_white
if device_mouse_check_button_pressed(0, mb_left) {
showInputText("Send message", "Send", "Cancel")}}else{colorrect10 = planetarycolor2}
draw_text(room_width/2,room_height-(room_height/2.1)+10,"Send Message = "+string(keyboard_string))}}


if menuplanet3 = 3 {
//GUILD !!!
//if global.idguild = global.idfixe {
if global.idguild = global.idfixe {//si pas de guild ,receptionner les guid invit
if point_distance(xxmouse,yymouse,xxmouse,room_height-(room_height/2.4)-5) < 30 {colorrect12 = c_white
if device_mouse_check_button_pressed(0, mb_left) {
if global.idguildinvitname = "" or global.idguildinvitname = " "  or global.idguildinvitname = "NONE" {}else{
//keyboard_string = ""
//keyboardcheck2 = 0
global.idguild = global.idguildinvit
global.idguildname = global.idguildinvitname
with(obj_highscore){
    var hiscore_map, i, str;
    hiscore_map = ds_map_create();
    //ds_map_set(hiscore_map,'id', global.travel);
    ds_map_set(hiscore_map,'cu', global.idfixe);
    ds_map_set(hiscore_map,'n', global.idguildname);
    ds_map_set(hiscore_map,'r', obj_planetary.scoreressvalid);
    ds_map_set(hiscore_map,'s', obj_planetary.scoreshipsvalid);
    ds_map_set(hiscore_map,'t', obj_planetary.scoresciencevalid);
    ds_map_set(hiscore_map,'d', obj_planetary.scoredefvalid);
    str = json_encode(hiscore_map);
    ds_map_destroy(hiscore_map); 
    postGuild = http_post_string(addr+"universe/joinguild" , str);
}

}
}}else{colorrect12 = planetarycolor2}
if global.idguildinvitname = "" {draw_text(room_width/2,room_height-(room_height/2.4)+10,"None invitation")}else{
draw_text(room_width/2,room_height-(room_height/2.4)+10,"Guild invitation received = "+string(global.idguildinvitname))}



}else{// SI GUILD ON /AFFICHER NOM DE GUILD
if point_distance(xxmouse,yymouse,xxmouse,room_height-(room_height/2.4)-15) < 30 {colorrect12 = c_white
if device_mouse_check_button_pressed(0, mb_left) {
//keyboard_string = ""
//keyboardcheck2 = 0
//global.idguild = global.idfixe
}}else{colorrect12 = planetarycolor2}
draw_text(room_width/2,room_height-(room_height/2.4)+10,"GUILD NAME = "+string(global.idguildname))

}

//}
if global.idguild = global.idfixe {//CREER GUILD // PROPRIO
if point_distance(xxmouse,yymouse,xxmouse,room_height-(room_height/2.8)-20) < 30 { colorrect13 = c_white
if device_mouse_check_button_pressed(0, mb_left) {
showInputText("Create guild", "Change", "Cancel")
keyboard_string = ""
keyboardcheck2 = 0
global.idguild = global.idfixe

}}else{colorrect13 = planetarycolor2}
draw_text(room_width/2,room_height-(room_height/2.8)+10,"CHANGE GUILD NAME = "+string(global.idguildname))
}else{//QUITTER GUILD
if point_distance(xxmouse,yymouse,xxmouse,room_height-(room_height/2.8)-15) < 30 {colorrect13 = c_white
if device_mouse_check_button_pressed(0, mb_left) {

//keyboard_string = ""
//keyboardcheck2 = 0
with(obj_highscore){
    var hiscore_map, i, str;
    hiscore_map = ds_map_create();
    //ds_map_set(hiscore_map,'id', global.travel);
    ds_map_set(hiscore_map,'cu', global.idfixe);
    ds_map_set(hiscore_map,'n', global.idguildname);
    str = json_encode(hiscore_map);
    ds_map_destroy(hiscore_map); 
    postGuild = http_post_string(addr+"universe/guitguild" , str);
}
global.idguild = global.idfixe
global.idguildname = ""

with(obj_planetary){if scoreshipsvalid > 0 {
update_score(global.name,scoretotal,global.idfixe,scoreressvalid,scoreshipsvalid,scoresciencevalid,scoredefvalid,global.idguildname,global.idguild,global.grade);
}}
}}else{colorrect13 = planetarycolor2}
draw_text(room_width/2,room_height-(room_height/2.8)+10,"QUIT GUILD")

}
}//FIN DE GUILD

}
draw_sprite_ext(spr_highscore,0,room_width-(room_width/12),room_height-(room_height/10),1,1,0,planetarycolor2,1)

//DRAW LES DIFFERENT SOUS MENU
   if device_mouse_check_button(0, mb_left) && point_distance(xxmouse,yymouse,room_width/2-160,room_height-room_height/37) < 40 {menuplanet3 = 0;}
   if device_mouse_check_button(0, mb_left) && point_distance(xxmouse,yymouse,room_width/2-60,room_height-room_height/37) < 40 {menuplanet3 = 1;}
   if device_mouse_check_button(0, mb_left) && point_distance(xxmouse,yymouse,room_width/2+60,room_height-room_height/37) < 40 {menuplanet3 = 2;}
   if device_mouse_check_button(0, mb_left) && point_distance(xxmouse,yymouse,room_width/2+160,room_height-room_height/37) < 40 {menuplanet3 = 3;}
coloriconsscore[1] = c_black
coloriconsscore[2] = c_black
coloriconsscore[3] = c_black
coloriconsscore[4] = c_black
if menuplanet3 = 0 {coloriconsscore[1] = planetarycolor2}
if menuplanet3 = 1 {coloriconsscore[2] = planetarycolor2}
if menuplanet3 = 2 {coloriconsscore[3] = planetarycolor2}
if menuplanet3 = 3 {coloriconsscore[4] = planetarycolor2}
draw_sprite_ext(spr_highscore,0,room_width/2-160,room_height-room_height/37,0.6,0.6,0,coloriconsscore[1],1)
draw_sprite_ext(spr_chat,0,room_width/2-60,room_height-room_height/37,0.4,0.4,0,coloriconsscore[2],1)
draw_sprite_ext(spr_chat,1,room_width/2+60,room_height-room_height/37,0.4,0.4,0,coloriconsscore[3],1)
draw_sprite_ext(spr_chat,2,room_width/2+160,room_height-room_height/37,0.4,0.4,0,coloriconsscore[4],1)
}



#define draw_text_highscore2
///draw_text_highscore(x,y,text1,text2,text3,highscores,name,color)
//
// Script:      Draws a highscore with the player’s name coloured in green
// Date:        2018-07-21
// Copyright:   Appsurd
//
// Arguments:
// Argument0: x
// Argument1: y
// Argument2: The text to display above the index
// Argument3: The text to display above the name
// Argument4: The text to display above the score
// Argument5: The highscore text
// Argument6: The name to colour
// Argument7: The color to give to the name of argument6





var xx = argument0;
var yy = argument1;
var str = argument5//argument5;
var name = argument6;
var colour = argument7;
var truc = argument2;
var truc = argument3;
var truc = argument4;
//str = "test|test"
name = "first"
//str = "test|test"
// Initialise the drawing by splitting up the text
var def_color = draw_get_colour();
var count = string_count("|",str);
var str2 = string_split("|",str,true);
var str3,str3a,str3b,str3c,str3d,str3e,str3f,str3g,str3h,str3i,str3j,str3k;
str3[0] = string("place")+".-"+string("name")+"-"+string("score")//+"-"+string("test")
+"-"+string(argument8)+"-"+string(argument9)+"-"+string(argument10)+"-"+string(argument11)+"-"+string(argument12)+"-"+string(argument13)+"-"+string(argument14)+"-"+string(argument15);
for(var i=0; i<count; i+=1)
{
    str3[i+1] = str2[i];
} 

// Setting some parameters, if you wish, you can change them to values you think are convenient.
if obj_planetary.portrait = 0 {
var height = 25;
var max_la = 50; // minimum width of the first column (the nr.)
var max_lb = 250; // minimum width of the name column
var max_lc = 180; // minimum width of the score column
var max_ld = 180; // minimum width of the score column
var max_le = 180; // minimum width of the score column
var max_lf = 180; // minimum width of the score column
var max_lg = 180; // minimum width of the score column
var max_lh = 180; // minimum width of the score column
var max_li = 180; // minimum width of the score column
var max_lj = 180; // minimum width of the score column
var max_lk = 180; // minimum width of the score column
}else{
var height = 25;
var max_la = 50; // minimum width of the first column (the nr.)
var max_lb = 250; // minimum width of the name column
var max_lc = 180; // minimum width of the score column
var max_ld = 1500; // minimum width of the score column
var max_le = 1500; // minimum width of the score column
var max_lf = 1500; // minimum width of the score column
var max_lg = 1500; // minimum width of the score column
var max_lh = 1500; // minimum width of the score column
var max_li = 1500; // minimum width of the score column
var max_lj = 1500; // minimum width of the score column
var max_lk = 1500; // minimum width of the score column
}

// Splitting up the text into a part with the number (3a), the name (3b) and the score (3c)
// Currently, the return is encoded by Nr.-Name-Score
for(var i=0; i<count+1; i+=1)
{
//show_message(str3[i])

    var str4 = string_split("-",str3[i],false);
    // show_message(str4)
    txt3a[i] = str4[0];//show_message(str4[0])//line
    txt3b[i] = str4[1];//show_message(str4[1])//name
    txt3c[i] = str4[2];//show_message(str4[2])//score
    //rajouter
    txt3d[i] = str4[3];//show_message(str4[3])//ress
    txt3e[i] = str4[4];//show_message(str4[4])//ship
    txt3f[i] = str4[5];//show_message(str4[5])science
    txt3g[i] = str4[6];//show_message(str4[6])def
    txt3h[i] = str4[7];//show_message(str4[7])guildname
    txt3i[i] = str4[8];//show_message(str4[8])guildid
    txt3j[i] = str4[9];//show_message(str4[9])//"invit"
    txt3k[i] = str4[10];//show_message(str4[10])//"invit"
    
    // Decode the name so we can use it (but do not decode the header containing "name" since it's not decoded!)
    if i != 0
    {
        txt3b[i] = base64_decode(txt3b[i]);
    }
    
    // Assure that if a player has a # in his name, then escape
    txt3b[i] = string_replace_all(txt3b[i],"#","\#");
    if obj_planetary.portrait = 1 {draw_set_font(fntpolylitlle)}
    // Adjust the width such that the text doesn't overlap
    max_la = max(string_width(txt3a[i]),max_la);
    max_lb = max(string_width(txt3b[i]),max_lb);
    max_lc = max(string_width(txt3c[i]),max_lc);
    max_ld = max(string_width(txt3d[i]),max_ld);
    max_le = max(string_width(txt3e[i]),max_le);
    max_lf = max(string_width(txt3f[i]),max_lf);
    max_lg = max(string_width(txt3g[i]),max_lg);
    max_lh = max(string_width(txt3h[i]),max_lh);
    max_li = max(string_width(txt3i[i]),max_li);
    max_lk = max(string_width(txt3j[i]),max_lj);
}
txt3a[0] = "";
if obj_planetary.portrait = 1 {max_la -= 45;}
// The actual drawing of the highscores
for(var i=0; i<count+1; i+=1)
{
    if name == txt3b[i]
    {
        draw_set_color(colour);
    }
    else
    {
        draw_set_color(def_color);
    }
    
    
    // Draw the numbers
    draw_set_halign(fa_right);
    draw_set_colour(obj_planetary.planetarycolor2);
    if obj_planetary.portrait = 1 {draw_rectangle(0,yy+height+44,room_width,yy+height+46,false);}else{
    draw_rectangle(0,yy+height+49,room_width,yy+height+51,false);}
    if i <= 0 {
    draw_set_colour(obj_planetary.planetarycolor);}else{
    draw_set_colour(obj_planetary.planetarycolor2);}
    
    draw_text(xx+max_la+5,yy+height,txt3a[i]);
    
    // Assure that if a player has a # in his name, then escape (I know I'm doing this twice
    // but that's needed for the string_width in the previous block to work properly
    txt3b[i] = string_replace_all(txt3b[i],"#","\#");
    
    // Draw the name + score
    draw_set_halign(fa_left);
    
    draw_text(xx+max_la+30,yy+height,txt3b[i]);
    
    if device_mouse_check_button(0, mb_left) && point_distance(obj_planetary.xxmouse,obj_planetary.yymouse,xx+max_la+30+max_lb+30,yy+height-30) < 40  {obj_planetary.modetri = 1;if instance_exists(obj_highscore){with(obj_highscore){instance_destroy();}}}
    if txt3c[i] = "score" {draw_sprite_ext(spr_highscore,0,xx+max_la+30+max_lb+30,yy+height-30,0.5,0.5,0,obj_planetary.planetarycolor,1);}else{
    draw_text(xx+max_la+30+max_lb+10,yy+height,txt3c[i]);}
    if obj_planetary.portrait = 0 {
    if device_mouse_check_button(0, mb_left) && point_distance(obj_planetary.xxmouse,obj_planetary.yymouse,xx+max_la+30+max_lb+max_lc+30,yy+height-30) < 40  {obj_planetary.modetri = 2;if instance_exists(obj_highscore){with(obj_highscore){instance_destroy();}}}
    if txt3d[i] = "RESS" {draw_sprite_ext(spr_stats,0,xx+max_la+30+max_lb+max_lc+30,yy+height-30,0.3,0.3,0,obj_planetary.planetarycolor,1)}else{
    if real(txt3d[i]) > 0 {if real(txt3d[i])/1000000 > 1 {
    draw_text(xx+max_la+30+max_lb+max_lc+10,yy+height,"> "+string(round(real(txt3d[i])/1000000))+" M");}else{
    draw_text(xx+max_la+30+max_lb+max_lc+10,yy+height,"< 1 M");}}}
    if device_mouse_check_button(0, mb_left) && point_distance(obj_planetary.xxmouse,obj_planetary.yymouse,xx+max_la+30+max_lb+max_lc+max_ld+30,yy+height-30) < 40  {obj_planetary.modetri = 3;if instance_exists(obj_highscore){with(obj_highscore){instance_destroy();}}}
    if txt3e[i] = "SHIP" {draw_sprite_ext(spr_stats,1,xx+max_la+30+max_lb+max_lc+max_ld+30,yy+height-30,0.3,0.3,0,obj_planetary.planetarycolor,1)}else{
    draw_text(xx+max_la+30+max_lb+max_lc+max_ld+10,yy+height,txt3e[i]);}
    if device_mouse_check_button(0, mb_left) && point_distance(obj_planetary.xxmouse,obj_planetary.yymouse,xx+max_la+30+max_lb+max_lc+max_ld+max_le+30,yy+height-30) < 40  {obj_planetary.modetri = 4;if instance_exists(obj_highscore){with(obj_highscore){instance_destroy();}}}
    if txt3f[i] = "SCIENCE" {draw_sprite_ext(spr_stats,2,xx+max_la+30+max_lb+max_lc+max_ld+max_le+30,yy+height-30,0.3,0.3,0,obj_planetary.planetarycolor,1)}else{
    draw_text(xx+max_la+30+max_lb+max_lc+max_ld+max_le+10,yy+height,txt3f[i]);}
    if device_mouse_check_button(0, mb_left) && point_distance(obj_planetary.xxmouse,obj_planetary.yymouse,xx+max_la+30+max_lb+max_lc+max_ld+max_le+max_lf+30,yy+height-30) < 40  {obj_planetary.modetri = 5;if instance_exists(obj_highscore){with(obj_highscore){instance_destroy();}}}
    if txt3g[i] = "DEF" {draw_sprite_ext(spr_stats,3,xx+max_la+30+max_lb+max_lc+max_ld+max_le+max_lf+30,yy+height-30,0.3,0.3,0,obj_planetary.planetarycolor,1)}else{
    draw_text(xx+max_la+30+max_lb+max_lc+max_ld+max_le+max_lf+10,yy+height,txt3g[i]);}//
    draw_text(xx+max_la+30+max_lb+max_lc+max_ld+max_le+max_lf+max_lh+10,yy+height,txt3h[i]);
    
    }
    if txt3j[i] = "0" or txt3j[i] = 0 or txt3j[i] = "0$0" or txt3j[i] = "guildinvit" or txt3j[i] = "guildid"{}else{
    
    idrecuptemp = 0
    if string(txt3b[i]) = global.name {//show_message(string(txt3b[i]))
    if real(txt3c[i]) = floor(obj_planetary.scoretotal) {//show_message(real(txt3c[i]))
    if real(txt3d[i]) = floor(obj_planetary.scoreressvalid) {//show_message(real(txt3d[i]))
    if real(txt3e[i]) = floor(obj_planetary.scoreshipsvalid)  {//show_message(real(txt3e[i]))
    if real(txt3f[i]) = floor(obj_planetary.scoresciencevalid) {//show_message(real(txt3f[i]))
    if real(txt3g[i]) = floor(obj_planetary.scoredefvalid) {//show_message(real(txt3g[i]))//check si c bien moi
    strvarguild = string_split2("$",txt3j[i],true);
    global.idguildinvit = real(strvarguild[1])
    global.idguildinvitname = string(strvarguild[0])
    //show_message(global.idguildinvitname)
    //show_message(global.idguildinvit)
    //show_message(global.idguildnameinvit)
    }}}}}}}
    height += string_height(str3[i]);
}
draw_set_font(fnt_poly)
