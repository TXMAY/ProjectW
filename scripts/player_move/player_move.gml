// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function player_move(){
	move_x=keyboard_check(vk_right)-keyboard_check(vk_left);	// 방향 결정

	// 좌우 이동
	if(move_x!=0)
	{
		if(grounded) change_sprite(spr_player_move);
		if(!place_meeting(x+move_x*move_speed,y,obj_collision))	// 옆에 땅이 없다면
		{
			x+=move_x*move_speed;	// 좌우 이동
			image_xscale=sign(move_x);
		}
		else
		{
			if(!place_meeting(x+sign(move_x),y,obj_collision))	// 덜 붙었다면
			{
				x+=sign(move_x);	// 붙을 때까지 이동
			}
		}
	}
	
	// 상하 이동
	if(grounded and keyboard_check_pressed(vk_space))	// 점프
	{
		change_sprite(spr_player_jump);
		move_y=-12;
	}
	
	if(move_y<12) move_y++;	// 중력 추가

	if(!place_meeting(x,y+move_y,obj_collision))	// 밑에 땅이 없다면
	{
		y+=move_y;	// 상하 이동
		grounded=false;
	}
	else	// 아니라면 땅이 있다면 완전히 붙었는지 확인
	{
		while(!place_meeting(x,y+sign(move_y),obj_collision))	// 덜 붙었다면
		{
			y+=sign(move_y);	// 붙을 때까지 이동
		}
	
		move_y=0;	// 초기화
		grounded=true;
	}
	
	if(grounded and keyboard_check_pressed(ord("Z")))
	{
		state=player_attack;
	}
	
	if(!grounded and image_index+image_speed>image_number-1)	// 이미지 반복 방지
	{
		image_index=-1;
	}
	if(move_y>0) change_sprite(spr_player_fall);
	
	if(move_x==0 and move_y==0)change_sprite(spr_player_idle);
	//else if(move_y<0) state=player_jump;
}