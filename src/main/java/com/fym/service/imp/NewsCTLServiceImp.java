package com.fym.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fym.dao.NewsCatalogMapper;
import com.fym.entity.NewsCatalog;
import com.fym.service.NewsCTLService;

@Service
public class NewsCTLServiceImp implements NewsCTLService {

	@Autowired NewsCatalogMapper mapper;
	
	@Override
	public NewsCatalog selectByid(int id) {
		// TODO Auto-generated method stub
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public int add(NewsCatalog t) {
		// TODO Auto-generated method stub
		return mapper.insert(t);
	}

	@Override
	public int deleteById(int id) {
		// TODO Auto-generated method stub
		return mapper.deleteByPrimaryKey(id);
	}

	@Override
	public int update(NewsCatalog t) {
		// TODO Auto-generated method stub
		return mapper.updateByPrimaryKey(t);
	}

	@Override
	public List<NewsCatalog> selectAll() {
		// TODO Auto-generated method stub
		
		return mapper.selectAll();
	}

}
