/// @description 스프라이트 변경
if(check_states_compare("move"))
{
	image_index=0;
}
else if(check_states_compare("prepare"))
{
	image_index=1;
}
else if(check_states_compare("attack"))
{
	image_index=2;
}
else if(check_states_compare("damaged"))
{
	image_index=3;
	if(alarm[1]==-1)
	{
		alarm[1]=game_get_speed(gamespeed_fps)/2;
		alarm[0]=-1;
	}
}