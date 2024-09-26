/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

// Inherit the parent event
event_inherited();

if(check_states_compare("move")
	and distance_to_object(obj_player)<=300
	and sign
	(x-obj_player.x)!=image_xscale
	and !reload
)	// 움직이는 중 플레이어와 닿으면
{
	alarm[0]=1;	// 공격 이벤트 시작
	reload=true;
}