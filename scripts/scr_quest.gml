
eventPolitic = ds_grid_create(100,100);
descPolitic[0] = "L'ambassadeur des [faction] subit actuellement une attaque pirate dans votre secteur, ";
descPolitic[1] = "Les [faction] sont aux coeur d'une guerre galactique sans précédent, il propose a toute faction combattante de grossir leur troupe ";
descPolitic[2] = "Des colons [faction] voyage vers un monde plus hospitalié, il vous demande protection pour cet dangereuse aventure";
descPolitic[2] = "Les [faction] subissent une crise économique et vous demande des ressources ";
var i;
 for (i = 0; i < 100; i += 1)
    {
    strDesc = string_replace(descPolitic[i], '[faction]', ds_grid_get(eventPolitic,1,i));
ds_grid_set(eventPolitic,1,i,floor(random_range(2,5)))//faction quest
ds_grid_set(eventPolitic,2,i,1)//title
ds_grid_set(eventPolitic,3,i,1)//desc
ds_grid_set(eventPolitic,4,i,1)//timestart
ds_grid_set(eventPolitic,5,i,1)//timeend
ds_grid_set(eventPolitic,6,i,1)//timequestdure
ds_grid_set(eventPolitic,7,i,1)//timeprogresstoend
ds_grid_set(eventPolitic,10,i,1)//ship needed sc1
ds_grid_set(eventPolitic,11,i,1)//ship needed sc2
ds_grid_set(eventPolitic,12,i,1)//ship needed sc3
ds_grid_set(eventPolitic,13,i,1)//ship needed sc4
ds_grid_set(eventPolitic,14,i,1)//ship needed sc5
ds_grid_set(eventPolitic,15,i,1)//ship needed sc6
ds_grid_set(eventPolitic,16,i,1)//ship needed sc7
ds_grid_set(eventPolitic,17,i,1)//ressource needed
ds_grid_set(eventPolitic,20,i,1)//ship gain sc1
ds_grid_set(eventPolitic,21,i,1)//ship gain sc2
ds_grid_set(eventPolitic,22,i,1)//ship gain sc3
ds_grid_set(eventPolitic,23,i,1)//ship gain sc4
ds_grid_set(eventPolitic,24,i,1)//ship gain sc5
ds_grid_set(eventPolitic,25,i,1)//ship gain sc6
ds_grid_set(eventPolitic,26,i,1)//ship gain sc7
ds_grid_set(eventPolitic,27,i,1)//ressource gain

}

