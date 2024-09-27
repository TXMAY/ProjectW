/// @description 코인 아이템
if(!check_states_compare("die")) // 죽은 상태가 아니면
{
	// 점수 증가 후 아이템 제거
	global.points++;
	instance_destroy(other);
}