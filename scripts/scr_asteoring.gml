#define scr_asteoring
//CHAINE D ASTEORIDE
planetarycolor = ds_grid_get(planetary,30,planetnowid)
planetarycolor2 = ds_grid_get(planetary,31,planetnowid)
if ds_grid_get(planetary,204,planetnowid) <= 0 { //SI HP PLANET -1

for (i = 0; i < ds_grid_get(planetary,7,planetnowid)/50 ; i += 1)
   {
   distring[i] = random_range(100,1600)//250 vraimentmini
   dirring[i] = random(360)
   anglering[i] = random(360)
   subring[i] = floor(random_range(0,3))
   scalering[i] = random_range(0.01,0.6)
   vitessering[i] = random_range(-0.3,0.3)
   colorring[i] = choose(planetarycolor2,planetarycolor)
   }
   nbrdasteoring = 400
}else{
if ds_grid_get(planetary,202,planetnowid) = 0 {//show_message(planetnowid);
for (i = 0; i < 5000; i += 1)
   {
   distring[i] = 0
   dirring[i] = 0
   anglering[i] = 0
   subring[i] = 0
   scalering[i] = 0
   colorring[i] = choose(planetarycolor2,planetarycolor)
   }
   nbrdasteoring = 0

}else{
for (i = 0; i < ds_grid_get(planetary,202,planetnowid); i += 1)
   {
   distring[i] = random_range(ds_grid_get(planetary,200,planetnowid),ds_grid_get(planetary,201,planetnowid))//250 vraimentmini
   dirring[i] = random(360)
   anglering[i] = random(360)
   subring[i] = floor(random_range(0,3))
   scalering[i] = random_range(0.02,ds_grid_get(planetary,203,planetnowid))
   vitessering[i] = random_range(-2,2)
   colorring[i] = choose(planetarycolor2,planetarycolor)
   }
   nbrdasteoring = 400
   
   }
   }
   
   if planetnowid != 0{
        with(obj_highscore){
            var hiscore_map, i, str;
            hiscore_map = ds_map_create();
            ds_map_set(hiscore_map,'id', obj_planetary.planetnowid);
            ds_map_set(hiscore_map,'sr', ds_grid_get(obj_planetary.planetary,39,other.buildaffect));
            ds_map_set(hiscore_map,'ss', ds_grid_get(obj_planetary.planetary,40,other.buildaffect));
            ds_map_set(hiscore_map,'st', ds_grid_get(obj_planetary.planetary,41,other.buildaffect));
            ds_map_set(hiscore_map,'sd', ds_grid_get(obj_planetary.planetary,42,other.buildaffect));
            str = json_encode(hiscore_map);
            ds_map_destroy(hiscore_map); 
            post = http_post_string("http://localhost:3000/universe/loadbyid" , str);
        }
    }

#define scr_asteoring2
