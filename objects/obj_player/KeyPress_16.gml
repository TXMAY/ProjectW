/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if(grounded and state=="move")	// 땅에 닿았고 기본 상태라면
{
	// 구르기
	state="roll"
	invincibility=true;	// 구르는 동안 무적
	change_sprite(spr_player_roll);
}