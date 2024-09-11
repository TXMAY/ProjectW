// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function player_attack(){
	show_debug_message("player_attack");
	if(grounded)
	{
		change_sprite(spr_player_attack1);
		//sprite_index=spr_player_attack1;
		move_x=0;
	}
	//else
	//{
	//	change_sprite(spr_player_attack_air1);
	//	//sprite_index=spr_player_attack_air1;
	//}
	if(image_index+image_speed>image_number-1) state=player_move;	// 애니메이션이 끝나면 기본 상태로 변경
}