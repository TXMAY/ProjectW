/// @description 이동
move_x=keyboard_check(vk_right)-keyboard_check(vk_left);	// 방향 결정

event_inherited();

if(check_states_compare("roll"))	// 구르기 이동
{
	if(!place_meeting(x+move_speed*1.5*image_xscale,y,obj_collision))
	{
		x+=move_speed*1.5*image_xscale;
	}
	else
	{
		if(!place_meeting(x+sign(image_xscale),y,obj_collision))
		{
			x+=sign(image_xscale);	// 붙을 때까지 이동
		}
	}
}

// 공중 공격 중 땅에 닿으면 이동 상태로 변경
if(check_states_compare("attack_air_move") and grounded) state="move";


