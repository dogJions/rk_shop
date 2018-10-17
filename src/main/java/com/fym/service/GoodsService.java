package com.fym.service;


import java.util.Map;

import com.fym.entity.Goods;
import com.github.pagehelper.PageInfo;

public interface GoodsService extends BaseService<Goods> {
	PageInfo<Goods> selectByList(int pageNum,Map<String, Object> map);

	PageInfo<Goods> selectNew(int pageNum);

	PageInfo<Goods> selectHot(int pageNum);
	
	PageInfo<Goods> selectByLike(int pageNum,String like);
}
