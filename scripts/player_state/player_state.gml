// 이동 중에도 공격이나 점프를 할 수 있어야 하기에 나중에 move 스크립트를 기본으로 변경
function player_state(){
	// 
	show_debug_message("player_state");
	change_sprite(spr_player_idle);
	move_speed=4;	// 공격 중이 아니면 속도 원상 복구
	if(keyboard_check_pressed(ord("Z")))
	{
		state=player_attack;
	}
	else if(move_y>0) state=player_fall;
	else if(move_y<0) state=player_jump;
	else if(move_x!=0) state=player_move;
}