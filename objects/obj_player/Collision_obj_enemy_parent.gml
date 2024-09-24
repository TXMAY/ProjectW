/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
// 적에게 공격 당하고 무적 상태가 아니라면
if(check_attack() and invincibility==false)
{
	state="damaged";
	life--;
	invincibility=true;
	health_bar_flag=true;
}