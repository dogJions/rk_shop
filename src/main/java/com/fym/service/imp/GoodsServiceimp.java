package com.fym.service.imp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fym.dao.GoodsMapper;
import com.fym.entity.Goods;
import com.fym.service.GoodsService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class GoodsServiceimp implements GoodsService{
	@Autowired GoodsMapper mapper;
	
	@Override
	public Goods selectByid(int id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public int add(Goods t) {
		// TODO Auto-generated method stub
		return mapper.insert(t);
	}

	@Override
	public int deleteById(int id) {
		// TODO Auto-generated method stub
		return mapper.deleteByPrimaryKey(id);
	}

	@Override
	public int update(Goods t) {
		// TODO Auto-generated method stub
		return mapper.updateByPrimaryKey(t);
	}

	@Override
	public PageInfo<Goods> selectNew(int pageNum) {
		PageHelper.startPage(pageNum,10);
		List<Goods> list=mapper.selectNew();
		PageInfo<Goods> info=new PageInfo<>(list);
		return info;
	}

	@Override
	public PageInfo<Goods> selectHot(int pageNum) {
		// TODO Auto-generated method stub
		PageHelper.startPage(pageNum,10);
		List<Goods> list=mapper.selectHot();
		PageInfo<Goods> info=new PageInfo<>(list);
		return info;
	}

	@Override
	public PageInfo<Goods> selectByList(int pageNum,Map<String, Object> map) {
		// TODO Auto-generated method stub
		PageHelper.startPage(pageNum,5);
		List<Goods> list=mapper.selectByList(map);
		PageInfo<Goods> info=new PageInfo<>(list);
		return info;
	}

	@Override
	public PageInfo<Goods> selectByLike(int pageNum, String like) {
		// TODO Auto-generated method stub
		PageHelper.startPage(pageNum,5);
		List<Goods> list=mapper.selectByLike(like);
		PageInfo<Goods> info=new PageInfo<>(list);
		return info;
	}

}
