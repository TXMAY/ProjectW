/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
//move_x=keyboard_check(vk_right)-keyboard_check(vk_left);	// 방향 결정

// 좌우 이동
// 지상 공격이 아니고 데미지를 받지 않았을 때만 이동
//if(move_x!=0 and check_states_compare("move","attack_air"))
if(check_states_pos("move"))
{
	if(!place_meeting(x+move_x*move_speed,y,obj_collision))	// 옆에 땅이 없다면
	{
		x+=move_x*move_speed;	// 좌우 이동
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
if(move_y<grav_max) move_y+=grav_speed;	// 중력 추가

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