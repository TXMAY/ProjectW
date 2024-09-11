/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if(state!="attack")
{
	move_speed=4;	// 공격 중이 아니면 속도 원상 복구
	state=player_state();
}
//image_speed=0.25;