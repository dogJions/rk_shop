package com.fym.service;

import com.fym.entity.VipUser;
import com.github.pagehelper.PageInfo;

public interface VipUserService extends BaseService<VipUser>{
	
	VipUser login(String name);
	
	PageInfo<VipUser> selectAll(int pageNum);
}
