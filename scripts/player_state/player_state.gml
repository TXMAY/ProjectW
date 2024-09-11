// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function player_state(){
	var _state="";
	if(!string_pos("attack", sprite_get_name(sprite_index)))
	{
		if(keyboard_check_pressed(ord("Z")))
		{
			if(!place_meeting(x,y+1,obj_collision))
			{
				_state="attack_air";
			}
			else _state="attack";
		}
		else if(move_y>0) _state="fall";
		else if(move_y<0) _state="jump";
		else if(keyboard_check(vk_left)^keyboard_check_pressed(vk_right)) _state="move"
		else _state="idle";
	}
	return _state;
}