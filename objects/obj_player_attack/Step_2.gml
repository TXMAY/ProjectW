/// @description 위치 설정
x=obj_player.x;
y=obj_player.y;
// 플레이어가 공격중이 아니면 삭제
with(obj_player)
{
	if(!check_states_pos("attack"))
	{
		instance_destroy(other);

	}
}