/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if(life<3 and !check_states_compare("die"))
{
	life++;
	instance_destroy(other);
}