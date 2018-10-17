package com.fym.service;

import com.fym.entity.UserAddress;
import com.github.pagehelper.PageInfo;

public interface AddressService extends BaseService<UserAddress> {
		
	PageInfo<UserAddress> selectByUserId(int id,int pageNum);
	
	int updateDefault();
	
	UserAddress selectOne(int id);
}
