package com.fym.dao;

import java.util.List;
import java.util.Map;

import com.fym.entity.Goods;

public interface GoodsMapper {
	
	List<Goods> selectByLike(String like);
	
	List<Goods> selectByList(Map<String, Object> map);
  
	List<Goods> selectNew();
	
	List<Goods> selectHot();
	
    int deleteByPrimaryKey(Integer id);

    int insert(Goods record);

    int insertSelective(Goods record);

    Goods selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Goods record);

    int updateByPrimaryKeyWithBLOBs(Goods record);

    int updateByPrimaryKey(Goods record);
}