package com.e12e.bean;
/**
 * 学生信息Bean
 * @author Coande
 *
 */

public class Student {
	private int id;
	private String name;
	private int age;
	private String grade;
	private String sex;
	private String nation;
	private String  birthplace;
	
	public Student(){
		
	}
	
	public Student(int id,String name,int age,String grade,String sex,String nation,String birthplace){
		this.id=id;
		this.name=name;
		this.age=age;
		this.grade=grade;
		this.sex=sex;
		this.nation=nation;
		this.birthplace=birthplace;
	}
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getMinzu() {
		return nation;
	}
	public void setMinzu(String minzu) {
		nation = minzu;
	}
	public String getBornPlace() {
		return birthplace;
	}
	public void setBornPlace(String bornPlace) {
		this.birthplace = bornPlace;
	}

}
