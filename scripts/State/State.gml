// 특정 state인지 확인
function check_state(_state, _obj = self)
{
	return string_pos(_state, _obj.state);
}
// 오브젝트가 공격 중인지 확인
function check_attack()
{
	return string_pos("attack",other.state);
}

// state들 중 완전히 일치하는 state가 있는지 확인
function check_states_compare()
{
	for(i=0;i<argument_count;i++)
	{
		if(self.state==argument[i]) return true;	
	}
	return false;
}

// state들 중 일부라도 일치하는 state가 있는지 확인
function check_states_pos()
{
	for(i=0;i<argument_count;i++)
	{
		if(string_pos(self.state,argument[i])) return true;	
	}
	return false;
}