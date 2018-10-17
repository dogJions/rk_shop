package com.fym.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fym.dao.VipUserMapper;
import com.fym.entity.VipUser;
import com.fym.service.VipUserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class VipUserServiceImp implements VipUserService {
	@Autowired VipUserMapper mapper;
	
	@Override
	public VipUser selectByid(int id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public int add(VipUser t) {
		// TODO Auto-generated method stub
		return mapper.insert(t);
	}

	@Override
	public int deleteById(int id) {
		// TODO Auto-generated method stub
		return mapper.deleteByPrimaryKey(id);
	}

	@Override
	public int update(VipUser t) {
		// TODO Auto-generated method stub
		return mapper.updateByPrimaryKey(t);
	}

	@Override
	public VipUser login(String name) {
		// TODO Auto-generated method stub
		return mapper.login(name);
	}

	@Override
	public PageInfo<VipUser> selectAll(int pageNum) {
		PageHelper.startPage(pageNum, 5);
		List<VipUser> list=mapper.selectAll();
		PageInfo<VipUser> info=new PageInfo<>(list);
		return info;
	}

}
