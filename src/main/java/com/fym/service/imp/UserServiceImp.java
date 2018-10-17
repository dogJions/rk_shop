package com.fym.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fym.dao.UserMapper;
import com.fym.entity.User;
import com.fym.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class UserServiceImp implements UserService {
	@Autowired UserMapper mapper;
	
	@Override
	public User selectByid(int id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public int add(User t) {
		// TODO Auto-generated method stub
		return mapper.insert(t);
	}

	@Override
	public int deleteById(int id) {
		// TODO Auto-generated method stub
		return mapper.deleteByPrimaryKey(id);
	}

	@Override
	public int update(User t) {
		// TODO Auto-generated method stub
		return mapper.updateByPrimaryKey(t);
	}

	@Override
	public User selectPsw(String username) {
		// TODO Auto-generated method stub
		return mapper.login(username);
	}

	@Override
	public PageInfo<User> selectAll(int pageNum) {
		PageHelper.startPage(pageNum, 5);
		List<User> list=mapper.selectAll();
		PageInfo<User> info=new PageInfo<>(list);
		return info;
	}

}
