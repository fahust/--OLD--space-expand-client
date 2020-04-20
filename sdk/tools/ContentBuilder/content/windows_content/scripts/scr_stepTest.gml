//planet de depart

ttalshipdef = 1



if global.shootaudio > 0 {
    global.shootaudio -= 1*(1+(global.shootaudio/20))
}
//TURRET OBJ FAIS TROP RAMER OPTI
for (ifz = 0; ifz < 22; ifz += 1){
    okzone[ifz] = 0
}


//ressource jamais en dessous de 0
if ds_grid_get(planetary,35,buildaffect) < 0 {

    ds_grid_set(planetary,90,buildaffect,0)
    ds_grid_set(planetary,91,buildaffect,0)
    ds_grid_set(planetary,92,buildaffect,0)
    ds_grid_set(planetary,93,buildaffect,0)
    ds_grid_set(planetary,94,buildaffect,0)
    ds_grid_set(planetary,95,buildaffect,0)
    ds_grid_set(planetary,96,buildaffect,0)
    ds_grid_set(planetary,97,buildaffect,0)
    ds_grid_set(planetary,98,buildaffect,0)
}
              
//SCORE
    if buildaffect = 0 {
        scoreress += ds_grid_get(planetary,35,buildaffect)
        scoreships += ds_grid_get(planetary,36,buildaffect)
        scorescience += ds_grid_get(planetary,37,buildaffect)
        scoredef += ds_grid_get(planetary,38,buildaffect)
        scoreressvalid = scoreress
        scoreshipsvalid = scoreships
        scoresciencevalid = ds_grid_get(planetary,37,buildaffect)
        scoredefvalid = scoredef
        scoretotal = floor(1+(scoreressvalid/1000000))+floor(scoreshipsvalid)+floor(scoresciencevalid)+floor(scoredefvalid)
        scoreress = 0
        scoreships = 0
        scorescience = 0
        scoredef = 0
    }else{
        
        if buildaffect = 1 {
        if planetnowid = 0 {
            idSend = 1
        }else{
            idSend = planetnowid
        }
        
        /*if menuplanet3 = 0 and menuplanet = 3{
            with(obj_highscore){
                var hiscore_map, i, str;
                hiscore_map = ds_map_create();
                ds_map_set(hiscore_map,'r', other.scoreressvalid);
                ds_map_set(hiscore_map,'s', other.scoreshipsvalid);
                ds_map_set(hiscore_map,'t', other.scoresciencevalid);
                ds_map_set(hiscore_map,'d', other.scoredefvalid);
                ds_map_set(hiscore_map,'id', other.idSend);
                ds_map_set(hiscore_map,'cu', global.idfixe);
                ds_map_set(hiscore_map,'n', global.name);
                //ds_map_set(hiscore_map,'cu', global.idfixe);
                str = json_encode(hiscore_map);
                ds_map_destroy(hiscore_map); 
                post = http_post_string(addr+"universe/loadusersscore" , str);
            }
        }else{*/
        
        with(obj_highscore){
                var hiscore_map, i, str;
                hiscore_map = ds_map_create();
                ds_map_set(hiscore_map,'r', other.scoreressvalid);
                ds_map_set(hiscore_map,'s', other.scoreshipsvalid);
                ds_map_set(hiscore_map,'t', other.scoresciencevalid);
                ds_map_set(hiscore_map,'d', other.scoredefvalid);
                ds_map_set(hiscore_map,'sr', floor(ds_grid_get(obj_planetary.planetary,39,other.idSend)));
                ds_map_set(hiscore_map,'ss', floor(ds_grid_get(obj_planetary.planetary,40,other.idSend)));
                ds_map_set(hiscore_map,'st', floor(ds_grid_get(obj_planetary.planetary,41,other.idSend)));
                ds_map_set(hiscore_map,'sd', floor(ds_grid_get(obj_planetary.planetary,42,other.idSend)));
                if ds_grid_get(other.planetary,32,other.idSend) = global.idfixe { 
                    ds_map_set(hiscore_map,'t0', other.techArray[1]);
                    ds_map_set(hiscore_map,'t2', other.techArray[2]);
                    ds_map_set(hiscore_map,'t3', other.techArray[3]);
                    ds_map_set(hiscore_map,'t4', other.techArray[4]);
                    ds_map_set(hiscore_map,'t5', other.techArray[5]);
                    ds_map_set(hiscore_map,'t6', other.techArray[6]);
                
                }
                ds_map_set(hiscore_map,'rc', 1);
                ds_map_set(hiscore_map,'rx', 1);
                ds_map_set(hiscore_map,'rd', 1);
                ds_map_set(hiscore_map,'id', other.idSend);
                ds_map_set(hiscore_map,'cu', global.idfixe);
                ds_map_set(hiscore_map,'n', global.name);
                ds_map_set(hiscore_map,'g', global.idguild);
                //ds_map_set(hiscore_map,'cu', global.idfixe);
                str = json_encode(hiscore_map);
                ds_map_destroy(hiscore_map); 
                post = http_post_string(addr+"universe/setusersscore" , str);
            }
            
        //}
            
        }else{
        if ds_grid_get(planetary,290,buildaffect) > 0 {
            with(obj_highscore){
                var hiscore_map, i, str;
                hiscore_map = ds_map_create();
                ds_map_set(hiscore_map,'r', ds_grid_get(other.planetary,290,other.buildaffect));
                ds_map_set(hiscore_map,'id', other.buildaffect);
                ds_map_set(hiscore_map,'cu', global.idfixe);
                str = json_encode(hiscore_map);
                ds_map_destroy(hiscore_map); 
                postRessource = http_post_string(addr+"universe/addressourcebyshipevent" , str);
            }
                ds_grid_set(planetary,290,buildaffect,0)
        }
        }
        if ds_grid_get(planetary,32,buildaffect) = global.idfixe {
            scoreress += ds_grid_get(planetary,35,buildaffect)
            scoreships += ds_grid_get(planetary,36,buildaffect)
            scorescience += ds_grid_get(planetary,37,buildaffect)
            scoredef += ds_grid_get(planetary,38,buildaffect)
        }
    }      
                    
///DEFENSE
if ds_grid_get(planetary,204,planetnowid) > 0 {//HP PLANET
    if instance_exists(obj_defence) {
        with(obj_defence){
            if enemy = ds_grid_get(other.planetary,32,planetparent) && planetparent = other.planetnowid {
                other.okzone[zone] = 1;
            }
        }
    }

   if ds_grid_get(planetary,61,planetnowid) = 1 && okzone[1] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,17,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 0;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 1;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,62,planetnowid) = 1 && okzone[2] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,17,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 0;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 2;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,63,planetnowid) = 1 && okzone[3] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,17,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 0;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 3;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,64,planetnowid) = 1 && okzone[4] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,17,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 0;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 4;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,65,planetnowid) = 1 && okzone[5] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,17,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 0;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 5;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,66,planetnowid) = 1 && okzone[6] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,17,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 0;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 6;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,67,planetnowid) = 1 && okzone[7] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,17,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 0;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 7;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,68,planetnowid) = 1 && okzone[8] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,17,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 0;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 8;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,69,planetnowid) = 1 && okzone[9] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,17,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 0;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 9;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,70,planetnowid) = 1 && okzone[10] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,17,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 0;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 10;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   
   
   if ds_grid_get(planetary,280,planetnowid) = 1 && okzone[11] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,16,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 1;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 11;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,281,planetnowid) = 1 && okzone[12] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,16,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 1;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 12;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,282,planetnowid) = 1 && okzone[13] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,16,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 1;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 13;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,283,planetnowid) = 1 && okzone[14] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,16,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 1;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 14;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,284,planetnowid) = 1 && okzone[15] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,16,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 1;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 15;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,285,planetnowid) = 1 && okzone[16] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,16,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 1;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 16;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,286,planetnowid) = 1 && okzone[17] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,16,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 1;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 17;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,287,planetnowid) = 1 && okzone[18] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,16,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 1;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 18;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,288,planetnowid) = 1 && okzone[19] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,16,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 1;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 19;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   if ds_grid_get(planetary,289,planetnowid) = 1 && okzone[20] = 0 {if buildaffect = planetnowid && global.phpload = 1 {scr_addinfo2(1,16,buildaffect)}
   with(instance_create(x,y,obj_defence)){ausol = 1;technow = ds_grid_get(other.planetary,37,planetparent);planetparent = other.planetnowid;zone = 20;enemy = ds_grid_get(other.planetary,32,planetparent)}}
   
}

   
//TURRET OBJ 
if ds_grid_get(planetary,38,buildaffect) < 0 {
    ds_grid_set(planetary,38,buildaffect,0) 
}

if ds_grid_get(planetary,36,buildaffect) < 10 {
    ds_grid_set(planetary,36,buildaffect,10)
    ds_grid_set(planetary,43,buildaffect,0)
    ds_grid_set(planetary,44,buildaffect,0)
    ds_grid_set(planetary,45,buildaffect,0)
    ds_grid_set(planetary,46,buildaffect,0)
    ds_grid_set(planetary,47,buildaffect,0)
}//jamais avoir vaisseau en dessous de 3 /2/2

if ds_grid_get(planetary,32,buildaffect) = 0 {
    ds_grid_set(planetary,36,buildaffect,10)
    ds_grid_set(planetary,43,buildaffect,0)
    ds_grid_set(planetary,44,buildaffect,0)
    ds_grid_set(planetary,45,buildaffect,0)
    ds_grid_set(planetary,46,buildaffect,0)
    ds_grid_set(planetary,47,buildaffect,0)
}//si pas de proprio ,pas de vaisseau sinon bug bataille 

if surface_exists(obj_planetary.surf){
    global.surfok = 1
}else{
    global.surfok = 0
    }

idplanet[1] = -1
idplanet[2] = -1
idplanet[3] = -1
idplanet[4] = -1
if instance_exists(obj_ship){
    nbrdobjship = instance_number(obj_ship)
    with(obj_ship){
        if suislepatron = 1 {
            if other.idplanet[1] = -1 {
                other.idplanet[1] = planetparent 
            }else if other.idplanet[2] = -1 {
                if other.idplanet[1] = planetparent{}else{
                    other.idplanet[2] = planetparent 
                }
            }else if other.idplanet[3] = -1 {
                if other.idplanet[1] = planetparent or other.idplanet[2] = planetparent {}else{
                    other.idplanet[3] = planetparent 
                }
            }else if other.idplanet[4] = -1 {
                if other.idplanet[1] = planetparent or other.idplanet[2] = planetparent or other.idplanet[3] = planetparent{}else{
                    other.idplanet[4] = planetparent 
                }
            }
        }
    }
}



///ANGLE DES TURRET CHANGE
randomangleorbit1 += 0.1
randomangleorbit2 += 0.1
randomangleorbit3 += 0.1
randomangleorbit4 += 0.1
randomangleorbit5 += 0.1
randomangleorbit6 += 0.1
randomangleorbit7 += 0.1
randomangleorbit8 += 0.1
randomangleorbit9 += 0.1
randomangleorbit10 += 0.1



//BUILD DEBUILD ECT
statvar1build = 0
statvar2build = 0
statvar3build = 0
statvar4build = 0

ibuild = floor(random_range(100,172))
if buildaffect < ds_grid_height(planetary)-1 {
    buildaffect += 1 
}else{
    buildaffect = 0
}
if buildaffect = lastbuildaffect {}else{
    lastbuildaffect = buildaffect
    if ds_grid_get(planetary,204,buildaffect) > 0 {//HP PLANET
        if ds_grid_get(planetary,36,buildaffect) < 0 {
            ds_grid_set(planetary,36,buildaffect,0)
        }//jamais avoir vaisseauen dessous de 0

        //RESSOURCE
        if buildaffect = 0{
            varressource = ds_grid_get(planetary,90,buildaffect)+
            ds_grid_get(planetary,91,buildaffect)+
            ds_grid_get(planetary,92,buildaffect)+
            ds_grid_get(planetary,93,buildaffect)+
            ds_grid_get(planetary,94,buildaffect)+
            ds_grid_get(planetary,95,buildaffect)+
            ds_grid_get(planetary,96,buildaffect)+
            ds_grid_get(planetary,97,buildaffect)+
            ds_grid_get(planetary,98,buildaffect)
    
            ds_grid_set(planetary,35,buildaffect,floor(varressource))
        


        //calculate defence

        varressource = (ds_grid_get(planetary,61,buildaffect)*5)+
        (ds_grid_get(planetary,62,buildaffect)*5)+
        (ds_grid_get(planetary,63,buildaffect)*5)+
        (ds_grid_get(planetary,64,buildaffect)*5)+
        (ds_grid_get(planetary,65,buildaffect)*5)+
        (ds_grid_get(planetary,66,buildaffect)*5)+
        (ds_grid_get(planetary,67,buildaffect)*5)+
        (ds_grid_get(planetary,68,buildaffect)*5)+
        (ds_grid_get(planetary,69,buildaffect)*5)+
        (ds_grid_get(planetary,70,buildaffect)*5)+
        (ds_grid_get(planetary,280,buildaffect)*5)+
        (ds_grid_get(planetary,281,buildaffect)*5)+
        (ds_grid_get(planetary,282,buildaffect)*5)+
        (ds_grid_get(planetary,283,buildaffect)*5)+
        (ds_grid_get(planetary,284,buildaffect)*5)+
        (ds_grid_get(planetary,285,buildaffect)*5)+
        (ds_grid_get(planetary,286,buildaffect)*5)+
        (ds_grid_get(planetary,287,buildaffect)*5)+
        (ds_grid_get(planetary,288,buildaffect)*5)+
        (ds_grid_get(planetary,289,buildaffect)*5)



        ds_grid_set(planetary,38,buildaffect,floor(varressource))


        //calculate shipinfight

        varressource = (ds_grid_get(planetary,231,buildaffect))+
        (ds_grid_get(planetary,232,buildaffect))+
        (ds_grid_get(planetary,233,buildaffect))+
        (ds_grid_get(planetary,234,buildaffect))+
        (ds_grid_get(planetary,235,buildaffect))+
        (ds_grid_get(planetary,236,buildaffect))+
        (ds_grid_get(planetary,237,buildaffect))


        //ds_grid_set(planetary,52,buildaffect,floor(varressource))

        //calculate SCIENCE
        varscience = ds_grid_get(planetary,72,buildaffect)+
        ds_grid_get(planetary,73,buildaffect)+
        ds_grid_get(planetary,74,buildaffect)+
        ds_grid_get(planetary,75,buildaffect)

        ds_grid_set(planetary,37,buildaffect,varscience) 
        
        //EQUILIBRE SHIP IN FLIGHT
        if ds_grid_get(planetary,54,buildaffect) > ds_grid_get(planetary,43,buildaffect) {ds_grid_set(planetary,54,buildaffect,ds_grid_get(planetary,43,buildaffect))}
        if ds_grid_get(planetary,55,buildaffect) > ds_grid_get(planetary,44,buildaffect) {ds_grid_set(planetary,55,buildaffect,ds_grid_get(planetary,44,buildaffect))}
        if ds_grid_get(planetary,56,buildaffect) > ds_grid_get(planetary,45,buildaffect) {ds_grid_set(planetary,56,buildaffect,ds_grid_get(planetary,45,buildaffect))}
        if ds_grid_get(planetary,57,buildaffect) > ds_grid_get(planetary,46,buildaffect) {ds_grid_set(planetary,57,buildaffect,ds_grid_get(planetary,46,buildaffect))}
        if ds_grid_get(planetary,58,buildaffect) > ds_grid_get(planetary,47,buildaffect) {ds_grid_set(planetary,58,buildaffect,ds_grid_get(planetary,47,buildaffect))}
        if ds_grid_get(planetary,59,buildaffect) > ds_grid_get(planetary,48,buildaffect) {ds_grid_set(planetary,59,buildaffect,ds_grid_get(planetary,48,buildaffect))}
        if ds_grid_get(planetary,60,buildaffect) > ds_grid_get(planetary,49,buildaffect) {ds_grid_set(planetary,60,buildaffect,ds_grid_get(planetary,49,buildaffect))}
        if ds_grid_get(planetary,54,buildaffect) < 0 {ds_grid_set(planetary,54,buildaffect,0)}
        if ds_grid_get(planetary,55,buildaffect) < 0 {ds_grid_set(planetary,55,buildaffect,0)}
        if ds_grid_get(planetary,56,buildaffect) < 0 {ds_grid_set(planetary,56,buildaffect,0)}
        if ds_grid_get(planetary,57,buildaffect) < 0 {ds_grid_set(planetary,57,buildaffect,0)}
        if ds_grid_get(planetary,58,buildaffect) < 0 {ds_grid_set(planetary,58,buildaffect,0)}
        if ds_grid_get(planetary,59,buildaffect) < 0 {ds_grid_set(planetary,59,buildaffect,0)}
        if ds_grid_get(planetary,60,buildaffect) < 0 {ds_grid_set(planetary,60,buildaffect,0)}
        
        
        
        


        //calculate vaisseau total
        varship = ds_grid_get(planetary,43,buildaffect)+
        ds_grid_get(planetary,44,buildaffect)+
        ds_grid_get(planetary,45,buildaffect)+
        ds_grid_get(planetary,46,buildaffect)+
        ds_grid_get(planetary,47,buildaffect)+
        ds_grid_get(planetary,48,buildaffect)+
        ds_grid_get(planetary,49,buildaffect)


        ds_grid_set(planetary,36,buildaffect,varship) }

        varshipinflight = ds_grid_get(planetary,54,buildaffect)+
        ds_grid_get(planetary,55,buildaffect)+
        ds_grid_get(planetary,56,buildaffect)+
        ds_grid_get(planetary,57,buildaffect)+
        ds_grid_get(planetary,58,buildaffect)+
        ds_grid_get(planetary,59,buildaffect)+
        ds_grid_get(planetary,60,buildaffect)

        ds_grid_set(planetary,53,buildaffect,varshipinflight)

        //changer les var stat a chaque buildaffect pour planet enemy
        if ds_grid_get(planetary,32,buildaffect) < 5 {
            stat1 = floor(random_range(20,82));
            stat2 = floor(random_range(0,100-stat1));
            stat3 = floor(random_range(0,100-stat1-stat2));
            stat4 = floor(random_range(0,100-stat1-stat2-stat3));

            ds_grid_set(planetary,39,buildaffect,stat1)
            ds_grid_set(planetary,40,buildaffect,stat2)
            ds_grid_set(planetary,41,buildaffect,stat3)
            ds_grid_set(planetary,42,buildaffect,stat4)
        }


        prcntchange1 = floor(random_range(ds_grid_get(planetary,39,buildaffect),100))
        prcntchange2 = floor(random_range(ds_grid_get(planetary,40,buildaffect),100))
        prcntchange3 = floor(random_range(ds_grid_get(planetary,41,buildaffect),100))
        prcntchange4 = floor(random_range(ds_grid_get(planetary,42,buildaffect),100))

    //pas depasser 100 avec scientifique et defense
        if ds_grid_get(planetary,37,buildaffect) > 100 {
            ds_grid_set(planetary,37,buildaffect,100)
        }
        if ds_grid_get(planetary,38,buildaffect) > 100 {
            ds_grid_set(planetary,38,buildaffect,100)
        }

        if prcntchange1 >= 99 && ds_grid_get(planetary,39,buildaffect) > 5{
            ds_grid_set(planetary,ibuild,buildaffect,choose(0,1,2,3,4,5,6,7,8,9)) 
        }//INDUSTRY = ville
        if prcntchange2 >= 99 && ds_grid_get(planetary,40,buildaffect) > 5{
            ds_grid_set(planetary,ibuild,buildaffect,choose(0,1,2,3,4,5,6,7,8,9)) 
        }//SHIPS = ville
        if prcntchange3 >= 99 && ds_grid_get(planetary,41,buildaffect) > 5{
            ds_grid_set(planetary,ibuild,buildaffect,choose(0,1,2,3,4,5,6,7,8,9)) 
        }//SCIENTIST = ville
        if prcntchange4 >= 99 && ds_grid_get(planetary,42,buildaffect) > 5{
            ds_grid_set(planetary,ibuild,buildaffect,choose(0,1,2,3,4,5,6,7,8,9)) 
        }//DEFENCE = ville

        if ds_grid_get(planetary,39,buildaffect) < 5 && ds_grid_get(planetary,40,buildaffect) < 5 
        && ds_grid_get(planetary,41,buildaffect) < 5 && ds_grid_get(planetary,42,buildaffect) < 5 {
            if ds_grid_get(planetary,5,buildaffect) = 1 {
                ds_grid_set(planetary,ibuild,buildaffect,floor(random_range(10,29)))
            }else{
                ds_grid_set(planetary,ibuild,buildaffect,floor(random_range(20,29)))
            }
        }
    }



    if ds_grid_get(planetary,40,buildaffect) > 5 {
        if ds_grid_get(planetary,40,buildaffect) < 10 {
            ds_grid_set(planetary,40,buildaffect,10)
        }
        typechoose = 1
        if ds_grid_get(planetary,40,buildaffect) > 20 {typechoose = 2}
        if ds_grid_get(planetary,40,buildaffect) > 40 {typechoose = 3}
        if ds_grid_get(planetary,40,buildaffect) > 60 {typechoose = 4}
        if ds_grid_get(planetary,40,buildaffect) > 80 {typechoose = 7}





    }



    //RATTRAPAGE DE PLANET MERE
    if buildaffect = 0 {
        ds_grid_add(planetary,258,buildaffect,1)
        date = date_current_datetime()
        //FAIRE LE RATTRAPAGE
        rattrapage = 0
        rattrapage = date_second_span(date,ds_grid_get(planetary,81,buildaffect)/100000)
        //if rattrapage > 35 {rattrapage = 3600*24*31*6}//six mois
        if rattrapage > 3600*24*7 {
            rattrapage = 1*3600*24
        }//UNE semaine MAX

        if ds_grid_get(planetary,204,buildaffect) > 0 {//HP PLANET
            if rattrapage > 1 {
                savedate = date 
                
                //RATTRAPAGE DU TEMPS PERDU //commerce et create ship
                if rattrapage > 0 {
                    //COLONISATION
                    if ds_grid_get(planetary,33,buildaffect) > 0 {//envoi du vaisseau
                        for (if4 = 0; if4 < rattrapage; if4 += 1){
                            if ds_grid_get(planetary,33,buildaffect) > 5 {
                                ds_grid_add(planetary,33,buildaffect,-0.1)
                            }else{
                                if4 = rattrapage
                            }
                        }
                        if  ds_grid_get(planetary,33,buildaffect) < 6 {//TERRAFORMATION
                            createcolonisateur = 0
                            if instance_exists(obj_ship){
                                with(obj_ship){
                                    if colonisateur = 1 {other.createcolonisateur = 1}
                                }
                            }
                            if createcolonisateur = 0 {
                                scr_addinfo(ds_grid_get(planetary,8,buildaffect),8,buildaffect)
                                with(instance_create(x,y,obj_ship)){
                                    colonisateur = 1
                                    mode = 5
                                    type = 5
                                    colorship = ds_grid_get(other.planetary,34,other.buildaffect)
                                    enemy = global.idfixe
                                    planetparent = other.buildaffect
                                    vargetdsgrid[1] = ds_grid_get(obj_planetary.planetary,51,other.buildaffect)
                                    vargetdsgrid[2] = ds_grid_get(obj_planetary.planetary,34,other.buildaffect)
                                    vargetdsgrid[3] = (ds_grid_get(obj_planetary.planetary,7,other.buildaffect)/25)*other.optiportabletaille
                                    vargetdsgrid[4] = ds_grid_get(obj_planetary.planetary,32,other.buildaffect)
                                    //attaquant = 0
                                }
                            }
                            okterraformation = 1
                            for (if4 = 0; if4 < rattrapage; if4 += 1){
                            if ds_grid_get(planetary,12,buildaffect) < 1012 {ds_grid_add(planetary,12,buildaffect,1);okterraformation = 0}//Surface pressure 1013.25 mbar
                            if ds_grid_get(planetary,14,buildaffect) < 123398 {ds_grid_add(planetary,14,buildaffect,1);okterraformation = 0}//Radiative power
                            if ds_grid_get(planetary,15,buildaffect) < 11 {ds_grid_add(planetary,15,buildaffect,0.1);okterraformation = 0}//Surface temperature 38 °c
                            if ds_grid_get(planetary,18,buildaffect) < 0.24 {ds_grid_add(planetary,18,buildaffect,0.01);okterraformation = 0}//Magnetic field 0.300 gauss
                            if ds_grid_get(planetary,19,buildaffect) < 3.9 {ds_grid_add(planetary,19,buildaffect,0.1);okterraformation = 0}//Magnetosphere 2.50 radius
                            if ds_grid_get(planetary,24,buildaffect) < 77 {ds_grid_add(planetary,24,buildaffect,0.1);okterraformation = 0}//air nitrogen
                            if ds_grid_get(planetary,25,buildaffect) < 20 {ds_grid_add(planetary,25,buildaffect,0.1);okterraformation = 0}//air oxygen
                            if ds_grid_get(planetary,26,buildaffect) < 0.9 {ds_grid_add(planetary,26,buildaffect,0.1);okterraformation = 0}//Air argon
                            if ds_grid_get(planetary,27,buildaffect) < 0.039 {ds_grid_add(planetary,27,buildaffect,0.01);okterraformation = 0}//Air Carbon dioxide

                            if ds_grid_get(planetary,12,buildaffect) > 1013 {ds_grid_add(planetary,12,buildaffect,-1);okterraformation = 0}//Surface pressure 1013.25 mbar
                            if ds_grid_get(planetary,14,buildaffect) > 123399 {ds_grid_add(planetary,14,buildaffect,-1);okterraformation = 0}//Radiative power
                            if ds_grid_get(planetary,15,buildaffect) > 12 {ds_grid_add(planetary,15,buildaffect,-0.1);okterraformation = 0}//Surface temperature 38 °c
                            if ds_grid_get(planetary,18,buildaffect) > 0.25 {ds_grid_add(planetary,18,buildaffect,-0.01);okterraformation = 0}//Magnetic field 0.300 gauss
                            if ds_grid_get(planetary,19,buildaffect) > 4 {ds_grid_add(planetary,19,buildaffect,-0.1);okterraformation = 0}//Magnetosphere 2.50 radius
                            if ds_grid_get(planetary,24,buildaffect) > 78 {ds_grid_add(planetary,24,buildaffect,-0.1);okterraformation = 0}//air nitrogen
                            if ds_grid_get(planetary,25,buildaffect) > 21 {ds_grid_add(planetary,25,buildaffect,-0.1);okterraformation = 0}//air oxygen
                            if ds_grid_get(planetary,26,buildaffect) > 1 {ds_grid_add(planetary,26,buildaffect,-0.1);okterraformation = 0}//Air argon
                            if ds_grid_get(planetary,27,buildaffect) > 0.04 {ds_grid_add(planetary,27,buildaffect,-0.01);okterraformation = 0}//Air Carbon dioxide
                            if okterraformation = 1 {if4 = rattrapage}
                            }
                            if okterraformation = 1 {
                            ds_grid_add(planetary,33,buildaffect,-1)
                            }
                        }


                        if ds_grid_get(planetary,33,buildaffect) < 2 {
                        scr_addinfo(ds_grid_get(planetary,8,buildaffect),6,buildaffect)
                        prochaineguerre = floor(random_range(500,4000)*1)
                        ds_grid_set(planetary,51,buildaffect,prochaineguerre)//fin de guerre relancer tout
                        ds_grid_set(planetary,52,buildaffect,floor((prochaineguerre/2)/1))
                        ds_grid_set(planetary,231,buildaffect,floor((prochaineguerre/2)/5))
                        ds_grid_set(planetary,232,buildaffect,floor((prochaineguerre/2)/10))
                        ds_grid_set(planetary,233,buildaffect,floor((prochaineguerre/2)/20))
                        ds_grid_set(planetary,234,buildaffect,floor((prochaineguerre/2)/50))
                        ds_grid_set(planetary,235,buildaffect,floor((prochaineguerre/2)/100))
                        ds_grid_set(planetary,236,buildaffect,floor((prochaineguerre/2)/200))
                        ds_grid_set(planetary,237,buildaffect,floor((prochaineguerre/2)/300))
                        ds_grid_set(planetary,240,buildaffect,floor(random_range(1,80)))

                        ds_grid_set(planetary,33,buildaffect,0)

                        ds_grid_set(planetary,32,buildaffect,global.idfixe)
                        ds_grid_set(planetary,35,buildaffect,1000)
                        ds_grid_set(planetary,36,buildaffect,3)
                        ds_grid_add(planetary,43,buildaffect,3)//shiptype1nbr
                        ds_grid_add(planetary,44,buildaffect,2)//shiptype2nbr
                        ds_grid_add(planetary,45,buildaffect,2)//shiptype3nbr
                        ds_grid_add(planetary,46,buildaffect,0)//shiptype4nbr
                        ds_grid_add(planetary,47,buildaffect,0)//shiptype5nbr
                        ds_grid_add(planetary,48,buildaffect,0)//shiptype6nbr
                        ds_grid_add(planetary,49,buildaffect,0)//shiptype7nbr
                        ds_grid_set(planetary,37,buildaffect,0)
                        ds_grid_set(planetary,72,buildaffect,0)
                        ds_grid_set(planetary,73,buildaffect,0)
                        ds_grid_set(planetary,74,buildaffect,0)
                        ds_grid_set(planetary,75,buildaffect,0)
                        ds_grid_set(planetary,38,buildaffect,1)
                        ds_grid_set(planetary,34,buildaffect,choose(2,3))
                        }
                    }


                    if ds_grid_get(planetary,32,buildaffect) = global.idfixe {

                    }else{
                    if planetnowid = buildaffect {totalstats = 0}
                    stat1 = floor(choose(0,random_range(20,82)));
                    stat2 = floor(random_range(0,100-stat1));
                    stat3 = floor(choose(0,random_range(0,100-stat1-stat2)));
                    stat4 = floor(100-stat1-stat2-stat3);

                    ds_grid_set(planetary,39,buildaffect,stat1)
                    ds_grid_set(planetary,40,buildaffect,stat2)
                    ds_grid_set(planetary,41,buildaffect,stat3)
                    ds_grid_set(planetary,42,buildaffect,stat4)
                    }
                    ///FIN COLONISATION


                    //COMMERCE
                    rattrapagevarmatter = rattrapage
                    if global.enginematter = 1 {
                    if ds_grid_get(planetary,258,buildaffect) >= rattrapagevarmatter {
                    ds_grid_add(planetary,258,buildaffect,-rattrapagevarmatter)
                    rattrapagevarmatter = rattrapagevarmatter*2
                    }else{global.enginematter = 0}
                    }
                    if ds_grid_get(planetary,39,buildaffect) > 2 {
                    rattrapagevar = floor((((rattrapagevarmatter*(1+(techArray[10]/4)))*(1+  (ds_grid_get(planetary,43,buildaffect)/10000) + (ds_grid_get(planetary,44,buildaffect)/7000) + (ds_grid_get(planetary,45,buildaffect)/5000) //VAISSEAU
                    + (ds_grid_get(planetary,46,buildaffect)/3000)  + (ds_grid_get(planetary,47,buildaffect)/1000) //VAISSEAU
                        ) )*100)*(1+(ds_grid_get(planetary,37,buildaffect)/200)))//SCIENCE *2 pour 100
                        
                        if buildaffect = planetnowid {scr_addinfo2(rattrapagevar,15,buildaffect)}
                        
                    if rattrapagevarmatter > 500 {if buildaffect = 0 {scr_addinfo(rattrapagevar,1,buildaffect)}}
                        if buildaffect = 0 {
                            ds_grid_add(planetary,35,buildaffect,(rattrapagevar)*9)
                            ds_grid_add(planetary,90,buildaffect,rattrapagevar)
                            ds_grid_add(planetary,91,buildaffect,rattrapagevar)
                            ds_grid_add(planetary,92,buildaffect,rattrapagevar)
                            ds_grid_add(planetary,93,buildaffect,rattrapagevar)
                            ds_grid_add(planetary,94,buildaffect,rattrapagevar)
                            ds_grid_add(planetary,95,buildaffect,rattrapagevar)
                            ds_grid_add(planetary,96,buildaffect,rattrapagevar)
                            ds_grid_add(planetary,97,buildaffect,rattrapagevar)
                            ds_grid_add(planetary,98,buildaffect,rattrapagevar)
                        }
                    }
                    //Faire des vaisseau
                    nbrshipbuild = 0
                    //if buildaffect = 0 {
                    buildshipinfo[0] = 0
                    buildshipinfo[1] = 0
                    buildshipinfo[2] = 0
                    buildshipinfo[3] = 0
                    buildshipinfo[4] = 0
                    buildshipinfo[5] = 0
                    buildshipinfo[6] = 0
                    buildshipinfo[7] = 0
                    var if2
                    for (if2 = 0; if2 < rattrapagevarmatter/10; if2 += 1)
                    {
                    priceship = 1
                    if ds_grid_get(planetary,40,buildaffect) > 5 {
                    if ds_grid_get(planetary,40,buildaffect) < 10 {ds_grid_set(planetary,40,buildaffect,10)}
                    typechoose = 1
                    if ds_grid_get(planetary,40,buildaffect) > 20 {typechoose = 2}
                    if ds_grid_get(planetary,40,buildaffect) > 40 {typechoose = 3}
                    if ds_grid_get(planetary,40,buildaffect) > 60 {typechoose = 4}
                    if ds_grid_get(planetary,40,buildaffect) > 80 {typechoose = 7}
                    pricecapital = 1
                    if typechoose > 4 {pricecapital = typechoose
                    if ds_grid_get(planetary,35,buildaffect) >= floor(((priceship*(typechoose*50000))*typechoose)*pricecapital) {
                    }else{typechoose -= 1 ;}
                    pricecapital = typechoose
                    if ds_grid_get(planetary,35,buildaffect) >= floor(((priceship*(typechoose*50000))*typechoose)*pricecapital) {
                    pricecapital = typechoose
                    }else{typechoose -= 1 }}
                    if typechoose > 5 {pricecapital = typechoose}else{pricecapital = 1}


                    if ds_grid_get(planetary,35,buildaffect) >= floor(((priceship*(typechoose*50000))*typechoose)*pricecapital) {
                    if buildaffect = planetnowid {
                    jaugevar2 = c_green
                    alarmjaugevar2 = 100}
                    ds_grid_add(planetary,42+typechoose,buildaffect,1*1)

                    nbrshipbuild += 1 
                    buildshipinfo[typechoose] += 1
                    ds_grid_add(planetary,35,buildaffect,-(floor(((priceship*(typechoose*50000))*typechoose)*pricecapital)))
                    ressourcevar = floor(ds_grid_get(planetary,35,buildaffect)/9)//floor(((priceship*(typechoose*50))/9))
                    if ressourcevar > 0 {}else{ressourcevar = 0}
                    ds_grid_set(planetary,90,buildaffect,ressourcevar)
                    ds_grid_set(planetary,91,buildaffect,ressourcevar)
                    ds_grid_set(planetary,92,buildaffect,ressourcevar)
                    ds_grid_set(planetary,93,buildaffect,ressourcevar)
                    ds_grid_set(planetary,94,buildaffect,ressourcevar)
                    ds_grid_set(planetary,95,buildaffect,ressourcevar)
                    ds_grid_set(planetary,96,buildaffect,ressourcevar)
                    ds_grid_set(planetary,97,buildaffect,ressourcevar)
                    ds_grid_set(planetary,98,buildaffect,ressourcevar)
                    }else{if2 = rattrapagevarmatter ;if buildaffect = planetnowid {jaugevar2 = c_red;alarmjaugevar2 = 100}}
                    }else{if2 = rattrapagevarmatter;ds_grid_set(planetary,40,buildaffect,0)}
                    }
                    if buildaffect = planetnowid {
                    if buildshipinfo[1] > 0 {scr_addinfo2(buildshipinfo[1],1,buildaffect)}
                    if buildshipinfo[2] > 0 {scr_addinfo2(buildshipinfo[2],2,buildaffect)}
                    if buildshipinfo[3] > 0 {scr_addinfo2(buildshipinfo[3],3,buildaffect)}
                    if buildshipinfo[4] > 0 {scr_addinfo2(buildshipinfo[4],4,buildaffect)}
                    if buildshipinfo[5] > 0 {scr_addinfo2(buildshipinfo[5],5,buildaffect)}
                    if buildshipinfo[6] > 0 {scr_addinfo2(buildshipinfo[6],6,buildaffect)}
                    if buildshipinfo[7] > 0 {scr_addinfo2(buildshipinfo[7],7,buildaffect)}
                    }

                    if rattrapage > 500 {if buildaffect = 0 {scr_addinfo(nbrshipbuild,2,buildaffect)}}



                    //RATRAPAGE BATAILLE
                    shiploose = 0
                    
                    if ds_grid_get(planetary,52,buildaffect) > 5 && ds_grid_get(planetary,36 ,buildaffect) > 5{
                    rattrapagevartimeattack = (floor(rattrapage/60))//-ds_grid_get(planetary,51,buildaffect)
                    totalrattrapagevartimeattack = rattrapagevartimeattack


                    if ds_grid_get(planetary,51,buildaffect) > 0 {//ALARMATTACK
                    ds_grid_add(planetary,51,buildaffect,0-(floor(rattrapage/100)))}

                    if ds_grid_get(planetary,51,buildaffect) < 0 {ds_grid_set(planetary,51,buildaffect,0)}
                    if rattrapagevartimeattack > ds_grid_get(planetary,52,buildaffect) {rattrapagevartimeattack = ds_grid_get(planetary,52,buildaffect)}
                    if ds_grid_get(planetary,51,buildaffect) <= 0 {
                    if rattrapagevartimeattack > 0 {
                    if (ds_grid_get(planetary,43,buildaffect)-2) > rattrapagevartimeattack{//si plus de vaisseau que de ratrapage time attack
                    saverattrap = floor(rattrapagevartimeattack)
                    if ds_grid_get(planetary,52,buildaffect) > 2 {timeattack = (ds_grid_get(planetary,43,buildaffect)-2);ds_grid_add(planetary,52,buildaffect,-saverattrap);rattrapagevartimeattack = 0;ds_grid_add(planetary,43,buildaffect,-saverattrap);shiploose += floor(saverattrap)
                    }}else{shiploose += ds_grid_get(planetary,43,buildaffect);rattrapagevartimeattack -= ds_grid_get(planetary,43,buildaffect)-2;ds_grid_add(planetary,52,buildaffect,-ds_grid_get(planetary,43,buildaffect)-2);ds_grid_set(planetary,43,buildaffect,0);}
                    }
                    if rattrapagevartimeattack > 0 {
                    if (ds_grid_get(planetary,44,buildaffect)-2) > floor(rattrapagevartimeattack/10){//si plus de vaisseau que de ratrapage time attack
                    saverattrap =  floor(rattrapagevartimeattack/10)
                    if ds_grid_get(planetary,52,buildaffect) > 2 {timeattack = (ds_grid_get(planetary,44,buildaffect)-2);ds_grid_add(planetary,52,buildaffect,-saverattrap);rattrapagevartimeattack = 0;ds_grid_add(planetary,44,buildaffect,-saverattrap);shiploose += floor(saverattrap)
                    }}else{shiploose += ds_grid_get(planetary,44,buildaffect);rattrapagevartimeattack -= ds_grid_get(planetary,44,buildaffect)*10;ds_grid_add(planetary,52,buildaffect,-ds_grid_get(planetary,44,buildaffect));ds_grid_set(planetary,44,buildaffect,0);}
                    }
                    if rattrapagevartimeattack > 0 {
                    if (ds_grid_get(planetary,45,buildaffect)-1) > floor(rattrapagevartimeattack/20) && rattrapagevartimeattack > 2 {//si plus de vaisseau que de ratrapage time attack
                    saverattrap =  floor(rattrapagevartimeattack/20)
                    if ds_grid_get(planetary,52,buildaffect) > 2 {timeattack = (ds_grid_get(planetary,45,buildaffect)-1);ds_grid_add(planetary,52,buildaffect,-saverattrap);rattrapagevartimeattack = 0;ds_grid_add(planetary,45,buildaffect,-saverattrap);shiploose += floor(saverattrap)
                    }}else{shiploose += ds_grid_get(planetary,45,buildaffect);rattrapagevartimeattack -= ds_grid_get(planetary,45,buildaffect)*20;ds_grid_add(planetary,52,buildaffect,-ds_grid_get(planetary,45,buildaffect));ds_grid_set(planetary,45,buildaffect,0);}
                    }
                    if rattrapagevartimeattack > 0 {
                    if (ds_grid_get(planetary,46,buildaffect)-0) > floor(rattrapagevartimeattack/50) && rattrapagevartimeattack > 2  {//si plus de vaisseau que de ratrapage time attack
                    saverattrap =  floor(rattrapagevartimeattack/50)
                    if ds_grid_get(planetary,52,buildaffect) > 2 {timeattack = (ds_grid_get(planetary,46,buildaffect)-0);ds_grid_add(planetary,52,buildaffect,-saverattrap);rattrapagevartimeattack = 0;ds_grid_add(planetary,46,buildaffect,-saverattrap);shiploose += floor(saverattrap)
                    }}else{shiploose += ds_grid_get(planetary,46,buildaffect);rattrapagevartimeattack -= ds_grid_get(planetary,46,buildaffect)*50;ds_grid_add(planetary,52,buildaffect,-ds_grid_get(planetary,46,buildaffect));ds_grid_set(planetary,46,buildaffect,0);}
                    }
                    if rattrapagevartimeattack > 0 {
                    if (ds_grid_get(planetary,47,buildaffect)-0) > floor(rattrapagevartimeattack/100) && rattrapagevartimeattack > 2  {//si plus de vaisseau que de ratrapage time attack
                    saverattrap =  floor(rattrapagevartimeattack/100)
                    if ds_grid_get(planetary,52,buildaffect) > 2 {timeattack = (ds_grid_get(planetary,47,buildaffect)-0);ds_grid_add(planetary,52,buildaffect,-saverattrap);rattrapagevartimeattack = 0;ds_grid_add(planetary,47,buildaffect,-saverattrap);shiploose += floor(saverattrap)
                    }}else{shiploose += ds_grid_get(planetary,47,buildaffect);rattrapagevartimeattack -= ds_grid_get(planetary,47,buildaffect)*100;ds_grid_add(planetary,52,buildaffect,-ds_grid_get(planetary,47,buildaffect));ds_grid_set(planetary,47,buildaffect,0);}
                    }
                    if rattrapagevartimeattack > 0 {
                    if (ds_grid_get(planetary,48,buildaffect)-0) > floor(rattrapagevartimeattack/300) && rattrapagevartimeattack > 2  {//si plus de vaisseau que de ratrapage time attack
                    saverattrap =  floor(rattrapagevartimeattack/300)
                    if ds_grid_get(planetary,52,buildaffect) > 2 {timeattack = (ds_grid_get(planetary,48,buildaffect)-0);ds_grid_add(planetary,52,buildaffect,-saverattrap);rattrapagevartimeattack = 0;ds_grid_add(planetary,48,buildaffect,-saverattrap);shiploose += floor(saverattrap)
                    }}else{shiploose += ds_grid_get(planetary,48,buildaffect);rattrapagevartimeattack -= ds_grid_get(planetary,48,buildaffect)*300;ds_grid_add(planetary,52,buildaffect,-ds_grid_get(planetary,48,buildaffect));ds_grid_set(planetary,48,buildaffect,0);}
                    }
                    if rattrapagevartimeattack > 0 {
                    if (ds_grid_get(planetary,49,buildaffect)-0) > floor(rattrapagevartimeattack/400) && rattrapagevartimeattack > 2  {//si plus de vaisseau que de ratrapage time attack
                    saverattrap =  floor(rattrapagevartimeattack/400)
                    if ds_grid_get(planetary,52,buildaffect) > 2 {timeattack = (ds_grid_get(planetary,49,buildaffect)-0);ds_grid_add(planetary,52,buildaffect,-saverattrap);rattrapagevartimeattack = 0 ;ds_grid_add(planetary,49,buildaffect,-saverattrap);shiploose += floor(saverattrap)
                    }}else{shiploose += ds_grid_get(planetary,49,buildaffect);rattrapagevartimeattack -= ds_grid_get(planetary,49,buildaffect)*400;ds_grid_add(planetary,52,buildaffect,-ds_grid_get(planetary,49,buildaffect));ds_grid_set(planetary,49,buildaffect,0);}
                    }

                    if rattrapagevartimeattack > 0 {ds_grid_add(planetary,38,buildaffect,-rattrapagevartimeattack)//STATSdefense
                    }
                    if ds_grid_get(planetary,38,buildaffect) < 0 {ds_grid_set(planetary,38,buildaffect,0)}

                    //RATRAPAGE SHIP ATAKANT
                    totalrattrapagevartimeattack2 = totalrattrapagevartimeattack
                    if totalrattrapagevartimeattack2 > 0{
                    if ds_grid_get(planetary,231,buildaffect) > totalrattrapagevartimeattack2 {ds_grid_add(planetary,231,buildaffect,-totalrattrapagevartimeattack2);totalrattrapagevartimeattack2 = 0;}else{
                    totalrattrapagevartimeattack2 -= ds_grid_get(planetary,231,buildaffect) ;ds_grid_set(planetary,231,buildaffect,0)}}
                    if totalrattrapagevartimeattack2 > 0{
                    if ds_grid_get(planetary,232,buildaffect) > floor(totalrattrapagevartimeattack2/10) {ds_grid_add(planetary,232,buildaffect,-floor(totalrattrapagevartimeattack2/10));totalrattrapagevartimeattack2 = 0;}else{
                    totalrattrapagevartimeattack2 -= floor(ds_grid_get(planetary,232,buildaffect)*10) ;ds_grid_set(planetary,232,buildaffect,0)}}
                    if totalrattrapagevartimeattack2 > 0{
                    if ds_grid_get(planetary,233,buildaffect) > floor(totalrattrapagevartimeattack2/20) {ds_grid_add(planetary,233,buildaffect,-floor(totalrattrapagevartimeattack2/20));totalrattrapagevartimeattack2 = 0;}else{
                    totalrattrapagevartimeattack2 -= floor(ds_grid_get(planetary,233,buildaffect)*20) ;ds_grid_set(planetary,233,buildaffect,0)}}
                    if totalrattrapagevartimeattack2 > 0{
                    if ds_grid_get(planetary,234,buildaffect) > floor(totalrattrapagevartimeattack2/50) {ds_grid_add(planetary,234,buildaffect,-floor(totalrattrapagevartimeattack2/50));totalrattrapagevartimeattack2 = 0;}else{
                    totalrattrapagevartimeattack2 -= floor(ds_grid_get(planetary,234,buildaffect)*50) ;ds_grid_set(planetary,234,buildaffect,0)}}
                    if totalrattrapagevartimeattack2 > 0{
                    if ds_grid_get(planetary,235,buildaffect) > floor(totalrattrapagevartimeattack2/100) {ds_grid_add(planetary,235,buildaffect,-floor(totalrattrapagevartimeattack2/100));totalrattrapagevartimeattack2 = 0;}else{
                    totalrattrapagevartimeattack2 -= floor(ds_grid_get(planetary,235,buildaffect)*100) ;ds_grid_set(planetary,235,buildaffect,0)}}
                    if totalrattrapagevartimeattack2 > 0{
                    if ds_grid_get(planetary,236,buildaffect) > floor(totalrattrapagevartimeattack2/300) {ds_grid_add(planetary,236,buildaffect,-floor(totalrattrapagevartimeattack2/300));totalrattrapagevartimeattack2 = 0;}else{
                    totalrattrapagevartimeattack2 -= floor(ds_grid_get(planetary,236,buildaffect)*300) ;ds_grid_set(planetary,236,buildaffect,0)}}
                    if totalrattrapagevartimeattack2 > 0{
                    if ds_grid_get(planetary,237,buildaffect) > floor(totalrattrapagevartimeattack2/400) {ds_grid_add(planetary,237,buildaffect,-floor(totalrattrapagevartimeattack2/400));totalrattrapagevartimeattack2 = 0;}else{
                    totalrattrapagevartimeattack2 -= floor(ds_grid_get(planetary,237,buildaffect)*400) ;ds_grid_set(planetary,237,buildaffect,0)}}


                    }

                    //calculate vaisseau total
                    varship = ds_grid_get(planetary,43,buildaffect)+
                    ds_grid_get(planetary,44,buildaffect)+
                    ds_grid_get(planetary,45,buildaffect)+
                    ds_grid_get(planetary,46,buildaffect)+
                    ds_grid_get(planetary,47,buildaffect)+
                    ds_grid_get(planetary,48,buildaffect)+
                    ds_grid_get(planetary,49,buildaffect)


                    ds_grid_set(planetary,36,buildaffect,varship) 

                    }
                    //RATRAPAGE BATAILLE
                    ///SUPRESSION DES SHIPS PLANET MERE SI ORIGINAIRE D ATTAQUE
                    if ds_grid_get(planetary,34,buildaffect) = global.idfixe {
                    if ds_grid_get(planetary,43,0)-2 > totalrattrapagevartimeattack {ds_grid_add(planetary,43,0,-totalrattrapagevartimeattack);totalrattrapagevartimeattack = 0}else{totalrattrapagevartimeattack -= (ds_grid_get(planetary,43,0)-2);ds_grid_set(planetary,43,0,2);}
                    if ds_grid_get(planetary,44,0)-2 > totalrattrapagevartimeattack {ds_grid_add(planetary,43,0,-totalrattrapagevartimeattack);totalrattrapagevartimeattack = 0}else{totalrattrapagevartimeattack -= (ds_grid_get(planetary,43,0)-2);ds_grid_set(planetary,43,0,2);}
                    if ds_grid_get(planetary,45,0)-1 > totalrattrapagevartimeattack {ds_grid_add(planetary,43,0,-totalrattrapagevartimeattack);totalrattrapagevartimeattack = 0}else{totalrattrapagevartimeattack -= (ds_grid_get(planetary,43,0)-1);ds_grid_set(planetary,43,0,1);}
                    if ds_grid_get(planetary,46,0) > totalrattrapagevartimeattack {ds_grid_add(planetary,43,0,-totalrattrapagevartimeattack);totalrattrapagevartimeattack = 0}else{totalrattrapagevartimeattack -= (ds_grid_get(planetary,43,0));ds_grid_set(planetary,43,0,0);}
                    if ds_grid_get(planetary,47,0) > totalrattrapagevartimeattack {ds_grid_add(planetary,43,0,-totalrattrapagevartimeattack);totalrattrapagevartimeattack = 0}else{totalrattrapagevartimeattack -= (ds_grid_get(planetary,43,0));ds_grid_set(planetary,43,0,0);}

                    }


                    if rattrapage > 500 {if buildaffect = 0 && shiploose > 0 {scr_addinfo(shiploose,3,buildaffect)}}

                }

                rattrapage = 1
        }
        if buildaffect = 0 {
        ds_grid_set(planetary,81,buildaffect,date_current_datetime()*100000)}
        
        
        }
        
        ///SCIENCE ET DEF
        if ds_grid_get(planetary,204,buildaffect) > 0 {//HP PLANET

        //ameliorer science
        if buildaffect = 0 {
            if ds_grid_get(planetary,41,buildaffect) > 2  {
            if ds_grid_get(planetary,41,buildaffect) < 10 {ds_grid_set(planetary,41,buildaffect,10)}
            ressourcevar = floor(((ds_grid_get(planetary,37,buildaffect)*1000)/9)*ds_grid_get(planetary,41,buildaffect))
            if ds_grid_get(planetary,37,buildaffect) < 100 {
            if ds_grid_get(planetary,35,buildaffect) <= floor(((ds_grid_get(planetary,37,buildaffect)*1000)/9)*ds_grid_get(planetary,41,buildaffect)) {
            if buildaffect = planetnowid {jaugevar3 = c_red ;alarmjaugevar3 = 100}}else{if buildaffect = planetnowid {jaugevar3 = c_green;alarmjaugevar3 = 100}
            
    
            if buildaffect = planetnowid {scr_addinfo2(ds_grid_get(planetary,41,buildaffect)/1000,18,buildaffect)}
    
    
            if ds_grid_get(planetary,90,buildaffect) > ressourcevar{ds_grid_add(planetary,90,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,90,buildaffect,0)}
            if ds_grid_get(planetary,91,buildaffect) > ressourcevar{ds_grid_add(planetary,91,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,91,buildaffect,0)}
            if ds_grid_get(planetary,92,buildaffect) > ressourcevar{ds_grid_add(planetary,92,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,92,buildaffect,0)}
            if ds_grid_get(planetary,93,buildaffect) > ressourcevar{ds_grid_add(planetary,93,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,93,buildaffect,0)}
            if ds_grid_get(planetary,94,buildaffect) > ressourcevar{ds_grid_add(planetary,94,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,94,buildaffect,0)}
            if ds_grid_get(planetary,95,buildaffect) > ressourcevar{ds_grid_add(planetary,95,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,95,buildaffect,0)}
            if ds_grid_get(planetary,96,buildaffect) > ressourcevar{ds_grid_add(planetary,96,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,96,buildaffect,0)}
            if ds_grid_get(planetary,97,buildaffect) > ressourcevar{ds_grid_add(planetary,97,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,97,buildaffect,0)}
            if ds_grid_get(planetary,98,buildaffect) > ressourcevar{ds_grid_add(planetary,98,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,98,buildaffect,0)}
            }}}else{ds_grid_set(planetary,41,buildaffect,0)}
        }

        pricestation = 100000//1000
        //ameliorer defence
        if ds_grid_get(planetary,42,buildaffect) >= 10
        && ds_grid_get(planetary,35,buildaffect) >= ((pricestation/10)*ds_grid_get(planetary,42,buildaffect))
        {
        
        price = ((pricestation/100)*ds_grid_get(planetary,42,buildaffect))
        totalconstruct = ds_grid_get(planetary,42,buildaffect)/4
        defconstruct = 0
        if ds_grid_get(planetary,61,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,61,buildaffect,1);totalconstruct -= 5;defconstruct += 1}
        if ds_grid_get(planetary,62,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,62,buildaffect,1);totalconstruct -= 5;defconstruct += 1}
        if ds_grid_get(planetary,63,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,63,buildaffect,1);totalconstruct -= 5;defconstruct += 1}
        if ds_grid_get(planetary,64,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,64,buildaffect,1);totalconstruct -= 5;defconstruct += 1}
        if ds_grid_get(planetary,65,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,65,buildaffect,1);totalconstruct -= 5;defconstruct += 1}
        if ds_grid_get(planetary,66,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,66,buildaffect,1);totalconstruct -= 5;defconstruct += 1}
        if ds_grid_get(planetary,67,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,67,buildaffect,1);totalconstruct -= 5;defconstruct += 1}
        if ds_grid_get(planetary,68,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,68,buildaffect,1);totalconstruct -= 5;defconstruct += 1}
        if ds_grid_get(planetary,69,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,69,buildaffect,1);totalconstruct -= 5;defconstruct += 1}
        if ds_grid_get(planetary,70,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,70,buildaffect,1);totalconstruct -= 5;defconstruct += 1}
        if ds_grid_get(planetary,280,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,280,buildaffect,1);totalconstruct -= 5;defconstruct += 1}
        if ds_grid_get(planetary,281,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,281,buildaffect,1);totalconstruct -= 5;defconstruct += 1}
        if ds_grid_get(planetary,282,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,282,buildaffect,1);totalconstruct -= 5;defconstruct += 1}
        if ds_grid_get(planetary,283,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,283,buildaffect,1);totalconstruct -= 5;defconstruct += 1}
        if ds_grid_get(planetary,284,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,284,buildaffect,1);totalconstruct -= 5;defconstruct += 1}
        if ds_grid_get(planetary,285,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,285,buildaffect,1);totalconstruct -= 5;defconstruct += 1}
        if ds_grid_get(planetary,286,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,286,buildaffect,1);totalconstruct -= 5;defconstruct += 1}
        if ds_grid_get(planetary,287,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,287,buildaffect,1);totalconstruct -= 5;defconstruct += 1}
        if ds_grid_get(planetary,288,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,288,buildaffect,1);totalconstruct -= 5;defconstruct += 1}
        if ds_grid_get(planetary,289,buildaffect) = 0 && totalconstruct >= 5 {ds_grid_set(planetary,289,buildaffect,1);defconstruct += 1}
        
        if ds_grid_get(planetary,38,buildaffect) <= 100 {
        ressourcevar = floor((defconstruct*pricestation/10))
        if ds_grid_get(planetary,90,buildaffect) > ressourcevar{ds_grid_add(planetary,90,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,90,buildaffect,0)}
        if ds_grid_get(planetary,91,buildaffect) > ressourcevar{ds_grid_add(planetary,91,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,91,buildaffect,0)}
        if ds_grid_get(planetary,92,buildaffect) > ressourcevar{ds_grid_add(planetary,92,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,92,buildaffect,0)}
        if ds_grid_get(planetary,93,buildaffect) > ressourcevar{ds_grid_add(planetary,93,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,93,buildaffect,0)}
        if ds_grid_get(planetary,94,buildaffect) > ressourcevar{ds_grid_add(planetary,94,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,94,buildaffect,0)}
        if ds_grid_get(planetary,95,buildaffect) > ressourcevar{ds_grid_add(planetary,95,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,95,buildaffect,0)}
        if ds_grid_get(planetary,96,buildaffect) > ressourcevar{ds_grid_add(planetary,96,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,96,buildaffect,0)}
        if ds_grid_get(planetary,97,buildaffect) > ressourcevar{ds_grid_add(planetary,97,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,97,buildaffect,0)}
        if ds_grid_get(planetary,98,buildaffect) > ressourcevar{ds_grid_add(planetary,98,buildaffect,-ressourcevar)}else{ds_grid_set(planetary,98,buildaffect,0)}
        }
        jaugevar4 = c_green ;alarmjaugevar4 = 100
        }else{
        jaugevar4 = c_red ;alarmjaugevar4 = 100
        }


        if buildaffect = planetnowid {
        if ds_grid_get(planetary,42,buildaffect) >= 10 {
        if ds_grid_get(planetary,35,buildaffect) >= ((pricestation/10)*ds_grid_get(planetary,42,buildaffect))
        {jaugevar4 = c_green;alarmjaugevar4 = 100}else{jaugevar4 = c_red;alarmjaugevar4 = 100}}}


        }
    
    }///////////BUILD AFFECT 0
    //RATRAPAGE FINI
}


   //CONSTRUIRE DES TURRET MOON
if ds_grid_get(planetary,32,buildaffect) = global.idfixe {}else{
    if ds_grid_get(planetary,211,buildaffect) <= 0 && ds_grid_get(planetary,58,buildaffect) > 0 {
        ds_grid_add(planetary,211,buildaffect,500);ds_grid_add(planetary,58,buildaffect,-1);ds_grid_add(planetary,53,buildaffect,-1)
    }else if ds_grid_get(planetary,212,buildaffect) <= 0 && ds_grid_get(planetary,58,buildaffect) > 0  {
        ds_grid_add(planetary,212,buildaffect,500);ds_grid_add(planetary,58,buildaffect,-1);ds_grid_add(planetary,53,buildaffect,-1)
    }else if ds_grid_get(planetary,213,buildaffect) <= 0 && ds_grid_get(planetary,58,buildaffect) > 0  {
        ds_grid_add(planetary,213,buildaffect,500);ds_grid_add(planetary,58,buildaffect,-1);ds_grid_add(planetary,53,buildaffect,-1)
    }else if ds_grid_get(planetary,214,buildaffect) <= 0 && ds_grid_get(planetary,58,buildaffect) > 0  {
        ds_grid_add(planetary,214,buildaffect,500);ds_grid_add(planetary,58,buildaffect,-1);ds_grid_add(planetary,53,buildaffect,-1)
    }
}


if ds_grid_get(planetary,204,buildaffect) > 0 {//HP PLANET



    //EVENT
    if ds_grid_get(planetary,32,buildaffect) = global.idfixe {
        if ds_grid_get(planetary,221,buildaffect) > 0 {
            ds_grid_add(planetary,221,buildaffect,-1)
        }else{
            ds_grid_set(planetary,221,buildaffect,random_range(55,95))
            ds_grid_set(planetary,217,buildaffect,random_range(700,2100))//5000,15000)//dist
            ds_grid_set(planetary,218,buildaffect,random(360))
            ds_grid_set(planetary,219,buildaffect,choose(1,2,3))
            ds_grid_set(planetary,220,buildaffect,random_range(5,75))
            ds_grid_set(planetary,222,buildaffect,0)
        }
    }

    if ds_grid_get(planetary,32,buildaffect) > 0 {
        if systemstellairenow = ds_grid_get(planetary,28,buildaffect) {
            //COMMERCE ET MINAGE
            if ds_grid_get(planetary,39,buildaffect) > 2 {
                if ds_grid_get(planetary,53,buildaffect) < 50 or buildaffect = planetnowid or buildaffect = 0 {
                    if ds_grid_get(planetary,39,buildaffect) < 20 {
                        ds_grid_set(planetary,39,buildaffect,20)
                    }
                    ttalvarshipinspace = 0;
                    repeat(choose(1,2,3)){
                        if ds_grid_get(planetary,36,buildaffect) > ds_grid_get(planetary,53,buildaffect) {
                            ds_grid_add(planetary,53,buildaffect,1)
                            with(instance_create(x,y,obj_shipcommerce)){
                                colorshiprgb = ds_grid_get(obj_planetary.planetary,30,planetparent)
                                colorship = ds_grid_get(other.planetary,32,other.buildaffect);enemy = 0
                                planetparent = other.buildaffect
                                vardist = ds_grid_get(other.planetary,39,other.buildaffect)
                                alarm[0] = (3000/(1+(ds_grid_get(other.planetary,74,other.buildaffect)/100)))*(1+(ds_grid_get(other.planetary,39,other.buildaffect)/50))
                                alarm[1] = alarm[0]/2
                                vargetdsgrid[1] = ds_grid_get(obj_planetary.planetary,51,planetparent)
                                vargetdsgrid[2] = ds_grid_get(obj_planetary.planetary,34,planetparent)
                                vargetdsgrid[3] = ((ds_grid_get(obj_planetary.planetary,7,planetparent)/25)*obj_planetary.optiportabletaille)
                                vargetdsgrid[4] = ds_grid_get(obj_planetary.planetary,32,planetparent)
                            }
                        }
                    }
                }
            }else{ds_grid_set(planetary,39,buildaffect,0)}
        }
    }
}//if ds_grid_get(planetary,204,buildaffect) > 0 {//HP PLANET



//BATAILLE
if ds_grid_get(planetary,204,buildaffect) > 0 {//HP PLANET
    if ds_grid_get(planetary,34,buildaffect) = global.idfixe or ds_grid_get(planetary,34,buildaffect) <= 5 or ds_grid_get(planetary,32,buildaffect) = global.idfixe or buildaffect = 0 {
        if ds_grid_get(planetary,51,buildaffect) > 0 {//ALARMATTACK
            //si même defenseur qu'attaquant ,relancer
            if buildaffect = 0 {
                if ds_grid_get(planetary,34,buildaffect) > 5 {
                    if ds_grid_get(planetary,34,buildaffect) = ds_grid_get(planetary,32,buildaffect) {
                        ds_grid_set(planetary,34,buildaffect,choose(2,3))
                    }
                    if ds_grid_get(planetary,51,buildaffect) < 2 {ds_grid_add(planetary,51,buildaffect,-1)}
                }else{
                    if ds_grid_get(planetary,51,buildaffect) < 2 {
                        ds_grid_set(planetary,34,buildaffect,choose(2,3))
                        if ds_grid_get(planetary,32,buildaffect) = ds_grid_get(planetary,34,buildaffect)  {
                            ds_grid_set(planetary,34,buildaffect,choose(2,3))
                            ds_grid_set(planetary,51,buildaffect,1)
                        }else{
                            ds_grid_set(planetary,51,buildaffect,0)
                        }
                    }
                }
    
                //EVITER BUG CHANGER D ATTAQUANT AU DERNIER MOMENT
                if ds_grid_get(planetary,51,buildaffect) < 2 {
                        }else{
                    ds_grid_add(planetary,51,buildaffect,-1)
                }
                
                if ds_grid_get(planetary,51,buildaffect) <= 0 {
                    blablafight = ds_grid_get(planetary,8,buildaffect)
                    scr_addinfo(blablafight,4,buildaffect)
                }
                
                ds_grid_set(planetary,238,buildaffect,0)
                ds_grid_set(planetary,239,buildaffect,0)
                
                if ds_grid_get(planetary,51,buildaffect) < 2 {
                    //ENVOI JUSTE AVANT DEMARAGE PREVENIR LES GENS PAR CONTRE PERD TOUT LES CHANGEMENT COMME DAB
                    if global.phpload = 1 && buildaffect > 0 {
                        ds_grid_set(planetary,81,buildaffect,date_current_datetime()*100000)
                        if ds_grid_get(planetary,32,buildaffect) = floor(global.idfixe) {
                            ds_grid_set(planetary,230,buildaffect,global.name)
                        }
                        var get1 = floor(ds_grid_get(planetary,51,buildaffect))
                        //ENVOI
                        var get2 = 
                        string(ds_grid_get(planetary,231,buildaffect))+"$"+
                        string(ds_grid_get(planetary,232,buildaffect))+"$"+
                        string(ds_grid_get(planetary,233,buildaffect))+"$"+
                        string(ds_grid_get(planetary,234,buildaffect))+"$"+
                        string(ds_grid_get(planetary,235,buildaffect))+"$"+
                        string(ds_grid_get(planetary,236,buildaffect))+"$"+
                        string(ds_grid_get(planetary,237,buildaffect))+"$"+
                        string(ds_grid_get(planetary,240,buildaffect));
                        var get3 = floor(ds_grid_get(planetary,34,buildaffect))
                        var get4 = floor(ds_grid_get(planetary,81,buildaffect))
                        var get5 = floor(ds_grid_get(planetary,35,buildaffect))
                        var get6 = floor(ds_grid_get(planetary,43,buildaffect))
                        var get7 = floor(ds_grid_get(planetary,44,buildaffect))
                        var get8 = floor(ds_grid_get(planetary,45,buildaffect))
                        var get9 = floor(ds_grid_get(planetary,46,buildaffect))
                        var get10 = floor(ds_grid_get(planetary,47,buildaffect))
                        var get11 = floor(ds_grid_get(planetary,48,buildaffect))
                        var get12 = floor(ds_grid_get(planetary,49,buildaffect))
                        var get13 = floor(ds_grid_get(planetary,37,buildaffect))
                        var get14 = floor(ds_grid_get(planetary,38,buildaffect))
                        
                        scr_ecritureplanet2(buildaffect,get1,get2,get3,get4,get5,get6,get7,get8,get9,get10,get11,get12,get13,get14);
                    }
                }
            }

        }else{
            if buildaffect = 0 {
                prochaineguerre = ds_grid_get(planetary,36,buildaffect)
                ds_grid_set(planetary,51,buildaffect,prochaineguerre)//fin de guerre relancer tout
                ds_grid_set(planetary,52,buildaffect,floor((prochaineguerre/2)))
                if ds_grid_get(planetary,32,buildaffect) = ds_grid_get(planetary,34,buildaffect) &&
                ds_grid_get(planetary,34,buildaffect) < 5 {
                    ds_grid_set(planetary,34,buildaffect,choose(2,3))
                }
                if ds_grid_get(planetary,231,buildaffect) > 0 {
                    ds_grid_add(planetary,231,buildaffect,-1)
                }else if ds_grid_get(planetary,232,buildaffect) > 0 {
                    ds_grid_add(planetary,232,buildaffect,-1)
                }else if ds_grid_get(planetary,233,buildaffect) > 0 {
                    ds_grid_add(planetary,233,buildaffect,-1)
                }else if ds_grid_get(planetary,234,buildaffect) > 0 {
                    ds_grid_add(planetary,234,buildaffect,-1)
                }else if ds_grid_get(planetary,235,buildaffect) > 0 {
                    ds_grid_add(planetary,235,buildaffect,-1)
                }else if ds_grid_get(planetary,236,buildaffect) > 0 {
                    ds_grid_add(planetary,236,buildaffect,-1)
                }else if ds_grid_get(planetary,237,buildaffect) > 0 {
                    ds_grid_add(planetary,237,buildaffect,-1)
                }else {
                    ds_grid_add(planetary,52,buildaffect,-1)
                }
            }

            if ds_grid_get(planetary,52,buildaffect) > 1 {//TIME ATTACK
                //ABANDON
                if buildaffect = 0 {
                    var s = ds_grid_get(planetary,238,buildaffect)
                    var s2 = ds_grid_get(planetary,239,buildaffect)
                    if s <= 0 {s = 1}
                    if s2 <= 0 {s2 = 1}
                    ttalshipdef = 1+((s / s2)*2)
                    if is_undefined(ttalshipdef) {
                        ttalshipdef = 1
                    }
                }
                if ds_grid_get(planetary,32,buildaffect) > 5 {}else{
                    if ds_grid_get(planetary,238,buildaffect) > floor(ds_grid_get(planetary,239,buildaffect)/1.5) && 
                    ds_grid_get(planetary,239,buildaffect) > ds_grid_get(planetary,36,buildaffect) {
                        var i;
                        for (i = 0; i < ds_grid_get(planetary,36,buildaffect); i += 1){
                            if i > 100 {i = ds_grid_get(planetary,36,buildaffect)}
                            with(instance_create(x,y,obj_shipcommerce)){
                                fuyard = 1
                                colorshiprgb = ds_grid_get(obj_planetary.planetary,30,planetparent)
                                colorship = ds_grid_get(other.planetary,32,other.buildaffect);enemy = 0
                                planetparent = other.buildaffect
                                vardist = ds_grid_get(other.planetary,39,other.buildaffect)
                                alarm[0] = (3000/(1+(ds_grid_get(other.planetary,74,other.buildaffect)/100)))*(1+(20/50))
                                //returnsurbase = 
                                alarm[1] = alarm[0]+100
                                vargetdsgrid[1] = ds_grid_get(obj_planetary.planetary,51,planetparent)
                                vargetdsgrid[2] = ds_grid_get(obj_planetary.planetary,34,planetparent)
                                vargetdsgrid[3] = ((ds_grid_get(obj_planetary.planetary,7,planetparent)/25)*obj_planetary.optiportabletaille)
                                vargetdsgrid[4] = ds_grid_get(obj_planetary.planetary,32,planetparent)
                            }
                        }
                        ds_grid_set(planetary,32,buildaffect,0)
                    }
                }



                //ECHEC
                if ds_grid_get(planetary,38,buildaffect) < 10 && ds_grid_get(planetary,36,buildaffect) <= 6 {
                    if buildaffect = 0 {
                        if ds_grid_get(planetary,204,buildaffect) <= 0 {}else{
                            if buildaffect = 0 {
                                ressourcevar = floor((ds_grid_get(planetary,35,buildaffect)/2)/9)
                                if ds_grid_get(planetary,90,buildaffect) > 0{
                                    ds_grid_add(planetary,90,buildaffect,-ressourcevar)
                                }else{
                                    ds_grid_set(planetary,90,buildaffect,0)
                                }
                                if ds_grid_get(planetary,91,buildaffect) > 0{
                                    ds_grid_add(planetary,91,buildaffect,-ressourcevar)
                                }else{
                                    ds_grid_set(planetary,91,buildaffect,0)
                                }
                                if ds_grid_get(planetary,92,buildaffect) > 0{
                                    ds_grid_add(planetary,92,buildaffect,-ressourcevar)
                                }else{
                                    ds_grid_set(planetary,92,buildaffect,0)
                                }
                                if ds_grid_get(planetary,93,buildaffect) > 0{
                                    ds_grid_add(planetary,93,buildaffect,-ressourcevar)
                                }else{
                                    ds_grid_set(planetary,93,buildaffect,0)
                                }
                                if ds_grid_get(planetary,94,buildaffect) > 0{
                                    ds_grid_add(planetary,94,buildaffect,-ressourcevar)
                                }else{
                                    ds_grid_set(planetary,94,buildaffect,0)
                                }
                                if ds_grid_get(planetary,95,buildaffect) > 0{
                                    ds_grid_add(planetary,95,buildaffect,-ressourcevar)
                                }else{
                                    ds_grid_set(planetary,95,buildaffect,0)
                                }
                                if ds_grid_get(planetary,96,buildaffect) > 0{
                                    ds_grid_add(planetary,96,buildaffect,-ressourcevar)
                                }else{
                                    ds_grid_set(planetary,96,buildaffect,0)
                                }
                                if ds_grid_get(planetary,97,buildaffect) > 0{
                                    ds_grid_add(planetary,97,buildaffect,-ressourcevar)
                                }else{
                                    ds_grid_set(planetary,97,buildaffect,0)
                                }
                                if ds_grid_get(planetary,98,buildaffect) > 0{
                                    ds_grid_add(planetary,98,buildaffect,-ressourcevar)
                                }else{
                                    ds_grid_set(planetary,98,buildaffect,0)
                                }
                                
                                varhelpdie = choose(1,2)
                                
                                prochaineguerre = floor(random_range(10,(ds_grid_get(planetary,36,buildaffect)*20)))
                                if prochaineguerre < 50 { prochaineguerre = 50}
                                ds_grid_set(planetary,51,buildaffect,prochaineguerre)//fin de guerre relancer tout
                                ds_grid_set(planetary,52,buildaffect,floor((prochaineguerre/2)/varhelpdie))
                                ds_grid_set(planetary,231,buildaffect,floor((prochaineguerre/2)/3))
                                ds_grid_set(planetary,232,buildaffect,floor((prochaineguerre/2)/10))
                                ds_grid_set(planetary,233,buildaffect,floor((prochaineguerre/2)/20))
                                ds_grid_set(planetary,234,buildaffect,floor((prochaineguerre/2)/50))
                                ds_grid_set(planetary,235,buildaffect,floor((prochaineguerre/2)/100))
                                ds_grid_set(planetary,236,buildaffect,floor((prochaineguerre/2)/200))
                                ds_grid_set(planetary,237,buildaffect,floor((prochaineguerre/2)/300))
                                ds_grid_set(planetary,240,buildaffect,floor(random_range(1,80)))
                                ds_grid_set(planetary,34,buildaffect,choose(2,3))
                                ds_grid_set(planetary,36,buildaffect,15)//STATSships
                                ds_grid_set(planetary,43,buildaffect,10)//shiptype1nbr
                                ds_grid_set(planetary,44,buildaffect,3)//shiptype2nbr
                                ds_grid_set(planetary,45,buildaffect,2)//shiptype3nbr
                                ds_grid_set(planetary,46,buildaffect,0)//shiptype4nbr
                                ds_grid_set(planetary,47,buildaffect,0)//shiptype5nbr
                                ds_grid_set(planetary,48,buildaffect,0)//shiptype6nbr
                                ds_grid_set(planetary,49,buildaffect,0)//shiptype7nbr
                                ds_grid_set(planetary,38,buildaffect,2)//STATSdefense
                                ds_grid_set(planetary,53,buildaffect,0)//ttalvarshipinspace
                                ds_grid_set(planetary,54,buildaffect,0)//shiptype1flight
                                ds_grid_set(planetary,55,buildaffect,0)//shiptype2flight
                                ds_grid_set(planetary,56,buildaffect,0)//shiptype3flight
                                ds_grid_set(planetary,57,buildaffect,0)//shiptype4flight
                                ds_grid_set(planetary,58,buildaffect,0)//shiptype5flight
                                ds_grid_set(planetary,59,buildaffect,0)//shiptype6flight
                                ds_grid_set(planetary,60,buildaffect,0)//shiptype7flight
                                ds_grid_set(planetary,238,buildaffect,0)
                                ds_grid_set(planetary,239,buildaffect,0)
                                if ds_grid_get(planetary,32,buildaffect) < 5 {
                                    ds_grid_set(planetary,230,buildaffect,0)
                                }
                            }
                        }
                    }
                //FIN ECHEC
                }else{
                    //sinon continuer la guerre
                    repeatnbr = choose(1,2,3,4,5,7,8)
                    if repeatnbr > ds_grid_get(planetary,52,buildaffect) {
                        repeatnbr = ds_grid_get(planetary,52,buildaffect)
                    }
                    if systemstellairenow = ds_grid_get(planetary,28,buildaffect) {}else{
                        popoupo = 0
                        if popoupo = 1 {}else{repeatnbr = 0}
                    }
                    if repeatnbr > 0 {
                        var ig;
                        if ttalshipdef < 1 {ttalshipdef = 1}
                        if ttalshipdef > 2 {ttalshipdef = 2}
                        typelaunch[1] = 0
                        typelaunch[2] = 0
                        typelaunch[3] = 0
                        typelaunch[4] = 0
                        typelaunch[5] = 0
                        typelaunch[6] = 0
                        typelaunch[7] = 0
                        for (ig = 0; ig < repeatnbr*ttalshipdef; ig += 1) {//DEFENSEUR
                            if ds_grid_get(planetary,36,buildaffect) > ds_grid_get(planetary,53,buildaffect) {
                                modeship = 0
                                if ds_grid_get(planetary,54,buildaffect)+typelaunch[1] < ds_grid_get(planetary,43,buildaffect)-1 && ds_grid_get(planetary,43,buildaffect) > 1  {modeship = 1}
                                if ds_grid_get(planetary,55,buildaffect)+typelaunch[2] < ds_grid_get(planetary,44,buildaffect)-1 && ds_grid_get(planetary,44,buildaffect) > 1  {modeship = 2}
                                if ds_grid_get(planetary,56,buildaffect)+typelaunch[3] < ds_grid_get(planetary,45,buildaffect) && ds_grid_get(planetary,45,buildaffect) > 0  {modeship = 3}
                                if ds_grid_get(planetary,57,buildaffect)+typelaunch[4] < ds_grid_get(planetary,46,buildaffect) && ds_grid_get(planetary,46,buildaffect) > 0  {modeship = 4}
                                if ds_grid_get(planetary,58,buildaffect)+typelaunch[5] < ds_grid_get(planetary,47,buildaffect) && ds_grid_get(planetary,47,buildaffect) > 0  {modeship = 5}
                                if ds_grid_get(planetary,59,buildaffect)+typelaunch[6] < ds_grid_get(planetary,48,buildaffect) && ds_grid_get(planetary,48,buildaffect) > 0  {modeship = 6}
                                if ds_grid_get(planetary,60,buildaffect)+typelaunch[7] < ds_grid_get(planetary,49,buildaffect) && ds_grid_get(planetary,49,buildaffect) > 0  {modeship = 7}
                                typelaunch[modeship] += 1
                                if modeship > 0 {
                                    if ds_grid_get(planetary,53+modeship,buildaffect) < ds_grid_get(planetary,42+modeship,buildaffect) {//vaisseau allie
                                        ds_grid_add(planetary,239,buildaffect,1)//add ship create war total
                                        with(instance_create(x,y,obj_ship)){
                                            mode = other.modeship
                                            colorship = ds_grid_get(other.planetary,32,other.buildaffect)
                                            enemy = ds_grid_get(obj_planetary.planetary,32,other.buildaffect);
                                            planetparent = other.buildaffect
                                            rotaaleatdecol = random(360)
                                            image_angle = point_direction(room_width/2,room_height/2,room_width/2+lengthdir_x(100,rotaaleatdecol),room_height/2+lengthdir_y(100,rotaaleatdecol))
                                            xx = room_width/2+lengthdir_x((ds_grid_get(obj_planetary.planetary,7,other.planetnowid)/25)*other.optiportabletaille,rotaaleatdecol)
                                            yy = room_height/2+lengthdir_y((ds_grid_get(obj_planetary.planetary,7,other.planetnowid)/25)*other.optiportabletaille,rotaaleatdecol)
                                            vargetdsgrid[1] = ds_grid_get(obj_planetary.planetary,51,other.buildaffect)
                                            vargetdsgrid[2] = ds_grid_get(obj_planetary.planetary,34,other.buildaffect)
                                            vargetdsgrid[3] = (ds_grid_get(obj_planetary.planetary,7,other.buildaffect)/25)*other.optiportabletaille
                                            vargetdsgrid[4] = ds_grid_get(obj_planetary.planetary,32,other.buildaffect)
                                        }
                                    }
                                }
                            }
                        }

                        if ds_grid_get(obj_planetary.planetary,34,buildaffect) > 5 {
                            modeship = choose(1,2,3,4,5,6,7)
                        }else{
                            modeship = choose(1,2,3,4,5)
                        }
                        repeat(repeatnbr*1.5){
                            okcreate = 0
                            if okcreate = 0 {if ds_grid_get(planetary,230+modeship,buildaffect) > 0 {okcreate = 1}else{okcreate = 0;modeship -= 1}}
                            if okcreate = 0 {if ds_grid_get(planetary,230+modeship,buildaffect) > 0 {okcreate = 1}else{okcreate = 0;modeship -= 1}}
                            if okcreate = 0 {if ds_grid_get(planetary,230+modeship,buildaffect) > 0 {okcreate = 1}else{okcreate = 0;modeship -= 1}}
                            if okcreate = 0 {if ds_grid_get(planetary,230+modeship,buildaffect) > 0 {okcreate = 1}else{okcreate = 0;modeship -= 1}}
                            if okcreate = 0 {if ds_grid_get(planetary,230+modeship,buildaffect) > 0 {okcreate = 1}else{okcreate = 0;modeship -= 1}}
                            if okcreate = 0 {if ds_grid_get(planetary,230+modeship,buildaffect) > 0 {okcreate = 1}else{okcreate = 0;modeship -= 1}}
                            if okcreate = 0 {if ds_grid_get(planetary,230+modeship,buildaffect) > 0 {okcreate = 1}else{okcreate = 0;modeship -= 1}}


                            if okcreate = 1 { 
                                ds_grid_add(planetary,230+modeship,buildaffect,-1)
                                if echelle = 0 && buildaffect = planetnowid {
                                    if audio_is_playing(snd_quantum){}else{
                                        audio_sound_gain(snd_quantum,1*obj_planetary.optiportabletaille,0)
                                        audio_play_sound(snd_quantum,2,false);}
                                }
                                with(instance_create(x,y,obj_ship)){
                                    attakguy = 1
                                    createtp = 1
                                    mode = other.modeship
                                    colorship = ds_grid_get(other.planetary,34,other.buildaffect)
                                    enemy = ds_grid_get(obj_planetary.planetary,34,other.buildaffect)
                                    planetparent = other.buildaffect
                                    vargetdsgrid[1] = ds_grid_get(obj_planetary.planetary,51,other.buildaffect)
                                    vargetdsgrid[2] = ds_grid_get(obj_planetary.planetary,34,other.buildaffect)
                                    vargetdsgrid[3] = (ds_grid_get(obj_planetary.planetary,7,other.buildaffect)/25)*other.optiportabletaille
                                    vargetdsgrid[4] = ds_grid_get(obj_planetary.planetary,32,other.buildaffect)
                                    //attaquant = 0
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
if alarm[4] < 0 && global.modesolo = 0 && tutohelp = 0 {
    //envoi de troupe dans l'atmo si ship libre encore ,et pour durer de 1000 step en rotation

    if device_mouse_check_button_released(0, mb_left) && point_distance(xxmousebase, yymousebase, xxmousefin, yymousefin) < 30 {
        xxmouse = device_mouse_x(0);
        yymouse = device_mouse_y(0);

        notroupe = 0
        if instance_exists(obj_ship){
            with(obj_ship){
                if suislepatron = 1 {other.notroupe = 1}
            }
        }


        if point_distance(room_width/2,room_height/2,xxmouse,yymouse) < (ds_grid_get(obj_planetary.planetary,7,planetnowid)/25)*optiportabletaille {
            colorrect29 = c_white
            if menuplanet = 0 && notroupe = 0 && echelle = 0 && menuhelp = 0 {
                var iff;
                for (iff = 0; iff < 8; iff += 1){
                    randomize();
                    if ds_grid_get(planetary,36,planetnowid) > ds_grid_get(planetary,53,planetnowid) && ds_grid_get(planetary,32,planetnowid) = global.idfixe {
                        modeship = 1
                        if iff = 1 or iff = 2 {
                            nbrvar = 2
                        }else if iff = 3 {
                            nbrvar = 1
                        }else{
                            nbrvar = 0
                        }
                        if ds_grid_get(planetary,53+iff,planetnowid) < ds_grid_get(planetary,42+iff,planetnowid)  && ds_grid_get(planetary,42+iff,planetnowid) > nbrvar  {
                            modeship = iff
                        }
                        okcreate = 0
                        if ds_grid_get(planetary,53+modeship,planetnowid) < ds_grid_get(planetary,42+modeship,planetnowid) {okcreate = 1}
                        if okcreate = 1 && modeship > 0 {
                            with(instance_create(x,y,obj_ship)){
                                mode = other.modeship
                                alarm[6] = 3000
                                colorship = ds_grid_get(other.planetary,32,other.planetnowid)
                                enemy = ds_grid_get(obj_planetary.planetary,32,other.planetnowid);
                                stationaire = 1
                                planetparent = other.planetnowid
                                rotaaleatdecol = random(360)
                                image_angle = point_direction(room_width/2,room_height/2,room_width/2+lengthdir_x(100,rotaaleatdecol),room_height/2+lengthdir_y(100,rotaaleatdecol))
                                xx = room_width/2+lengthdir_x((ds_grid_get(obj_planetary.planetary,7,other.planetnowid)/25)*other.optiportabletaille,rotaaleatdecol)
                                yy = room_height/2+lengthdir_y((ds_grid_get(obj_planetary.planetary,7,other.planetnowid)/25)*other.optiportabletaille,rotaaleatdecol)
                                vargetdsgrid[1] = ds_grid_get(obj_planetary.planetary,51,other.planetnowid)
                                vargetdsgrid[2] = ds_grid_get(obj_planetary.planetary,34,other.planetnowid)
                                vargetdsgrid[3] = (ds_grid_get(obj_planetary.planetary,7,other.planetnowid)/25)*other.optiportabletaille
                                vargetdsgrid[4] = ds_grid_get(obj_planetary.planetary,32,other.planetnowid)
                            }
                        }
                    }else{
                        iff = 10
                    }
                }
            }
        }
    }
    if point_distance(room_width/2,room_height/2,xxmouse,yymouse) < (ds_grid_get(obj_planetary.planetary,7,planetnowid)/25)*optiportabletaille {
        colorrect29 = c_white
    }else{
        colorrect29 = planetarycolor
    }
    //selectioner des ship et enregistrer
    xxmousefin = 0
    yymousefin = 0
    if device_mouse_check_button_pressed(0, mb_left) {
        xxmousebase = device_mouse_x(0);
        yymousebase = device_mouse_y(0);
    }
    if device_mouse_check_button_released(0, mb_left) {
        if alarm[3] < 0 {
            alarm[3] = 20
        }else{
            doubletap = 1
        }
        xxmousefin = device_mouse_x(0);
        yymousefin = device_mouse_y(0);
        if point_distance(xxmousebase, yymousebase, xxmousefin, yymousefin) < 30 {
            //ENVOYER SUR CIBLE SI PLANETNOW = PARENT
            if instance_exists(obj_ship){
                with(obj_ship){
                    if suislepatron = 1 && planetparent = obj_planetary.planetnowid && obj_planetary.menuplanet = 0 && obj_planetary.echelle = 0 && obj_planetary.menuhelp = 0 {
                        if other.yymousefin > room_height/10 && other.yymousefin < room_height-(room_height/10) && other.xxmousefin > room_width/10 && other.xxmousefin < room_width-room_width/10 {
                            vardist2 = point_distance(xxcursor,yycursor,room_width/2,room_height/2)
                            xxcursor = other.xxmousefin
                            yycursor = other.yymousefin
                        }
                    }
                }
            }
            xxmousefin = 0
            yymousefin = 0
            xxmousebase = 0
            yymousebase = 0
        }
    }

    //double tap pour enlever tout les vaisseau
    if echelle = 0 && menuplanet = 0 && menuhelp = 0 {
        if doubletap = 1 {
            if instance_exists(obj_ship){
                with(obj_ship){//si trop proche enlever le patron des ship de la planete actuel
                    if suislepatron = 1 {suislepatron = 0}
                }
            }
            doubletap = 0
        }
    }


    if xxmousefin = 0 {}else{
        if xxmousefin < xxmousebase {xxmousefin2 = xxmousefin;xxmousefin = xxmousebase;xxmousebase = xxmousefin2}
        if yymousefin < yymousebase {yymousefin2 = yymousefin;yymousefin = yymousebase;yymousebase = yymousefin2}

        if instance_exists(obj_ship){
            with(obj_ship){
                if point_in_rectangle(xx, yy,other.xxmousebase, other.yymousebase, other.xxmousefin, other.yymousefin) {
                    if enemy = global.idfixe && partir = 0 && planetparent = obj_planetary.planetnowid {suislepatron = 1 ;}
                }
            }
        }
        xxmousefin = 0
        yymousefin = 0
        xxmousebase = 0
        yymousebase = 0
    }



}

