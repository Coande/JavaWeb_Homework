package com.e12e.bean;

public class Admin {
	private String id;
	private String username;
	private String password;

	private int role;
	
	public Admin(){
		
	}
	public String getAdminId() {
		return id;
	}

	public void setAdminId(String adminId) {
		this.id = adminId;
	}
	public Admin(String username,String password,int level){
		this.username=username;
		this.password=password;
		this.role=level;
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
		return role;
	}
	public void setLevel(int role) {
		this.role = role;
	}
	
}
