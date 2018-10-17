package com.fym.test;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.fym.dao.UserCartLogMapper;
import com.fym.entity.UserCartLog;

public class Test01 {
	
	@Test
	public void Test01() {
		ApplicationContext applicationContext=new ClassPathXmlApplicationContext("application.xml");
		UserCartLogMapper mapper=applicationContext.getBean(UserCartLogMapper.class);
		List<UserCartLog> list = mapper.selectByUserId(19);
		for (UserCartLog userCartLog : list) {
			System.out.println(userCartLog.getGoods());
		}
	}
}
