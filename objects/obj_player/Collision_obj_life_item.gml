/// @description 체력 아이
if(!check_states_compare("die")) // 죽은 상태가 아니면
{
	// 라이프가 가득 차 있으면 5점 상승, 아니면 라이프 1 추가
	if(life>=3) global.points+=5;
	else life++;
	
	// 아이템 제거
	instance_destroy(other);
}