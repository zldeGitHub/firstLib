package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bean.Student;
import com.dao.StudentMapper;
import com.service.StudentService;

@Service
public class StudentServiceImpl implements StudentService{
	
	@Autowired
	private StudentMapper studentMapper;


	@Override
	public void update(Student t) {
		studentMapper.update(t);
	}

	@Override
	public List<Student> select(Student t) {
		return studentMapper.select(t);
	}

}
