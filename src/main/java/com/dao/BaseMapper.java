package com.dao;

import java.util.List;

public interface BaseMapper<T> {
	List<T> select(T t);
	void update(T t);

}
