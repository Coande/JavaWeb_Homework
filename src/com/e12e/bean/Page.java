package com.e12e.bean;

public class Page {
	private int id;
	private String name;

	private String desc;
	private String path;
	public Page(){
		
	}
	public int getPageId() {
		return id;
	}

	public void setPageId(int pageId) {
		this.id = pageId;
	}
	public Page(String name,String path,String desc){
		this.name=name;
		this.path=path;
		this.desc=desc;
	}
	
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}

}
