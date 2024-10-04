/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

// Inherit the parent event
event_inherited();

with(other)
{
	if(!check_states_compare("die")) // 죽은 상태가 아니면
	{
		// 라이프가 가득 차 있으면 5점 상승, 아니면 라이프 1 추가
		if(life>=3) points+=5;
		else life++;
	}
}