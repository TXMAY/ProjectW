/// @description 여기에 설명 삽입
// 점프 중 점프키를 떼면 현재 높이에서 점프 중지
if(move_y<0 and keyboard_check_released(vk_space)) move_y=-1;