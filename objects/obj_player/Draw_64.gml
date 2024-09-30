/// @description 점수 및 적 숫자 표시
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x,y,"state : "+state);
draw_text(x,y+10,sprite_get_name(sprite_index));
draw_text(x,y+20,image_number);
draw_text(x,y+30,image_index);
draw_text(x,y+40,"invincibility : "+string(invincibility));
draw_text(x,y+50,image_speed);
draw_text(x,y+60,"points : "+string(global.points));
draw_text(x,y+70,"life : "+string(life));
draw_text(x,y+80,"x : "+string(x));
draw_text(x,y+90,"y : "+string(y));
draw_text(x,y+100,"grounded : "+string(grounded));
draw_text(view_wport[0]/2,25,"enemy : "+string(enemy_count)+"/"+string(enemy_limit));
draw_text(view_wport[0]/4,25,"score : "+string(global.points));
