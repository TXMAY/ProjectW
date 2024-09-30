/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
event_inherited();
with(other)
{
	if(!check_states_compare("die")) // 죽은 상태가 아니면
	{
		global.points++;
	}
}