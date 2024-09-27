/// @description 공격
// 기본 상태면
if(check_states_compare("move"))
{
	// 공격
	if(!check_states_pos("attack"))
	{
		// 공격 범위용 오브젝트 생성
		var _collision=instance_create_depth(obj_player.x,obj_player.y,obj_player.depth+1,obj_player_attack);
		
		// 플레이어의 공격 방향과 속도를 맞추기 위해 설정
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
	}
}