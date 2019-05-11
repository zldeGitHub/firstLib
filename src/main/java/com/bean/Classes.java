package com.bean;

import java.io.Serializable;

public class Classes  implements Serializable{
	private Integer id ;
	private String cName;
	@Override
	public String toString() {
		return "Classes [id=" + id + ", cName=" + cName + "]";
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public Classes(Integer id, String cName) {
		super();
		this.id = id;
		this.cName = cName;
	}
	public Classes() {
		super();
	}
	public Classes(Integer id) {
		super();
		this.id = id;
	}
	public Classes(String cName) {
		super();
		this.cName = cName;
	}
	
	
}
