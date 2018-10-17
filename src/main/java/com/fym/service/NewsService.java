package com.fym.service;


import java.util.Map;

import com.fym.entity.News;
import com.github.pagehelper.PageInfo;

public interface NewsService extends BaseService<News> {

	PageInfo<News> selectByCId(Map<String , Object> map,int pageNum);
	
	
}
