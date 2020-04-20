//debut SURFACE
if surface_exists(surf){surface_free(surf);}
if surface_exists(surf2){surface_free(surf2);}

/*if instance_exists(obj_shipcommerce){with(obj_shipcommerce){

}}*/

   surf = surface_create(room_width,room_height)
   surface_set_target(surf);
   surf2 = surface_create(room_width,room_height)

   


   draw_set_color(c_black);
   draw_clear_alpha(c_black,1)
   draw_clear_alpha(c_black,0)
   draw_rectangle(0,room_width,0,room_height,true);
   for (i = 0; i < 1000; i += 1)
   {
   xxstar[i] = random_range(0,room_width)
   yystar[i] = random_range(0,room_height)
   sizestar[i] = random_range(0.2,1.5)
   colorstar[i] = choose(c_red,c_blue,c_yellow)
   }

    var i;
for (i = 0; i < 1000; i += 1)
   {
   draw_set_color(c_white);
   draw_circle(xxstar[i],yystar[i],sizestar[i],false)
   //xxstar[i] = random_range(0,room_width)
   //yystar[i] = random_range(0,room_height)
   }
    var i;
for (i = 0; i < ds_grid_get(planetary,216,planetnowid) ; i += 1)
   {
   aleatcloud = random_range(0,360);
   xrandom = random_range(0.1,2);
   randomalpha = choose(random_range(0.1,0.2),random_range(0.001,0.2))
   randomscale = random_range(0.001,0.4);
   possiblecouleur = choose(1,2,3)
   if possiblecouleur = 1 {
   randomcolorR1 = random_range(0,250)
   randomcolorG1 = random_range(0,250-randomcolorR1)
   randomcolorB1 = random_range(0,250-((randomcolorR1+randomcolorG1)/2))}
   if possiblecouleur = 2 {
   randomcolorG1 = random_range(0,250)
   randomcolorR1 = random_range(0,250-randomcolorG1)
   randomcolorB1 = random_range(0,250-((randomcolorR1+randomcolorG1)/2))}
   if possiblecouleur = 3 {
   randomcolorB1 = random_range(0,250)
   randomcolorG1 = random_range(0,250-randomcolorB1)
   randomcolorR1 = random_range(0,250-((randomcolorG1+randomcolorB1)/2))}
   colorcloud = make_colour_rgb(randomcolorR1,randomcolorG1,randomcolorB1)
   /*xxcloud = room_width/2+lengthdir_x( room_width/6,aleatcloud);
   yycloud = room_height/2+lengthdir_y( room_height/6,aleatcloud);*/
   xxcloud = random_range(0,room_width)
   yycloud = random_range(0,room_height)
   
    draw_sprite_ext(spr_cloud,0,xxcloud,yycloud,randomscale,randomscale,aleatcloud,colorcloud,randomalpha)
}



surface_reset_target();

      //if echelle = 0 {
      surface_set_target(surf2);

//rotaplanet += ds_grid_get(planetary,13,planetnowid)/110000
dsgrid[1] = (ds_grid_get(planetary,7,planetnowid)/25)
dsgrid[2] = (ds_grid_get(planetary,19,planetnowid)*100)

//ATHMOSPHERE
//draw_set_blend_mode( bm_subtract );
//draw_circle(room_width/2,room_height/2,(dsgrid[1]*optiportabletaille)+(dsgrid[2]*optiportabletaille),false);
draw_circle_colour(room_width/2,room_height/2, (dsgrid[1]*optiportabletaille)+(dsgrid[2]*optiportabletaille), c_black, c_white, 0);
//draw_set_blend_mode( bm_normal );
surface_reset_target();//}

//FIN SURFACE
