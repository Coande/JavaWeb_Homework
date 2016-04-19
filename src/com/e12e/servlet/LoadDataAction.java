package com.e12e.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.e12e.bean.Admin;
import com.e12e.bean.Page;
import com.e12e.bean.Student;

/**
 * 加载初始化数据（web.xml中设置了load-on-startup）
 * @author Coande
 *
 */

public class LoadDataAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public LoadDataAction() {
        super();
    }
    
    @Override
    public void init() throws ServletException {
    	System.out.println("LoadDataAction被执行并初始化数据...");
    	ServletContext application=this.getServletContext();
    	String path=application.getContextPath();
    	
    	//载入所有页面数据
    	ArrayList<Page> pages=new ArrayList<Page>();
    	pages.add(new Page("Login.html",path+"/Login.html","登录页面"));
    	pages.add(new Page("LoginFailed.html",path+ "/message/LoginFailed", "登录失败页面"));
    	pages.add(new Page("MainIndex.jsp", path+"/main/MainIndex.jsp", "系统主界面"));
    	pages.add(new Page("Sidebar.jsp", path+"/main/Sidebar.jsp", "侧栏"));
    	pages.add(new Page("StudentInfoSearch.jsp",path+"/content/StudentInfoSearch.jsp","学生信息搜索"));
    	pages.add(new Page("Welcome.jsp",path+ "/content/Welcome.jsp", "系统首页"));
    	pages.add(new Page("PasswordModify.jsp", path+"/content/PasswordModify.jsp", "密码修改页面"));
    	pages.add(new Page("StudentInfoManage.jsp",path+"/content/StudentInfoManage.jsp","学生信息修改"));
    	pages.add(new Page("EditableTable.jsp",path+"/content/EditableTable.jsp","可编辑表格"));
    	pages.add(new Page("MoveableDiv.jsp",path+"/content/MoveableDiv.jsp","可拖动DIV"));
    	pages.add(new Page("JSPWrittenExam.jsp",path+"/content/JSPWrittenExam.jsp","JSP笔试"));
    	pages.add(new Page("LoadDataAction.java","com.e12e.servlet.LoadDataAction","加载初始化数据Servlet"));
    	pages.add(new Page("LoginAction","com.e12e.servlet.LoginAction","登录验证Servlet"));
    	pages.add(new Page("LogoutAction.java","com.e12e.servlet.LogoutAction.java", "退出登录Servlet"));
    	pages.add(new Page("PasswordModifyAction.java","com.e12e.servlet.PasswordModifyAction.java","密码修改Servlet"));
    	pages.add(new Page("StudentInfoSearchAction.java","com.e12e.servlet.StudentInfoSearchAction.java","学生信息查询Servlet"));
    	pages.add(new Page("Admin.java","com.e12e.bean.Admin","管理员JavaBean"));
    	pages.add(new Page("Student.java","com.e12e.bean.Student","学生JavaBean"));
    	pages.add(new Page("LoginFilter.java","com.e12e.filter.LoginFilter","登录过滤器"));
    	
    	application.setAttribute("pages", pages);
    	
    	
    	//载入系统管理员数据
    	ArrayList<Admin> admins=new ArrayList<Admin>();
    	admins.add(new Admin("admin", "admin", 0));
    	admins.add(new Admin("peter", "peter", 0));
    	application.setAttribute("admins", admins);
    	
    	//载入学生数据
    	ArrayList<Student> studnets=new ArrayList<Student>();
    	studnets.add(new Student(1, "peter", 20, "4班", "男", "汉", "广东"));
    	studnets.add(new Student(2, "明方", 17, "2班", "男", "汉", "山东"));
    	studnets.add(new Student(3, "小红", 19, "3班", "男", "汉", "北京"));
    	studnets.add(new Student(4,"小雨",18,"1班","男","汉","海南"));
    	application.setAttribute("students", studnets);
    	
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
