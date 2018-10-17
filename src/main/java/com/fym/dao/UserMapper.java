package com.fym.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.fym.entity.User;

public interface UserMapper {
	List<User> selectAll();
	
	User login(@Param("username")String username);
    
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKeyWithBLOBs(User record);

    int updateByPrimaryKey(User record);
}