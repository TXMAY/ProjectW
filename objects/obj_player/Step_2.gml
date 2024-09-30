/// @description 스프라이트 변경 및 후처리
// alarm 이벤트 후에 처리해야하는 동작은 여기에 작성

grounded=place_meeting(x,y+1,obj_collision);	// 땅 위에 서 있는지 확인
enemy_count=instance_number(obj_enemy_parent);	// 적 오브젝트 수

// 점프 중 공격받거나 죽으면 점프 중지
if(check_states_compare("damaged","die") and move_y<0)
{
	move_y=0;
}

// 라이프가 0이거나 적이 최대 적 수보다 많으면
if(life<=0 or enemy_count>enemy_limit)
{
	state="die";	// 죽은 상태로 변경
	invincibility=true;
}

// 라이프가 0이 아니고 라이프에 변화가 있으면
if(prev_life!=life and life!=0)	
{
	prev_life=life;		// 값 갱신
	health_bar_flag=true;	// 체력바 표시
}

// 체력바가 표시되어 있고 체력바 비활성화 이벤트가 실행되지 않았다면
if(health_bar_flag and alarm[3]==-1)
{
	// 1초 후 체력바 비활성화 이벤트 실행
	alarm[3]=game_get_speed(gamespeed_fps);
}


// 스프라이트 변경

if(invincibility==false)	// 무적이 아니면
{
	image_alpha=1;	// 투명 상태 해제(+버그 방지)
}

if(check_states_compare("move"))	// 이동 상태일 때
{
	if(move_x!=0) image_xscale=move_x;	// 스프라이트 좌우 방향
	
	if(!grounded)
	{
		if(move_y>0) change_sprite(spr_player_fall);	// 떨어지는 중
		else if(move_y<0) change_sprite(spr_player_jump, false);
	}
	else
	{
		if(move_x!=0) change_sprite(spr_player_move);	// 걷는 중
		else change_sprite(spr_player_idle);	// 기본
	}
}
if(check_states_compare("damaged"))	// 공격받은 상태일 때
{
	change_sprite(spr_player_damaged);
}
if(check_states_compare("die"))	// 죽은 상태일 때
{
	change_sprite(spr_player_die,false);
}
