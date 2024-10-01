/// @description 피격 해제 이벤트

event_inherited();

// 피격으로 인해 재장전중이 아니라면
if(reload and alarm[2]==-1)
{
	alarm[2]=game_get_speed(gamespeed_fps)*3;
}