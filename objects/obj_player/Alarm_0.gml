/// @description 피격으로 인한 무적 상태 애니메이션
// 플레이어 스프라이트 깜빡거리기
if(image_alpha==1) image_alpha=0.5;
else image_alpha=1;
if(alarm[1]!=-1)	// 무적 상태 해제 이벤트가 실행되지 않았다면
{
	// 0.25초 후 무적 상태 애니메이션 이벤트 실행
	alarm[0]=game_get_speed(gamespeed_fps)/4;	
}