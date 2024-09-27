/// @description 여기에 설명 삽입
// 체력바가 표시되어 있고 체력바 비활성화 이벤트가 실행되지 않았다면
if(health_bar_flag and alarm[3]==-1)
{
	alarm[3]=game_get_speed(gamespeed_fps);	// 1초 후 체력바 비활성화 이벤트 실행
}