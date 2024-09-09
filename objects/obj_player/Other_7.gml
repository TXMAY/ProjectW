/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if(string_pos("spr_player_attack",sprite_get_name(sprite_index)))	// 공격이 끝나면
{
	// 스프라이트 및 상태 복구
	sprite_index=spr_player_idle;
	image_index=0;
	state=STATE.IDLE;
}
