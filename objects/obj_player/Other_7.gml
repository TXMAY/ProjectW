/// @description 상태 변경
if(state!="move")	// 이동 상태가 아닌 상태가 끝나면
{
	if(state=="damaged")	// 공격 받았다면 무적 실행
	{
		alarm[0]=1;
		alarm[1]=game_get_speed(gamespeed_fps);	// 1초 후 무적 해제
	}
	else if(state=="roll")	// 구르기가 끝났다면
	{
		if(alarm[0]==-1)	// 피격으로 인한 무적이 적용 중이지 않다면
		{
			alarm[1]=1;	// 무적 해제
		}
		alarm[4]=game_get_speed(gamespeed_fps)*2;	// 구르기 쿨타임 2초 적용
	}
	// 상태 복구
	state="move";
}
