package com.fym.service.imp;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fym.dao.UserAddressMapper;
import com.fym.entity.UserAddress;
import com.fym.service.AddressService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class AddressServiceImp implements AddressService {

	@Autowired UserAddressMapper mapper;
	
	@Override
	public UserAddress selectByid(int id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public int add(UserAddress t) {
		// TODO Auto-generated method stub
		return mapper.insert(t);
	}

	@Override
	public int deleteById(int id) {
		// TODO Auto-generated method stub
		return mapper.deleteByPrimaryKey(id);
	}

	@Override
	public int update(UserAddress t) {
		// TODO Auto-generated method stub
		return mapper.updateByPrimaryKey(t);
	}

	@Override
	public PageInfo<UserAddress> selectByUserId(int id, int pageNum) {
		
		PageHelper.startPage(pageNum, 5);
		List<UserAddress> list=mapper.selectByUserId(id);
		PageInfo<UserAddress> info=new PageInfo<>(list);
		return info;
	}

	@Override
	public int updateDefault() {
		// TODO Auto-generated method stub
		return mapper.updateDefault();
	}

	@Override
	public UserAddress selectOne(int id) {
		// TODO Auto-generated method stub
		return mapper.selectDefByUserId(id);
	}

}
