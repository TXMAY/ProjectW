/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if(!check_states_compare("die"))
{
	if(life>=3) global.points+=5;
	else life++;
	
	instance_destroy(other);
}