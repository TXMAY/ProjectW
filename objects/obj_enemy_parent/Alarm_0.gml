/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if(check_states_compare("move"))
{
	//image_index=1;
	state="prepare";
	alarm[0]=game_get_speed(gamespeed_fps);
}
else if(check_states_compare("prepare"))
{
	//image_index=2;
	state="attack";
	alarm[0]=game_get_speed(gamespeed_fps);
}
else if(check_states_compare("attack"))
{
	//image_index=0;
	state="move";
}

if(check_states_compare("damaged"))
{
	image_index=0;
	state="move";
}