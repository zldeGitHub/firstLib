package com.bean;

import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Student  implements Serializable{
	private Integer id;
	private String sName;
	private Date birthday ;
	private String gender ;
	private String telephone ;
	private  String email ;
	private Integer classId ;
	
	private Classes classesInfo;
	public Classes getClassesInfo() {
		return classesInfo;
	}
	public void setClassesInfo(Classes classesInfo) {
		this.classesInfo = classesInfo;
	}
	public void setRegisteTime(String registeTime) {
		//日期格式化对象
		SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
		try {
			//将字符串格式化成util的date对象
			java.util.Date time=format.parse(registeTime);
			//为属性赋值
			this.birthday=new Date(time.getTime());
		}catch(ParseException e) {
			this.birthday=new Date(new java.util.Date().getTime());
		}
	}
	public Student(Integer id, String sName, String birthday, String gender, String telephone, String email,
			Integer classId) {
		super();
		this.id = id;
		this.sName = sName;
		setRegisteTime(birthday);
		this.gender = gender;
		this.telephone = telephone;
		this.email = email;
		this.classId = classId;
	}
	public Student() {
		super();
	}
	public Student(Integer id) {
		super();
		this.id = id;
	}
	public Student(String sName, Date birthday, String gender, String telephone, String email, Integer classId) {
		super();
		this.sName = sName;
		this.birthday = birthday;
		this.gender = gender;
		this.telephone = telephone;
		this.email = email;
		this.classId = classId;
	}
	@Override
	public String toString() {
		return "Student [id=" + id + ", sName=" + sName + ", birthday=" + birthday + ", gender=" + gender
				+ ", telephone=" + telephone + ", email=" + email + ", classId=" + classId + "]";
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getsName() {
		return sName;
	}
	public void setsName(String sName) {
		this.sName = sName;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Integer getClassId() {
		return classId;
	}
	public void setClassId(Integer classId) {
		this.classId = classId;
	}
	
	
}
