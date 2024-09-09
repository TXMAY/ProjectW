/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
move_x=keyboard_check(vk_right)-keyboard_check(vk_left);	// 방향 결정
x+=move_x*move_speed;	// 좌우 이동

if(move_y<8) move_y++;	// 중력 추가

y+=move_y;	// 상하 이동