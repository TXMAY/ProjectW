// v2.3.0에 대한 스크립트 어셋 변경됨 자세한 정보는
// https://help.yoyogames.com/hc/en-us/articles/360005277377 참조
function change_sprite(_name, _loop = true){
	if(sprite_index!=_name)
	{
		image_index=0;
		image_speed=1;
		sprite_index=_name;
	}
	if(!_loop and image_index+image_speed>image_number-1)	// 이미지 반복 방지
	{
		image_speed=0;
	}
}