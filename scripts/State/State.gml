// 오브젝트가 특정 state인지 확인(기본값 : 나 자신)
function check_state(_state, _obj = self)
{
	return string_pos(_state, _obj.state);
}