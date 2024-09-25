///// @description 여기에 설명 삽입
//// 이 에디터에 코드를 작성할 수 있습니다
//switch(state)
//{
//	// 이동 상태 였으면
//	case "move":
//		// 공격 준비 상태로 변경
//		image_index=1;
//		state="prepare";
//		alarm[0]=game_get_speed(gamespeed_fps);
//		break;
//	// 공격 준비 상태 였으면
//	case "prepare":
//		// 공격 상태로 변경
//		image_index=2;
//		state="attack";
//		alarm[0]=game_get_speed(gamespeed_fps);
//		break;
//	// 공격 상태 였으면
//	case "attack":
//		// 이동 상태로 변경
//		image_index=0;
//		state="move";
//		break;
//	// 공격 받은 상태 였으면
//	case "damaged":
//		// 이동 상태로 변경
//		image_index=0;
//		state="move";
//		break;
//}
event_inherited()