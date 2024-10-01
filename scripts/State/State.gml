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
function check_states_pos(_state)
{
	return string_pos(_state, self.state);
}
