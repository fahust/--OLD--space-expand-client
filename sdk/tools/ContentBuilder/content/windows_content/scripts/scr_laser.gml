height = sin(alarm[0]);
draw_set_blend_mode(bm_add);
draw_set_color(c_red);
draw_line_width(room_width/2, room_height/2, xxmouse, yymouse, (height * 1) + 0.1);
draw_set_color(c_orange);
draw_line_width(room_width/2, room_height/2, xxmouse, yymouse, (height * 2) + 0.1);
draw_set_color(c_white);
draw_line_width(room_width/2, room_height/2, xxmouse, yymouse, (height * 3) + 0.1);
