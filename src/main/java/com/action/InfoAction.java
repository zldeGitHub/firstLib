package com.action;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bean.Student;
import com.service.ClassesService;
import com.service.StudentService;

@Controller
@RequestMapping("info")
public class InfoAction {
		
	@Resource
	private ClassesService classesService;
	@Resource
	private StudentService studentService; 
	
	
	//整体查询
	@RequestMapping("query")
	public String query(HttpSession session,Student student) {
		System.out.println(">>>>>>   query***");
		List<Student>list=studentService.select(student);
		session.setAttribute("studentList", list);
		return "/list.jsp";
	}
	
	//单查，点击编号进入修改页，用于显示个人信息
	@RequestMapping("queryOne")
	public String queryOne(Student student,HttpSession session ) {
		System.out.println(">>>>>>   queryOne***");
		List<Student>list=studentService.select(student);
		session.setAttribute("studentInfo", list.get(0));
		return "/update.jsp";
	}
	
	@RequestMapping("updte")
	public String add(Student student,HttpSession session) {
		System.out.println(">>>>>>>>> updte******");
		studentService.update(student);
		return "query";
	}
}
