/// @description 위치 설정
x=obj_player.x;
y=obj_player.y;
// 플레이어가 공격중이 아니면 삭제
if(!check_state("attack",obj_player))
{
	instance_destroy();
}