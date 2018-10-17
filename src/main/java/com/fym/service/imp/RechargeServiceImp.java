package com.fym.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fym.dao.RechargeLogMapper;
import com.fym.entity.RechargeLog;
import com.fym.service.RechargeService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class RechargeServiceImp implements RechargeService {
	
	@Autowired RechargeLogMapper mapper;
	
	@Override
	public RechargeLog selectByid(int id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public int add(RechargeLog t) {
		// TODO Auto-generated method stub
		return mapper.insert(t);
	}

	@Override
	public int deleteById(int id) {
		// TODO Auto-generated method stub
		return mapper.deleteByPrimaryKey(id);
	}

	@Override
	public int update(RechargeLog t) {
		// TODO Auto-generated method stub
		return mapper.updateByPrimaryKey(t);
	}

	@Override
	public PageInfo<RechargeLog> selectByUserId(int pageNum,int id) {
		PageHelper.startPage(pageNum, 5);
		List<RechargeLog> list=mapper.selectByUserId(id);
		PageInfo<RechargeLog> info=new PageInfo<>(list);
		return info;
	}

	@Override
	public PageInfo<RechargeLog> selectAll(int pageNum) {
		PageHelper.startPage(pageNum, 5);
		List<RechargeLog> list=mapper.selectAll();
		PageInfo<RechargeLog> info=new PageInfo<>(list);
		return info;
	}

}
