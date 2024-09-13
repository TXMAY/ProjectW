/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
// 공격
switch(state)
{
	case "move":
		image_index=1;
		state="prepare";
		alarm[0]=game_get_speed(gamespeed_fps);
		break;
	case "prepare":
		image_index=2;
		state="attack";
		alarm[0]=game_get_speed(gamespeed_fps);
		break;
	case "attack":
		image_index=0;
		state="move";
		break;
	case "damaged":
		image_index=0;
		state="move";
		break;
}