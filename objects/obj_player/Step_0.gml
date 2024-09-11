/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
script_execute(state);

//if(state="attack")
//{
//	//image_index=0;
	
//	if(place_meeting(x,y+1,obj_collision))
//	{
//		sprite_index=spr_player_attack1;
//		move_speed=0;
//	}
//	else sprite_index=spr_player_attack_air1;
//}


// 스프라이트 변경
if(state!="attack")
{
	if(move_x!=0) image_xscale=move_x;	// 스프라이트 좌우 방향
	
	if(move_y>0) sprite_index=spr_player_fall;	// 떨어지는 중
	//else if(move_x!=0) sprite_index=spr_player_move; // 걷는 중
	//else sprite_index=spr_player_idle;	// 기본
}