package com.fym.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fym.dao.ShopOrderMapper;
import com.fym.entity.ShopOrder;
import com.fym.service.ShopOrderService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class ShopOrderServierImp implements ShopOrderService{
	
	@Autowired ShopOrderMapper mapper;

	@Override
	public ShopOrder selectByid(int id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public int add(ShopOrder t) {
		// TODO Auto-generated method stub
		return mapper.insert(t);
	}

	@Override
	public int deleteById(int id) {
		// TODO Auto-generated method stub
		return mapper.deleteByPrimaryKey(id);
	}

	@Override
	public int update(ShopOrder t) {
		// TODO Auto-generated method stub
		return mapper.updateByPrimaryKey(t);
	}

	@Override
	public PageInfo<ShopOrder> selectByUserId(int id,int pageNum) {
		
		PageHelper.startPage(pageNum, 5);
		List<ShopOrder> list=mapper.selectByUserId(id);
		PageInfo<ShopOrder> info=new PageInfo<>(list);
		return info;
	}

	@Override
	public PageInfo<ShopOrder> selectAll(int pageNum) {
		PageHelper.startPage(pageNum, 5);
		List<ShopOrder> list=mapper.selectAll();
		PageInfo<ShopOrder> info=new PageInfo<>(list);
		return info;
	}

	@Override
	public ShopOrder selectBySn(String sn) {
		// TODO Auto-generated method stub
		return mapper.selectBySn(sn);
	}

}
