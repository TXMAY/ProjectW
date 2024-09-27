/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
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
	

if(check_states_compare("attack_air_move") and grounded) state="move";
if(check_states_compare("damaged")) change_sprite(spr_player_damaged);

// 스프라이트 변경
//if(!check_state("attack") and state!="damaged")
if(check_states_compare("move"))
{
	if(move_x!=0) image_xscale=move_x;	// 스프라이트 좌우 방향
	
	if(move_y>0) change_sprite(spr_player_fall);	// 떨어지는 중
	else if(move_y<0) change_sprite(spr_player_jump, false);
	else if(move_x!=0) change_sprite(spr_player_move);	// 걷는 중
	else change_sprite(spr_player_idle);	// 기본
}
if(check_states_compare("die"))
{
	change_sprite(spr_player_die,false);
}