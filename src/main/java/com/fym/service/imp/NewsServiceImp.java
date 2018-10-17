package com.fym.service.imp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fym.dao.NewsMapper;
import com.fym.entity.News;
import com.fym.service.NewsService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class NewsServiceImp implements NewsService {
	
	@Autowired NewsMapper mapper;
	
	@Override
	public News selectByid(int id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public int add(News t) {
		// TODO Auto-generated method stub
		return mapper.insert(t);
	}

	@Override
	public int deleteById(int id) {
		// TODO Auto-generated method stub
		return mapper.deleteByPrimaryKey(id);
	}

	@Override
	public int update(News t) {
		// TODO Auto-generated method stub
		return mapper.updateByPrimaryKey(t);
	}

	@Override
	public PageInfo<News> selectByCId(Map<String, Object> map, int pageNum) {
		PageHelper.startPage(pageNum,5);
		List<News> list=mapper.selectByCId(map);
		PageInfo<News> info=new PageInfo<>(list);
		return info;

	}

}
