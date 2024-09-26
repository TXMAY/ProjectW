/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
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
	var _bullet=instance_create_depth(x,y,self.depth+1,obj_bullet);
	_bullet.image_xscale=image_xscale;
	alarm[0]=game_get_speed(gamespeed_fps)*attack_time;
}
else if(check_states_compare("attack"))
{
	//image_index=0;
	state="move";
	alarm[1]=game_get_speed(gamespeed_fps)*3;
}

if(check_states_compare("damaged"))
{
	image_index=0;
	state="move";
}