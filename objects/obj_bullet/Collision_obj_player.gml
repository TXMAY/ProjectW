/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

with(other)
{
	if(invincibility==false)
	{
		state="damaged";
		life--;
		invincibility=true;
		instance_destroy(other);
	}
}