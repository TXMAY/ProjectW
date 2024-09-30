/// @description 공격 시작
if(check_states_compare("move") and other.invincibility==false)	// 움직이는 중 플레이어와 닿으면
{
	alarm[0]=1;	// 공격 이벤트 시작
}
if(check_states_compare("attack"))	// 공격 상태이고 플레이어와 충돌하면
{
	with(other)
	{
		if(invincibility==false)	// 플레이어가 무적이 아니라면
		{
			state="damaged";	// 상태를 damaged로 변경
			life--;				// 라이프 감소
			invincibility=true;	// 무적
		}
	}
}