package com.fym.service;

import com.fym.entity.User;
import com.github.pagehelper.PageInfo;

public interface UserService extends BaseService<User>{
	
	User selectPsw(String username);
	
	PageInfo<User> selectAll(int pageNum);
}
