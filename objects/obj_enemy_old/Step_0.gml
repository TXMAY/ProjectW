/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
move_x=image_xscale;

if(check_states_compare("move"))
{
	if(!place_meeting(x+move_x*move_speed,y,obj_collision))	// 옆에 땅이 없다면
	{
		x+=move_x*move_speed;	// 좌우 이동
	}
	else
	{
		while(!place_meeting(x+sign(move_x),y,obj_collision))	// 덜 붙었다면
		{
			x+=sign(move_x);	// 붙을 때까지 이동
		}
		image_xscale*=-1;
	}
}

if(move_y<8) move_y+=0.5;	// 중력 추가

if(!place_meeting(x,y+move_y,obj_collision))	// 밑에 땅이 없다면
{
	y+=move_y;	// 상하 이동
}
else	// 아니라면 땅이 있다면 완전히 붙었는지 확인
{
	while(!place_meeting(x,y+sign(move_y),obj_collision))	// 덜 붙었다면
	{
		y+=sign(move_y);	// 붙을 때까지 이동
	}
	
	move_y=0;	// 초기화
}