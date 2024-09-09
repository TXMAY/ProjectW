/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if(state!=STATE.ATTACK and place_meeting(x,y+1,obj_collision))	// 점프
{
	move_y=-12;
}