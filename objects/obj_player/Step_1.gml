/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if(life==0)	// 라이프가 0이면
{
	state="die";	// 죽은 상태로 변경
	if(alarm[2]==-1) alarm[2]=game_get_speed(gamespeed_fps)*3;
}
if(prev_life!=life and life!=0)	// 라이프가 0이 아니고 라이프에 변화가 있으면
{
	prev_life=life;		// 값 갱신
	health_bar_flag=true;	// 체력바 표시
}
if(invincibility==false)	// 무적이 아니면
{
	image_alpha=1;	// 투명 상태 해제(+버그 방지)
}