/// @description 공격 이벤트
if(check_states_compare("move"))
{
	//image_index=1;
	state="prepare";
	alarm[0]=game_get_speed(gamespeed_fps)*attack_time;
}
else if(check_states_compare("prepare"))
{
	//image_index=2;
	state="attack";
	// y+(sprite_height/2)-sprite_yoffset : 스프라이트의 중간 좌표(원점의 위치가 달라져도 동일함)
	var _bullet=instance_create_depth(x,y+(sprite_height/2)-sprite_yoffset,self.depth+1,obj_bullet);
	_bullet.image_xscale=image_xscale;
	alarm[0]=game_get_speed(gamespeed_fps)*attack_time;
}
else if(check_states_compare("attack"))
{
	//image_index=0;
	state="move";
	alarm[2]=game_get_speed(gamespeed_fps)*3;
}
