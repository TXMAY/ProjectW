/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
var _type=irandom_range(0, 2);
switch(_type)
{
	case 0:
		instance_create_depth(x,y,obj_player.depth+1,obj_enemy);
		break;
	case 1:
	var _y=irandom_range(96,192);
		instance_create_depth(x,_y,obj_player.depth+1,obj_enemy_fly);
		break;
	case 2:
		instance_create_depth(x,y,obj_player.depth+1,obj_enemy_ranged);
		break;
}