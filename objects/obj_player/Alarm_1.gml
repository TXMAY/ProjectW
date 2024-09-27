/// @description 무적 상태 해제
// 이 에디터에 코드를 작성할 수 있습니다
if(!check_states_compare("roll"))	// 구르는 중이 아니라면(구르는 중에는 무적이기 때문에)
{
	invincibility=false;	// 무적 해제
}