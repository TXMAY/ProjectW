/// @description 여기에 설명 삽입
if(life==0)	// 목숨이 다 떨어지면(죽은 상태가 되면)
{
	// 점수 증가 후 삭제
	global.points++;
	instance_destroy();
}