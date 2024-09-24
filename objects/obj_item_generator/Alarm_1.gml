/// @description 코인 아이템 생성
// 이 에디터에 코드를 작성할 수 있습니다
var _x=irandom_range(100,500);
var _y=irandom_range(30,200);
instance_create_depth(_x,_y,obj_player.depth+1,obj_coin_item);
alarm[1]=game_get_speed(gamespeed_fps)*irandom_range(5,10);