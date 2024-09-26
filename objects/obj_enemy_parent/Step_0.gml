/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
move_x=image_xscale;
event_inherited();

if(check_states_compare("move"))
{
	if(place_meeting(x+move_x*move_speed,y,obj_collision))	// 옆에 땅이 없다면
	{
		image_xscale*=-1;
	}
}