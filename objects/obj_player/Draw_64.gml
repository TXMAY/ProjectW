/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
draw_text(x,y,"state : "+state);
draw_text(x,y+10,sprite_get_name(sprite_index));
draw_text(x,y+20,image_number);
draw_text(x,y+30,image_index);
draw_text(x,y+40,"invincibility : "+string(invincibility));
draw_text(x,y+50,image_speed);
draw_text(x,y+60,"points : "+string(global.points));
draw_text(x,y+70,"life : "+string(life));