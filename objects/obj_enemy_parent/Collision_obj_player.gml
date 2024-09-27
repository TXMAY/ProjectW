/// @description 공격 시작
if(check_states_compare("move") and other.invincibility==false)	// 움직이는 중 플레이어와 닿으면
{
	alarm[0]=1;	// 공격 이벤트 시작
}
if(check_states_compare("attack"))
{
	with(other)
	{
		if(invincibility==false)
		{
			state="damaged";
			life--;
			invincibility=true;
		}
	}
}