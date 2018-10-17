package com.fym.service;

import java.util.List;

import com.fym.entity.NewsCatalog;

public interface NewsCTLService extends BaseService<NewsCatalog> {
	
	List<NewsCatalog> selectAll();
}
