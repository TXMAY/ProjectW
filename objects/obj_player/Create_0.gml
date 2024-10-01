/// @description 변수 및 기본 설정

// 스프라이트 크기 : 가로 16, 세로 22
// begin step -> alarm -> step -> collision -> end step으로 진행됨
// 키보드 입력 관련 이벤트는 begin과 step 사이에 실행됨
// 참고 : https://manual.gamemaker.io/beta/en/index.htm#t=The_Asset_Editors%2FObject_Properties%2FEvent_Order.htm

event_inherited();	// 코드 상속
// state 종류
// attack_air_move : 공중 공격(이동 가능)
// die : 죽음(게임오버)

global.points=0;		// 점수
grounded=false;			// 땅 위에 서 있는지 유무
health_bar_flag=false;	// 체력바 표시용 변수
prev_life=life;		// 체력 상태 변경 확인용 변수
roll=true;	// 구르기 스킬 활성화 변수
enemy_count=0;	// 현재 적 수
enemy_limit=15;	// 최대 적 수
instance_create_depth(x,y,self.depth,obj_player_health_bar);	// 체력바 오브젝트 생성
