///


if other.colonisateur = 1 {
ds_grid_set(obj_planetary.planetary,33,other.planetparent,0)}

if enemy = other.enemy {}else{
if planetparent = other.planetparent {
//show_message(1*other.dgt)
//if type = 7 {show_message("touchprtant")}
if other.hpshield > 0 {
if obj_planetary.echelle = 0 {
if obj_planetary.planetnowid = other.planetparent {
part_type_shape(obj_planetary.particlesh,pt_shape_flare);
part_type_color3(obj_planetary.particlesh,c_blue,c_blue,c_blue);//33023,255,65535);
part_type_alpha2(obj_planetary.particlesh,0.5,1);
part_type_life(obj_planetary.particlesh,45*obj_planetary.optiportabletaille,55*obj_planetary.optiportabletaille);
part_type_blend(obj_planetary.particlesh,1);
part_type_size(obj_planetary.particlesh,0.05*obj_planetary.optiportabletaille,0.09*obj_planetary.optiportabletaille,-0.0009,0);//0.3,0.4,0.1,);
part_type_speed(obj_planetary.particlesh,0.2*obj_planetary.optiportabletaille,0.4*obj_planetary.optiportabletaille,-0.001,0);//,12,35,0.01,0);
part_type_direction(obj_planetary.particlesh,image_angle-90,image_angle+90,0,0);
part_type_orientation(obj_planetary.particlesh,image_angle-70,image_angle+70,0,0,0);
part_particles_create(obj_planetary.Snamesh,x,y,obj_planetary.particlesh,10);}}
other.hpshield -= 1*dgt
}else{
other.hp -= 1*dgt}
if other.hp <= 0 {
if obj_planetary.echelle = 0 {
if obj_planetary.planetnowid = other.planetparent {
if other.type < 2 {
audio_sound_gain(snd_exploa,1*obj_planetary.optiportabletaille,0)
audio_play_sound(snd_exploa,2,false);
}else if other.type < 3 {
audio_sound_gain(snd_explob,1*obj_planetary.optiportabletaille,0)
audio_play_sound(snd_explob,2,false);
}else if other.type < 5 {
audio_sound_gain(snd_exploc,1*obj_planetary.optiportabletaille,0)
audio_play_sound(snd_exploc,2,false);
}else if other.type < 6 {
audio_sound_gain(snd_explod,1*obj_planetary.optiportabletaille,0)
audio_play_sound(snd_explod,2,false);
}else if other.type > 5 {
audio_sound_gain(snd_bigexplo,1*obj_planetary.optiportabletaille,0)
audio_play_sound(snd_bigexplo,2,false);
}

}}

if other.eventenemy = 0 {
///AJOUTER DS LA GRID LES PERTES POUR RECHARGER DANS LE NET CODE
if other.planetparent = 0 {}else{
if other.enemy = ds_grid_get(obj_planetary.planetary,32,other.planetparent) &&
other.enemy = global.idfixe {//si je suis defensseur
ds_grid_add(obj_planetary.planetary,259+other.type,other.planetparent,1)
}else if other.enemy = ds_grid_get(obj_planetary.planetary,32,other.planetparent) &&
other.enemy > 5 {//si le joueur est defensseur
ds_grid_add(obj_planetary.planetary,259+other.type,other.planetparent,1)
}else if other.enemy = ds_grid_get(obj_planetary.planetary,34,other.planetparent) &&
other.enemy = global.idfixe {//si je suis attakant
ds_grid_add(obj_planetary.planetary,266+other.type,other.planetparent,1)
}else if other.enemy = ds_grid_get(obj_planetary.planetary,34,other.planetparent) &&
other.enemy > 5 {//si le joueur est attakant
ds_grid_add(obj_planetary.planetary,266+other.type,other.planetparent,1)
}}


//ATTAQUANT
if other.enemy = ds_grid_get(obj_planetary.planetary,34,other.planetparent) {if ds_grid_get(obj_planetary.planetary,34,other.planetparent) = global.idfixe {
ds_grid_add(obj_planetary.planetary,52,other.planetparent,-1)
//ds_grid_add(obj_planetary.planetary,230+type,planetparent,-1)
ds_grid_add(obj_planetary.planetary,36,0,-1)//PERDS VAISSEAU DE LA PLANETE MERE QUAND C TOI QUI ATTAQUE
ds_grid_add(obj_planetary.planetary,42+other.type,0,-1)//shiptype
//si plu de vaisseau sur planete maire arreter bataille
if ds_grid_get(obj_planetary.planetary,36,0) < 3 {
other.prochaineguerre = floor(random_range(1000,50000))
ds_grid_set(obj_planetary.planetary,51,other.planetparent,other.prochaineguerre)//fin de guerre relancer tout
ds_grid_set(obj_planetary.planetary,52,other.planetparent,other.prochaineguerre/100)
//ds_grid_add(obj_planetary.planetary,230+type,planetparent,-1)

}
}else{
//if ds_grid_get(obj_planetary.planetary,36,planetparent) > 2 {
ds_grid_add(obj_planetary.planetary,52,other.planetparent,-1)
//ds_grid_add(obj_planetary.planetary,230+type,planetparent,-1)
//}
}
}
}//eventenemy
//DEFENSEUR
if other.enemy = ds_grid_get(obj_planetary.planetary,32,other.planetparent) {if ds_grid_get(obj_planetary.planetary,36,other.planetparent) > 0 {
if ds_grid_get(obj_planetary.planetary,32,other.planetparent) > 0 {//si planet parent = planete mere
if other.type = 1 or other.type = 2 {other.nbrvar = 2}else
if other.type = 3 {other.nbrvar = 1}else
{other.nbrvar = 0}
if ds_grid_get(obj_planetary.planetary,42+other.type,other.planetparent) > other.nbrvar {
ds_grid_add(obj_planetary.planetary,36,other.planetparent,-1)
ds_grid_add(obj_planetary.planetary,42+other.type,other.planetparent,-1)
ds_grid_add(obj_planetary.planetary,238,other.planetparent,1)//DESTROY SHIP TOTAL
}
/*}else{
ds_grid_add(obj_planetary.planetary,52,planetparent,-mode)
//ds_grid_add(obj_planetary.planetary,36,0,-mode)
}*/}}}//allie

if obj_planetary.echelle = 0 {
if obj_planetary.planetnowid = other.planetparent {
part_type_shape(obj_planetary.particle3,pt_shape_flare);
part_type_color3(obj_planetary.particle3,c_red,c_orange,c_white);//33023,255,65535);
part_type_alpha2(obj_planetary.particle3,0.8,1);
part_type_life(obj_planetary.particle3,10*1,50*1);
part_type_blend(obj_planetary.particle3,1);
part_type_size(obj_planetary.particle3,0.01*obj_planetary.optiportabletaille,0.05*obj_planetary.optiportabletaille,-0.001*obj_planetary.optiportabletaille,0);//0.3,0.4,0.1,);
part_type_speed(obj_planetary.particle3,0.1*obj_planetary.optiportabletaille,1*obj_planetary.optiportabletaille,-0.002*obj_planetary.optiportabletaille,0);//,12,35,0.01,0);
part_type_direction(obj_planetary.particle3,0,360,0,0);
part_particles_create(obj_planetary.Sname3,other.xx,other.yy,obj_planetary.particle3,150);

//ANNEAU
part_type_shape(obj_planetary.particle3,pt_shape_flare);
part_type_color3(obj_planetary.particle3,c_blue,c_white,c_blue);//33023,255,65535);
part_type_alpha2(obj_planetary.particle3,0.8,1);
part_type_life(obj_planetary.particle3,80*1,100*1);
part_type_blend(obj_planetary.particle3,1);
part_type_size(obj_planetary.particle3,0.01*obj_planetary.optiportabletaille,0.05*obj_planetary.optiportabletaille,-0.0005*obj_planetary.optiportabletaille,0);//0.3,0.4,0.1,);
part_type_speed(obj_planetary.particle3,1.9*obj_planetary.optiportabletaille,2*obj_planetary.optiportabletaille,-0.002*obj_planetary.optiportabletaille,0);//,12,35,0.01,0);
part_type_direction(obj_planetary.particle3,0,360,0,0);
part_particles_create(obj_planetary.Sname3,other.xx,other.yy,obj_planetary.particle3,150);

//explosion
part_type_shape(obj_planetary.particle3,pt_shape_explosion);
part_type_color3(obj_planetary.particle3,c_orange,c_red,c_orange);//33023,255,65535);
part_type_alpha2(obj_planetary.particle3,0.8,1);
part_type_life(obj_planetary.particle3,3*1,20*1);
part_type_blend(obj_planetary.particle3,1);
part_type_size(obj_planetary.particle3,0.1*obj_planetary.optiportabletaille,0.2*obj_planetary.optiportabletaille,-0.001*obj_planetary.optiportabletaille,0);//0.3,0.4,0.1,);
part_type_speed(obj_planetary.particle3,1.5*obj_planetary.optiportabletaille,2*obj_planetary.optiportabletaille,-0.002*obj_planetary.optiportabletaille,0);//,12,35,0.01,0);
part_type_direction(obj_planetary.particle3,0,360,0,0);
part_particles_create(obj_planetary.Sname3,other.xx,other.yy,obj_planetary.particle3,150);
}}


with(other){instance_destroy();}}
instance_destroy();
}
}



