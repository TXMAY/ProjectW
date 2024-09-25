/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다
move_speed=2;	// 이동 속도
move_x=0;		// 좌우 이동
move_y=0;		// 상하 이동
grav_speed=0.5;
grav_max=8;

grounded=false;	// 땅 위에 서 있는지 유무

state="move";	// 캐릭터 상태
// move : 기본(이동/점프)
// attack : 공격
// damaged : 피격

invincibility=false;	// 무적 여부
