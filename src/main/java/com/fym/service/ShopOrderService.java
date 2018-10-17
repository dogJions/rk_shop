package com.fym.service;

import com.fym.entity.ShopOrder;
import com.github.pagehelper.PageInfo;

public interface ShopOrderService extends BaseService<ShopOrder> {
		
	PageInfo<ShopOrder> selectByUserId(int id,int pageNum);
	PageInfo<ShopOrder> selectAll(int pageNum);
	
	ShopOrder selectBySn(String sn);
}
