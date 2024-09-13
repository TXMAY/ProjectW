/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if(check_state("attack",obj_player.id) and state!="damaged")
{
	state="damaged";
	image_index=3;
	alarm[0]=game_get_speed(gamespeed_fps)/2;
}