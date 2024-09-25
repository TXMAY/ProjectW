/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
if(life==0)
{
	state="die";
	change_sprite(spr_player_die,false);
	if(alarm[2]==-1) alarm[2]=game_get_speed(gamespeed_fps)*3;
}
if(prev_life!=life)
{
	prev_life=life;
	health_bar_flag=true;
}