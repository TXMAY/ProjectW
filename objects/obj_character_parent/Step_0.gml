/// @description 이동
// 좌우 이동
// 지상 공격이 아니고 데미지를 받지 않았을 때만 이동
if(check_states_pos("move"))	// 기본 상태라면
{
	// 옆에 땅이 없다면
	if(!place_meeting(x+move_x*move_speed,y,obj_collision))
	{
		x+=move_x*move_speed;	// 좌우 이동
	}
	else
	{
		// 덜 붙었다면
		if(!place_meeting(x+sign(move_x),y,obj_collision))
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