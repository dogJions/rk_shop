package com.fym.service;

import com.fym.entity.UserCartLog;
import com.github.pagehelper.PageInfo;

public interface UserCarLogService extends BaseService<UserCartLog>{
		PageInfo<UserCartLog> selectbyUserId();
}
