/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

// Inherit the parent event
event_inherited();

if(check_states_compare("move")	// 이동 상태고
	and !reload	// 재장전 중이 아니고
	and !obj_player.invincibility	// 플레이어가 무적이 아니고
	and sign(x-obj_player.x)!=image_xscale	// 플레이어가 내가 바라보는 방향에 있고
	and distance_to_object(obj_player)<=300	// 플레이어와 나의 거리가 300 이하고
	and obj_player.y>=y-sprite_yoffset and obj_player.y<=y-sprite_yoffset+sprite_height
	// 플레이어가 스프라이트 세로 길이 내에 있다면
)
{
	alarm[0]=1;	// 공격 이벤트 시작
	reload=true;
}