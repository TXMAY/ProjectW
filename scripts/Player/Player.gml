// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
// 공격 함수
function player_attack(){
	if(!check_states_pos("attack"))
	{
		var _collision=instance_create_depth(obj_player.x,obj_player.y,obj_player.depth+1,obj_player_attack);
		_collision.image_xscale=image_xscale;
		_collision.image_speed=image_speed;
		if(grounded)	// 땅 위면
		{
			// 지상 공격
			change_sprite(spr_player_attack1);
			state="attack";
			with(_collision)
			{
				change_sprite(spr_player_attack1_mask);
			}
		}
		else
		{
			// 공중이면 공중 공격
			change_sprite(spr_player_attack_air1);
			state="attack_air_move";
			with(_collision)
			{
				change_sprite(spr_player_attack_air1_mask);
			}
		}
		//_collision.state=state;
	}
}