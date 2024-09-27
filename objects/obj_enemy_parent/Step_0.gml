/// @description 이동
move_x=image_xscale;	// 이동 방향을 이미지 방향으로 설정
event_inherited();

// 벽에 닿으면 이동 방향을 반대로 설정
if(check_states_compare("move"))
{
	if(place_meeting(x+move_x*move_speed,y,obj_collision))
	{
		image_xscale*=-1;
	}
}