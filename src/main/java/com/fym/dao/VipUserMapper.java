package com.fym.dao;

import java.util.List;

import com.fym.entity.VipUser;

public interface VipUserMapper {
	List<VipUser> selectAll();
	
	VipUser login(String name);
   
    int deleteByPrimaryKey(Integer id);

    int insert(VipUser record);

    int insertSelective(VipUser record);

    VipUser selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(VipUser record);

    int updateByPrimaryKeyWithBLOBs(VipUser record);

    int updateByPrimaryKey(VipUser record);
}