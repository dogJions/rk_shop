package com.fym.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fym.dao.GoodsCatalogMapper;
import com.fym.entity.GoodsCatalog;
import com.fym.service.GoodsCaService;

@Service
public class GoodsCaServiceImp implements GoodsCaService {
	@Autowired GoodsCatalogMapper mapper;
	
	@Override
	public GoodsCatalog selectByid(int id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public int add(GoodsCatalog t) {
		// TODO Auto-generated method stub
		return mapper.insert(t);
	}

	@Override
	public int deleteById(int id) {
		// TODO Auto-generated method stub
		return mapper.deleteByPrimaryKey(id);
	}

	@Override
	public int update(GoodsCatalog t) {
		// TODO Auto-generated method stub
		return mapper.updateByPrimaryKey(t);
	}

	@Override
	public List<GoodsCatalog> selectAll() {
		// TODO Auto-generated method stub
		return mapper.selectAll();
	}

}
