package com.fym.service;

public interface BaseService<T> {
	T selectByid(int id);
	int add(T t);
	int deleteById(int id);
	int update(T t);
}
