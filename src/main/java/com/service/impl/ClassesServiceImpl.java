package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.Classes;
import com.dao.ClassesMapper;
import com.service.ClassesService;

@Service
public class ClassesServiceImpl implements ClassesService{

	@Autowired
	private ClassesMapper classesMapper;


	@Override
	public void update(Classes t) {
		classesMapper.update(t);
	}

	@Override
	public List<Classes> select(Classes t) {
		return classesMapper.select(t);
	}


	
}
