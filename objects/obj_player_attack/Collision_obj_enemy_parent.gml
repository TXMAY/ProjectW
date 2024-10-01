/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

//if(check_states_pos("attack"))
//{
with(other)
{
	if(!check_states_compare("damaged"))
	{
		state="damaged";
		life--;
		//alarm[0]=game_get_speed(gamespeed_fps)/2;
	}
}
//}