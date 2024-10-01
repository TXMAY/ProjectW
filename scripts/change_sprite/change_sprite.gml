// 스프라이트 변경
function change_sprite(_name, _loop = true){
	// 바꾸려는 스프라이트가 현재 스프라이트와 동일하지 않으면 변경
	if(sprite_index!=_name)
	{
		image_index=0;
		image_speed=1;
		sprite_index=_name;
	}
	
	// 이미지 반복 방지
	if(!_loop and image_index+image_speed>image_number-1)
	{
		image_speed=0;
	}
}
