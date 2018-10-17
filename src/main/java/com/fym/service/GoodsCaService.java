package com.fym.service;

import java.util.List;

import com.fym.entity.GoodsCatalog;

public interface GoodsCaService extends BaseService<GoodsCatalog> {
		
	List<GoodsCatalog> selectAll();
}
