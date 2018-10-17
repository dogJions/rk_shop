package com.fym.service;

import com.fym.entity.RechargeLog;
import com.github.pagehelper.PageInfo;

public interface RechargeService extends BaseService<RechargeLog> {
	
	PageInfo<RechargeLog> selectByUserId(int pageNum,int id);
	
	PageInfo<RechargeLog> selectAll(int pageNum);
}
