#define scr_menuplanet
//JAUGE DE STATS


xxmouse = mouse_x
yymouse = mouse_y

if ds_grid_get(planetary,32,planetnowid) = 0 {statschoosemenu = 0}

if surface_exists(surf) && zoom = 1 
   {
   if alarm[0] < 0 {
   

   
   
   
   ///MENU 2
   if menuplanet = 1 {}else{
   if device_mouse_check_button_pressed(0, mb_left) && 
point_distance(xxmouse,yymouse,room_width/12,(room_height/20)) < 70 {
if instance_exists(obj_highscore){with(obj_highscore){instance_destroy();}}
instance_create(x,y,obj_highscore)
if menuplanet = 2 {menuplanet = 0;}else{menuplanet = 2;}}}

if echelle = 0 {
if menuplanet = 2 or alarm[5] > 0 {

if  menuplanet = 2 {roomheightdiv = 5;draw_set_alpha(1);}else{roomheightdiv = 20;draw_set_alpha(alarm[5]);}
if device_mouse_check_button(0, mb_left)  && point_distance(xxmouse,yymouse,xxmouse,room_height-(room_height/roomheightdiv)+10 ) < 40 
&& xxmouse > (room_width/4) && xxmouse < room_width-(room_width/4){
optiportabletaillelerp = (xxmouse-((room_width/3)))/(room_width/3)
}

optiportabletaille = lerp(optiportabletaille,optiportabletaillelerp,0.1)
if optiportabletaille < 0.15 {optiportabletaille = 0.15}
if optiportabletaille > 1 {optiportabletaille = 1}
if optiportabletaillevar = optiportabletaille {}else{
distvaroptidiv = 2.9-optiportabletaille//2.2

if optiportabletaillevar < optiportabletaille {dirinverse = 1}else{dirinverse = 0}
if optiportabletaillevar = optiportabletaille {}else{optiportabletaillevar = abs(optiportabletaille-optiportabletaillevar)

if instance_exists(obj_ship){with(obj_ship){
if other.dirinverse = 1 {
dir = point_direction(room_width/2,room_height/2,xx,yy)}else{
dir = point_direction(xx,yy,room_width/2,room_height/2)}
distoptivar = point_distance(xx,yy,room_width/2,room_height/2)
//xxcursor += lengthdir_x((other.optiportabletaillevar*(distoptivar/other.optiportabletaille)*1),dir)
//yycursor += lengthdir_y((other.optiportabletaillevar*(distoptivar/other.optiportabletaille)*1),dir)
xx += lengthdir_x((other.optiportabletaillevar*(distoptivar/other.optiportabletaille)*1),dir)
yy += lengthdir_y((other.optiportabletaillevar*(distoptivar/other.optiportabletaille)*1),dir)
}}

if instance_exists(obj_laser){with(obj_laser){
if other.dirinverse = 1 {
dir = point_direction(room_width/2,room_height/2,x,y)}else{
dir = point_direction(x,y,room_width/2,room_height/2)}
distoptivar = point_distance(x,y,room_width/2,room_height/2)
//xxcursor += lengthdir_x((other.optiportabletaillevar*(distoptivar/other.optiportabletaille)*1),dir)
//yycursor += lengthdir_y((other.optiportabletaillevar*(distoptivar/other.optiportabletaille)*1),dir)
x += lengthdir_x((other.optiportabletaillevar*(distoptivar/other.optiportabletaille)*1),dir)
y += lengthdir_y((other.optiportabletaillevar*(distoptivar/other.optiportabletaille)*1),dir)
}}

if instance_exists(obj_shipcommand){with(obj_shipcommand){
if other.dirinverse = 1 {
dir = point_direction(room_width/2,room_height/2,x,y)}else{
dir = point_direction(x,y,room_width/2,room_height/2)}
distoptivar = point_distance(x,y,room_width/2,room_height/2)
//xxcursor += lengthdir_x((other.optiportabletaillevar*(distoptivar/other.optiportabletaille)*1),dir)
//yycursor += lengthdir_y((other.optiportabletaillevar*(distoptivar/other.optiportabletaille)*1),dir)
xx += lengthdir_x((other.optiportabletaillevar*(distoptivar/other.optiportabletaille)*1),dir)
yy += lengthdir_y((other.optiportabletaillevar*(distoptivar/other.optiportabletaille)*1),dir)
}}


if instance_exists(obj_rocket){with(obj_rocket){
if other.dirinverse = 1 {
dir = point_direction(room_width/2,room_height/2,x,y)}else{
dir = point_direction(x,y,room_width/2,room_height/2)}
distoptivar = point_distance(x,y,room_width/2,room_height/2)
//xxcursor += lengthdir_x((other.optiportabletaillevar*(distoptivar/other.optiportabletaille)*1),dir)
//yycursor += lengthdir_y((other.optiportabletaillevar*(distoptivar/other.optiportabletaille)*1),dir)
x += lengthdir_x((other.optiportabletaillevar*(distoptivar/other.optiportabletaille)*1),dir)
y += lengthdir_y((other.optiportabletaillevar*(distoptivar/other.optiportabletaille)*1),dir)
}}

if instance_exists(obj_debris){with(obj_debris){
if other.dirinverse = 1 {
dir = point_direction(room_width/2,room_height/2,x,y)}else{
dir = point_direction(x,y,room_width/2,room_height/2)}
distoptivar = point_distance(x,y,room_width/2,room_height/2)
//xxcursor += lengthdir_x((other.optiportabletaillevar*(distoptivar/other.optiportabletaille)*1),dir)
//yycursor += lengthdir_y((other.optiportabletaillevar*(distoptivar/other.optiportabletaille)*1),dir)
x += lengthdir_x((other.optiportabletaillevar*(distoptivar/other.optiportabletaille)*1),dir)
y += lengthdir_y((other.optiportabletaillevar*(distoptivar/other.optiportabletaille)*1),dir)
}}

if instance_exists(obj_asteorid){with(obj_asteorid){
if other.dirinverse = 1 {
dir = point_direction(room_width/2,room_height/2,xx,yy)}else{
dir = point_direction(xx,yy,room_width/2,room_height/2)}
distoptivar = point_distance(xx,yy,room_width/2,room_height/2)
x += lengthdir_x((other.optiportabletaillevar*(distoptivar/other.optiportabletaille)*1),dir)
y += lengthdir_y((other.optiportabletaillevar*(distoptivar/other.optiportabletaille)*1),dir)
}}


}

optiportabletaillevar  = optiportabletaille}

draw_healthbar(room_width/3, room_height-(room_height/roomheightdiv), room_width-(room_width/3), room_height-(room_height/roomheightdiv)+20,  optiportabletaille*100, c_black, c_white, c_white, 0, true, true)//STATSecologie
draw_set_alpha(1);
}}

if menuplanet = 2 {
draw_set_valign(fa_bottom);
draw_set_colour(planetarycolor);
draw_set_halign(fa_center);
draw_rectangle(0,0,room_width,room_height,false);
draw_set_colour(colorrect1);
draw_rectangle(0,room_height/6-40,room_width,room_height/6+40,false);
draw_set_colour(colorrect3);
draw_rectangle(0,room_height/3-40,room_width,room_height/3+40,false);
draw_set_colour(colorrect2);
draw_rectangle(0,room_height/2-40,room_width,room_height/2+40,false);
draw_set_colour(planetarycolor);
draw_rectangle(0,room_height-(room_height/5)-40,room_width,room_height-(room_height/5)+40,false);
draw_set_colour(planetarycolor);


draw_healthbar(room_width/3, room_height-(room_height/roomheightdiv), room_width-(room_width/3), room_height-(room_height/roomheightdiv)+20,  optiportabletaille*100, c_black, c_white, c_white, 0, true, true)//STATSecologie


//QUITTER
if point_in_rectangle(xxmouse, yymouse,0,room_height/6-40,room_width,room_height/6+40) { colorrect1 = c_white;
if device_mouse_check_button_released(0, mb_left)  {game_end();}
}else{colorrect1 = planetarycolor2;}
draw_text(room_width/2,(room_height/6)-0,"Quit game")


//NEWGAME
if point_in_rectangle(xxmouse, yymouse,0,room_height/2-40,room_width,room_height/2+40) {colorrect2 = c_white
if device_mouse_check_button_released(0, mb_left) { 
ini_open("working_directory+save.ini");
ds_grid_clear(planetary,0);
ini_write_string("planetary", "grid", ds_grid_write(planetary));
ini_close();
ini_open("working_directory+save2.ini");
ini_section_delete( "game" );
nosave = 1
ini_close();
game_restart();
}
}else{colorrect2 = planetarycolor2;}
draw_text(room_width/2,(room_height/2)-0,"NEW GAME")
//RESOLUTION
str = ""
if moderatio = 1 {str = "1920 X 1080"}
if moderatio = 2 {str = "960 X 640"}
if moderatio = 3 {str = "1024 X 768"}
if moderatio = 4 {str = "1280 X 800"}
if moderatio = 5 {str = "1366 X 768"}
if moderatio = 6 {str = "1400 X 1050"}
if moderatio = 7 {str = "1600 X 1024"}
if moderatio = 8 {str = "1600 X 1200"}
if moderatio = 9 {str = "2048 X 1536"}
if moderatio = 10 {str = "2220 X 1080"}

if point_in_rectangle(xxmouse, yymouse,0,room_height/3-40,room_width,room_height/3+40) { colorrect3 = c_white
if device_mouse_check_button_pressed(0, mb_left) {
if moderatio < 10 {moderatio += 1}else{moderatio = 1}
if moderatio = 2 {moderatio = 3} //le 2 est vraiment pourave !
surface_free(surf);
}
}else{colorrect3 = planetarycolor2;}

draw_text(room_width/2,(room_height/3)-0,str)


//draw_text(room_width/2,(room_height/3)-50,"Delete save")


draw_text(room_width/2,room_height-(room_height/5)-0,"Distance of view")
draw_set_halign(fa_left);
}

if menuplanet = 1 {}else{
draw_sprite_ext(spr_engrenage,0,room_width/12,(room_height/20),1,1,0,planetarycolor2,1)}
   //FIN MENU 2
   
   
   

if echelle = 0 {

   
   //MENU HELP

   if menuhelp = 1 {
if portrait = 0 {
xportwidth = room_width/2
xplusrect = 1
}else{xplusrect = 1.5
xportwidth = room_width
}
   
   draw_set_valign(fa_top);
draw_set_colour(planetarycolor);
draw_set_halign(fa_left);
draw_rectangle(0,0,xportwidth,room_height,false);
draw_set_colour(planetarycolor2);
draw_rectangle(0,(5*xplusrect)-(roll2*6),xportwidth,(15*xplusrect)-(roll2*6),false);
draw_rectangle(0,(770*xplusrect)-(roll2*6),xportwidth,(780*xplusrect)-(roll2*6),false);
draw_rectangle(0,(1520*xplusrect)-(roll2*6),xportwidth,(1530*xplusrect)-(roll2*6),false);
draw_rectangle(0,(2670*xplusrect)-(roll2*6),xportwidth,(2680*xplusrect)-(roll2*6),false);
draw_rectangle(0,(3470*xplusrect)-(roll2*6),xportwidth,(3480*xplusrect)-(roll2*6),false);
draw_rectangle(0,(3970*xplusrect)-(roll2*6),xportwidth,(3980*xplusrect)-(roll2*6),false);
draw_rectangle(0,(4570*xplusrect)-(roll2*6),xportwidth,(4580*xplusrect)-(roll2*6),false);

draw_rectangle(0,(5*xplusrect)-(roll2*6)+100,xportwidth,(15*xplusrect)-(roll2*6)+100,false);
draw_rectangle(0,(770*xplusrect)-(roll2*6)+100,xportwidth,(780*xplusrect)-(roll2*6)+100,false);
draw_rectangle(0,(1520*xplusrect)-(roll2*6)+100,xportwidth,(1530*xplusrect)-(roll2*6)+100,false);
draw_rectangle(0,(2670*xplusrect)-(roll2*6)+100,xportwidth,(2680*xplusrect)-(roll2*6)+100,false);
draw_rectangle(0,(3470*xplusrect)-(roll2*6)+100,xportwidth,(3480*xplusrect)-(roll2*6)+100,false);
draw_rectangle(0,(3970*xplusrect)-(roll2*6)+100,xportwidth,(3980*xplusrect)-(roll2*6)+100,false);
draw_rectangle(0,(4570*xplusrect)-(roll2*6)+100,xportwidth,(4580*xplusrect)-(roll2*6)+100,false);

draw_sprite_ext(spr_stats,4,50,(50*xplusrect)-(roll2*6),0.6,0.6,0,colorrect30,1)
if point_distance(xxmouse,yymouse,50,(50*xplusrect)-(roll2*6)) < 25 {colorrect30 = c_white
if device_mouse_check_button_pressed(0, mb_left) {
if menuplanet = 1 {}else{if instance_exists(obj_highscore){with(obj_highscore){instance_destroy();}};instance_create(x,y,obj_highscore);menuplanet = 1;xxmenu = 0;xxmenulerp = 500}
statschoosemenu = 0}}else{colorrect30 = planetarycolor2}
draw_sprite_ext(spr_action,3,50,((770+50)*xplusrect)-(roll2*6),0.6,0.6,0,colorrect31,1)
 if point_distance(xxmouse,yymouse,50,((770+50)*xplusrect)-(roll2*6)) < 25 {colorrect31 = c_white
if device_mouse_check_button_pressed(0, mb_left) { 
if menuplanet = 1 {}else{if instance_exists(obj_highscore){with(obj_highscore){instance_destroy();}};instance_create(x,y,obj_highscore);menuplanet = 1;xxmenu = 0;xxmenulerp = 500}
statschoosemenu = 0}}else{colorrect31 = planetarycolor2}
draw_sprite_ext(spr_stats,0,50,((1520+50)*xplusrect)-(roll2*6),0.6,0.6,0,colorrect32,1)
if point_distance(xxmouse,yymouse,50,((1520+50)*xplusrect)-(roll2*6)) < 25 {colorrect32 = c_white
if device_mouse_check_button_pressed(0, mb_left) {
if menuplanet = 1 {}else{if instance_exists(obj_highscore){with(obj_highscore){instance_destroy();}};instance_create(x,y,obj_highscore);menuplanet = 1;xxmenu = 0;xxmenulerp = 500}
statschoosemenu = 1}}else{colorrect32 = planetarycolor2}
draw_sprite_ext(spr_stats,1,50,((2670+50)*xplusrect)-(roll2*6),0.6,0.6,0,colorrect33,1)
if  point_distance(xxmouse,yymouse,50,((2670+50)*xplusrect)-(roll2*6)) < 25 {colorrect33 = c_white
if device_mouse_check_button_pressed(0, mb_left) {
if menuplanet = 1 {}else{if instance_exists(obj_highscore){with(obj_highscore){instance_destroy();}};instance_create(x,y,obj_highscore);menuplanet = 1;xxmenu = 0;xxmenulerp = 500}
statschoosemenu = 2}}else{colorrect33 = planetarycolor2}
draw_sprite_ext(spr_stats,2,50,((3470+50)*xplusrect)-(roll2*6),0.6,0.6,0,colorrect34,1)
if point_distance(xxmouse,yymouse,50,((3470+50)*xplusrect)-(roll2*6)) < 25 {colorrect34 = c_white
if device_mouse_check_button_pressed(0, mb_left) {
if menuplanet = 1 {}else{if instance_exists(obj_highscore){with(obj_highscore){instance_destroy();}};instance_create(x,y,obj_highscore);menuplanet = 1;xxmenu = 0;xxmenulerp = 500}
statschoosemenu = 3}}else{colorrect34 = planetarycolor2}
draw_sprite_ext(spr_stats,3,50,((3970+50)*xplusrect)-(roll2*6),0.6,0.6,0,colorrect35,1)
if  point_distance(xxmouse,yymouse,50,((3970+50)*xplusrect)-(roll2*6)) < 25 {colorrect35 = c_white
if device_mouse_check_button_pressed(0, mb_left) {
if menuplanet = 1 {}else{if instance_exists(obj_highscore){with(obj_highscore){instance_destroy();}};instance_create(x,y,obj_highscore);menuplanet = 1;xxmenu = 0;xxmenulerp = 500}
statschoosemenu = 4}}else{colorrect35 = planetarycolor2 }



draw_sprite_ext(spr_highscore,0,50,((4570+50)*xplusrect)-(roll2*6),0.8,0.8,0,colorrect36,1)
if point_distance(xxmouse,yymouse,50,((4570+50)*xplusrect)-(roll2*6)) < 25 {colorrect36 = c_white
if device_mouse_check_button_pressed(0, mb_left) {
menuplanet = 3;if instance_exists(obj_highscore){with(obj_highscore){instance_destroy();}};instance_create(x,y,obj_highscore);}}else{colorrect36 = planetarycolor2}

draw_text_outline(10,(30*xplusrect)-(roll2*6),string(strhelp[0]),planetarycolor2,(xportwidth)-(room_width/35),fa_top,50,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(10,(800*xplusrect)-(roll2*6),string(strhelp[1]),planetarycolor2,(xportwidth)-(room_width/35),fa_top,50,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(10,(1550*xplusrect)-(roll2*6),string(strhelp[2]),planetarycolor2,(xportwidth)-(room_width/35),fa_top,50,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(10,(2700*xplusrect)-(roll2*6),string(strhelp[3]),planetarycolor2,(xportwidth)-(room_width/35),fa_top,50,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(10,(3500*xplusrect)-(roll2*6),string(strhelp[4]),planetarycolor2,(xportwidth)-(room_width/35),fa_top,50,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(10,(4000*xplusrect)-(roll2*6),string(strhelp[5]),planetarycolor2,(xportwidth)-(room_width/35),fa_top,50,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(10,(4600*xplusrect)-(roll2*6),string(strhelp[6]),planetarycolor2,(xportwidth)-(room_width/35),fa_top,50,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km


   draw_set_color(c_white);
if device_mouse_check_button(0, mb_left){
xxmousefin = device_mouse_x(0);
    yymousefin = device_mouse_y(0);}
    draw_rectangle_colour(xportwidth-(room_width/40),0,xportwidth,room_height,c_black,c_black,c_black,c_black,false)
draw_rectangle_colour(xportwidth-(room_width/40),0+(roll2/1),xportwidth,50+(roll2/1),c_white,c_white,c_white,c_white,false)
   if device_mouse_check_button(0, mb_left) && 
point_distance(xxmouse,yymouse,xportwidth,yymouse) < 70 {
roll2 = yymouse-25//(470+(roll/10))
}
if roll2 < 1 {roll2 = 1}

   }
   
      draw_sprite_ext(spr_action,4,0+40,room_height-40,0.5,0.5,0,planetarycolor2,1)
if device_mouse_check_button_pressed(0, mb_left) && 
point_distance(xxmouse,yymouse,0+40,room_height-40) < 30 {
url_open( 'https://steamcommunity.com/sharedfiles/filedetails/?id=1666606018' );//if menuhelp = 1 {menuhelp = 0}else{menuhelp = 1}
}





if ds_grid_get(planetary,204,planetnowid) > 0 && modesun = 0 {//HP PLANET
if device_mouse_check_button_pressed(0, mb_left) && 
point_distance(xxmouse,yymouse,room_width-(room_width/12),(room_height/20)) < 50 {
if menuplanet = 1 {
menuplanet = 0;xxmenu = 500;xxmenulerp = 500
if instance_exists(obj_highscore){with(obj_highscore){instance_destroy();}};instance_create(x,y,obj_highscore);
}else{
if instance_exists(obj_highscore){with(obj_highscore){instance_destroy();}};instance_create(x,y,obj_highscore);
menuplanet = 1;xxmenu = 0;xxmenulerp = 500
}
}

if device_mouse_check_button_pressed(0, mb_left) && 
point_distance(xxmouse,yymouse,room_width-(room_width/30),room_height-(room_height/10)) < 70 {
if menuplanet = 1 {}else{
if menuplanet = 3 {
menuplanet = 0;xxmenu = 500;xxmenulerp = 500;if instance_exists(obj_highscore){with(obj_highscore){instance_destroy();}};instance_create(x,y,obj_highscore);
}else{
menuplanet = 3;xxmenu = 0;xxmenulerp = 500;if instance_exists(obj_highscore){with(obj_highscore){instance_destroy();}};instance_create(x,y,obj_highscore);
}
}
}

xxmenulerp = lerp(xxmenulerp,xxmenu,0.1)

if menuplanet = 3 //or point_distance(xxmenulerp,0,xxmenu,0) > 10 
{
if menuplanet3 = 0 {
draw_set_valign(fa_bottom);
draw_set_colour(planetarycolor);
draw_set_halign(fa_center);
draw_rectangle(0,0,room_width,room_height,false);
draw_set_colour(planetarycolor2);
draw_rectangle(0,0,room_width,room_height/15,false);
draw_set_colour(colorrect9);
draw_rectangle(0,room_height-(room_height/2.1)-40,room_width,room_height-(room_height/2.1)+20,false);
if menuplanet3 = 3 {
draw_rectangle(0,room_height-(room_height/3)-35,room_width,room_height-(room_height/3)+15,false);
draw_rectangle(0,room_height-(room_height/4)-35,room_width,room_height-(room_height/4)+15,false);}


//draw_rectangle(0,room_height-(room_height/5)-40,room_width,room_height-(room_height/5)+40,false);
draw_set_colour(c_black);

if point_distance(xxmouse,yymouse,xxmouse,room_height-(room_height/2.07)-10) < 30 {//NAME
colorrect9 = c_white
if device_mouse_check_button_pressed(0, mb_left) {
showInputText("Change Name", "Change", "Cancel")
keyboard_string = ""
keyboardcheck = 0
}}else{colorrect9 = planetarycolor2}



draw_text(room_width/2,room_height-(room_height/2.1)+15,"Name User = "+string(global.name))
/*if instance_exists(obj_highscore){}else{
instance_create(x,y,obj_send_in);
instance_create(x,y,obj_highscore);}*/


}

//DANS LE HIGSHCORE POUR LE RESTE DRAW CHAT
if menuplanet3 > 0 {
draw_set_valign(fa_bottom);
draw_set_colour(planetarycolor);
draw_set_halign(fa_center);
draw_rectangle(0,0,room_width,room_height,false);
draw_set_colour(planetarycolor2);
draw_rectangle(0,0,room_width,room_height/15,false);
draw_set_colour(planetarycolor2);
draw_rectangle(0,room_height-(room_height/2.1)-40,room_width,room_height-(room_height/2.1)+20,false);
if menuplanet3 = 3 {
draw_rectangle(0,room_height-(room_height/3)-35,room_width,room_height-(room_height/3)+15,false);
draw_rectangle(0,room_height-(room_height/4)-35,room_width,room_height-(room_height/4)+15,false);}
}


//DRAW LES DIFFERENT SOUS MENU
   if device_mouse_check_button(0, mb_left) && point_distance(xxmouse,yymouse,room_width/2-160,room_height-room_height/37) < 40 {menuplanet3 = 0;if instance_exists(obj_highscore){with(obj_highscore){instance_destroy();}}}
   if device_mouse_check_button(0, mb_left) && point_distance(xxmouse,yymouse,room_width/2-60,room_height-room_height/37) < 40 {menuplanet3 = 1;if instance_exists(obj_highscore){with(obj_highscore){instance_destroy();}}}
   if device_mouse_check_button(0, mb_left) && point_distance(xxmouse,yymouse,room_width/2+60,room_height-room_height/37) < 40 {menuplanet3 = 2;if instance_exists(obj_highscore){with(obj_highscore){instance_destroy();}}}
   if device_mouse_check_button(0, mb_left) && point_distance(xxmouse,yymouse,room_width/2+160,room_height-room_height/37) < 40 {menuplanet3 = 3;if instance_exists(obj_highscore){with(obj_highscore){instance_destroy();}}}
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

if menuplanet = 1 //or point_distance(xxmenulerp,0,xxmenu,0) > 10 
{

ytext = 37
xplus = 120
draw = 2
widthor0 = room_width-(room_width/2)
if display_get_orientation() = display_portrait
  {widthor0 = 0;
  portrait = 1
  draw_set_color(planetarycolor2);
draw_rectangle(widthor0+xxmenulerp,275,room_width+xxmenulerp,350,false);
   draw_set_colour(planetarycolor);
draw_rectangle(widthor0+xxmenulerp,270,room_width+xxmenulerp,275,false);
draw_rectangle(widthor0+xxmenulerp,340,room_width+xxmenulerp,room_height+0,false);
xdisthealth = widthor0+150+xxmenulerp
draw = 1
   }else {widthor0 = room_width-(room_width/2);
   portrait = 0
   draw_set_color(planetarycolor2);
draw_rectangle(widthor0+xxmenulerp,275,room_width+xxmenulerp,350,false);
draw_set_colour(planetarycolor);
draw_rectangle(widthor0+xxmenulerp,270,room_width+xxmenulerp,275,false);
draw_rectangle(widthor0+xxmenulerp,340,room_width+xxmenulerp,room_height+0,false);

xdisthealth = widthor0+150+xxmenulerp
draw = 2
}



//SHIPS MENU EN AVANCE POUR CACHER TEXTE SOUS RECTANGLE
if statschoosemenu = 5 {//ships
draw_set_color(planetarycolor2);
if device_mouse_check_button(0, mb_left){
xxmousefin = device_mouse_x(0);
    yymousefin = device_mouse_y(0);}
    draw_rectangle_colour(room_width-(room_width/40),340,room_width,room_height,c_black,c_black,c_black,c_black,false)
draw_rectangle_colour(room_width-(room_width/40),340+(roll/1),room_width,490+(roll/1),c_white,c_white,c_white,c_white,false)
   if device_mouse_check_button(0, mb_left) && 
point_distance(xxmouse,yymouse,room_width,yymouse) < 70 {
roll = yymouse-400//(470+(roll/10))
}
if roll < 1 {roll = 1}
draw_text_outline(xxmenulerp+xdisthealth-xplus,350+ytext-(roll*4),"Total ships : "+string_add_delimiter(ds_grid_get(planetary,36,planetnowid)),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,2,yygrid,150000000)//distance soleil
draw_text_outline(xxmenulerp+xdisthealth-xplus,400+ytext-(roll*4),"Ships in flight : "+string_add_delimiter(ds_grid_get(planetary,53,planetnowid)),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,5,yygrid,1)//atmospherevalable //1 ok
//draw_text_outline(xxmenulerp+xdisthealth-xplus,450+ytext,"Ships type I : "+string(ds_grid_get(planetary,54,planetnowid))+" / "+string(ds_grid_get(planetary,43,planetnowid)),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,8,yygrid,"")//name
//draw_text_outline(xxmenulerp+xdisthealth-xplus,500+ytext,"Ships type II : "+string(ds_grid_get(planetary,55,planetnowid))+" / "+string(ds_grid_get(planetary,44,planetnowid)),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,9,yygrid,26)//Velocity 26 km/s
//draw_text_outline(xxmenulerp+xdisthealth-xplus,550+ytext,"Ships type III : "+string(ds_grid_get(planetary,56,planetnowid))+" / "+string(ds_grid_get(planetary,45,planetnowid)),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
//draw_text_outline(xxmenulerp+xdisthealth-xplus,600+ytext,"Ships type IV : "+string(ds_grid_get(planetary,57,planetnowid))+" / "+string(ds_grid_get(planetary,46,planetnowid)),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
//draw_text_outline(xxmenulerp+xdisthealth-xplus,650+ytext,"Ships type V : "+string(ds_grid_get(planetary,58,planetnowid))+" / "+string(ds_grid_get(planetary,47,planetnowid)),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,15,yygrid,12)//Surface temperature 38 °c

if ds_grid_get(planetary,32,planetnowid) = global.idfixe {
draw_set_color(planetarycolor2);
if portrait = 0 {scalespriteship = 1.3
scalespriteship2 = 1
xiconbigship = room_width-(room_width/1.4)
}else{xiconbigship = room_width-(room_width/4)
scalespriteship = 0.9
scalespriteship2 = 0.7}
draw_rectangle(widthor0+xxmenulerp,480+ytext-(roll*4),room_width-(room_width/40),520+ytext-(roll*4),false);
draw_set_color(planetarycolor2);
draw_text_outline(xxmenulerp+xdisthealth-xplus,550+ytext-(roll*4),"You can send ship to planet colonized or attack a planet",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km

/*if point_distance(xxmouse,yymouse,xiconbigship+(xxmenulerp+xdisthealth-xplus),650+ytext-(roll*4)) < 50 {colorrect20 = c_white
   if device_mouse_check_button(0, mb_left) {
   global.clickss = 1;
   keyboard_string = "";
   global.ssc1 = "0";
}}else{colorrect20 = planetarycolor2}
draw_sprite_ext(spr_bigship,0,xiconbigship+(xxmenulerp+xdisthealth-xplus),650+ytext-(roll*4),scalespriteship2,scalespriteship2,0,colorrect20,1)
draw_text_outline(xxmenulerp+xdisthealth-xplus,550+ytext-(roll*4),"I.Horus  ("+string(global.ssc1)+" / "+string_add_delimiter(ds_grid_get(planetary,43,planetnowid))+")",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
*/
draw_set_color(planetarycolor2);
draw_rectangle(widthor0+xxmenulerp,780+ytext-(roll*4),room_width-(room_width/40),820+ytext-(roll*4),false);
draw_set_color(planetarycolor2);
if point_distance(xxmouse,yymouse,xiconbigship+(xxmenulerp+xdisthealth-xplus),950+ytext-(roll*4)) < 50 {colorrect21 = c_white
   if device_mouse_check_button(0, mb_left) {
   global.clickss = 2;
   keyboard_string = "";
   global.ssc2 = "0";
}}else{colorrect21 = planetarycolor2}
draw_sprite_ext(spr_bigship,1,xiconbigship+(xxmenulerp+xdisthealth-xplus),950+ytext-(roll*4),scalespriteship2,scalespriteship2,0,colorrect21,1)
draw_text_outline(xxmenulerp+xdisthealth-xplus,850+ytext-(roll*4),"II.Eagle  ("+string(global.ssc2)+" / "+string_add_delimiter(ds_grid_get(planetary,44,planetnowid))+")",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
if global.clickss = 2 {
draw_text_outline(xxmenulerp+xdisthealth-xplus,950+ytext-(roll*4),"Press Enter",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
}
draw_set_color(planetarycolor2);
draw_rectangle(widthor0+xxmenulerp,1080+ytext-(roll*4),room_width-(room_width/40),1120+ytext-(roll*4),false);
draw_set_color(planetarycolor2);

if point_distance(xxmouse,yymouse,xiconbigship+(xxmenulerp+xdisthealth-xplus),1250+ytext-(roll*4)) < 50 {colorrect22 = c_white
   if device_mouse_check_button(0, mb_left) {
   global.clickss = 3;
   keyboard_string = "";
   global.ssc3 = "0";
}}else{colorrect22 = planetarycolor2}
draw_sprite_ext(spr_bigship,2,xiconbigship+(xxmenulerp+xdisthealth-xplus),1250+ytext-(roll*4),scalespriteship2,scalespriteship2,0,colorrect22,1)
draw_text_outline(xxmenulerp+xdisthealth-xplus,1150+ytext-(roll*4),"III.Terhen  ("+string(global.ssc3)+" / "+string_add_delimiter(ds_grid_get(planetary,45,planetnowid))+")",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
if global.clickss = 3 {
draw_text_outline(xxmenulerp+xdisthealth-xplus,1250+ytext-(roll*4),"Press Enter",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
}
draw_set_color(planetarycolor2);
draw_rectangle(widthor0+xxmenulerp,1380+ytext-(roll*4),room_width-(room_width/40),1420+ytext-(roll*4),false);
draw_set_color(planetarycolor2);
if point_distance(xxmouse,yymouse,xiconbigship+(xxmenulerp+xdisthealth-xplus),1550+ytext-(roll*4)) < 50 {colorrect23 = c_white
   if device_mouse_check_button(0, mb_left) {
   global.clickss = 4;
   keyboard_string = "";
   global.ssc4 = "0";
}}else{colorrect23 = planetarycolor2}
draw_sprite_ext(spr_bigship,3,xiconbigship+(xxmenulerp+xdisthealth-xplus),1550+ytext-(roll*4),scalespriteship2,scalespriteship2,0,colorrect23,1)
draw_text_outline(xxmenulerp+xdisthealth-xplus,1450+ytext-(roll*4),"IV.Baltyor  ("+string(global.ssc4)+" / "+string_add_delimiter(ds_grid_get(planetary,46,planetnowid))+")",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
if global.clickss = 4 {
draw_text_outline(xxmenulerp+xdisthealth-xplus,1550+ytext-(roll*4),"Press Enter",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
}
draw_set_color(planetarycolor2);
draw_rectangle(widthor0+xxmenulerp,1680+ytext-(roll*4),room_width-(room_width/40),1720+ytext-(roll*4),false);
draw_set_color(planetarycolor2);
if point_distance(xxmouse,yymouse,xiconbigship+(xxmenulerp+xdisthealth-xplus),1850+ytext-(roll*4)) < 50 {colorrect24 = c_white
   if device_mouse_check_button(0, mb_left) {
   global.clickss = 5;
   keyboard_string = "";
   global.ssc5 = "0";
}}else{colorrect24 = planetarycolor2}
draw_sprite_ext(spr_bigship,4,xiconbigship+(xxmenulerp+xdisthealth-xplus),1850+ytext-(roll*4),scalespriteship2,scalespriteship2,0,colorrect24,1)
draw_text_outline(xxmenulerp+xdisthealth-xplus,1750+ytext-(roll*4),"V.Emperor  ("+string(global.ssc5)+" / "+string_add_delimiter(ds_grid_get(planetary,47,planetnowid))+")",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
if global.clickss = 5 {
draw_text_outline(xxmenulerp+xdisthealth-xplus,1850+ytext-(roll*4),"Press Enter",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
}
draw_set_color(planetarycolor2);
draw_rectangle(widthor0+xxmenulerp,1980+ytext-(roll*4),room_width-(room_width/40),2020+ytext-(roll*4),false);
draw_set_color(planetarycolor2);
if point_distance(xxmouse,yymouse,xiconbigship+(xxmenulerp+xdisthealth-xplus),2150+ytext-(roll*4)) < 50 {colorrect25 = c_white
   if device_mouse_check_button(0, mb_left) {
   global.clickss = 6;
   keyboard_string = "";
   global.ssc6 = "0";
}}else{colorrect25 = planetarycolor2}
draw_sprite_ext(spr_bigship,5,xiconbigship+(xxmenulerp+xdisthealth-xplus),2150+ytext-(roll*4),scalespriteship,scalespriteship,0,colorrect25,1)
draw_text_outline(xxmenulerp+xdisthealth-xplus,2050+ytext-(roll*4),"VI.Crusader  ("+string(global.ssc6)+" / "+string_add_delimiter(ds_grid_get(planetary,48,planetnowid))+")",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
if global.clickss = 6 {
draw_text_outline(xxmenulerp+xdisthealth-xplus,2150+ytext-(roll*4),"Press Enter",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
}
draw_set_color(planetarycolor2);
draw_rectangle(widthor0+xxmenulerp,2280+ytext-(roll*4),room_width-(room_width/40),2320+ytext-(roll*4),false);
draw_set_color(planetarycolor2);
if point_distance(xxmouse,yymouse,xiconbigship+(xxmenulerp+xdisthealth-xplus),2450+ytext-(roll*4)) < 50 {colorrect26 = c_white
   if device_mouse_check_button(0, mb_left) {
   global.clickss = 7;
   keyboard_string = "";
   global.ssc8 = "0";
}}else{colorrect26 = planetarycolor2}//spr_ship
draw_sprite_ext(spr_bigship,6,xiconbigship+(xxmenulerp+xdisthealth-xplus),2450+ytext-(roll*4),scalespriteship,scalespriteship,0,colorrect26,1)
draw_text_outline(xxmenulerp+xdisthealth-xplus,2350+ytext-(roll*4),"VII.Imperator  ("+string(global.ssc7)+" / "+string_add_delimiter(ds_grid_get(planetary,49,planetnowid))+")",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
if global.clickss = 7 {
draw_text_outline(xxmenulerp+xdisthealth-xplus,2450+ytext-(roll*4),"Press Enter",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
}

draw_set_color(planetarycolor2);
draw_rectangle(widthor0+xxmenulerp,2580+ytext-(roll*4),room_width-(room_width/40),2620+ytext-(roll*4),false);
draw_set_color(planetarycolor2);
if point_distance(xxmouse,yymouse,xxmenulerp+xdisthealth-xplus+100,2950+ytext-(roll*4)) < 50 {colorrect26 = c_white
   if device_mouse_check_button(0, mb_left) {
   global.clickss = 8;
   keyboard_string = "";
   global.to = "0";
}}else{colorrect26 = ds_grid_get(planetary,30,global.to);}//spr_ship
nameSendShip = ds_grid_get(planetary,8,global.to);
if real(global.to) == planetnowid {
nameSendShip = 'This planet';
}
if global.clickss = 8{
nameSendShip = global.to;
}

if planetnowid = 0 && ds_grid_get(obj_planetary.planetary,32,global.to) != global.idfixe{
draw_sprite_ext(spr_action,1,xxmenulerp+xdisthealth-xplus+100,2950+ytext-(roll*4),scalespriteship,scalespriteship,0,colorrect26,1)
}else{
draw_sprite_ext(spr_engrenage,1,xxmenulerp+xdisthealth-xplus+100,2950+ytext-(roll*4),scalespriteship,scalespriteship,0,colorrect26,1)
}
draw_text_outline(xxmenulerp+xdisthealth-xplus+150,2950+ytext-(roll*4),nameSendShip,planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km



if  point_distance(xxmouse,yymouse,xxmenulerp+xdisthealth-xplus+100,2750+ytext-(roll*4)) < 75 {colorrect9 = c_white
if device_mouse_check_button_pressed(0, mb_left) && xxmenulerp < 1 { 
if global.to != 0{
    with(obj_highscore){
        var hiscore_map, i, str;
        hiscore_map = ds_map_create();
        ds_map_set(hiscore_map,'id', global.to);
        ds_map_set(hiscore_map,'sr', ds_grid_get(obj_planetary.planetary,39,global.to));
        ds_map_set(hiscore_map,'ss', ds_grid_get(obj_planetary.planetary,40,global.to));
        ds_map_set(hiscore_map,'st', ds_grid_get(obj_planetary.planetary,41,global.to));
        ds_map_set(hiscore_map,'sd', ds_grid_get(obj_planetary.planetary,42,global.to));
        ds_map_set(hiscore_map,'cu', global.idfixe);
        str = json_encode(hiscore_map);
        ds_map_destroy(hiscore_map); 
        post = http_post_string("http://localhost:3000/universe/loadbyid" , str);
    }
}
alarm[10] = 10;

}}
if planetnowid = 0 && ds_grid_get(obj_planetary.planetary,32,global.to) != global.idfixe{
draw_text_outline(xxmenulerp+xdisthealth-xplus+180,2750+ytext-(roll*4),'attack',planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_sprite_ext(spr_stats,6,xxmenulerp+xdisthealth-xplus+100,2750+ytext-(roll*4),1,1,0,colorrect9,1)
}else if real(global.to) != planetnowid && ds_grid_get(obj_planetary.planetary,32,global.to) == global.idfixe {
draw_sprite_ext(spr_stats,6,xxmenulerp+xdisthealth-xplus+100,2750+ytext-(roll*4),1,1,0,colorrect9,1)
draw_text_outline(xxmenulerp+xdisthealth-xplus+180,2750+ytext-(roll*4),'send ship',planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
}else{
draw_text_outline(xxmenulerp+xdisthealth-xplus+180,2750+ytext-(roll*4),'',planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
}


}

draw_set_color(planetarycolor2);
draw_rectangle(widthor0+xxmenulerp,275,room_width+xxmenulerp,340,false);
draw_set_color(c_white);
draw_text_outline(xxmenulerp+xdisthealth-xplus,300,"Ship hangar",planetarycolor2,room_width,fa_bottom,20,true)

}

//SHIPS MENU EN AVANCE POUR CACHER TEXTE SOUS RECTANGLE
if statschoosemenu = 2 {//ships
draw_set_color(planetarycolor2);
if device_mouse_check_button(0, mb_left){
xxmousefin = device_mouse_x(0);
    yymousefin = device_mouse_y(0);}
    draw_rectangle_colour(room_width-(room_width/40),340,room_width,room_height,c_black,c_black,c_black,c_black,false)
draw_rectangle_colour(room_width-(room_width/40),340+(roll/1),room_width,490+(roll/1),c_white,c_white,c_white,c_white,false)
   if device_mouse_check_button(0, mb_left) && 
point_distance(xxmouse,yymouse,room_width,yymouse) < 70 {
roll = yymouse-400//(470+(roll/10))
}
if roll < 1 {roll = 1}
draw_text_outline(xxmenulerp+xdisthealth-xplus,350+ytext-(roll*4),"Total ships : "+string_add_delimiter(ds_grid_get(planetary,36,planetnowid)),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,2,yygrid,150000000)//distance soleil
draw_text_outline(xxmenulerp+xdisthealth-xplus,400+ytext-(roll*4),"Ships in flight : "+string_add_delimiter(ds_grid_get(planetary,53,planetnowid)),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,5,yygrid,1)//atmospherevalable //1 ok
//draw_text_outline(xxmenulerp+xdisthealth-xplus,450+ytext,"Ships type I : "+string(ds_grid_get(planetary,54,planetnowid))+" / "+string(ds_grid_get(planetary,43,planetnowid)),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,8,yygrid,"")//name
//draw_text_outline(xxmenulerp+xdisthealth-xplus,500+ytext,"Ships type II : "+string(ds_grid_get(planetary,55,planetnowid))+" / "+string(ds_grid_get(planetary,44,planetnowid)),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,9,yygrid,26)//Velocity 26 km/s
//draw_text_outline(xxmenulerp+xdisthealth-xplus,550+ytext,"Ships type III : "+string(ds_grid_get(planetary,56,planetnowid))+" / "+string(ds_grid_get(planetary,45,planetnowid)),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
//draw_text_outline(xxmenulerp+xdisthealth-xplus,600+ytext,"Ships type IV : "+string(ds_grid_get(planetary,57,planetnowid))+" / "+string(ds_grid_get(planetary,46,planetnowid)),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
//draw_text_outline(xxmenulerp+xdisthealth-xplus,650+ytext,"Ships type V : "+string(ds_grid_get(planetary,58,planetnowid))+" / "+string(ds_grid_get(planetary,47,planetnowid)),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,15,yygrid,12)//Surface temperature 38 °c

if ds_grid_get(planetary,32,planetnowid) = global.idfixe {
draw_set_color(planetarycolor2);
if portrait = 0 {scalespriteship = 1.3
scalespriteship2 = 1
xiconbigship = room_width-(room_width/1.4)
}else{xiconbigship = room_width-(room_width/4)
scalespriteship = 0.9
scalespriteship2 = 0.7}
draw_rectangle(widthor0+xxmenulerp,480+ytext-(roll*4),room_width-(room_width/40),520+ytext-(roll*4),false);
draw_set_color(planetarycolor2);
if point_distance(xxmouse,yymouse,xiconbigship+(xxmenulerp+xdisthealth-xplus),650+ytext-(roll*4)) < 50 {colorrect20 = c_white
   if device_mouse_check_button(0, mb_left) {
ds_grid_set(planetary,39,planetnowid,0)//STATSressourcevar//JAUGE 
ds_grid_set(planetary,40,planetnowid,15)//STATSshipsvar//JAUGE 
ds_grid_set(planetary,41,planetnowid,0)//STATSscientifiquevar//JAUGE 
ds_grid_set(planetary,42,planetnowid,0)//STATSdefensevar//JAUGE 
}}else{colorrect20 = planetarycolor2}
draw_sprite_ext(spr_bigship,0,xiconbigship+(xxmenulerp+xdisthealth-xplus),650+ytext-(roll*4),scalespriteship2,scalespriteship2,0,colorrect20,1)
draw_text_outline(xxmenulerp+xdisthealth-xplus,550+ytext-(roll*4),"I.Horus  ("+string_add_delimiter(ds_grid_get(planetary,54,planetnowid))+" / "+string_add_delimiter(ds_grid_get(planetary,43,planetnowid))+")",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,600+ytext-(roll*4),"Speed : 17 m/s",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,650+ytext-(roll*4),"fire power : 1 dmg/s",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,700+ytext-(roll*4),"Hull strength : 300 N",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,750+ytext-(roll*4),"Price : "+string_add_delimiter((floor(((1*(1*50000)))*1))),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_set_color(planetarycolor2);
draw_rectangle(widthor0+xxmenulerp,780+ytext-(roll*4),room_width-(room_width/40),820+ytext-(roll*4),false);
draw_set_color(planetarycolor2);
if point_distance(xxmouse,yymouse,xiconbigship+(xxmenulerp+xdisthealth-xplus),950+ytext-(roll*4)) < 50 {colorrect21 = c_white
   if device_mouse_check_button(0, mb_left) {
ds_grid_set(planetary,39,planetnowid,0)//STATSressourcevar//JAUGE 
ds_grid_set(planetary,40,planetnowid,22)//STATSshipsvar//JAUGE 
ds_grid_set(planetary,41,planetnowid,0)//STATSscientifiquevar//JAUGE 
ds_grid_set(planetary,42,planetnowid,0)//STATSdefensevar//JAUGE 
}}else{colorrect21 = planetarycolor2}
draw_sprite_ext(spr_bigship,1,xiconbigship+(xxmenulerp+xdisthealth-xplus),950+ytext-(roll*4),scalespriteship2,scalespriteship2,0,colorrect21,1)
draw_text_outline(xxmenulerp+xdisthealth-xplus,850+ytext-(roll*4),"II.Eagle  ("+string_add_delimiter(ds_grid_get(planetary,55,planetnowid))+" / "+string_add_delimiter(ds_grid_get(planetary,44,planetnowid))+")",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,900+ytext-(roll*4),"Speed : 19 m/s",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,950+ytext-(roll*4),"fire power : 2 dmg/s",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,1000+ytext-(roll*4),"Hull strength : 550 N",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,1050+ytext-(roll*4),"Price : "+string_add_delimiter((floor(((1*(2*50000)))*2))),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_set_color(planetarycolor2);
draw_rectangle(widthor0+xxmenulerp,1080+ytext-(roll*4),room_width-(room_width/40),1120+ytext-(roll*4),false);
draw_set_color(planetarycolor2);

if point_distance(xxmouse,yymouse,xiconbigship+(xxmenulerp+xdisthealth-xplus),1250+ytext-(roll*4)) < 50 {colorrect22 = c_white
   if device_mouse_check_button(0, mb_left) {
ds_grid_set(planetary,39,planetnowid,0)//STATSressourcevar//JAUGE 
ds_grid_set(planetary,40,planetnowid,42)//STATSshipsvar//JAUGE 
ds_grid_set(planetary,41,planetnowid,0)//STATSscientifiquevar//JAUGE 
ds_grid_set(planetary,42,planetnowid,0)//STATSdefensevar//JAUGE 
}}else{colorrect22 = planetarycolor2}
draw_sprite_ext(spr_bigship,2,xiconbigship+(xxmenulerp+xdisthealth-xplus),1250+ytext-(roll*4),scalespriteship2,scalespriteship2,0,colorrect22,1)
draw_text_outline(xxmenulerp+xdisthealth-xplus,1150+ytext-(roll*4),"III.Terhen  ("+string_add_delimiter(ds_grid_get(planetary,56,planetnowid))+" / "+string_add_delimiter(ds_grid_get(planetary,45,planetnowid))+")",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,1200+ytext-(roll*4),"Speed : 22 m/s",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,1250+ytext-(roll*4),"fire power : 3 dmg/s",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,1300+ytext-(roll*4),"Hull strength : 850 N",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,1350+ytext-(roll*4),"Price : "+string_add_delimiter((floor(((1*(3*50000)))*3))),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_set_color(planetarycolor2);
draw_rectangle(widthor0+xxmenulerp,1380+ytext-(roll*4),room_width-(room_width/40),1420+ytext-(roll*4),false);
draw_set_color(planetarycolor2);
if point_distance(xxmouse,yymouse,xiconbigship+(xxmenulerp+xdisthealth-xplus),1550+ytext-(roll*4)) < 50 {colorrect23 = c_white
   if device_mouse_check_button(0, mb_left) {
ds_grid_set(planetary,39,planetnowid,0)//STATSressourcevar//JAUGE 
ds_grid_set(planetary,40,planetnowid,62)//STATSshipsvar//JAUGE 
ds_grid_set(planetary,41,planetnowid,0)//STATSscientifiquevar//JAUGE 
ds_grid_set(planetary,42,planetnowid,0)//STATSdefensevar//JAUGE 
}}else{colorrect23 = planetarycolor2}
draw_sprite_ext(spr_bigship,3,xiconbigship+(xxmenulerp+xdisthealth-xplus),1550+ytext-(roll*4),scalespriteship2,scalespriteship2,0,colorrect23,1)
draw_text_outline(xxmenulerp+xdisthealth-xplus,1450+ytext-(roll*4),"IV.Baltyor  ("+string_add_delimiter(ds_grid_get(planetary,57,planetnowid))+" / "+string_add_delimiter(ds_grid_get(planetary,46,planetnowid))+")",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,1500+ytext-(roll*4),"Speed : 6 m/s",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,1550+ytext-(roll*4),"fire power : 4 dmg/s",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,1600+ytext-(roll*4),"Hull strength : 1200 N",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,1650+ytext-(roll*4),"Price : "+string_add_delimiter((floor(((1*(4*50000)))*4))),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_set_color(planetarycolor2);
draw_rectangle(widthor0+xxmenulerp,1680+ytext-(roll*4),room_width-(room_width/40),1720+ytext-(roll*4),false);
draw_set_color(planetarycolor2);
if point_distance(xxmouse,yymouse,xiconbigship+(xxmenulerp+xdisthealth-xplus),1850+ytext-(roll*4)) < 50 {colorrect24 = c_white
   if device_mouse_check_button(0, mb_left) {
ds_grid_set(planetary,39,planetnowid,0)//STATSressourcevar//JAUGE 
ds_grid_set(planetary,40,planetnowid,100)//STATSshipsvar//JAUGE 
ds_grid_set(planetary,41,planetnowid,0)//STATSscientifiquevar//JAUGE 
ds_grid_set(planetary,42,planetnowid,0)//STATSdefensevar//JAUGE 
}}else{colorrect24 = planetarycolor2}
draw_sprite_ext(spr_bigship,4,xiconbigship+(xxmenulerp+xdisthealth-xplus),1850+ytext-(roll*4),scalespriteship2,scalespriteship2,0,colorrect24,1)
draw_text_outline(xxmenulerp+xdisthealth-xplus,1750+ytext-(roll*4),"V.Emperor  ("+string_add_delimiter(ds_grid_get(planetary,58,planetnowid))+" / "+string_add_delimiter(ds_grid_get(planetary,47,planetnowid))+")",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,1800+ytext-(roll*4),"Speed : 5 m/s",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,1850+ytext-(roll*4),"fire power : 5 dmg/s",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,1900+ytext-(roll*4),"Hull strength : 2450 N",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,1950+ytext-(roll*4),"Price : "+string_add_delimiter((floor(((1*(5*50000)))*5))),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_set_color(planetarycolor2);
draw_rectangle(widthor0+xxmenulerp,1980+ytext-(roll*4),room_width-(room_width/40),2020+ytext-(roll*4),false);
draw_set_color(planetarycolor2);
if point_distance(xxmouse,yymouse,xiconbigship+(xxmenulerp+xdisthealth-xplus),2150+ytext-(roll*4)) < 50 {colorrect25 = c_white
   if device_mouse_check_button(0, mb_left) {
ds_grid_set(planetary,39,planetnowid,0)//STATSressourcevar//JAUGE 
ds_grid_set(planetary,40,planetnowid,100)//STATSshipsvar//JAUGE 
ds_grid_set(planetary,41,planetnowid,0)//STATSscientifiquevar//JAUGE 
ds_grid_set(planetary,42,planetnowid,0)//STATSdefensevar//JAUGE 
}}else{colorrect25 = planetarycolor2}
draw_sprite_ext(spr_bigship,5,xiconbigship+(xxmenulerp+xdisthealth-xplus),2150+ytext-(roll*4),scalespriteship,scalespriteship,0,colorrect25,1)
draw_text_outline(xxmenulerp+xdisthealth-xplus,2050+ytext-(roll*4),"VI.Crusader  ("+string_add_delimiter(ds_grid_get(planetary,59,planetnowid))+" / "+string_add_delimiter(ds_grid_get(planetary,48,planetnowid))+")",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,2100+ytext-(roll*4),"Speed : 4 m/s",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,2150+ytext-(roll*4),"fire power : 7 dmg/s",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,2200+ytext-(roll*4),"Hull strength : 20200 N",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,2250+ytext-(roll*4),"Price : "+string_add_delimiter((floor((((1*(6*50000)))*6)*6))),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_set_color(planetarycolor2);
draw_rectangle(widthor0+xxmenulerp,2280+ytext-(roll*4),room_width-(room_width/40),2320+ytext-(roll*4),false);
draw_set_color(planetarycolor2);
if point_distance(xxmouse,yymouse,xiconbigship+(xxmenulerp+xdisthealth-xplus),2450+ytext-(roll*4)) < 50 {colorrect26 = c_white
   if device_mouse_check_button(0, mb_left) {
ds_grid_set(planetary,39,planetnowid,0)//STATSressourcevar//JAUGE 
ds_grid_set(planetary,40,planetnowid,100)//STATSshipsvar//JAUGE 
ds_grid_set(planetary,41,planetnowid,0)//STATSscientifiquevar//JAUGE 
ds_grid_set(planetary,42,planetnowid,0)//STATSdefensevar//JAUGE 
}}else{colorrect26 = planetarycolor2}//spr_ship
draw_sprite_ext(spr_bigship,6,xiconbigship+(xxmenulerp+xdisthealth-xplus),2450+ytext-(roll*4),scalespriteship,scalespriteship,0,colorrect26,1)
draw_text_outline(xxmenulerp+xdisthealth-xplus,2350+ytext-(roll*4),"VII.Imperator  ("+string_add_delimiter(ds_grid_get(planetary,60,planetnowid))+" / "+string_add_delimiter(ds_grid_get(planetary,49,planetnowid))+")",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,2400+ytext-(roll*4),"Speed : 4 m/s",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,2450+ytext-(roll*4),"fire power : 9 dmg/s",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,2500+ytext-(roll*4),"Hull strength : 45000 N",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,2550+ytext-(roll*4),"Price : "+string_add_delimiter((floor((((1*(7*50000)))*7)*7))),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
}

draw_set_color(planetarycolor2);
draw_rectangle(widthor0+xxmenulerp,275,room_width+xxmenulerp,340,false);
draw_set_color(c_white);
draw_text_outline(xxmenulerp+xdisthealth-xplus,300,"Ship hangar",planetarycolor2,room_width,fa_bottom,20,true)

}

////
///////FIN DE MENU SHIP
////

if statschoosemenu = 3 {//Scientist
draw_set_color(c_white);
if device_mouse_check_button(0, mb_left){
xxmousefin = device_mouse_x(0);
    yymousefin = device_mouse_y(0);}
    draw_rectangle_colour(room_width-(room_width/40),340,room_width,room_height,c_black,c_black,c_black,c_black,false)
draw_rectangle_colour(room_width-(room_width/40),340+(roll/1),room_width,490+(roll/1),c_white,c_white,c_white,c_white,false)
   if device_mouse_check_button(0, mb_left) && 
point_distance(xxmouse,yymouse,room_width,yymouse) < 70 {
roll = yymouse-400//(470+(roll/10))
}
if roll < 1 {roll = 1}
//draw_text_outline(xxmenulerp+xdisthealth-xplus,260+ytext,"Research and development",planetarycolor2,room_width,fa_bottom,20,true)
/*draw_text_outline(xxmenulerp+xdisthealth-xplus,350+ytext-(roll*4),"Ship attack Bonus : "+string(ds_grid_get(planetary,72,planetnowid)),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,2,yygrid,150000000)//distance soleil
draw_text_outline(xxmenulerp+xdisthealth-xplus,400+ytext-(roll*4),"Ship hull Bonus : "+string(ds_grid_get(planetary,73,planetnowid)),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,5,yygrid,1)//atmospherevalable //1 ok
draw_text_outline(xxmenulerp+xdisthealth-xplus,450+ytext-(roll*4),"Ship speed bonus : "+string(ds_grid_get(planetary,74,planetnowid)),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,8,yygrid,"")//name
draw_text_outline(xxmenulerp+xdisthealth-xplus,500+ytext-(roll*4),"Scanner : "+string(ds_grid_get(planetary,75,planetnowid)),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,9,yygrid,26)//Velocity 26 km/s
*/


draw_set_color(planetarycolor2);
draw_rectangle(widthor0+xxmenulerp,380+ytext-(roll*4),room_width-(room_width/40),420+ytext-(roll*4),false);
if ds_grid_get(planetary,37,planetnowid) >= 10 {draw_set_color(planetarycolor2);}else{draw_set_color(c_red);}
//if ds_grid_get(planetary,32,planetnowid) = global.idfixe {
//draw_sprite_ext(spr_ship,0,xxmenulerp+xdisthealth-xplus+300,650+ytext-(roll*4),1,1,0,c_white,1)
draw_text_outline(xxmenulerp+xdisthealth-xplus,450+ytext-(roll*4),"Laser technology ",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,500+ytext-(roll*4),"Level required : ("+string(ds_grid_get(planetary,37,planetnowid))+"/10)",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,550+ytext-(roll*4),"Description: Laser Weapons Upgrade",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
if ds_grid_get(planetary,37,planetnowid) >= 10 {
draw_text_outline(xxmenulerp+xdisthealth-xplus,600+ytext-(roll*4),"(Damage : +"+string(ds_grid_get(planetary,37,planetnowid)*1)+" %)",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
}
//draw_text_outline(xxmenulerp+xdisthealth-xplus,650+ytext-(roll*4),"Price : "+string((floor(((1000*(1*50)))*1))),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km


draw_set_color(planetarycolor2);
draw_rectangle(widthor0+xxmenulerp,630+ytext-(roll*4),room_width-(room_width/40),680+ytext-(roll*4),false);
if ds_grid_get(planetary,37,planetnowid) >= 20 {draw_set_color(planetarycolor2);}else{draw_set_color(c_red);}
//draw_sprite_ext(spr_bigship,5,room_width-(room_width/1.4)+(xxmenulerp+xdisthealth-xplus),2150+ytext-(roll*4),1.3,1.3,0,planetarycolor2,1)
draw_text_outline(xxmenulerp+xdisthealth-xplus,700+ytext-(roll*4),"Shield technology ",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,750+ytext-(roll*4),"Level required : ("+string(ds_grid_get(planetary,37,planetnowid))+"/20)",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,800+ytext-(roll*4),"Description: Provides better protection",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
if ds_grid_get(planetary,37,planetnowid) >= 20 {
draw_text_outline(xxmenulerp+xdisthealth-xplus,850+ytext-(roll*4),"(Shield : +"+string(ds_grid_get(planetary,37,planetnowid)*2)+" %)",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
}else{draw_text_outline(xxmenulerp+xdisthealth-xplus,850+ytext-(roll*4),"",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
}

//draw_text_outline(xxmenulerp+xdisthealth-xplus,950+ytext-(roll*4),"Price : "+string((floor((((1*(6*50000)))*6)*6))),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_set_color(planetarycolor2);
draw_rectangle(widthor0+xxmenulerp,880+ytext-(roll*4),room_width-(room_width/40),920+ytext-(roll*4),false);
if ds_grid_get(planetary,37,planetnowid) >= 30 {draw_set_color(planetarycolor2);}else{draw_set_color(c_red);}

//draw_sprite_ext(spr_bigship,5,room_width-(room_width/1.4)+(xxmenulerp+xdisthealth-xplus),2150+ytext-(roll*4),1.3,1.3,0,planetarycolor2,1)
draw_text_outline(xxmenulerp+xdisthealth-xplus,950+ytext-(roll*4),"Ship hull technology ",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,1000+ytext-(roll*4),"Level required : ("+string(ds_grid_get(planetary,37,planetnowid))+"/30)",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,1050+ytext-(roll*4),"Description: Improvement of the alloy of the ",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
if ds_grid_get(planetary,37,planetnowid) >= 30 {
draw_text_outline(xxmenulerp+xdisthealth-xplus,1100+ytext-(roll*4),"ship's hulls (Resistance : +"+string(ds_grid_get(planetary,37,planetnowid)*3)+" %)",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
}else{draw_text_outline(xxmenulerp+xdisthealth-xplus,1100+ytext-(roll*4),"ship's hulls",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
}//draw_text_outline(xxmenulerp+xdisthealth-xplus,950+ytext-(roll*4),"Price : "+string((floor((((1*(6*50000)))*6)*6))),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_set_color(planetarycolor2);
draw_rectangle(widthor0+xxmenulerp,1130+ytext-(roll*4),room_width-(room_width/40),1170+ytext-(roll*4),false);
if ds_grid_get(planetary,37,planetnowid) >= 40 {draw_set_color(planetarycolor2);}else{draw_set_color(c_red);}

//draw_sprite_ext(spr_bigship,5,room_width-(room_width/1.4)+(xxmenulerp+xdisthealth-xplus),2150+ytext-(roll*4),1.3,1.3,0,planetarycolor2,1)
draw_text_outline(xxmenulerp+xdisthealth-xplus,1200+ytext-(roll*4),"Pulse reactor ",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,1250+ytext-(roll*4),"Level required : ("+string(ds_grid_get(planetary,37,planetnowid))+"/40)",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,1300+ytext-(roll*4),"Description: Improves speed from your ",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
if ds_grid_get(planetary,37,planetnowid) >= 40 {
draw_text_outline(xxmenulerp+xdisthealth-xplus,1350+ytext-(roll*4),"spaceships (Speed : +"+string(ds_grid_get(planetary,37,planetnowid)*3)+" %)",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
}else{draw_text_outline(xxmenulerp+xdisthealth-xplus,1350+ytext-(roll*4),"spaceships",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
}//draw_text_outline(xxmenulerp+xdisthealth-xplus,950+ytext-(roll*4),"Price : "+string((floor((((1*(6*50000)))*6)*6))),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_set_color(planetarycolor2);
draw_rectangle(widthor0+xxmenulerp,1380+ytext-(roll*4),room_width-(room_width/40),1420+ytext-(roll*4),false);
if ds_grid_get(planetary,37,planetnowid) >= 50 {draw_set_color(planetarycolor2);}else{draw_set_color(c_red);}

//draw_sprite_ext(spr_bigship,5,room_width-(room_width/1.4)+(xxmenulerp+xdisthealth-xplus),2150+ytext-(roll*4),1.3,1.3,0,planetarycolor2,1)
draw_text_outline(xxmenulerp+xdisthealth-xplus,1450+ytext-(roll*4),"Scanner technology ",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,1500+ytext-(roll*4),"Level required : ("+string(ds_grid_get(planetary,37,planetnowid))+"/50)",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,1550+ytext-(roll*4),"Description: Allows efficient analysis",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
if ds_grid_get(planetary,37,planetnowid) >= 50 {
draw_text_outline(xxmenulerp+xdisthealth-xplus,1600+ytext-(roll*4),"Other planets and their statistics (Scan : +"+string(ds_grid_get(planetary,37,planetnowid)*3)+" %)",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
}else{draw_text_outline(xxmenulerp+xdisthealth-xplus,1600+ytext-(roll*4),"Other planets and their statistics",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
}//draw_text_outline(xxmenulerp+xdisthealth-xplus,950+ytext-(roll*4),"Price : "+string((floor((((1*(6*50000)))*6)*6))),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_set_color(planetarycolor2);
draw_rectangle(widthor0+xxmenulerp,1630+ytext-(roll*4),room_width-(room_width/40),1680+ytext-(roll*4),false);
if ds_grid_get(planetary,37,planetnowid) >= 60 {draw_set_color(planetarycolor2);}else{draw_set_color(c_red);}

//draw_sprite_ext(spr_bigship,5,room_width-(room_width/1.4)+(xxmenulerp+xdisthealth-xplus),2150+ytext-(roll*4),1.3,1.3,0,planetarycolor2,1)
draw_text_outline(xxmenulerp+xdisthealth-xplus,1700+ytext-(roll*4),"Spatial distortion technology ",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,1750+ytext-(roll*4),"Level required : ("+string(ds_grid_get(planetary,37,planetnowid))+"/60)",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,1800+ytext-(roll*4),"Description: Allows to distort the space",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
if ds_grid_get(planetary,37,planetnowid) >= 60 {
draw_text_outline(xxmenulerp+xdisthealth-xplus,1850+ytext-(roll*4),"Dramatically reduces travel times(Speed : +"+string(ds_grid_get(planetary,37,planetnowid)*4)+" %)",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
}else{draw_text_outline(xxmenulerp+xdisthealth-xplus,1850+ytext-(roll*4),"Dramatically reduces travel times",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
}//draw_text_outline(xxmenulerp+xdisthealth-xplus,950+ytext-(roll*4),"Price : "+string((floor((((1*(6*50000)))*6)*6))),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_set_color(planetarycolor2);
draw_rectangle(widthor0+xxmenulerp,1880+ytext-(roll*4),room_width-(room_width/40),1920+ytext-(roll*4),false);
if ds_grid_get(planetary,37,planetnowid) >= 70 {draw_set_color(planetarycolor2);}else{draw_set_color(c_red);}

//draw_sprite_ext(spr_bigship,5,room_width-(room_width/1.4)+(xxmenulerp+xdisthealth-xplus),2150+ytext-(roll*4),1.3,1.3,0,planetarycolor2,1)
draw_text_outline(xxmenulerp+xdisthealth-xplus,1950+ytext-(roll*4),"Electromagnetic technology ",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,2000+ytext-(roll*4),"Level required : ("+string(ds_grid_get(planetary,37,planetnowid))+"/70)",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,2050+ytext-(roll*4),"Description: Power gain against the ",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
if ds_grid_get(planetary,37,planetnowid) >= 70 {
draw_text_outline(xxmenulerp+xdisthealth-xplus,2100+ytext-(roll*4),"enemy shields(Stun : +"+string(ds_grid_get(planetary,37,planetnowid)*5)+" %)",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
}else{draw_text_outline(xxmenulerp+xdisthealth-xplus,2100+ytext-(roll*4),"enemy shields",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
}//draw_text_outline(xxmenulerp+xdisthealth-xplus,950+ytext-(roll*4),"Price : "+string((floor((((1*(6*50000)))*6)*6))),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_set_color(planetarycolor2);
draw_rectangle(widthor0+xxmenulerp,2130+ytext-(roll*4),room_width-(room_width/40),2170+ytext-(roll*4),false);
if ds_grid_get(planetary,37,planetnowid) >= 80 {draw_set_color(planetarycolor2);}else{draw_set_color(c_red);}

//draw_sprite_ext(spr_bigship,5,room_width-(room_width/1.4)+(xxmenulerp+xdisthealth-xplus),2150+ytext-(roll*4),1.3,1.3,0,planetarycolor2,1)
draw_text_outline(xxmenulerp+xdisthealth-xplus,2200+ytext-(roll*4),"Nanite technology ",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,2250+ytext-(roll*4),"Level required : ("+string(ds_grid_get(planetary,37,planetnowid))+"/80)",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,2300+ytext-(roll*4),"Description: Rocket improvement",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
if ds_grid_get(planetary,37,planetnowid) >= 80 {
draw_text_outline(xxmenulerp+xdisthealth-xplus,2350+ytext-(roll*4),"And on-board computers(damage : +"+string(ds_grid_get(planetary,37,planetnowid)*6)+" %)",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
}else{draw_text_outline(xxmenulerp+xdisthealth-xplus,2350+ytext-(roll*4),"And on-board computers",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
}//draw_text_outline(xxmenulerp+xdisthealth-xplus,950+ytext-(roll*4),"Price : "+string((floor((((1*(6*50000)))*6)*6))),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_set_color(planetarycolor2);
draw_rectangle(widthor0+xxmenulerp,2380+ytext-(roll*4),room_width-(room_width/40),2420+ytext-(roll*4),false);
if ds_grid_get(planetary,37,planetnowid) >= 90 {draw_set_color(planetarycolor2);}else{draw_set_color(c_red);}

//draw_sprite_ext(spr_bigship,5,room_width-(room_width/1.4)+(xxmenulerp+xdisthealth-xplus),2150+ytext-(roll*4),1.3,1.3,0,planetarycolor2,1)
draw_text_outline(xxmenulerp+xdisthealth-xplus,2450+ytext-(roll*4),"Plasma Technology ",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,2500+ytext-(roll*4),"Level required : ("+string(ds_grid_get(planetary,37,planetnowid))+"/90)",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,2550+ytext-(roll*4),"Description: Devastating energy",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
if ds_grid_get(planetary,37,planetnowid) >= 90 {
draw_text_outline(xxmenulerp+xdisthealth-xplus,2600+ytext-(roll*4),"Able to bring down fleets (damage : +"+string(ds_grid_get(planetary,37,planetnowid)*7)+" %)",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
}else{draw_text_outline(xxmenulerp+xdisthealth-xplus,2600+ytext-(roll*4),"Able to bring down fleets",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
}//draw_text_outline(xxmenulerp+xdisthealth-xplus,950+ytext-(roll*4),"Price : "+string((floor((((1*(6*50000)))*6)*6))),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_set_color(planetarycolor2);
draw_rectangle(widthor0+xxmenulerp,2630+ytext-(roll*4),room_width-(room_width/40),2670+ytext-(roll*4),false);

if ds_grid_get(planetary,37,planetnowid) >= 100 {draw_set_color(planetarycolor2);}else{draw_set_color(c_red);}
//draw_sprite_ext(spr_bigship,5,room_width-(room_width/1.4)+(xxmenulerp+xdisthealth-xplus),2150+ytext-(roll*4),1.3,1.3,0,planetarycolor2,1)
draw_text_outline(xxmenulerp+xdisthealth-xplus,2700+ytext-(roll*4),"Graviton technology ",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,2750+ytext-(roll*4),"Level required : ("+string(ds_grid_get(planetary,37,planetnowid))+"/100)",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,2800+ytext-(roll*4),"Description: Improvement of",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,2850+ytext-(roll*4),"All technologies",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
//draw_text_outline(xxmenulerp+xdisthealth-xplus,950+ytext-(roll*4),"Price : "+string((floor((((1*(6*50000)))*6)*6))),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_set_color(planetarycolor2);
draw_rectangle(widthor0+xxmenulerp,2880+ytext-(roll*4),room_width-(room_width/40),2920+ytext-(roll*4),false);
draw_set_color(c_white);

//}

draw_set_color(planetarycolor2);
draw_rectangle(widthor0+xxmenulerp,275,room_width+xxmenulerp,340,false);
draw_set_color(c_white);
draw_text_outline(xxmenulerp+xdisthealth-xplus,300,"Research and development",planetarycolor2,room_width,fa_bottom,20,true)



}


draw_set_colour(planetarycolor2);
if draw = 1 {
draw_set_color(planetarycolor);
draw_rectangle(0+xxmenulerp,0,room_width+xxmenulerp,275,false);
//draw_set_colour(planetarycolor2);
//draw_rectangle(0+xxmenulerp,270,room_width+xxmenulerp,275,false);
//draw_rectangle(0+xxmenulerp,340,room_width+xxmenulerp,room_height+0,false);
   }else {
xdisthealth = room_width-(room_width/2)+150+xxmenulerp
draw_set_color(planetarycolor);
draw_rectangle(room_width-(room_width/2)+xxmenulerp,0,room_width+xxmenulerp,275,false);
//draw_set_colour(planetarycolor2);
//draw_rectangle(room_width-(room_width/2)+xxmenulerp,270,room_width+xxmenulerp,275,false);
//draw_rectangle(room_width-(room_width/2)+xxmenulerp,340,room_width+xxmenulerp,room_height+0,false);
}
draw_set_color(c_white);

if statschoosemenu = 1 {colorstaticon1 = planetarycolor2}else{colorstaticon1 = c_black}
if statschoosemenu = 2 {colorstaticon2 = planetarycolor2}else{colorstaticon2 = c_black}
if statschoosemenu = 3 {colorstaticon3 = planetarycolor2}else{colorstaticon3 = c_black}
if statschoosemenu = 4 {colorstaticon4 = planetarycolor2}else{colorstaticon4 = c_black}
if statschoosemenu = 0 {colorstaticon0 = planetarycolor2}else{colorstaticon0 = c_black}

/*if ds_grid_get(planetary,242,planetnowid) = global.idguild && global.idguild > 0 && ds_grid_get(planetary,32,planetnowid) > 5 {
//ENVOYER SHIP A UN ALLIE
totalstats = 100
draw_healthbar(xdisthealth+xxmenulerp, 15, xdisthealth+200+xxmenulerp, 35,  totalstats, c_black, planetarycolor2, planetarycolor2, 0, true, true)//STATSecologie
draw_healthbar(xdisthealth+xxmenulerp, 65, xdisthealth+200+xxmenulerp, 85,  ds_grid_get(planetary,39,planetnowid), c_black, planetarycolor2, planetarycolor2, 0, true, true)//STATSressourcevar
draw_healthbar(xdisthealth+xxmenulerp, 115, xdisthealth+200+xxmenulerp, 135,  ds_grid_get(planetary,40,planetnowid), c_black, planetarycolor2, planetarycolor2, 0, true, true)//STATSshipsvar
draw_healthbar(xdisthealth+xxmenulerp, 165, xdisthealth+200+xxmenulerp, 185,  ds_grid_get(planetary,41,planetnowid), c_black, planetarycolor2, planetarycolor2, 0, true, true)//STATSscientifiquevar
draw_healthbar(xdisthealth+xxmenulerp, 215, xdisthealth+200+xxmenulerp, 235,  ds_grid_get(planetary,42,planetnowid), c_black, planetarycolor2, planetarycolor2, 0, true, true)//STATSdefensevar
draw_set_color(c_white);
draw_line(xdisthealth+xxmenulerp+39,15,xdisthealth+xxmenulerp+41,35)
draw_line(xdisthealth+xxmenulerp+79,15,xdisthealth+xxmenulerp+81,35)
draw_line(xdisthealth+xxmenulerp+119,15,xdisthealth+xxmenulerp+121,35)
draw_line(xdisthealth+xxmenulerp+159,15,xdisthealth+xxmenulerp+161,35)

draw_line(xdisthealth+xxmenulerp+39,65,xdisthealth+xxmenulerp+41,85)
draw_line(xdisthealth+xxmenulerp+79,65,xdisthealth+xxmenulerp+81,85)
draw_line(xdisthealth+xxmenulerp+119,65,xdisthealth+xxmenulerp+121,85)
draw_line(xdisthealth+xxmenulerp+159,65,xdisthealth+xxmenulerp+161,85)

draw_line(xdisthealth+xxmenulerp+39,115,xdisthealth+xxmenulerp+41,135)
draw_line(xdisthealth+xxmenulerp+79,115,xdisthealth+xxmenulerp+81,135)
draw_line(xdisthealth+xxmenulerp+119,115,xdisthealth+xxmenulerp+121,135)
draw_line(xdisthealth+xxmenulerp+159,115,xdisthealth+xxmenulerp+161,135)

draw_line(xdisthealth+xxmenulerp+39,165,xdisthealth+xxmenulerp+41,185)
draw_line(xdisthealth+xxmenulerp+79,165,xdisthealth+xxmenulerp+81,185)
draw_line(xdisthealth+xxmenulerp+119,165,xdisthealth+xxmenulerp+121,185)
draw_line(xdisthealth+xxmenulerp+159,165,xdisthealth+xxmenulerp+161,185)

draw_line(xdisthealth+xxmenulerp+39,215,xdisthealth+xxmenulerp+41,235)
draw_line(xdisthealth+xxmenulerp+79,215,xdisthealth+xxmenulerp+81,235)
draw_line(xdisthealth+xxmenulerp+119,215,xdisthealth+xxmenulerp+121,235)
draw_line(xdisthealth+xxmenulerp+159,215,xdisthealth+xxmenulerp+161,235)
if jaugevar1 = c_green or jaugevar1 = c_red {if alarmjaugevar1 > 0 {alarmjaugevar1 -= 1;colorstaticon1 = jaugevar1}else{jaugevar1 = c_white}}
if jaugevar2 = c_green or jaugevar2 = c_red {if alarmjaugevar2 > 0 {alarmjaugevar2 -= 1;colorstaticon2 = jaugevar2}else{jaugevar2 = c_white}}
if jaugevar3 = c_green or jaugevar3 = c_red {if alarmjaugevar3 > 0 {alarmjaugevar3 -= 1;colorstaticon3 = jaugevar3}else{jaugevar3 = c_white}}
if jaugevar4 = c_green or jaugevar4 = c_red {if alarmjaugevar4 > 0 {alarmjaugevar4 -= 1;colorstaticon4 = jaugevar4}else{jaugevar4 = c_white}}

draw_sprite_ext(spr_stats,0,xdisthealth-45+xxmenulerp,69,0.3,0.3,0,colorstaticon1,1)
draw_text_outline(xdisthealth+220+xxmenulerp,65,string_add_delimiter(ds_grid_get(planetary,35,planetnowid)),planetarycolor2,room_width,fa_bottom,20,true)
if device_mouse_check_button_pressed(0, mb_left) && xxmenulerp < 1  && point_distance(xxmouse,yymouse,xdisthealth-45,59+30) < 30 {statschoosemenu = 1}
draw_sprite_ext(spr_stats,1,xdisthealth-45+xxmenulerp,119,0.3,0.3,0,colorstaticon2,1)
draw_text_outline(xdisthealth+220+xxmenulerp,115,string_add_delimiter(ds_grid_get(planetary,36,planetnowid)),planetarycolor2,room_width,fa_bottom,20,true)
if device_mouse_check_button_pressed(0, mb_left) && xxmenulerp < 1  && point_distance(xxmouse,yymouse,xdisthealth-45,109+30) < 30 {statschoosemenu = 2}
draw_sprite_ext(spr_stats,2,xdisthealth-45+xxmenulerp,169,0.3,0.3,0,colorstaticon3,1)
draw_text_outline(xdisthealth+220+xxmenulerp,155,string_add_delimiter(ds_grid_get(planetary,37,planetnowid)),planetarycolor2,room_width,fa_bottom,20,true)
if device_mouse_check_button_pressed(0, mb_left) && xxmenulerp < 1  && point_distance(xxmouse,yymouse,xdisthealth-45,159+30) < 30 {statschoosemenu = 3}
draw_sprite_ext(spr_stats,3,xdisthealth-45+xxmenulerp,219,0.3,0.3,0,colorstaticon4,1)
draw_text_outline(xdisthealth+220+xxmenulerp,205,string_add_delimiter(ds_grid_get(planetary,38,planetnowid)),planetarycolor2,room_width,fa_bottom,20,true)
if device_mouse_check_button_pressed(0, mb_left) && xxmenulerp < 1  && point_distance(xxmouse,yymouse,xdisthealth-45,209+30) < 30 {statschoosemenu = 4}
draw_sprite_ext(spr_stats,4,xdisthealth-45+xxmenulerp,19,0.3,0.3,0,colorstaticon0,1)
draw_text_outline(xdisthealth+220+xxmenulerp,15,totalstats,planetarycolor2,room_width,fa_bottom,20,true)
if device_mouse_check_button_pressed(0, mb_left) && xxmenulerp < 1  && point_distance(xxmouse,yymouse,xdisthealth-45,9+30) < 30 {statschoosemenu = 0}

//draw_text(xdisthealth-200,155,ds_grid_get(planetary,39,planetnowid))

}else *////COLONISATION
if ds_grid_get(planetary,32,planetnowid) = 0 {//room_width-(room_width/20),(room_height/20)
//draw_sprite_ext(spr_build,34,room_width-(room_width/8),(room_height/7),1.5,1.5,0,planetarycolor2,1)
//draw_sprite_ext(spr_action,2,room_width-(room_width/20)+xxmenulerp,(room_height/6),0.8,0.8,0,planetarycolor2,1)

/*draw_healthbar(room_width-(room_width/8)-50+xxmenulerp,(room_height/5)+10,room_width-(room_width/8)+150+xxmenulerp,(room_height/5)+20,
  (ds_grid_get(planetary,33,planetnowid)/ds_grid_get(planetary,50,planetnowid))*100,
   c_black, planetarycolor2, planetarycolor2, 0, true, true)//STATSressourcevar
   */
   sprHealthBar = spr_action
var spriteWidth = sprite_get_width(sprHealthBar);
var spriteHeight = sprite_get_height(sprHealthBar);
debugx = -65
scale = 0.8
scalediv = 40

if ds_grid_get(planetary,33,planetnowid) > 0 {colorcolo = c_red}else{colorcolo = planetarycolor2}
 draw_sprite_part_ext(sprHealthBar, 2, 0, 0, spriteWidth, spriteHeight, room_width-(room_width/20)+xxmenulerp+debugx,(room_height/6)+debugx,scale,scale,colorcolo,1);

draw_sprite_part_ext(sprHealthBar, 2, 0, 0, spriteWidth, spriteHeight-(spriteHeight*((ds_grid_get(planetary,33,planetnowid)/ds_grid_get(planetary,50,planetnowid)))), room_width-(room_width/20)+xxmenulerp+debugx,(room_height/6)+debugx,scale,scale,c_black,1);

//checker le prix
okfric = 1

/*if ds_grid_get(planetary,35,0) > ds_grid_get(planetary,50,planetnowid) *1000 {
okfric = 1
}*/
   
   draw_set_halign(fa_right);
   if device_mouse_check_button(0, mb_left) && xxmenulerp < 1 && point_distance(xxmouse,yymouse,room_width-(room_width/20)+xxmenulerp,(room_height/6) ) < 60 {
   if okfric = 1 {draw_text_outline(room_width-(room_width/30)+xxmenulerp,(room_height/6)+70,"Colonize with ship Type-V"//+string(ds_grid_get(planetary,50,planetnowid)*1000)
   ,c_white,room_width,fa_bottom,20,true)}else{
   draw_text_outline(room_width-(room_width/30)+xxmenulerp,(room_height/6)+70,"You need ship Type-V : "+string(ds_grid_get(planetary,50,planetnowid)*1000),c_white,room_width,fa_bottom,20,true)}}
   draw_set_halign(fa_left);

if device_mouse_check_button_released(0, mb_left) && xxmenulerp < 1  && point_distance(xxmouse,yymouse,room_width-(room_width/20)+xxmenulerp,(room_height/6) ) < 60 {

 if colorcolo = planetarycolor2 {if okfric = 1 {
//ds_grid_add(planetary,35,0,-(ds_grid_get(planetary,50,planetnowid)*1000)) //retirer argent
//ds_grid_set(planetary,33,planetnowid,ds_grid_get(planetary,50,planetnowid))
}}else{
//ds_grid_add(planetary,35,0,(ds_grid_get(planetary,50,planetnowid)*1000)) //anuler rendre l'argent
//ds_grid_set(planetary,33,planetnowid,0)
}

//show_message(ds_grid_get(planetary,50,planetnowid))
}
}else if ds_grid_get(planetary,32,planetnowid) = global.idfixe{
///DEJA COLONISER

totalstats = 100
if point_distance(xxmouse,yymouse,xxmouse,75) < 15 && xxmouse > xdisthealth-5 
&& xxmouse > xdisthealth &&  xxmouse < xdisthealth+200  && xxmenulerp < 1  {colorrect14 = planetarycolor
if device_mouse_check_button(0, mb_left){
ds_grid_set(planetary,39,planetnowid,(xxmouse-xdisthealth)/2)}}else{colorrect14 = c_black}
if ds_grid_get(planetary,39,planetnowid) > 100 {ds_grid_set(planetary,39,planetnowid,100)}
if ds_grid_get(planetary,39,planetnowid) < 0 {ds_grid_set(planetary,39,planetnowid,0)}

if ds_grid_get(planetary,39,planetnowid) > 0 {totalstats -= ds_grid_get(planetary,39,planetnowid)}

if xxmenulerp < 1  && point_distance(xxmouse,yymouse,xxmouse,125) < 15 && xxmouse > xdisthealth-5  
&& xxmouse > xdisthealth &&  xxmouse < xdisthealth+200 {colorrect15 = planetarycolor
if device_mouse_check_button(0, mb_left) {
ds_grid_set(planetary,40,planetnowid,(xxmouse-xdisthealth)/2)}}else{colorrect15 = c_black}
if ds_grid_get(planetary,40,planetnowid) > 100 {ds_grid_set(planetary,40,planetnowid,100)}
if ds_grid_get(planetary,40,planetnowid) < 0 {ds_grid_set(planetary,40,planetnowid,0)}

if ds_grid_get(planetary,40,planetnowid) > totalstats {ds_grid_set(planetary,40,planetnowid,totalstats)}
if ds_grid_get(planetary,40,planetnowid) > 0 {totalstats -= ds_grid_get(planetary,40,planetnowid)}

if xxmenulerp < 1  && point_distance(xxmouse,yymouse,xxmouse,175) < 15 && xxmouse > xdisthealth-5  
&& xxmouse > xdisthealth &&  xxmouse < xdisthealth+200  {colorrect16 = planetarycolor
if device_mouse_check_button(0, mb_left){
ds_grid_set(planetary,41,planetnowid,(xxmouse-xdisthealth)/2)}}else{colorrect16 = c_black}
if ds_grid_get(planetary,41,planetnowid) > 100 {ds_grid_set(planetary,41,planetnowid,100)}
if ds_grid_get(planetary,41,planetnowid) < 0 {ds_grid_set(planetary,41,planetnowid,0)}

if ds_grid_get(planetary,41,planetnowid) > totalstats {ds_grid_set(planetary,41,planetnowid,totalstats)}
if ds_grid_get(planetary,41,planetnowid) > 0 {totalstats -= ds_grid_get(planetary,41,planetnowid)}

if xxmenulerp < 1  && point_distance(xxmouse,yymouse,xxmouse,225) < 15 && xxmouse > xdisthealth-5 
&& xxmouse > xdisthealth &&  xxmouse < xdisthealth+200 {colorrect17 = planetarycolor
if device_mouse_check_button(0, mb_left){
ds_grid_set(planetary,42,planetnowid,(xxmouse-xdisthealth)/2)}}else{colorrect17 = c_black}
if ds_grid_get(planetary,42,planetnowid) > 100 {ds_grid_set(planetary,42,planetnowid,100)}
if ds_grid_get(planetary,42,planetnowid) < 0 {ds_grid_set(planetary,42,planetnowid,0)}

if ds_grid_get(planetary,42,planetnowid) > totalstats {ds_grid_set(planetary,42,planetnowid,totalstats)}
if ds_grid_get(planetary,42,planetnowid) > 0 {totalstats -= ds_grid_get(planetary,42,planetnowid)}

draw_healthbar(xdisthealth+xxmenulerp, 15, xdisthealth+200+xxmenulerp, 35,  totalstats, c_black, planetarycolor2, planetarycolor2, 0, true, true)//STATSecologie
draw_healthbar(xdisthealth+xxmenulerp, 65, xdisthealth+200+xxmenulerp, 85,  ds_grid_get(planetary,39,planetnowid), colorrect14, planetarycolor2, planetarycolor2, 0, true, true)//STATSressourcevar
draw_healthbar(xdisthealth+xxmenulerp, 115, xdisthealth+200+xxmenulerp, 135,  ds_grid_get(planetary,40,planetnowid), colorrect15, planetarycolor2, planetarycolor2, 0, true, true)//STATSshipsvar
draw_healthbar(xdisthealth+xxmenulerp, 165, xdisthealth+200+xxmenulerp, 185,  ds_grid_get(planetary,41,planetnowid), colorrect16, planetarycolor2, planetarycolor2, 0, true, true)//STATSscientifiquevar
draw_healthbar(xdisthealth+xxmenulerp, 215, xdisthealth+200+xxmenulerp, 235,  ds_grid_get(planetary,42,planetnowid), colorrect17, planetarycolor2, planetarycolor2, 0, true, true)//STATSdefensevar

/////CHANGER COULEUR PLANET MERE //30 / 31 /color planet
if planetnowid = 0 {
if portrait = 0 {
if device_mouse_check_button(0, mb_left) && xxmenulerp < 1  && point_distance(xxmouse,yymouse,xxmouse,125) < 30 && xxmouse > (room_width-120)+xxmenulerp
&& xxmouse > (room_width-120)+xxmenulerp &&  xxmouse < (room_width-20)+xxmenulerp {
rcolor = (xxmouse-(room_width-120)+xxmenulerp)*2.5}
if device_mouse_check_button(0, mb_left) && xxmenulerp < 1  && point_distance(xxmouse,yymouse,xxmouse,175) < 30 && xxmouse > (room_width-120)+xxmenulerp
&& xxmouse > (room_width-120)+xxmenulerp &&  xxmouse < (room_width-20)+xxmenulerp {
gcolor = (xxmouse-(room_width-120)+xxmenulerp)*2.5}
if device_mouse_check_button(0, mb_left) && xxmenulerp < 1  && point_distance(xxmouse,yymouse,xxmouse,225) < 30 && xxmouse > (room_width-120)+xxmenulerp
&& xxmouse > (room_width-120)+xxmenulerp &&  xxmouse < (room_width-20)+xxmenulerp {
bcolor = (xxmouse-(room_width-120)+xxmenulerp)*2.5}

if device_mouse_check_button(0, mb_left) && xxmenulerp < 1  && point_distance(xxmouse,yymouse,xxmouse,125) < 30 && xxmouse > (room_width-270)+xxmenulerp
&& xxmouse > (room_width-270)+xxmenulerp &&  xxmouse < (room_width-170)+xxmenulerp {
rcolor2 = (xxmouse-(room_width-270)+xxmenulerp)*2.5}
if device_mouse_check_button(0, mb_left) && xxmenulerp < 1  && point_distance(xxmouse,yymouse,xxmouse,175) < 30 && xxmouse > (room_width-270)+xxmenulerp
&& xxmouse > (room_width-270)+xxmenulerp &&  xxmouse < (room_width-170)+xxmenulerp {
gcolor2 = (xxmouse-(room_width-270)+xxmenulerp)*2.5}
if device_mouse_check_button(0, mb_left) && xxmenulerp < 1  && point_distance(xxmouse,yymouse,xxmouse,225) < 30 && xxmouse > (room_width-270)+xxmenulerp
&& xxmouse > (room_width-270)+xxmenulerp &&  xxmouse < (room_width-170)+xxmenulerp {
bcolor2 = (xxmouse-(room_width-270)+xxmenulerp)*2.5}
}else{
if device_mouse_check_button(0, mb_left) && xxmenulerp < 1  && point_distance(xxmouse,yymouse,xxmouse,125) < 5 && xxmouse > (room_width-120)+xxmenulerp
&& xxmouse > (room_width-120)+xxmenulerp &&  xxmouse < (room_width-20)+xxmenulerp {
rcolor = (xxmouse-(room_width-120)+xxmenulerp)*2.5}
if device_mouse_check_button(0, mb_left) && xxmenulerp < 1  && point_distance(xxmouse,yymouse,xxmouse,175) < 5 && xxmouse > (room_width-120)+xxmenulerp
&& xxmouse > (room_width-120)+xxmenulerp &&  xxmouse < (room_width-20)+xxmenulerp {
gcolor = (xxmouse-(room_width-120)+xxmenulerp)*2.5}
if device_mouse_check_button(0, mb_left) && xxmenulerp < 1  && point_distance(xxmouse,yymouse,xxmouse,225) < 5 && xxmouse > (room_width-120)+xxmenulerp
&& xxmouse > (room_width-120)+xxmenulerp &&  xxmouse < (room_width-20)+xxmenulerp {
bcolor = (xxmouse-(room_width-120)+xxmenulerp)*2.5}

if device_mouse_check_button(0, mb_left) && xxmenulerp < 1  && point_distance(xxmouse,yymouse,xxmouse,150) < 5 && xxmouse > (room_width-120)+xxmenulerp
&& xxmouse > (room_width-120)+xxmenulerp &&  xxmouse < (room_width-20)+xxmenulerp {
rcolor2 = (xxmouse-(room_width-120)+xxmenulerp)*2.5}
if device_mouse_check_button(0, mb_left) && xxmenulerp < 1  && point_distance(xxmouse,yymouse,xxmouse,200) < 5 && xxmouse > (room_width-120)+xxmenulerp
&& xxmouse > (room_width-120)+xxmenulerp &&  xxmouse < (room_width-20)+xxmenulerp {
gcolor2 = (xxmouse-(room_width-120)+xxmenulerp)*2.5}
if device_mouse_check_button(0, mb_left) && xxmenulerp < 1  && point_distance(xxmouse,yymouse,xxmouse,250) < 5 && xxmouse > (room_width-120)+xxmenulerp
&& xxmouse > (room_width-120)+xxmenulerp &&  xxmouse < (room_width-20)+xxmenulerp {
bcolor2 = (xxmouse-(room_width-120)+xxmenulerp)*2.5}
}

if rcolor > 255 {rcolor = 255}
if gcolor > 255 {gcolor = 255}
if bcolor > 255 {bcolor = 255}
if rcolor <= 0 {rcolor = 0}
if gcolor <= 0 {gcolor = 0}
if bcolor <= 0 {bcolor = 0}
//
if rcolor2 > 255 {rcolor2 = 255}
if gcolor2 > 255 {gcolor2 = 255}
if bcolor2 > 255 {bcolor2 = 255}
if rcolor2 <= 0 {rcolor2 = 0}
if gcolor2 <= 0 {gcolor2 = 0}
if bcolor2 <= 0 {bcolor2 = 0}

ds_grid_set(planetary,30,planetnowid,make_colour_rgb(rcolor,gcolor,bcolor))
ds_grid_set(planetary,31,planetnowid,make_colour_rgb(rcolor2,gcolor2,bcolor2))


//if ds_grid_get(planetary,40,planetnowid) < 0 {ds_grid_set(planetary,40,planetnowid,0)}
if portrait = 0 {
draw_healthbar((room_width-120)+xxmenulerp, 115, (room_width-20)+xxmenulerp, 135,  (rcolor/255)*100, c_black, planetarycolor2, planetarycolor2, 0, true, true)//r
draw_healthbar((room_width-120)+xxmenulerp, 165, (room_width-20)+xxmenulerp, 185,  (gcolor/255)*100, c_black, planetarycolor2, planetarycolor2, 0, true, true)//g
draw_healthbar((room_width-120)+xxmenulerp, 215, (room_width-20)+xxmenulerp, 235,  (bcolor/255)*100, c_black, planetarycolor2, planetarycolor2, 0, true, true)//b
draw_healthbar((room_width-270)+xxmenulerp, 115, (room_width-170)+xxmenulerp, 135,  (rcolor2/255)*100, c_black, planetarycolor2, planetarycolor2, 0, true, true)//r
draw_healthbar((room_width-270)+xxmenulerp, 165, (room_width-170)+xxmenulerp, 185,  (gcolor2/255)*100, c_black, planetarycolor2, planetarycolor2, 0, true, true)//g
draw_healthbar((room_width-270+xxmenulerp), 215, (room_width-170)+xxmenulerp, 235,  (bcolor2/255)*100, c_black, planetarycolor2, planetarycolor2, 0, true, true)//b
}else{
draw_healthbar((room_width-120)+xxmenulerp, 115, (room_width-20)+xxmenulerp, 135,  (rcolor/255)*100, c_black, planetarycolor2, planetarycolor2, 0, true, true)//r
draw_healthbar((room_width-120)+xxmenulerp, 165, (room_width-20)+xxmenulerp, 185,  (gcolor/255)*100, c_black, planetarycolor2, planetarycolor2, 0, true, true)//g
draw_healthbar((room_width-120)+xxmenulerp, 215, (room_width-20)+xxmenulerp, 235,  (bcolor/255)*100, c_black, planetarycolor2, planetarycolor2, 0, true, true)//b
draw_healthbar((room_width-120)+xxmenulerp, 140, (room_width-20)+xxmenulerp, 160,  (rcolor2/255)*100, c_black, planetarycolor2, planetarycolor2, 0, true, true)//r
draw_healthbar((room_width-120)+xxmenulerp, 190, (room_width-20)+xxmenulerp, 210,  (gcolor2/255)*100, c_black, planetarycolor2, planetarycolor2, 0, true, true)//g
draw_healthbar((room_width-120+xxmenulerp), 240, (room_width-20)+xxmenulerp, 260,  (bcolor2/255)*100, c_black, planetarycolor2, planetarycolor2, 0, true, true)//b
}
/*draw_healthbar(xdisthealth+xxmenulerp+400, 115, xdisthealth+100+xxmenulerp+400, 135,  (rcolor/255)*100, c_black, planetarycolor2, planetarycolor2, 0, true, true)//STATSshipsvar
draw_healthbar(xdisthealth+xxmenulerp+400, 165, xdisthealth+100+xxmenulerp+400, 185,  (gcolor/255)*100, c_black, planetarycolor2, planetarycolor2, 0, true, true)//STATSscientifiquevar
draw_healthbar(xdisthealth+xxmenulerp+400, 215, xdisthealth+100+xxmenulerp+400, 235,  (bcolor/255)*100, c_black, planetarycolor2, planetarycolor2, 0, true, true)//STATSdefensevar
draw_healthbar(xdisthealth+xxmenulerp+550, 115, xdisthealth+100+xxmenulerp+550, 135,  (rcolor2/255)*100, c_black, planetarycolor2, planetarycolor2, 0, true, true)//STATSshipsvar
draw_healthbar(xdisthealth+xxmenulerp+550, 165, xdisthealth+100+xxmenulerp+550, 185,  (gcolor2/255)*100, c_black, planetarycolor2, planetarycolor2, 0, true, true)//STATSscientifiquevar
draw_healthbar(xdisthealth+xxmenulerp+550, 215, xdisthealth+100+xxmenulerp+550, 235,  (bcolor2/255)*100, c_black, planetarycolor2, planetarycolor2, 0, true, true)//STATSdefensevar
*/}
draw_set_color(c_white);
draw_line(xdisthealth+xxmenulerp+39,15,xdisthealth+xxmenulerp+41,35)
draw_line(xdisthealth+xxmenulerp+79,15,xdisthealth+xxmenulerp+81,35)
draw_line(xdisthealth+xxmenulerp+119,15,xdisthealth+xxmenulerp+121,35)
draw_line(xdisthealth+xxmenulerp+159,15,xdisthealth+xxmenulerp+161,35)

draw_line(xdisthealth+xxmenulerp+39,65,xdisthealth+xxmenulerp+41,85)
draw_line(xdisthealth+xxmenulerp+79,65,xdisthealth+xxmenulerp+81,85)
draw_line(xdisthealth+xxmenulerp+119,65,xdisthealth+xxmenulerp+121,85)
draw_line(xdisthealth+xxmenulerp+159,65,xdisthealth+xxmenulerp+161,85)

draw_line(xdisthealth+xxmenulerp+39,115,xdisthealth+xxmenulerp+41,135)
draw_line(xdisthealth+xxmenulerp+79,115,xdisthealth+xxmenulerp+81,135)
draw_line(xdisthealth+xxmenulerp+119,115,xdisthealth+xxmenulerp+121,135)
draw_line(xdisthealth+xxmenulerp+159,115,xdisthealth+xxmenulerp+161,135)

draw_line(xdisthealth+xxmenulerp+39,165,xdisthealth+xxmenulerp+41,185)
draw_line(xdisthealth+xxmenulerp+79,165,xdisthealth+xxmenulerp+81,185)
draw_line(xdisthealth+xxmenulerp+119,165,xdisthealth+xxmenulerp+121,185)
draw_line(xdisthealth+xxmenulerp+159,165,xdisthealth+xxmenulerp+161,185)

draw_line(xdisthealth+xxmenulerp+39,215,xdisthealth+xxmenulerp+41,235)
draw_line(xdisthealth+xxmenulerp+79,215,xdisthealth+xxmenulerp+81,235)
draw_line(xdisthealth+xxmenulerp+119,215,xdisthealth+xxmenulerp+121,235)
draw_line(xdisthealth+xxmenulerp+159,215,xdisthealth+xxmenulerp+161,235)
if jaugevar1 = c_green or jaugevar1 = c_red {if alarmjaugevar1 > 0 {alarmjaugevar1 -= 1;colorstaticon1 = jaugevar1}else{jaugevar1 = c_white}}
if jaugevar2 = c_green or jaugevar2 = c_red {if alarmjaugevar2 > 0 {alarmjaugevar2 -= 1;colorstaticon2 = jaugevar2}else{jaugevar2 = c_white}}
if jaugevar3 = c_green or jaugevar3 = c_red {if alarmjaugevar3 > 0 {alarmjaugevar3 -= 1;colorstaticon3 = jaugevar3}else{jaugevar3 = c_white}}
if jaugevar4 = c_green or jaugevar4 = c_red {if alarmjaugevar4 > 0 {alarmjaugevar4 -= 1;colorstaticon4 = jaugevar4}else{jaugevar4 = c_white}}
draw_circle(xdisthealth+(ds_grid_get(planetary,39,planetnowid)*2)+xxmenulerp,75,8,false);
draw_circle(xdisthealth+(ds_grid_get(planetary,40,planetnowid)*2)+xxmenulerp,125,8,false);
draw_circle(xdisthealth+(ds_grid_get(planetary,41,planetnowid)*2)+xxmenulerp,175,8,false);
draw_circle(xdisthealth+(ds_grid_get(planetary,42,planetnowid)*2)+xxmenulerp,225,8,false);

colorrect4 = colorstaticon0
colorrect5 = colorstaticon1
colorrect6 = colorstaticon2
colorrect7 = colorstaticon3
colorrect8 = colorstaticon4
colorrect9 = planetarycolor2

if point_distance(xxmouse,yymouse,xdisthealth-45,9+15) < 25 {colorrect4 = c_white
if device_mouse_check_button_pressed(0, mb_left) && xxmenulerp < 1 {statschoosemenu = 0}}
draw_sprite_ext(spr_stats,4,xdisthealth-45+xxmenulerp,19,0.3,0.3,0,colorrect4,1)
if maitredeslieu = 1 {
draw_text_outline(xdisthealth+220+xxmenulerp,15,totalstats,planetarycolor2,room_width,fa_bottom,20,true)
}
if point_distance(xxmouse,yymouse,xdisthealth-45,59+15) < 25 {colorrect5 = c_white
if device_mouse_check_button_pressed(0, mb_left) && xxmenulerp < 1 {statschoosemenu = 1}}
draw_sprite_ext(spr_stats,0,xdisthealth-45+xxmenulerp,69,0.3,0.3,0,colorrect5,1)//colorrect4
if maitredeslieu = 1 {
draw_text_outline(xdisthealth+220+xxmenulerp,65,string_add_delimiter(ds_grid_get(planetary,35,planetnowid)),planetarycolor2,room_width,fa_bottom,20,true)
}
 if point_distance(xxmouse,yymouse,xdisthealth-45,109+15) < 25 {colorrect6 = c_white
if device_mouse_check_button_pressed(0, mb_left) && xxmenulerp < 1 {statschoosemenu = 2}}
draw_sprite_ext(spr_stats,1,xdisthealth-45+xxmenulerp,119,0.3,0.3,0,colorrect6,1)
if maitredeslieu = 1 {
draw_text_outline(xdisthealth+220+xxmenulerp,115,string_add_delimiter(ds_grid_get(planetary,36,planetnowid)),planetarycolor2,room_width,fa_bottom,20,true)
}
if point_distance(xxmouse,yymouse,xdisthealth-45,159+15) < 25 {colorrect7 = c_white
if device_mouse_check_button_pressed(0, mb_left) && xxmenulerp < 1 { statschoosemenu = 3}}
draw_sprite_ext(spr_stats,2,xdisthealth-45+xxmenulerp,169,0.3,0.3,0,colorrect7,1)
if maitredeslieu = 1 {
draw_text_outline(xdisthealth+220+xxmenulerp,155,string_add_delimiter(ds_grid_get(planetary,37,planetnowid)),planetarycolor2,room_width,fa_bottom,20,true)
}
if  point_distance(xxmouse,yymouse,xdisthealth-45,209+15) < 25 {colorrect8 = c_white
if device_mouse_check_button_pressed(0, mb_left) && xxmenulerp < 1 { statschoosemenu = 4}}
draw_sprite_ext(spr_stats,3,xdisthealth-45+xxmenulerp,219,0.3,0.3,0,colorrect8,1)
if maitredeslieu = 1 {
draw_text_outline(xdisthealth+220+xxmenulerp,205,string_add_delimiter(ds_grid_get(planetary,38,planetnowid)),planetarycolor2,room_width,fa_bottom,20,true)
}
//draw_sprite_ext(spr_engrenage,0,room_width/12,(room_height/20),1,1,0,planetarycolor2,1)}
if  point_distance(xxmouse,yymouse,room_width-(room_width/12)-100,(room_height/20)) < 25 {colorrect9 = c_white
if device_mouse_check_button_pressed(0, mb_left) && xxmenulerp < 1 { statschoosemenu = 5}}
draw_sprite_ext(spr_stats,6,room_width-(room_width/12)-100,(room_height/20),0.3,0.3,0,colorrect9,1)




//draw_text(xdisthealth-200,155,ds_grid_get(planetary,39,planetnowid))




}else if ds_grid_get(planetary,32,planetnowid) > 0 {//ENEMY !!!!

draw_healthbar(xdisthealth+xxmenulerp, 15, xdisthealth+200+xxmenulerp, 35,  totalstats, c_black, planetarycolor2, planetarycolor2, 0, true, true)//STATSecologie
draw_healthbar(xdisthealth+xxmenulerp, 65, xdisthealth+200+xxmenulerp, 85,  ds_grid_get(planetary,39,planetnowid), colorrect14, planetarycolor2, planetarycolor2, 0, true, true)//STATSressourcevar
draw_healthbar(xdisthealth+xxmenulerp, 115, xdisthealth+200+xxmenulerp, 135,  ds_grid_get(planetary,40,planetnowid), colorrect15, planetarycolor2, planetarycolor2, 0, true, true)//STATSshipsvar
draw_healthbar(xdisthealth+xxmenulerp, 165, xdisthealth+200+xxmenulerp, 185,  ds_grid_get(planetary,41,planetnowid), colorrect16, planetarycolor2, planetarycolor2, 0, true, true)//STATSscientifiquevar
draw_healthbar(xdisthealth+xxmenulerp, 215, xdisthealth+200+xxmenulerp, 235,  ds_grid_get(planetary,42,planetnowid), colorrect17, planetarycolor2, planetarycolor2, 0, true, true)//STATSdefensevar
draw_set_color(c_white);
draw_line(xdisthealth+xxmenulerp+39,15,xdisthealth+xxmenulerp+41,35)
draw_line(xdisthealth+xxmenulerp+79,15,xdisthealth+xxmenulerp+81,35)
draw_line(xdisthealth+xxmenulerp+119,15,xdisthealth+xxmenulerp+121,35)
draw_line(xdisthealth+xxmenulerp+159,15,xdisthealth+xxmenulerp+161,35)

draw_line(xdisthealth+xxmenulerp+39,65,xdisthealth+xxmenulerp+41,85)
draw_line(xdisthealth+xxmenulerp+79,65,xdisthealth+xxmenulerp+81,85)
draw_line(xdisthealth+xxmenulerp+119,65,xdisthealth+xxmenulerp+121,85)
draw_line(xdisthealth+xxmenulerp+159,65,xdisthealth+xxmenulerp+161,85)

draw_line(xdisthealth+xxmenulerp+39,115,xdisthealth+xxmenulerp+41,135)
draw_line(xdisthealth+xxmenulerp+79,115,xdisthealth+xxmenulerp+81,135)
draw_line(xdisthealth+xxmenulerp+119,115,xdisthealth+xxmenulerp+121,135)
draw_line(xdisthealth+xxmenulerp+159,115,xdisthealth+xxmenulerp+161,135)

draw_line(xdisthealth+xxmenulerp+39,165,xdisthealth+xxmenulerp+41,185)
draw_line(xdisthealth+xxmenulerp+79,165,xdisthealth+xxmenulerp+81,185)
draw_line(xdisthealth+xxmenulerp+119,165,xdisthealth+xxmenulerp+121,185)
draw_line(xdisthealth+xxmenulerp+159,165,xdisthealth+xxmenulerp+161,185)

draw_line(xdisthealth+xxmenulerp+39,215,xdisthealth+xxmenulerp+41,235)
draw_line(xdisthealth+xxmenulerp+79,215,xdisthealth+xxmenulerp+81,235)
draw_line(xdisthealth+xxmenulerp+119,215,xdisthealth+xxmenulerp+121,235)
draw_line(xdisthealth+xxmenulerp+159,215,xdisthealth+xxmenulerp+161,235)


draw_sprite_ext(spr_stats,0,xdisthealth-45+xxmenulerp,69,0.3,0.3,0,colorstaticon1,1)
draw_text_outline(xdisthealth+220+xxmenulerp,65,string_add_delimiter(ds_grid_get(planetary,35,planetnowid)),planetarycolor2,room_width,fa_bottom,20,true)
if device_mouse_check_button_pressed(0, mb_left) && xxmenulerp < 1  && point_distance(xxmouse,yymouse,xdisthealth-45,59+30) < 30 {statschoosemenu = 1}
draw_sprite_ext(spr_stats,1,xdisthealth-45+xxmenulerp,119,0.3,0.3,0,colorstaticon2,1)
draw_text_outline(xdisthealth+220+xxmenulerp,115,string_add_delimiter(ds_grid_get(planetary,36,planetnowid)),planetarycolor2,room_width,fa_bottom,20,true)
if device_mouse_check_button_pressed(0, mb_left) && xxmenulerp < 1  && point_distance(xxmouse,yymouse,xdisthealth-45,109+30) < 30 {statschoosemenu = 2}
draw_sprite_ext(spr_stats,2,xdisthealth-45+xxmenulerp,169,0.3,0.3,0,colorstaticon3,1)
draw_text_outline(xdisthealth+220+xxmenulerp,155,string(ds_grid_get(planetary,37,planetnowid)),planetarycolor2,room_width,fa_bottom,20,true)
if device_mouse_check_button_pressed(0, mb_left) && xxmenulerp < 1  && point_distance(xxmouse,yymouse,xdisthealth-45,159+30) < 30 {statschoosemenu = 3}
draw_sprite_ext(spr_stats,3,xdisthealth-45+xxmenulerp,219,0.3,0.3,0,colorstaticon4,1)
draw_text_outline(xdisthealth+220+xxmenulerp,205,string(ds_grid_get(planetary,38,planetnowid)),planetarycolor2,room_width,fa_bottom,20,true)
if device_mouse_check_button_pressed(0, mb_left) && xxmenulerp < 1  && point_distance(xxmouse,yymouse,xdisthealth-45,209+30) < 30 {statschoosemenu = 4}
draw_sprite_ext(spr_stats,4,xdisthealth-45+xxmenulerp,19,0.3,0.3,0,colorstaticon0,1)
draw_text_outline(xdisthealth+220+xxmenulerp,15,totalstats,planetarycolor2,room_width,fa_bottom,20,true)
if device_mouse_check_button_pressed(0, mb_left) && xxmenulerp < 1  && point_distance(xxmouse,yymouse,xdisthealth-45,9+30) < 30 {statschoosemenu = 0}



//ENVOYER UNE ATTAQUE
if ds_grid_get(planetary,34,planetnowid) = global.idfixe {colorcolo = c_red}else{colorcolo = planetarycolor2}
if global.phpload = 1 {
if device_mouse_check_button_released(0, mb_left) && xxmenulerp < 1  && point_distance(xxmouse,yymouse,room_width-(room_width/20),(room_height/6) ) < 60 {
if colorcolo = planetarycolor2 {
if ds_grid_get(planetary,36,0) > 5 { //si plus de 5 vaisseau alors attaquer possible
if ds_grid_get(planetary,34,planetnowid) < 6 {
ds_grid_set(planetary,51,planetnowid,floor(ds_grid_get(planetary,50,planetnowid)/(1+(ds_grid_get(planetary,50,0)/10))))
//ds_grid_set(planetary,34,planetnowid,global.idfixe)
ds_grid_set(planetary,231,planetnowid,ds_grid_get(planetary,43,0))
ds_grid_set(planetary,232,planetnowid,ds_grid_get(planetary,44,0))
ds_grid_set(planetary,233,planetnowid,ds_grid_get(planetary,45,0))
ds_grid_set(planetary,234,planetnowid,ds_grid_get(planetary,46,0))
ds_grid_set(planetary,235,planetnowid,ds_grid_get(planetary,47,0))
ds_grid_set(planetary,236,planetnowid,ds_grid_get(planetary,48,0))
ds_grid_set(planetary,237,planetnowid,ds_grid_get(planetary,49,0))
ds_grid_set(planetary,240,planetnowid,floor(ds_grid_get(planetary,37,0)))
ds_grid_set(planetary,52,planetnowid,ds_grid_get(planetary,36,0))}}
if global.phpload = 1 {
if ds_grid_get(planetary,32,planetnowid) = floor(global.idfixe) {
ds_grid_set(planetary,230,planetnowid,global.name)}
//ET ENVOI NET CODE 
ds_grid_set(planetary,81,planetnowid,date_current_datetime()*100000)
var get1 = floor(ds_grid_get(planetary,51,planetnowid))

//ENVOI
 


//if planetnowid = buildaffect{
   /* with(obj_highscore){
       var hiscore_map, i, str;
        hiscore_map = ds_map_create();
        ds_map_set(hiscore_map,'by', global.idfixe);
        
        if ds_grid_get(obj_planetary.planetary,43,0)-10 > 0 {
        ds_map_set(hiscore_map,'sc1', ds_grid_get(obj_planetary.planetary,43,0)-10);
        }else{
        ds_map_set(hiscore_map,'sc1', 0);
        }
        ds_map_set(hiscore_map,'sc2', ds_grid_get(obj_planetary.planetary,44,0));
        ds_map_set(hiscore_map,'sc3', ds_grid_get(obj_planetary.planetary,45,0));
        ds_map_set(hiscore_map,'sc4', ds_grid_get(obj_planetary.planetary,46,0));
        ds_map_set(hiscore_map,'sc5', ds_grid_get(obj_planetary.planetary,47,0));
        ds_map_set(hiscore_map,'sc6', ds_grid_get(obj_planetary.planetary,48,0));
        ds_map_set(hiscore_map,'sc7', ds_grid_get(obj_planetary.planetary,49,0));
        ds_map_set(hiscore_map,'cu', global.idfixe);
        ds_map_set(hiscore_map,'d', ds_grid_get(obj_planetary.planetary,50,obj_planetary.planetnowid));
        ds_map_set(hiscore_map,'idP', 0);
        ds_map_set(hiscore_map,'id', obj_planetary.planetnowid);
        str = json_encode(hiscore_map);
        ds_map_destroy(hiscore_map); 
        if (ds_grid_get(obj_planetary.planetary,43,0)-10)+ds_grid_get(obj_planetary.planetary,44,0)+
        ds_grid_get(obj_planetary.planetary,45,0)+ds_grid_get(obj_planetary.planetary,46,0)+
        ds_grid_get(obj_planetary.planetary,47,0)+ds_grid_get(obj_planetary.planetary,48,0)+
        ds_grid_get(obj_planetary.planetary,49,0) > 0 {
        //show_debug_message(ds_grid_get(obj_planetary.planetary,34,obj_planetary.planetnowid));
        if ds_grid_get(obj_planetary.planetary,34,obj_planetary.planetnowid) < 7 {
            post = http_post_string("http://localhost:3000/universe/launchattack" , str);
            ds_grid_set(obj_planetary.planetary,43,0,10)
            ds_grid_set(obj_planetary.planetary,44,0,0)
            ds_grid_set(obj_planetary.planetary,45,0,0)
            ds_grid_set(obj_planetary.planetary,46,0,0)
            ds_grid_set(obj_planetary.planetary,47,0,0)
            ds_grid_set(obj_planetary.planetary,48,0,0)
            ds_grid_set(obj_planetary.planetary,49,0,0)
        }
        }
    }*/
//}

   //scr_ecritureplanet3(planetnowid,get1,get2,get3,get4,get5,get6,get7,get8,get9,get10,get11,get12,get13,get14);
   }
}else{
varhelpdie = 1
prochaineguerre = floor(random_range(100,500)*varhelpdie)
ds_grid_set(planetary,51,planetnowid,prochaineguerre)//fin de guerre relancer tout
ds_grid_set(planetary,52,planetnowid,floor(prochaineguerre/varhelpdie))
ds_grid_set(planetary,34,planetnowid,choose(2,3))



//ENVOI
if global.phpload = 1 {
//ET ENVOI NET CODE 
ds_grid_set(planetary,81,planetnowid,date_current_datetime()*100000)
var get1 = floor(ds_grid_get(planetary,51,planetnowid))
if ds_grid_get(planetary,32,planetnowid) = floor(global.idfixe) {
ds_grid_set(planetary,230,planetnowid,global.name)}
   var get2 = 
   string(ds_grid_get(planetary,231,planetnowid))+"$"+
   string(ds_grid_get(planetary,232,planetnowid))+"$"+
   string(ds_grid_get(planetary,233,planetnowid))+"$"+
   string(ds_grid_get(planetary,234,planetnowid))+"$"+
   string(ds_grid_get(planetary,235,planetnowid))+"$"+
   string(ds_grid_get(planetary,236,planetnowid))+"$"+
   string(ds_grid_get(planetary,237,planetnowid))+"$"+
   string(ds_grid_get(planetary,240,planetnowid))

var get3 = floor(ds_grid_get(planetary,34,planetnowid))
var get4 = floor(ds_grid_get(planetary,81,planetnowid))
var get5 = floor(ds_grid_get(planetary,35,planetnowid))
var get6 = floor(ds_grid_get(planetary,43,planetnowid))
var get7 = floor(ds_grid_get(planetary,44,planetnowid))
var get8 = floor(ds_grid_get(planetary,45,planetnowid))
var get9 = floor(ds_grid_get(planetary,46,planetnowid))
var get10 = floor(ds_grid_get(planetary,47,planetnowid))
var get11 = floor(ds_grid_get(planetary,48,planetnowid))
var get12 = floor(ds_grid_get(planetary,49,planetnowid))
var get13 = floor(ds_grid_get(planetary,37,planetnowid))
var get14 = floor(ds_grid_get(planetary,38,planetnowid))

   scr_ecritureplanet3(planetnowid,get1,get2,get3,get4,get5,get6,get7,get8,get9,get10,get11,get12,get13,get14);}
   //global.phpload = 0
}
//ds_grid_set(planetary,34,planetnowid,1)
}}//if global.phpload = 1 {
//draw_sprite_ext(spr_action,1,room_width-(room_width/20)+xxmenulerp,(room_height/6),0.8,0.8,0,planetarycolor2,1)
   sprHealthBar = spr_action
var spriteWidth = sprite_get_width(sprHealthBar);
var spriteHeight = sprite_get_height(sprHealthBar);
debugx = -65
scale = 0.8
scalediv = 40

draw_sprite_part_ext(sprHealthBar, 1, 0, 0, spriteWidth, spriteHeight, room_width-(room_width/20)+xxmenulerp+debugx,(room_height/6)+debugx,scale,scale,colorcolo,1);
if ds_grid_get(planetary,34,planetnowid) = global.idfixe { draw_sprite_part_ext(sprHealthBar, 1, 0, 0, spriteWidth, spriteHeight-(spriteHeight*((ds_grid_get(planetary,51,planetnowid)/ds_grid_get(planetary,52,planetnowid)))), room_width-(room_width/20)+xxmenulerp+debugx,(room_height/6)+debugx,scale,scale,c_black,1);}

draw_set_halign(fa_right);
   if device_mouse_check_button(0, mb_left) && xxmenulerp < 1  && point_distance(xxmouse,yymouse,room_width-(room_width/20)+xxmenulerp,(room_height/6) ) < 60 {
   if global.phpload = 0 {draw_text_outline(room_width-(room_width/30)+xxmenulerp,(room_height/6)+70,"Loading the netcode",c_white,room_width,fa_bottom,20,true)
   }else{draw_text_outline(room_width-(room_width/30)+xxmenulerp,(room_height/6)+70,"Conquer",c_white,room_width,fa_bottom,20,true)}
   }
   draw_set_halign(fa_left);

}



//STATS MENU
if statschoosemenu = 0 {
draw_set_color(planetarycolor2)
factionattak = "?"
//if ds_grid_get(planetary,32,planetnowid) = global.idfixe {factionattak = ds_grid_get(planetary,230,0)}else
//show_message(ds_grid_get(planetary,32,planetnowid))
if floor(ds_grid_get(planetary,32,planetnowid)) = 2 {factionattak = "Dominion"}else
if floor(ds_grid_get(planetary,32,planetnowid)) = 3 {factionattak = "Xahor"}else
if floor(ds_grid_get(planetary,32,planetnowid)) = 4 {factionattak = "Céhènyth"}else
if floor(ds_grid_get(planetary,32,planetnowid)) = global.idfixe {factionattak = global.name}else
if floor(ds_grid_get(planetary,32,planetnowid)) > 5 {factionattak = "Player id : "+string(ds_grid_get(planetary,32,planetnowid))}
draw_set_color(c_white)
draw_text_outline(xxmenulerp+xdisthealth-xplus,260+ytext,"Statistics's body",planetarycolor2,room_width,fa_bottom,20,true)
draw_set_color(planetarycolor2)
draw_text_outline(xxmenulerp+xdisthealth-xplus,350+ytext,"Star's Distant : "+string_add_delimiter(ds_grid_get(planetary,2,planetnowid)/1000000)+"M/Km",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,2,yygrid,150000000)//distance soleil
drawfaction  = 1
if ds_grid_get(planetary,32,planetnowid) > 5 {
if ds_grid_get(planetary,32,planetnowid) = global.idfixe {}else{
//ICONS DE MESSAGE POUR ENREGISTRER ADRESSE

    if device_mouse_check_button(0, mb_left) && 
    point_distance(xxmouse,yymouse,xxmenulerp+xdisthealth-xplus+320,400+ytext) < 40  {
    global.lastprivatemessage = real(ds_grid_get(planetary,32,planetnowid))
    obj_planetary.menuplanet3 = 2
    obj_planetary.menuplanet = 3
    if instance_exists(obj_highscore){with(obj_highscore){instance_destroy();}}
    //show_message(txt3f[i])
    }
    draw_sprite_ext(spr_mail,0,xxmenulerp+xdisthealth-xplus+320,400+ytext,0.5,0.5,0,obj_planetary.planetarycolor2,1)
    draw_text_outline(xxmenulerp+xdisthealth-xplus,400+ytext,"Colonial faction :        "+string(factionattak),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,2,yygrid,150000000)//distance soleil
    drawfaction  = 0}
    }
    if drawfaction  = 1 {
    draw_text_outline(xxmenulerp+xdisthealth-xplus,400+ytext,"Colonial faction : "+string(factionattak),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,2,yygrid,150000000)//distance soleil
}
//draw_text(xdisthealth-xplus,340,"atmospherevalable : "+string(ds_grid_get(planetary,5,planetnowid)))//ds_grid_add(planetary,5,yygrid,1)//atmospherevalable //1 ok
draw_text_outline(xxmenulerp+xdisthealth-xplus,450+ytext,"Name : "+string(ds_grid_get(planetary,8,planetnowid)),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,8,yygrid,"")//name
draw_text_outline(xxmenulerp+xdisthealth-xplus,500+ytext,"Velocity : "+string(ds_grid_get(planetary,9,planetnowid))+" Km/s",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,9,yygrid,26)//Velocity 26 km/s
draw_text_outline(xxmenulerp+xdisthealth-xplus,550+ytext,"Diameter : "+string_add_delimiter(ds_grid_get(planetary,11,planetnowid))+" Km",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
//draw_text(xdisthealth-xplus,500,""+string(ds_grid_get(planetary,15,planetnowid)))//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,600+ytext,"Temperature : "+string(ds_grid_get(planetary,15,planetnowid))+" °C",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,15,yygrid,12)//Surface temperature 38 °c
draw_text_outline(xxmenulerp+xdisthealth-xplus,650+ytext,"Magnetic fields : "+string(ds_grid_get(planetary,18,planetnowid))+" G",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,18,yygrid,0.25)//Magnetic field 0.300 gauss
draw_text_outline(xxmenulerp+xdisthealth-xplus,700+ytext,"Surface Pressure : "+string_add_delimiter(ds_grid_get(planetary,12,planetnowid))+" M/s2",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,20,yygrid,9.72)//surface gravity 6.11 m/s2
draw_text_outline(xxmenulerp+xdisthealth-xplus,750+ytext,"Age : "+string_add_delimiter(ds_grid_get(planetary,22,planetnowid))+" G-Année",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,22,yygrid,4.6)//Age 4.60 Gyears
draw_text_outline(xxmenulerp+xdisthealth-xplus,800+ytext,"Radiative power : "+string_add_delimiter(ds_grid_get(planetary,14,planetnowid))+"",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,22,yygrid,4.6)//Age 4.60 Gyears
draw_text_outline(xxmenulerp+xdisthealth-xplus,850+ytext,"Magnetosphere : "+string_add_delimiter(ds_grid_get(planetary,19,planetnowid))+"",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,22,yygrid,4.6)//Age 4.60 Gyears
draw_text_outline(xxmenulerp+xdisthealth-xplus,900+ytext,"Air oxygen : "+string_add_delimiter(ds_grid_get(planetary,25,planetnowid))+"",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,22,yygrid,4.6)//Age 4.60 Gyears
draw_text_outline(xxmenulerp+xdisthealth-xplus,950+ytext,"Air Carbon dioxide : "+string_add_delimiter(ds_grid_get(planetary,27,planetnowid))+"",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,22,yygrid,4.6)//Age 4.60 Gyears
//draw_text(xdisthealth-xplus,700,""+string(ds_grid_get(planetary,2,planetnowid)))//ds_grid_add(planetary,23,yygrid,1)//nbr Station spatial en orbite
//draw_text_outline(xxmenulerp+xdisthealth-xplus,800+ytext,"",planetarycolor2,room_width,fa_bottom,20,true)//
//draw_text_outline(xxmenulerp+xdisthealth-xplus,850+ytext,"",planetarycolor2,room_width,fa_bottom,20,true)//
//draw_text_outline(xxmenulerp+xdisthealth-xplus,900+ytext,"",planetarycolor2,room_width,fa_bottom,20,true)//
//draw_text_outline(xxmenulerp+xdisthealth-xplus,950+ytext,"",planetarycolor2,room_width,fa_bottom,20,true)//

}
//STATS MENU //spr_stats
if statschoosemenu = 1 {//usine
draw_set_color(planetarycolor2)
draw_rectangle(xxmenulerp+xdisthealth-150,450+ytext,room_width,470+ytext,false);
draw_rectangle(xxmenulerp+xdisthealth-150,450+ytext,room_width,470+ytext,false);
draw_rectangle(xxmenulerp+xdisthealth-150,600+ytext,room_width,700+ytext,false);
draw_sprite_ext(spr_stats,0,xxmenulerp+xdisthealth-xplus+20,370+ytext,0.5,0.5,0,planetarycolor2,1)
draw_set_color(c_white)
draw_text_outline(xxmenulerp+xdisthealth-xplus,260+ytext,"Resources",planetarycolor2,room_width,fa_bottom,20,true)
draw_set_color(planetarycolor2)
draw_text_outline(xxmenulerp+xdisthealth-xplus+70,370+ytext,"Raw material : "+string_add_delimiter(floor(ds_grid_get(planetary,35,planetnowid))),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,2,yygrid,150000000)//distance soleil
draw_text_outline(xxmenulerp+xdisthealth-xplus+70,520+ytext,"Anti-matter : "+string_add_delimiter(floor(ds_grid_get(planetary,258,planetnowid))),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,2,yygrid,150000000)//distance soleil
draw_sprite_ext(spr_stats,5,xxmenulerp+xdisthealth-xplus+20,520+ytext,0.5,0.5,0,planetarycolor2,1)

draw_sprite_ext(spr_stats,5,xxmenulerp+xdisthealth-xplus+20,650+ytext,0.5,0.5,0,colorrect27,1)
draw_set_color(planetarycolor)
if planetnowid = 0 {
if point_distance(xxmouse,yymouse,xxmenulerp+xdisthealth-xplus+20,650+ytext) < 70 {
if global.enginematter = 1 {colorrect27 = planetarycolor}else{colorrect27 = c_green  }
   if device_mouse_check_button_pressed(0, mb_left) {
if global.enginematter = 0 {global.enginematter = 1 }else{global.enginematter = 0}
}}else{if global.enginematter = 1 {colorrect27 = c_green }else{colorrect27 = planetarycolor}}
}

if global.enginematter = 0 {
draw_text_outline(xxmenulerp+xdisthealth-xplus+70,680+ytext,"Start the anti-matter engine 
(doubled yields)",planetarycolor2,room_width,fa_bottom,40,false)//ds_grid_add(planetary,2,yygrid,150000000)//distance soleil
}else{
draw_text_outline(xxmenulerp+xdisthealth-xplus+70,645+ytext,"Stop the anti-matter engine",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,2,yygrid,150000000)//distance soleil
}
/*draw_text_outline(xxmenulerp+xdisthealth-xplus,400+ytext,"Silicate : "+string(ds_grid_get(planetary,91,planetnowid)),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,5,yygrid,1)//atmospherevalable //1 ok
draw_text_outline(xxmenulerp+xdisthealth-xplus,450+ytext,"Crystal : "+string(ds_grid_get(planetary,92,planetnowid)),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,8,yygrid,"")//name
draw_text_outline(xxmenulerp+xdisthealth-xplus,500+ytext,"Hydrogen : "+string(ds_grid_get(planetary,93,planetnowid)),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,9,yygrid,26)//Velocity 26 km/s
draw_text_outline(xxmenulerp+xdisthealth-xplus,550+ytext,"Rhodium : "+string(ds_grid_get(planetary,94,planetnowid)),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,600+ytext,"Gold : "+string(ds_grid_get(planetary,95,planetnowid)),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
draw_text_outline(xxmenulerp+xdisthealth-xplus,650+ytext,"Plutonium : "+string(ds_grid_get(planetary,96,planetnowid)),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,15,yygrid,12)//Surface temperature 38 °c
draw_text_outline(xxmenulerp+xdisthealth-xplus,700+ytext,"Platine : "+string(ds_grid_get(planetary,97,planetnowid)),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,18,yygrid,0.25)//Magnetic field 0.300 gauss
draw_text_outline(xxmenulerp+xdisthealth-xplus,750+ytext,"Anti-matter : "+string(ds_grid_get(planetary,98,planetnowid)),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,20,yygrid,9.72)//surface gravity 6.11 m/s2
*///draw_text_outline(xxmenulerp+xdisthealth-xplus,800+ytext,"",planetarycolor2,room_width,fa_bottom,20,true)//ds_grid_add(planetary,22,yygrid,4.6)//Age 4.60 Gyears
//draw_text_outline(xxmenulerp+xdisthealth-xplus,850+ytext,"",planetarycolor2,room_width,fa_bottom,20,true)//ds_grid_add(planetary,23,yygrid,1)//nbr Station spatial en orbite
//draw_text_outline(xxmenulerp+xdisthealth-xplus,900+ytext,"",planetarycolor2,room_width,fa_bottom,20,true)//
//draw_text_outline(xxmenulerp+xdisthealth-xplus,950+ytext,"",planetarycolor2,room_width,fa_bottom,20,true)//


}


if statschoosemenu = 4 {//Defence
factionattak = "?"
draw_set_color(planetarycolor2)
//if ds_grid_get(planetary,34,planetnowid) = global.idfixe {factionattak = ds_grid_get(planetary,230,0)}else
if ds_grid_get(planetary,34,planetnowid) = 2 {factionattak = "Dominion"}else
if ds_grid_get(planetary,34,planetnowid) = 3 {factionattak = "Xahor"}else
if ds_grid_get(planetary,34,planetnowid) = 4 {factionattak = "Céhènyth"}else
if ds_grid_get(planetary,34,planetnowid) = global.idfixe {factionattak = global.name}else
if ds_grid_get(planetary,32,planetnowid) > 0 {factionattak = "Player id : "+string(ds_grid_get(planetary,34,planetnowid))}

//if ds_grid_get(planetary,34,planetnowid) = 5 {factionattak = "Alien"}
draw_set_color(c_white)
draw_sprite_ext(spr_action,3,xxmenulerp+xdisthealth-xplus+10,450+ytext,0.3,0.3,0,planetarycolor2,1)
draw_sprite_ext(spr_action,1,xxmenulerp+xdisthealth-xplus+10,500+ytext,0.3,0.3,0,planetarycolor2,1)
draw_sprite_ext(spr_stats,1,xxmenulerp+xdisthealth-xplus+10,550+ytext,0.3,0.3,0,planetarycolor2,1)
draw_sprite_ext(spr_stats,2,xxmenulerp+xdisthealth-xplus+10,600+ytext,0.3,0.3,0,planetarycolor2,1)
draw_sprite_ext(spr_build,34,xxmenulerp+xdisthealth-xplus-15,750+ytext,0.65,0.65,0,planetarycolor2,1)
draw_sprite_ext(spr_stats,0,xxmenulerp+xdisthealth-xplus+10,800+ytext,0.3,0.3,0,planetarycolor2,1)



draw_text_outline(xxmenulerp+xdisthealth-xplus+50,260+ytext,"Military defence",planetarycolor2,room_width,fa_bottom,20,true)
draw_set_color(planetarycolor2)
draw_rectangle(xxmenulerp+xdisthealth-150,350+ytext,room_width,390+ytext,false);
draw_set_color(planetarycolor)
draw_text_outline(xxmenulerp+xdisthealth-xplus+50,370+ytext,"THREAT : ",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,9,yygrid,26)//Velocity 26 km/s
draw_set_color(planetarycolor2)
if ds_grid_get(planetary,51,planetnowid) < 0 {
distantFleet = "0"
}else{
distantFleet = string_add_delimiter(ds_grid_get(planetary,51,planetnowid))
}
draw_text_outline(xxmenulerp+xdisthealth-xplus+50,450+ytext,"Enemy fleet's distance : "+distantFleet+"M km",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,2,yygrid,150000000)//distance soleil
draw_text_outline(xxmenulerp+xdisthealth-xplus+50,500+ytext,"Faction attack : "+string(factionattak),planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,5,yygrid,1)//atmospherevalable //1 ok
draw_text_outline(xxmenulerp+xdisthealth-xplus+50,550+ytext,"Importance of the threat : "+string_add_delimiter(ds_grid_get(planetary,52,planetnowid))+" Ships",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,8,yygrid,"")//name
draw_text_outline(xxmenulerp+xdisthealth-xplus+50,600+ytext,"Technology of the threat : "+string(ds_grid_get(planetary,240,planetnowid))+" %",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,9,yygrid,26)//Velocity 26 km/s

draw_rectangle(xxmenulerp+xdisthealth-150,650+ytext,room_width,690+ytext,false);
draw_set_color(planetarycolor)
draw_text_outline(xxmenulerp+xdisthealth-xplus+50,670+ytext,"DEFENCE : ",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,9,yygrid,26)//Velocity 26 km/s
draw_set_color(planetarycolor2)
draw_text_outline(xxmenulerp+xdisthealth-xplus+50,750+ytext,"Defence of the planet : "+string(ds_grid_get(planetary,38,planetnowid))+" %",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,9,yygrid,26)//Velocity 26 km/s
draw_text_outline(xxmenulerp+xdisthealth-xplus+50,800+ytext,"Price : "+string_add_delimiter(((100000/10)*ds_grid_get(planetary,42,planetnowid)))+"",planetarycolor2,room_width,fa_bottom,20,false)//ds_grid_add(planetary,9,yygrid,26)//Velocity 26 km/s
//draw_text_outline(xxmenulerp+xdisthealth-xplus,550+ytext,5,planetarycolor2,room_width,fa_bottom,20,true)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
//draw_text_outline(xxmenulerp+xdisthealth-xplus,600+ytext,6,planetarycolor2,room_width,fa_bottom,20,true)//ds_grid_add(planetary,11,yygrid,6371 )//  radius km
//draw_text_outline(xxmenulerp+xdisthealth-xplus,650+ytext,7,planetarycolor2,room_width,fa_bottom,20,true)//ds_grid_add(planetary,15,yygrid,12)//Surface temperature 38 °c
//draw_text_outline(xxmenulerp+xdisthealth-xplus,700+ytext,8,planetarycolor2,room_width,fa_bottom,20,true)//ds_grid_add(planetary,18,yygrid,0.25)//Magnetic field 0.300 gauss
//draw_text_outline(xxmenulerp+xdisthealth-xplus,750+ytext,9,planetarycolor2,room_width,fa_bottom,20,true)//ds_grid_add(planetary,20,yygrid,9.72)//surface gravity 6.11 m/s2
//draw_text_outline(xxmenulerp+xdisthealth-xplus,800+ytext,10,planetarycolor2,room_width,fa_bottom,20,true)//ds_grid_add(planetary,22,yygrid,4.6)//Age 4.60 Gyears
//draw_text_outline(xxmenulerp+xdisthealth-xplus,850+ytext,11,planetarycolor2,room_width,fa_bottom,20,true)//ds_grid_add(planetary,23,yygrid,1)//nbr Station spatial en orbite
//draw_text_outline(xxmenulerp+xdisthealth-xplus,900+ytext,12,planetarycolor2,room_width,fa_bottom,20,true)//
//draw_text_outline(xxmenulerp+xdisthealth-50,950+ytext,13,planetarycolor2,room_width,fa_bottom,20,true)//


}






}



draw_sprite_ext(spr_engrenage,1,room_width-(room_width/12),(room_height/20),1,1,0,planetarycolor2,1)
if menuplanet = 1 {}else{
draw_sprite_ext(spr_highscore,0,room_width-(room_width/30),room_height-(room_height/10),1,1,0,planetarycolor2,1)}

}

}

}
}else{menuplanet = 0}


//SCRIPT D invitation guilde
if planetnowid = 0 or ds_grid_get(planetary,32,planetnowid) = global.idfixe {}else{if echelle = 0 && menuplanet = 1 && ds_grid_get(planetary,32,planetnowid) > 5 {
draw_sprite_ext(spr_quitplanet,1,room_width-(room_width/8)+xxmenulerp,(room_height/6),1,1,0,planetarycolor2,1)
draw_set_halign(fa_right);
if device_mouse_check_button_released(0,mb_left)  && point_distance(xxmouse,yymouse,room_width-(room_width/8)+xxmenulerp,(room_height/6) ) < 50  {clickinvit += 1}
   if device_mouse_check_button(0, mb_left) && xxmenulerp < 1 && point_distance(xxmouse,yymouse,room_width-(room_width/8)+xxmenulerp,(room_height/6) ) < 50 {
   
   draw_set_color(planetarycolor2);
   if real(ds_grid_get(planetary,242,planetnowid)) = global.idfixe {
   draw_text_outline(room_width-(room_width/30)+xxmenulerp,(room_height/6)+70,"Click 3 time to banish ("+string(clickinvit)+"/3)"
   ,c_white,room_width,fa_bottom,20,false)
   }else{//show_message(ds_grid_get(planetary,242,planetnowid))
   draw_text_outline(room_width-(room_width/30)+xxmenulerp,(room_height/6)+70,"Click 3 time to invit in alliance ("+string(clickinvit)+"/3)"
   ,c_white,room_width,fa_bottom,20,false)
   }
   }
   draw_set_halign(fa_left);
   
   if clickinvit >= 3 {
   clickinvit = 0
   if ds_grid_get(planetary,242,planetnowid) = global.idfixe {
   send_banishguild(0,ds_grid_get(planetary,34,planetnowid));
   }else{
   //show_message("invit")
   send_invitguild(global.idguildname,global.idguild,ds_grid_get(planetary,32,planetnowid));
   }
   }
}else{clickinvit = 0}}



//SCRIPT DE DECOLONISTATION
if global.phpload = 1 {
if planetnowid = 0{}else{if echelle = 0 && menuplanet = 1 && ds_grid_get(planetary,32,planetnowid) = global.idfixe{
draw_sprite_ext(spr_quitplanet,0,room_width-(room_width/20)+xxmenulerp,(room_height/6),1,1,0,planetarycolor2,1)
draw_set_halign(fa_right);
if device_mouse_check_button_released(0, mb_left) && point_distance(xxmouse,yymouse,room_width-(room_width/20)+xxmenulerp,(room_height/6) ) < 50 {clickquit += 1}
   if device_mouse_check_button(0, mb_left) && xxmenulerp < 1 && point_distance(xxmouse,yymouse,room_width-(room_width/20)+xxmenulerp,(room_height/6) ) < 50 {
   
   draw_set_color(planetarycolor2);
   draw_text_outline(room_width-(room_width/30)+xxmenulerp,(room_height/6)+70,"Click 3 time to decolonize ("+string(clickquit)+"/3)"
   ,c_white,room_width,fa_bottom,20,false)
   }
   draw_set_halign(fa_left);
   
   
   if clickquit >= 3 {
   clickquit = 0
prochaineguerre = floor(random_range(500,10000))
//DECOLLAGE DE VAISSEAU POUR L ANIM
var i;
 for (i = 0; i < ds_grid_get(planetary,36,planetnowid); i += 1)
    {if i > 100 {i = ds_grid_get(planetary,36,planetnowid)}
    with(instance_create(x,y,obj_shipcommerce)){
    fuyard = 1
colorshiprgb = ds_grid_get(obj_planetary.planetary,30,planetparent)
colorship = ds_grid_get(other.planetary,32,other.planetnowid);enemy = 0
planetparent = other.planetnowid
vardist = ds_grid_get(other.planetary,39,other.planetnowid)
alarm[0] = (3000/(1+(ds_grid_get(other.planetary,74,other.planetnowid)/100)))*(1+(20/50))
//returnsurbase = 
alarm[1] = alarm[0]+100
 vargetdsgrid[1] = ds_grid_get(obj_planetary.planetary,51,planetparent)
vargetdsgrid[2] = ds_grid_get(obj_planetary.planetary,34,planetparent)
vargetdsgrid[3] = ((ds_grid_get(obj_planetary.planetary,7,planetparent)/25)*obj_planetary.optiportabletaille)
vargetdsgrid[4] = ds_grid_get(obj_planetary.planetary,32,planetparent)

}
    }



if ds_grid_get(planetary,51,planetnowid) < 1 && ds_grid_get(planetary,34,planetnowid) < 5{
ds_grid_set(planetary,32,planetnowid,ds_grid_get(planetary,34,planetnowid))
}else{
ds_grid_set(planetary,32,planetnowid,0)}


//envoyer vaisseau sur planete mere
ds_grid_add(planetary,43,0,ds_grid_get(planetary,43,planetnowid))//shiptype1nbr
ds_grid_add(planetary,44,0,ds_grid_get(planetary,43,planetnowid))//shiptype2nbr
ds_grid_add(planetary,45,0,ds_grid_get(planetary,43,planetnowid))//shiptype3nbr
ds_grid_add(planetary,46,0,ds_grid_get(planetary,43,planetnowid))//shiptype4nbr
ds_grid_add(planetary,47,0,ds_grid_get(planetary,43,planetnowid))//shiptype5nbr
ds_grid_add(planetary,48,0,ds_grid_get(planetary,43,planetnowid))//shiptype6nbr
ds_grid_add(planetary,49,0,ds_grid_get(planetary,43,planetnowid))//shiptype7nbr
//ds_grid_set(planetary,51,planetnowid,prochaineguerre)//fin de guerre relancer tout
//ds_grid_set(planetary,52,planetnowid,prochaineguerre/3)
//ds_grid_set(planetary,34,planetnowid,choose(2,3))
//ds_grid_set(planetary,231,planetnowid,floor((prochaineguerre/2)/30))
//ds_grid_set(planetary,232,planetnowid,floor((prochaineguerre/2)/50))
//ds_grid_set(planetary,233,planetnowid,floor((prochaineguerre/2)/70))
//ds_grid_set(planetary,234,planetnowid,floor((prochaineguerre/2)/300))
//ds_grid_set(planetary,235,planetnowid,floor((prochaineguerre/2)/500))
ds_grid_set(planetary,236,planetnowid,0)
ds_grid_set(planetary,237,planetnowid,0)
ds_grid_set(planetary,37,planetnowid,0)//STATSscientifique
ds_grid_set(planetary,38,planetnowid,0)//STATSdefense
ds_grid_set(planetary,36,planetnowid,5)//STATSships
ds_grid_set(planetary,43,planetnowid,2)//shiptype1nbr
ds_grid_set(planetary,44,planetnowid,2)//shiptype2nbr
ds_grid_set(planetary,45,planetnowid,1)//shiptype3nbr
ds_grid_set(planetary,46,planetnowid,0)//shiptype4nbr
ds_grid_set(planetary,47,planetnowid,0)//shiptype5nbr
ds_grid_set(planetary,48,planetnowid,0)//shiptype6nbr
ds_grid_set(planetary,49,planetnowid,0)//shiptype7nbr
ds_grid_set(planetary,38,planetnowid,2)//STATSdefense
ds_grid_set(planetary,72,planetnowid,ds_grid_get(planetary,72,planetnowid)/2)
ds_grid_set(planetary,73,planetnowid,ds_grid_get(planetary,72,planetnowid)/2)
ds_grid_set(planetary,74,planetnowid,ds_grid_get(planetary,72,planetnowid)/2)
ds_grid_set(planetary,75,planetnowid,ds_grid_get(planetary,72,planetnowid)/2)
ds_grid_set(planetary,53,planetnowid,0)//ttalvarshipinspace
ds_grid_set(planetary,54,planetnowid,0)//shiptype1flight
ds_grid_set(planetary,55,planetnowid,0)//shiptype2flight
ds_grid_set(planetary,56,planetnowid,0)//shiptype3flight
ds_grid_set(planetary,57,planetnowid,0)//shiptype4flight
ds_grid_set(planetary,58,planetnowid,0)//shiptype5flight
ds_grid_set(planetary,59,planetnowid,0)//shiptype6flight
ds_grid_set(planetary,60,planetnowid,0)//shiptype7flight
ds_grid_set(planetary,238,planetnowid,0)
ds_grid_set(planetary,239,planetnowid,0)
//ET ENVOI NET CODE 
ds_grid_set(planetary,81,planetnowid,date_current_datetime()*100000)
var get1 = floor(ds_grid_get(planetary,51,planetnowid))

//ENVOI
if global.phpload = 1 {

   var get2 = 
   string(ds_grid_get(planetary,231,planetnowid))+"$"+
   string(ds_grid_get(planetary,232,planetnowid))+"$"+
   string(ds_grid_get(planetary,233,planetnowid))+"$"+
   string(ds_grid_get(planetary,234,planetnowid))+"$"+
   string(ds_grid_get(planetary,235,planetnowid))+"$"+
   string(ds_grid_get(planetary,236,planetnowid))+"$"+
   string(ds_grid_get(planetary,237,planetnowid))+"$"+
   string(ds_grid_get(planetary,240,planetnowid))

var get3 = floor(ds_grid_get(planetary,34,planetnowid))
var get4 = floor(ds_grid_get(planetary,81,planetnowid))
var get5 = floor(ds_grid_get(planetary,35,planetnowid))
var get6 = floor(ds_grid_get(planetary,43,planetnowid))
var get7 = floor(ds_grid_get(planetary,44,planetnowid))
var get8 = floor(ds_grid_get(planetary,45,planetnowid))
var get9 = floor(ds_grid_get(planetary,46,planetnowid))
var get10 = floor(ds_grid_get(planetary,47,planetnowid))
var get11 = floor(ds_grid_get(planetary,48,planetnowid))
var get12 = floor(ds_grid_get(planetary,49,planetnowid))
var get13 = floor(ds_grid_get(planetary,37,planetnowid))
var get14 = floor(ds_grid_get(planetary,38,planetnowid))

   scr_ecritureplanet3(planetnowid,get1,get2,get3,get4,get5,get6,get7,get8,get9,get10,get11,get12,get13,get14);
   }
}
}else{clickquit = 0}}
}
//SCRIPT DE DECOLONISTATION

//draw_set_color(c_white);
//draw_text(70, 70, ""+string(buildaffect2));//NBR PHP BUILDAFFECT 2

#define scr_colonize
//checker le prix
okfric = 0
if ds_grid_get(planetary,35,0) > ds_grid_get(planetary,50,planetnowid) *1000 {
okfric = 1
}

if device_mouse_check_button_released(0, mb_left) && point_distance(xxmouse,yymouse,room_width-(room_width/20)+xxmenulerp,(room_height/6) ) < 50 {

 if colorcolo = planetarycolor2 {if okfric = 1 {
ds_grid_add(planetary,35,0,-(ds_grid_get(planetary,50,planetnowid)*1000)) //retirer argent
ds_grid_set(planetary,33,planetnowid,ds_grid_get(planetary,50,planetnowid))}}else{
ds_grid_add(planetary,35,0,(ds_grid_get(planetary,50,planetnowid)*1000)) //anuler rendre l'argent
ds_grid_set(planetary,33,planetnowid,0)
}

//show_message(ds_grid_get(planetary,50,planetnowid))
}

#define scr_attaque
//ENVOYER UNE ATTAQUE
if ds_grid_get(planetary,34,planetnowid) = global.idfixe {colorcolo = c_red}else{colorcolo = planetarycolor2}
if device_mouse_check_button_released(0, mb_left) && point_distance(xxmouse,yymouse,room_width-(room_width/20),(room_height/6) ) < 50 {
if colorcolo = planetarycolor2 {
ds_grid_set(planetary,51,planetnowid,ds_grid_get(planetary,50,planetnowid))
ds_grid_set(planetary,34,planetnowid,global.idfixe)
ds_grid_set(planetary,52,planetnowid,ds_grid_get(planetary,36,0))
}else{
varhelpdie = 1
prochaineguerre = floor(random_range(100,500)*varhelpdie)
ds_grid_set(planetary,51,planetnowid,prochaineguerre)//fin de guerre relancer tout
ds_grid_set(planetary,52,planetnowid,floor(prochaineguerre/varhelpdie))
ds_grid_set(planetary,34,planetnowid,choose(2,3))
}
}