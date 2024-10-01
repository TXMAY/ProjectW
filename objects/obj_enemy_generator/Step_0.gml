/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if(alarm[0]==-1)
{
	var _tick=game_get_speed(gamespeed_fps);
	alarm[0]= random_range(_tick*3,_tick*6);
}