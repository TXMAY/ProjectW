/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if(state!=STATE.ATTACK)		// 공격
{
	image_index=0;
	state=STATE.ATTACK;
	if(place_meeting(x,y+1,obj_collision))
	{
		sprite_index=spr_player_attack1;
	}
	else sprite_index=spr_player_attack_air1;
}