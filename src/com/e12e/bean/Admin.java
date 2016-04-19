package com.e12e.bean;

public class Admin {
	private String username;
	private String password;
	private int level;
	
	public Admin(){
		
	}
	
	public Admin(String username,String password,int level){
		this.username=username;
		this.password=password;
		this.level=level;
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	
}