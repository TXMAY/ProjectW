/// @description 체력 아이템 생성
// 이 에디터에 코드를 작성할 수 있습니다
var _x=irandom_range(min_x,max_x);
var _y=irandom_range(min_y,max_y);
instance_create_depth(_x,_y,obj_player.depth+1,obj_life_item);
alarm[0]=game_get_speed(gamespeed_fps)*irandom_range(10,15);