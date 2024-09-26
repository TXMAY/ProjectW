/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if(state!="move")	// 이동 상태가 아닌 행동이 끝나면
{
	if(state=="damaged")	// 공격 받았다면 무적 실행
	{
		alarm[0]=1;
		alarm[1]=game_get_speed(gamespeed_fps);
	}
	else if(state=="roll" and alarm[1]==-1)	// 구르기가 끝났고 공격 받아서 무적 상태가 아니라면
	{
		alarm[1]=1;	// 무적 해제
		alarm[4]=game_get_speed(gamespeed_fps)*2;
	}
	// 상태 복구
	state="move";
}
