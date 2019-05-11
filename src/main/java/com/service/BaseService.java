package com.service;

import java.util.List;

public interface BaseService<T> {
	void update(T t);
	
	List<T>select(T t);
}
