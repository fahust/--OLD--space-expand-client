//systemstellairenow = 1
alarm[4] = 10 
   if surface_exists(surf){
surface_set_target(surf);
draw_set_color(c_black);
draw_rectangle(0,room_width,0,room_height,true);
surface_reset_target();
surface_free(surf);}
xxorbitdist1 = -2
yyorbitdist1 = -2
xxorbitdist2 = -2
yyorbitdist2 = -2
xxorbitdist3 = -2
yyorbitdist3 = -2
xxorbitdist4 = -2
yyorbitdist4 = -2
xxorbitdist5 = -2
yyorbitdist5 = -2
xxorbitdist6 = -2
yyorbitdist6 = -2
xxorbitdist7 = -2
yyorbitdist7 = -2
xxorbitdist8 = -2
yyorbitdist8 = -2
xxorbitdist9 = -2
yyorbitdist9 = -2

var i;
for (i = 0; i < ds_grid_height(planetary)-1; i += 1)
   {
   if xxorbitdist1 = -2 {if ds_grid_get(planetary,28,i) = systemstellairenow {xxorbitdist1 = i}
   }else if xxorbitdist2 = -2 {if ds_grid_get(planetary,28,i) = systemstellairenow {xxorbitdist2 = i}
   }else if xxorbitdist3 = -2 {if ds_grid_get(planetary,28,i) = systemstellairenow {xxorbitdist3 = i}
   }else if xxorbitdist4 = -2 {if ds_grid_get(planetary,28,i) = systemstellairenow {xxorbitdist4 = i}
   }else if xxorbitdist5 = -2 {if ds_grid_get(planetary,28,i) = systemstellairenow {xxorbitdist5 = i}
   }else if xxorbitdist6 = -2 {if ds_grid_get(planetary,28,i) = systemstellairenow {xxorbitdist6 = i}
   }else if xxorbitdist7 = -2 {if ds_grid_get(planetary,28,i) = systemstellairenow {xxorbitdist7 = i}
   }else if xxorbitdist8 = -2 {if ds_grid_get(planetary,28,i) = systemstellairenow {xxorbitdist8 = i}
   }else if xxorbitdist9 = -2 {if ds_grid_get(planetary,28,i) = systemstellairenow {xxorbitdist9 = i;
   i = ds_grid_height(planetary)+2}
   }

   }


/*var i;
for (i = 0; i < 1000; i += 1)
   {if ds_grid_get(planetary,28,i) = systemstellairenow {//check system
   if xxorbitdist1 = -2 {xxorbitdist1 = i//ds_grid_get(planetary,2,i)/(150000000/200)//EN FAIT ID
   }else if xxorbitdist2 = -2 {xxorbitdist2 = i//ds_grid_get(planetary,2,i)/(150000000/200)
    }else if xxorbitdist3 = -2 {xxorbitdist3 = i//ds_grid_get(planetary,2,i)/(150000000/200)
    }else if xxorbitdist4 = -2 {xxorbitdist4 = i//ds_grid_get(planetary,2,i)/(150000000/200)
    }else if xxorbitdist5 = -2 {xxorbitdist5 = i//ds_grid_get(planetary,2,i)/(150000000/200)
    }else if xxorbitdist6 = -2 {xxorbitdist6 = i//ds_grid_get(planetary,2,i)/(150000000/200)
    }else if xxorbitdist7 = -2 {xxorbitdist7 = i//ds_grid_get(planetary,2,i)/(150000000/200)
    }else if xxorbitdist8 = -2 {xxorbitdist8 = i//ds_grid_get(planetary,2,i)/(150000000/200)
    }else if xxorbitdist9 = -2 {
    xxorbitdist9 = i//ds_grid_get(planetary,2,i)/(150000000/200)
    i = 1000}
   
   
    }
   } */


