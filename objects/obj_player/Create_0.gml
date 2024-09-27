/// @description 변수 설정

// 스프라이트 크기 : 가로 16, 세로 22
event_inherited();	// 코드 상속

global.points=0;		// 점수
health_bar_flag=false;	// 체력바 표시용 변수
prev_life=life;		// 체력 상태 변경 확인용 변수
roll=true;	// 구르기 스킬 활성화 변수
instance_create_depth(x,y,self.depth,obj_player_health_bar);	// 체력바 오브젝트 생성