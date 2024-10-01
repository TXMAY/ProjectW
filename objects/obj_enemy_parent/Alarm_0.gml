/// @description 공격 및 상태 변경 이벤트
if(check_states_compare("move"))
{
	state="prepare";
	alarm[0]=game_get_speed(gamespeed_fps)*attack_time;
}
else if(check_states_compare("prepare"))
{
	state="attack";
	alarm[0]=game_get_speed(gamespeed_fps)*attack_time;
}
else if(check_states_compare("attack"))
{
	state="move";
}