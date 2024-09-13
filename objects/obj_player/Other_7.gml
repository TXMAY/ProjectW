/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if(check_state("attack") or state=="damaged")	// 공격이 끝나면
{
	if(state=="damaged")
	{
		alarm[0]=1;
		alarm[1]=game_get_speed(gamespeed_fps);
	}
	// 상태 복구
	state="idle";
	
	
}
