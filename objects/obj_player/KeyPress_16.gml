/// @description 구르기
// 땅에 닿았고 기본 상태이고 구르기가 쿨타임이 아니라면
if(grounded and check_states_compare("move") and roll)
{
	// 구르기
	state="roll";
	invincibility=true;	// 구르는 동안 무적
	change_sprite(spr_player_roll);
	roll=false;	// 쿨타임 동안 구르지 못하게 설정
}