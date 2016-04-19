package com.e12e.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.e12e.bean.Admin;


public class LoginAction extends HttpServlet {
	
	@Override
	public void init() throws ServletException {
		ServletContext application=this.getServletContext();
		application.setAttribute("total", 0);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//获取提交的数据
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		//测试乱码问题，输出用户名
		System.out.println("尝试登陆用户："+username);
		
		//获取系统管理员数据：
		ServletContext application =this.getServletContext();
		ArrayList<Admin> admins=(ArrayList<Admin>) application.getAttribute("admins");
		
		for(Admin admin:admins){
			if(admin.getUsername().equals(username)&&admin.getPassword().equals(password)){
				//登陆成功，设置session和跳转
				HttpSession session=req.getSession();
				session.setAttribute("username", username);
				session.setAttribute("password", password);
				resp.sendRedirect(req.getContextPath()+"/main/MainIndex.jsp");
				return ;
			}
		}
		
		resp.sendRedirect(req.getContextPath()+"/message/LoginFailed.html");
		
	}
	
}
