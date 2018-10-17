package com.fym.dao;

import java.util.List;

import com.fym.entity.GoodsCatalog;

public interface GoodsCatalogMapper {
	List<GoodsCatalog> selectAll();
   
    int deleteByPrimaryKey(Integer id);

    int insert(GoodsCatalog record);

    int insertSelective(GoodsCatalog record);

    GoodsCatalog selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(GoodsCatalog record);

    int updateByPrimaryKeyWithBLOBs(GoodsCatalog record);

    int updateByPrimaryKey(GoodsCatalog record);
}