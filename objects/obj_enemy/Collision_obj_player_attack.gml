/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
// 공격 받았고 공격 받은 상태가 아니면
if(check_attack() and !check_states_compare("damaged"))
{
	// 공격 받은 상태로 변경
	state="damaged";
	image_index=3;
	alarm[0]=game_get_speed(gamespeed_fps)/2;
}